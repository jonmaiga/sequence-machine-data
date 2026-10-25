import Prog.A001.A0014

open SequenceMachineLib

/-! The canonical program of A001462 (Golomb's sequence) is `A095114(n+2)-A095114(n+1)`, A095114 the partial sums of
the recursion G of `a(n-a(a(n-1)))+1` with `a(0..1) = 1`, so A001462 n = G n. With `T n` = G 1 + ... + G n, the value
n + 1 is at the positions `T n < k ≤ T (n + 1)`, which is what the recursion keeps: from the first position of a block
it steps back to the first position of the previous block, otherwise into the previous block. -/

local notation "G" => A095114.P18128364600797049740.f1

/-- The sum G 1 + ... + G n. -/
private def T (n : ℕ) : ℕ := ∑ i ∈ Finset.range n, G (i + 1)

private theorem G_pos (k : ℕ) : 1 ≤ G k := by
  rcases Nat.lt_or_ge k 2 with h | h
  · interval_cases k <;> simp [A095114.P18128364600797049740.f1, rec_of_lt]
  · simp only [A095114.P18128364600797049740.f1]
    rw [rec_of_le _ _ (by simpa using h)]
    dsimp only
    omega

private theorem G_one : G 1 = 1 := by
  simp [A095114.P18128364600797049740.f1, rec_of_lt]

private theorem G_step (p : ℕ) (h : G (p + 1) < p + 2) :
    G (p + 2) = G (p + 2 - G (G (p + 1))) + 1 := by
  have hpos := G_pos (G (p + 1))
  have h2 : p + 2 - G (G (p + 1)) < p + 2 := by omega
  simp only [A095114.P18128364600797049740.f1] at h h2 ⊢
  rw [rec_of_le _ _ (by simp)]
  simp only [show p + 2 - 1 = p + 1 by omega, show p + 1 < p + 2 by omega, ↓reduceIte, h, h2]

private theorem T_succ (n : ℕ) : T (n + 1) = T n + G (n + 1) := Finset.sum_range_succ _ _

private theorem le_T (n : ℕ) : n ≤ T n := by
  induction n with
  | zero => simp [T]
  | succ n ih => rw [T_succ]; have := G_pos (n + 1); omega

private theorem T_mono : Monotone T :=
  monotone_nat_of_le_succ fun n => by rw [T_succ]; omega

/-- Every position k ≥ 1 is in a block. -/
private theorem exists_block (k : ℕ) (hk : 1 ≤ k) : ∃ n, T n < k ∧ k ≤ T (n + 1) := by
  induction k with
  | zero => omega
  | succ k ih =>
    rcases Nat.eq_zero_or_pos k with rfl | hk0
    · exact ⟨0, by simp [T], by rw [T_succ]; simp [T, G_one]⟩
    · obtain ⟨n, h, h'⟩ := ih hk0
      by_cases hn : k + 1 ≤ T (n + 1)
      · exact ⟨n, by omega, hn⟩
      · exact ⟨n + 1, by omega, by rw [T_succ (n + 1)]; have := G_pos (n + 1 + 1); omega⟩

/-- The value n + 1 is at the positions from T n + 1 to T (n + 1). -/
private theorem G_eq (k : ℕ) : 1 ≤ k → ∀ n, T n < k → k ≤ T (n + 1) → G k = n + 1 := by
  induction k using Nat.strong_induction_on with
  | _ k ih =>
    intro hk n h h'
    -- A position in block b + 1 of the positions before k.
    have block : ∀ j, 1 ≤ j → j < k → ∃ b, T b < j ∧ j ≤ T (b + 1) ∧ G j = b + 1 := fun j hj hjk => by
      obtain ⟨b, hb, hb'⟩ := exists_block j hj
      exact ⟨b, hb, hb', ih j hjk hj b hb hb'⟩
    rcases k with _ | _ | p
    · omega
    · have := le_T n
      have : n = 0 := by omega
      subst this
      exact G_one
    · obtain ⟨q, rfl⟩ : ∃ q, n = q + 1 := ⟨n - 1, by
        have : n ≠ 0 := by rintro rfl; rw [T_succ] at h'; simp [T, G_one] at h'
        omega⟩
      have hq := le_T q
      have hGq := G_pos (q + 1)
      have hT := T_succ q
      by_cases hs : T (q + 1) = p + 1
      · -- The first position of block q + 2, the previous one ends block q + 1.
        have hp : G (p + 1) = q + 1 := ih (p + 1) (by omega) (by omega) q (by omega) (by omega)
        have hstart : G (T q + 1) = q + 1 := ih (T q + 1) (by omega) (by omega) q (by omega) (by omega)
        rw [G_step p (by omega), hp]
        have : p + 2 - G (q + 1) = T q + 1 := by omega
        rw [this, hstart]
      · -- Block q + 2 also holds the previous position.
        have hp : G (p + 1) = q + 2 := ih (p + 1) (by omega) (by omega) (q + 1) (by omega) (by omega)
        have hT2 := T_succ (q + 1)
        -- Consecutive values differ by at most 1.
        obtain ⟨b, hb, hb', hGb⟩ := block (q + 1) (by omega) (by omega)
        obtain ⟨b', hc, hc', hGc⟩ := block (q + 2) (by omega) (by omega)
        have hbb : b' ≤ b + 1 := by
          by_contra hlt
          have := T_mono (show b + 1 + 1 ≤ b' by omega)
          have := T_succ (b + 1)
          have := G_pos (b + 1 + 1)
          omega
        have hG2 := G_pos (q + 2)
        have hT2' : T (q + 2) = T (q + 1) + G (q + 2) := T_succ (q + 1)
        have h'' : p + 2 ≤ T (q + 2) := h'
        have hprev : G (p + 2 - G (q + 2)) = q + 1 :=
          ih _ (by omega) (by omega) q (by omega) (by omega)
        rw [G_step p (by omega), hp, hprev]

/-- A001462 n is G n. -/
private theorem A001462_eq (i : ℕ) : A001462 (i + 1) = G (i + 1) := by
  simp only [A001462, A001462.P2570616953797054601.a, memo_apply, A095114, A095114.P18128364600797049740.a,
    Nat.add_sub_cancel, show i + 2 - 1 = i + 1 by omega]
  rw [Finset.sum_range_succ _ (i + 1)]
  push_cast
  ring

private theorem A001462_eq' (k : ℕ) (hk : 1 ≤ k) : A001462 k = G k := by
  obtain ⟨i, rfl⟩ : ∃ i, k = i + 1 := ⟨k - 1, by omega⟩
  exact A001462_eq i

/-- A001462 is Golomb's sequence: the nondecreasing sequence with a(1) = 1 in which every n ≥ 1 occurs exactly a(n)
times. -/
theorem A001462.anchor :
    A001462 1 = 1 ∧ (∀ n : ℕ, 1 ≤ n → A001462 n ≤ A001462 (n + 1)) ∧
      ∀ n : ℕ, 1 ≤ n → ({k : ℕ | 1 ≤ k ∧ A001462 k = n}.ncard : ℤ) = A001462 n := by
  refine ⟨by rw [A001462_eq' 1 le_rfl, G_one]; rfl, fun n hn => ?_, fun n hn => ?_⟩
  · rw [A001462_eq' n hn, A001462_eq' (n + 1) (by omega)]
    obtain ⟨b, hb, hb'⟩ := exists_block n hn
    obtain ⟨b', hc, hc'⟩ := exists_block (n + 1) (by omega)
    rw [G_eq n hn b hb hb', G_eq (n + 1) (by omega) b' hc hc']
    have : b ≤ b' := by
      by_contra hlt
      have := T_mono (show b' + 1 ≤ b by omega)
      omega
    exact_mod_cast Nat.succ_le_succ this
  · obtain ⟨q, rfl⟩ : ∃ q, n = q + 1 := ⟨n - 1, by omega⟩
    have hset : {k : ℕ | 1 ≤ k ∧ A001462 k = ((q + 1 : ℕ) : ℤ)} = ↑(Finset.Ioc (T q) (T (q + 1))) := by
      ext k
      simp only [Set.mem_ofPred_eq, Finset.coe_Ioc, Set.mem_Ioc]
      constructor
      · rintro ⟨hk, hv⟩
        rw [A001462_eq' k hk] at hv
        obtain ⟨b, hb, hb'⟩ := exists_block k hk
        rw [G_eq k hk b hb hb'] at hv
        have : b = q := by exact_mod_cast Nat.succ_injective (by exact_mod_cast hv)
        subst this
        exact ⟨hb, hb'⟩
      · rintro ⟨hk, hk'⟩
        have h1 : 1 ≤ k := by omega
        exact ⟨h1, by rw [A001462_eq' k h1, G_eq k h1 q hk hk']⟩
    rw [hset, Set.ncard_coe_finset, Nat.card_Ioc, A001462_eq' (q + 1) (by omega), T_succ]
    omega
