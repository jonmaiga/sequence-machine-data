import Prog.A000.A0000

open SequenceMachineLib

/-! The canonical program of A000002 (Kolakoski) is `(3+(-1)^A156253(n+1))/2`, that of A156253 the nested recursion
`a(n-gcd(a(a(n-1)-1), 2))+1` with `a(0) = 1`. Read from position 0, `c m` of A156253 is the index of the run that
holds position m, the runs alternate between 1's (odd index) and 2's (even index), and the length of run j is the
term at position j - 1: `gcd(c (j - 1), 2)`. With `S k` the sum of the first k terms, run k + 1 is the positions
`S k ≤ m < S (k + 1)`, which is what the recursion keeps: from the last position of a run it starts the next one,
otherwise it stays in the run. -/

local notation "c" => A156253.P16782691293242481478.a

/-- The term at position i (A000002 (i + 1)). -/
private def K (i : ℕ) : ℕ := Nat.gcd (c i) 2

/-- The sum of the first k terms. -/
private def S (k : ℕ) : ℕ := ∑ i ∈ Finset.range k, K i

private theorem K_pos (i : ℕ) : 1 ≤ K i := Nat.gcd_pos_of_pos_right _ (by norm_num)

private theorem K_le (i : ℕ) : K i ≤ 2 := Nat.gcd_le_right _ (by norm_num)

private theorem S_succ (k : ℕ) : S (k + 1) = S k + K k := Finset.sum_range_succ _ _

private theorem le_S (k : ℕ) : k ≤ S k := by
  induction k with
  | zero => simp [S]
  | succ k ih => rw [S_succ]; have := K_pos k; omega

private theorem S_mono : Monotone S :=
  monotone_nat_of_le_succ fun k => by rw [S_succ]; omega

private theorem c_zero : c 0 = 1 := by
  simp [A156253.P16782691293242481478.a, rec_of_lt]

private theorem K_zero : K 0 = 1 := by
  simp [K, c_zero]

private theorem c_succ (m : ℕ) (h : c m ≤ m + 1) :
    c (m + 1) = c (m + 1 - Nat.gcd (c (c m - 1)) 2) + 1 := by
  have hg : 0 < Nat.gcd (c (c m - 1)) 2 := Nat.gcd_pos_of_pos_right _ (by norm_num)
  have h1 : c m - 1 < m + 1 := by omega
  have h2 : m + 1 - Nat.gcd (c (c m - 1)) 2 < m + 1 := by omega
  simp only [A156253.P16782691293242481478.a] at h1 h2 ⊢
  rw [rec_of_le _ _ (by simp)]
  simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte, h1, h2]

/-- Every position is in a run. -/
private theorem exists_run (m : ℕ) : ∃ k, S k ≤ m ∧ m < S (k + 1) := by
  induction m with
  | zero => exact ⟨0, by simp [S], by rw [S_succ]; have := K_pos 0; simp [S]; omega⟩
  | succ m ih =>
    obtain ⟨k, hk, hk'⟩ := ih
    by_cases h : m + 1 < S (k + 1)
    · exact ⟨k, by omega, h⟩
    · exact ⟨k + 1, by omega, by rw [S_succ (k + 1)]; have := K_pos (k + 1); omega⟩

/-- Run k + 1 is the positions from S k to S (k + 1) - 1. -/
private theorem c_eq (m : ℕ) : ∀ k, S k ≤ m → m < S (k + 1) → c m = k + 1 := by
  induction m using Nat.strong_induction_on with
  | _ m ih =>
    intro k hk hk'
    rcases m with _ | m
    · have := le_S k
      have : k = 0 := by omega
      subst this
      exact c_zero
    · by_cases hs : S k = m + 1
      · -- The first position of run k + 1, the previous one ends run k.
        obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by have : k ≠ 0 := (by rintro rfl; simp [S] at hs); omega⟩
        rw [S_succ] at hs
        have hK := K_pos j
        have hm : c m = j + 1 := ih m (by omega) j (by omega) (by rw [S_succ]; omega)
        have hj := le_S j
        rw [c_succ m (by omega), hm, Nat.add_sub_cancel]
        have hstart : c (S j) = j + 1 := ih (S j) (by omega) j le_rfl (by rw [S_succ]; omega)
        have : m + 1 - Nat.gcd (c j) 2 = S j := by unfold K at hs; omega
        rw [this, hstart]
      · -- The second position of run k + 1, a run of 2's.
        have hm : c m = k + 1 := ih m (by omega) k (by omega) (by omega)
        have hk1 := le_S k
        rw [c_succ m (by omega), hm, Nat.add_sub_cancel]
        rw [S_succ] at hk'
        have h2 : K k = 2 := by have := K_le k; omega
        obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by
          have : k ≠ 0 := by rintro rfl; rw [K_zero] at h2; omega
          omega⟩
        have hK := K_pos j
        have hprev : c (S (j + 1) - 1) = j + 1 :=
          ih _ (by omega) j (by rw [S_succ]; omega) (by rw [S_succ]; omega)
        have : Nat.gcd (c (j + 1)) 2 = 2 := h2
        have : m + 1 - Nat.gcd (c (j + 1)) 2 = S (j + 1) - 1 := by omega
        rw [this, hprev]

private theorem roundAway_natCast (k : ℕ) : roundAway (k : ℚ) = k := by
  have h : (0 : ℚ) ≤ k := by positivity
  simp only [roundAway, h, ↓reduceIte]
  rw [Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

private theorem gcd_two (x : ℕ) : ((3 + (-1 : ℚ) ^ ((x : ℤ))) / 2) = (Nat.gcd x 2 : ℚ) := by
  rw [zpow_natCast, Nat.gcd_comm, Nat.gcd_rec]
  rcases Nat.even_or_odd x with h | h
  · rw [h.neg_one_pow, Nat.even_iff.mp h]
    norm_num
  · rw [h.neg_one_pow, Nat.odd_iff.mp h]
    norm_num

/-- A000002 (i + 1) is the term K i. -/
private theorem A000002_eq (i : ℕ) : A000002 (i + 1) = K i := by
  simp only [A000002, A000002.P13330532946811820297.a, memo_apply, A156253, Nat.add_sub_cancel]
  rw [gcd_two, roundAway_natCast]
  rfl

private theorem sum_eq (k : ℕ) : ∑ i ∈ Finset.Icc 1 k, A000002 i = S k := by
  induction k with
  | zero => simp [S]
  | succ k ih =>
    rw [Finset.sum_Icc_succ_top (by omega), ih, A000002_eq, S_succ]
    push_cast
    ring

/-- A000002 is the Kolakoski sequence: cut into consecutive blocks of lengths a(1), a(2), a(3), ..., the k-th block
consists of 1's for odd k and of 2's for even k. The blocks alternate, so they are the runs and a(k) is the length of
the k-th run. With a(1) = 1 and every term 1 or 2, this determines the sequence. -/
theorem A000002.anchor :
    A000002 1 = 1 ∧ (∀ n : ℕ, 1 ≤ n → A000002 n = 1 ∨ A000002 n = 2) ∧
      ∀ k n : ℕ, ∑ i ∈ Finset.Icc 1 (k - 1), A000002 i < (n : ℤ) → (n : ℤ) ≤ ∑ i ∈ Finset.Icc 1 k, A000002 i →
        A000002 n = if Odd k then 1 else 2 := by
  refine ⟨by rw [A000002_eq 0, K_zero]; rfl, fun n hn => ?_, fun k n h h' => ?_⟩
  · obtain ⟨i, rfl⟩ : ∃ i, n = i + 1 := ⟨n - 1, by omega⟩
    rw [A000002_eq]
    have := K_pos i
    have := K_le i
    omega
  · rw [sum_eq] at h h'
    norm_cast at h h'
    obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by
      have : k ≠ 0 := by rintro rfl; simp at h h'; omega
      omega⟩
    obtain ⟨i, rfl⟩ : ∃ i, n = i + 1 := ⟨n - 1, by have := le_S j; omega⟩
    simp only [Nat.add_sub_cancel] at h
    rw [A000002_eq, K, c_eq i j (by omega) (by omega), Nat.gcd_comm, Nat.gcd_rec]
    rcases Nat.even_or_odd (j + 1) with he | ho
    · simp [Nat.even_iff.mp he, Nat.not_odd_iff_even.mpr he]
    · simp [Nat.odd_iff.mp ho, ho]

/-- A156253 n is the least k such that A054353 k = a(1) + ... + a(k) ≥ n, a the Kolakoski sequence A000002: the run
of A000002 that holds position n. -/
theorem A156253.anchor (n : ℕ) (hn : 1 ≤ n) :
    ∃ k : ℕ, A156253 n = k ∧ IsLeast {j : ℕ | (n : ℤ) ≤ ∑ i ∈ Finset.Icc 1 j, A000002 i} k := by
  obtain ⟨k, hk, hk'⟩ := exists_run (n - 1)
  refine ⟨k + 1, ?_, ?_, fun j hj => ?_⟩
  · simp only [A156253]
    rw [c_eq (n - 1) k hk hk']
  · simp only [Set.mem_ofPred_eq, sum_eq]
    norm_cast
    omega
  · simp only [Set.mem_ofPred_eq, sum_eq] at hj
    norm_cast at hj
    by_contra hlt
    have := S_mono (show j ≤ k by omega)
    omega
