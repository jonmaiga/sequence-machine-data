import Prog.A006.A0065
import Proof.A020.A020639

/-- The greatest prime factor of `m ≥ 2` (1 for 1) is the larger of its least prime factor and that of `m / minFac m`. -/
private theorem gpf_step (m : ℕ) (hm : 2 ≤ m) :
    m.primeFactors.sup id ⊔ 1 = max m.minFac ((m / m.minFac).primeFactors.sup id ⊔ 1) := by
  have hp : m.minFac.Prime := Nat.minFac_prime (by omega)
  have hq : m / m.minFac ≠ 0 := (Nat.div_pos (Nat.minFac_le (by omega)) hp.pos).ne'
  have hs : m.primeFactors.sup id = max m.minFac ((m / m.minFac).primeFactors.sup id) := by
    conv_lhs => rw [← Nat.mul_div_cancel' (Nat.minFac_dvd m)]
    rw [Nat.primeFactors_mul hp.ne_zero hq, Finset.sup_union, hp.primeFactors, Finset.sup_singleton]
    rfl
  rw [hs]
  have := hp.two_le
  simp only [max_def]
  split_ifs <;> omega

/-- The program `max(A020639(n+1), a(floor((n+1)/A020639(n+1))-1))` with `a(0) = 1` is the greatest prime factor
of `n + 1`. -/
private theorem gpf_program (m : ℕ) :
    A006530.P7497384957521200611.a m = (((m + 1).primeFactors.sup id ⊔ 1 : ℕ) : ℤ) := by
  induction m using Nat.strong_induction_on with
  | _ m ih =>
  rcases m with _ | m
  · simp only [A006530.P7497384957521200611.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    simp
  · have hp : (m + 1 + 1).minFac.Prime := Nat.minFac_prime (by omega)
    have h2 := hp.two_le
    have hdvd := Nat.minFac_dvd (m + 1 + 1)
    set q := (m + 1 + 1) / (m + 1 + 1).minFac with hq
    have hq1 : 1 ≤ q := Nat.div_pos (Nat.minFac_le (by omega)) hp.pos
    have hqm : q ≤ m + 1 := by
      have : q * 2 ≤ m + 1 + 1 := by
        calc q * 2 ≤ q * (m + 1 + 1).minFac := Nat.mul_le_mul_left _ h2
          _ = m + 1 + 1 := Nat.div_mul_cancel hdvd
      omega
    have hfl : ⌊((m + 1 : ℕ) + 1 : ℚ) / (A020639 (m + 1 + 1) : ℚ)⌋ = (q : ℤ) := by
      rw [A020639.anchor _ (by omega)]
      push_cast
      rw [show ((m : ℚ) + 1 + 1) = ((m + 1 + 1 : ℕ) : ℚ) by push_cast; ring, hq]
      exact_mod_cast Rat.floor_natCast_div_natCast (m + 1 + 1) (m + 1 + 1).minFac
    simp only [A006530.P7497384957521200611.a]
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    rw [hfl, A020639.anchor (m + 1 + 1) (by omega)]
    rw [show ((q : ℤ) - 1).toNat = q - 1 by omega]
    simp only [show q - 1 < m + 1 by omega, ↓reduceIte]
    have := ih (q - 1) (by omega)
    simp only [A006530.P7497384957521200611.a] at this
    rw [this, show q - 1 + 1 = q by omega, gpf_step (m + 1 + 1) (by omega)]
    push_cast
    rfl

/-- A006530: the greatest prime factor of `n` (1 for `n = 1`). -/
theorem A006530.anchor (n : ℕ) (hn : 1 ≤ n) : A006530 n = ((n.primeFactors.sup id ⊔ 1 : ℕ) : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A006530, Nat.add_sub_cancel]
  exact gpf_program m
