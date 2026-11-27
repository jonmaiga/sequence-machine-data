import Prog.A020.A0206
import Mathlib.Data.Nat.Prime.Factorial

/-- `∑ k < m, [gcd(m, (k+1)!) = 1] + 1 - [m = 1]` is `minFac m`: `gcd(m, j!) = 1` exactly for `j < minFac m`. -/
private theorem lpf_sum (m : ℕ) (hm : 1 ≤ m) :
    ∑ k ∈ Finset.range m, (2 - min (Nat.gcd m (k + 1).factorial : ℤ) 2) + 1 - 0 ^ (m - 1) = (m.minFac : ℤ) := by
  rcases eq_or_ne m 1 with rfl | h1
  · simp
  have hterm : ∀ k ∈ Finset.range m, (2 - min (Nat.gcd m (k + 1).factorial : ℤ) 2) =
      if k + 1 < m.minFac then 1 else 0 := by
    intro k _
    have hg : 1 ≤ Nat.gcd m (k + 1).factorial := Nat.pos_of_ne_zero (by simp; omega)
    split_ifs with hk
    · rw [(Nat.coprime_factorial_iff h1).mpr hk]; norm_num
    · have : Nat.gcd m (k + 1).factorial ≠ 1 := fun h => hk ((Nat.coprime_factorial_iff h1).mp h)
      have : (2 : ℤ) ≤ Nat.gcd m (k + 1).factorial := by omega
      rw [min_eq_right this]; norm_num
  rw [Finset.sum_congr rfl hterm, Finset.sum_boole]
  have hle : m.minFac ≤ m := Nat.minFac_le (by omega)
  have hpos : 0 < m.minFac := Nat.minFac_pos m
  have hcard : ((Finset.range m).filter (fun k => k + 1 < m.minFac)).card = m.minFac - 1 := by
    rw [show (Finset.range m).filter (fun k => k + 1 < m.minFac) = Finset.range (m.minFac - 1) by
      ext k; simp only [Finset.mem_filter, Finset.mem_range]; omega]
    simp
  rw [hcard, zero_pow (by omega)]
  push_cast [Nat.cast_sub (by omega : 1 ≤ m.minFac)]
  ring

/-- A020639: the least prime factor of `n`, `Nat.minFac n` (1 for `n = 1`). -/
theorem A020639.anchor (n : ℕ) (hn : 1 ≤ n) : A020639 n = (Nat.minFac n : ℤ) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have h := lpf_sum (m + 1) (by omega)
  rw [Nat.add_sub_cancel] at h
  simp only [A020639, A020639.P2652150749951723339.a, A020639.P2652150749951723339.f1,
    SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  exact h

