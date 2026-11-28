import Prog.A005.A0058
import Mathlib.Data.Nat.Nth


/-- The binary digits of `n` read in base 3. -/
private theorem f_step (n : ℕ) :
    Nat.ofDigits 3 (Nat.digits 2 n) = n % 2 + 3 * Nat.ofDigits 3 (Nat.digits 2 (n / 2)) := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp
  · rw [Nat.digits_def' (by norm_num) hn, Nat.ofDigits_cons]

private theorem f_strictMono : StrictMono (fun n => Nat.ofDigits 3 (Nat.digits 2 n)) := by
  apply strictMono_nat_of_lt_succ
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  rw [f_step n, f_step (n + 1)]
  rcases Nat.even_or_odd' n with ⟨k, rfl | rfl⟩
  · rw [show (2 * k + 1) / 2 = k by omega, show 2 * k / 2 = k by omega]; omega
  · rw [show (2 * k + 1 + 1) / 2 = k + 1 by omega, show (2 * k + 1) / 2 = k by omega]
    rcases Nat.eq_zero_or_pos k with rfl | hk
    · simp
    · have := ih k (by omega)
      omega

private theorem digits_binary (n : ℕ) : ∀ d ∈ Nat.digits 2 n, d < 2 :=
  fun d hd => Nat.digits_lt_base (by norm_num) hd

private theorem maps (n : ℕ) : 2 ∉ Nat.digits 3 (Nat.ofDigits 3 (Nat.digits 2 n)) := by
  rw [Nat.digits_ofDigits 3 (by norm_num) _ (fun l hl => by have := digits_binary n l hl; omega)
    (fun h => Nat.getLast_digit_ne_zero 2 (by rintro rfl; simp at h))]
  intro h
  have := digits_binary n 2 h
  omega

/-- The numbers with no 2 in base 3 are enumerated by the binary digits of `n` read in base 3. -/
private theorem nth_no_two (n : ℕ) :
    Nat.nth (fun k => 2 ∉ Nat.digits 3 k) n = Nat.ofDigits 3 (Nat.digits 2 n) := by
  have hinf : (Set.ofPred (fun k => 2 ∉ Nat.digits 3 k)).Infinite :=
    Set.infinite_of_injective_forall_mem f_strictMono.injective maps
  have hall : ∀ m : ℕ, m ∈ { n : ℕ | ∀ hf : Set.Finite (Set.ofPred (fun k => 2 ∉ Nat.digits 3 k)),
      n < hf.toFinset.card } := fun m hf => absurd hf hinf
  refine (Nat.eq_nth_of_strictMonoOn_of_mapsTo_of_surjOn (p := fun k => 2 ∉ Nat.digits 3 k)
    (fun n => Nat.ofDigits 3 (Nat.digits 2 n)) ?_ ?_ ?_ (hall n)).symm
  · intro k hk
    have hk' : ∀ l ∈ Nat.digits 3 k, l < 2 := fun l hl => by
      have := Nat.digits_lt_base (by norm_num) hl
      have : l ≠ 2 := fun h => hk (h ▸ hl)
      omega
    refine ⟨Nat.ofDigits 2 (Nat.digits 3 k), hall _, ?_⟩
    simp only
    rw [Nat.digits_ofDigits 2 (by norm_num) _ hk' (fun h => Nat.getLast_digit_ne_zero 3 (by rintro rfl; simp at h)),
      Nat.ofDigits_digits]
  · intro m _
    exact maps m
  · exact f_strictMono.strictMonoOn _


/-- A005836: the numbers whose base-3 representation contains no 2, in increasing order (from `a(1) = 0`). -/
theorem A005836.anchor (n : ℕ) (hn : 1 ≤ n) :
    A005836 n = (Nat.nth (fun k => 2 ∉ Nat.digits 3 k) (n - 1) : ℤ) := by
  simp only [A005836]
  rw [nth_no_two]
  generalize n - 1 = m
  induction m using Nat.strong_induction_on with
  | _ m ih =>
  rcases Nat.eq_zero_or_pos m with rfl | hm
  · rw [A005836.P12367569128854000442.a, SequenceMachineLib.rec_of_lt _ _ (by simp)]; rfl
  · have hfl : ⌊(m : ℚ) / 2⌋ = ((m / 2 : ℕ) : ℤ) := by exact_mod_cast Rat.floor_natCast_div_natCast m 2
    have := ih (m / 2) (by omega)
    rw [A005836.P12367569128854000442.a] at this ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp; omega)]
    simp only [hfl, Int.toNat_natCast, show m / 2 < m by omega, ↓reduceIte]
    rw [this, f_step m]
    push_cast
    omega

