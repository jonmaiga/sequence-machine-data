import Prog.A007.A0079
import Proof.A000.A000005

/-- The product of the divisors of `n` squared is `n ^ τ(n)`. -/
private theorem prod_divisors_sq (n : ℕ) : (∏ d ∈ n.divisors, d) ^ 2 = n ^ n.divisors.card := by
  rw [sq]
  conv_lhs => arg 2; rw [← Nat.prod_div_divisors n (fun d => d)]
  rw [← Finset.prod_mul_distrib, ← Finset.prod_const]
  refine Finset.prod_congr rfl fun d hd => ?_
  exact Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hd)

/-- So it is `n ^ (τ(n) / 2)` over ℝ. -/
private theorem prod_divisors_rpow (n : ℕ) :
    ((∏ d ∈ n.divisors, d : ℕ) : ℝ) = (n : ℝ) ^ ((n.divisors.card : ℝ) / 2) := by
  have h := prod_divisors_sq n
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  rw [← sq_eq_sq₀ (by positivity) (Real.rpow_nonneg hn _), ← Real.rpow_natCast ((n : ℝ) ^ _) 2, ← Real.rpow_mul hn,
    show ((n.divisors.card : ℝ) / 2) * ((2 : ℕ) : ℝ) = ((n.divisors.card : ℕ) : ℝ) by push_cast; ring, Real.rpow_natCast]
  exact_mod_cast h

private theorem roundAway_natCast_real (k : ℕ) : SequenceMachineLib.roundAway (k : ℝ) = k := by
  unfold SequenceMachineLib.roundAway
  rw [if_pos (Nat.cast_nonneg k), Int.floor_eq_iff]
  constructor <;> push_cast <;> linarith

/-- A007955: the product of the divisors of `n`. -/
theorem A007955.anchor (n : ℕ) (hn : 1 ≤ n) : A007955 n = ∏ d ∈ n.divisors, (d : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A007955, A007955.P14752630106558465512.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  rw [A000005.anchor _ (by omega), ArithmeticFunction.sigma_zero_apply]
  have h := prod_divisors_rpow (m + 1)
  push_cast at h ⊢
  rw [← h, ← Nat.cast_prod, roundAway_natCast_real]
  push_cast
  rfl

