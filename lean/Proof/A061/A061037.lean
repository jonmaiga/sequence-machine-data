import Prog.A061.A0610
import Proof.Lib.Integral

/-- `1/4 - 1/n²` is `(n² - 4) / (4 n²)`; its numerator is `(n² - 4) / gcd(4 n², n² - 4)`. -/
private theorem num_quarter (n : ℕ) (hn : 2 ≤ n) :
    (((n : ℤ) ^ 2 - 4 : ℤ) : ℚ) / ((Int.gcd (4 * (n : ℤ) ^ 2) ((n : ℤ) ^ 2 - 4) : ℕ) : ℚ) =
      (((1 : ℚ) / 4 - 1 / (n : ℚ) ^ 2).num : ℚ) := by
  set x : ℤ := (n : ℤ) ^ 2 - 4 with hx
  set y : ℤ := 4 * (n : ℤ) ^ 2 with hy
  have hy0 : 0 < y := by positivity
  have hg0 : 0 < Int.gcd y x := Int.gcd_pos_of_ne_zero_left _ hy0.ne'
  have hdx : (Int.gcd y x : ℤ) ∣ x := Int.gcd_dvd_right y x
  have hdy : (Int.gcd y x : ℤ) ∣ y := Int.gcd_dvd_left y x
  have hg' : ((Int.gcd y x : ℤ) : ℚ) ≠ 0 := by exact_mod_cast hg0.ne'
  have hq : ((1 : ℚ) / 4 - 1 / (n : ℚ) ^ 2) = (Int.cast (x / Int.gcd y x) : ℚ) / (Int.cast (y / Int.gcd y x) : ℚ) := by
    rw [Int.cast_div hdx hg', Int.cast_div hdy hg']
    have hn0 : (n : ℚ) ≠ 0 := by positivity
    rw [hx, hy]
    field_simp
    push_cast
    ring
  have hcop : Nat.Coprime (x / Int.gcd y x).natAbs (y / Int.gcd y x).natAbs := by
    have := Int.gcd_div_gcd_div_gcd (i := x) (j := y) (by rw [Int.gcd_comm]; exact hg0)
    rw [Int.gcd_comm x y] at this
    exact this
  rw [hq, Rat.num_div_eq_of_coprime (Int.ediv_pos_of_pos_of_dvd hy0 (by positivity) hdy) hcop,
    Int.cast_div hdx hg']
  push_cast
  rfl

/-- A061037: the numerator of `1/4 - 1/n^2`. -/
theorem A061037.anchor (n : ℕ) (hn : 2 ≤ n) : A061037 n = ((1 : ℚ) / 4 - 1 / (n : ℚ) ^ 2).num := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 2 := ⟨n - 2, by omega⟩
  simp only [A061037, A061037.P80081350164223039.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  have h := num_quarter (m + 2) (by omega)
  push_cast at h ⊢
  rw [h, SequenceProof.roundAway_intCast]
