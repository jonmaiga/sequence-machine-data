import Prog.A004.A0042

namespace A004216.Anchor

local notation "E" => A196563.P12192156625480906411.a
local notation "O" => A196564.P8945567313368503187.a

private theorem digit (d : ℕ) (hd : d < 10) : E d + O d = 1 := by
  simp only [A196563.P12192156625480906411.a, A196564.P8945567313368503187.a]
  rw [SequenceMachineLib.rec_of_lt _ _ (by simpa using hd), SequenceMachineLib.rec_of_lt _ _ (by simpa using hd)]
  interval_cases d <;> rfl

private theorem floor_div (m : ℕ) : ⌊(m : ℚ) / 10⌋.toNat = m / 10 := by
  rw [show (10 : ℚ) = ((10 : ℕ) : ℚ) by norm_num, Rat.floor_natCast_div_natCast, ← Int.natCast_div, Int.toNat_natCast]

private theorem len (m : ℕ) (hm : 1 ≤ m) : E m + O m = (Nat.digits 10 m).length := by
  induction m using Nat.strong_induction_on with
  | _ m ih =>
    by_cases h10 : m < 10
    · rw [digit m h10, Nat.digits_of_lt 10 m (by omega) h10]; rfl
    · have hlt : m / 10 < m := Nat.div_lt_self (by omega) (by norm_num)
      have hmod : m % 10 < m := lt_of_lt_of_le (Nat.mod_lt _ (by norm_num)) (by omega)
      have hE : E m = E (m / 10) + E (m % 10) := by
        simp only [A196563.P12192156625480906411.a]
        rw [SequenceMachineLib.rec_of_le _ _ (by simp; omega)]
        simp only [floor_div, hlt, hmod, ↓reduceIte]
      have hO : O m = O (m / 10) + O (m % 10) := by
        simp only [A196564.P8945567313368503187.a]
        rw [SequenceMachineLib.rec_of_le _ _ (by simp; omega)]
        simp only [floor_div, hlt, hmod, ↓reduceIte]
      rw [hE, hO, Nat.digits_def' (by norm_num) (by omega), List.length_cons,
        ← ih (m / 10) hlt (by omega), ← digit (m % 10) (Nat.mod_lt _ (by norm_num))]
      ring

end A004216.Anchor

/-- floor(log_10(n)). -/
theorem A004216.anchor (n : ℕ) (hn : 1 ≤ n) : A004216 n = Nat.log 10 n := by
  simp only [A004216, A004216.P11701108540860389608.a, SequenceMachineLib.memo_apply,
    show n - 1 + 1 = n by omega, A055642, A055642.P2478179801723442865.a, A196563, A196564]
  have h := A004216.Anchor.len n hn
  rw [Nat.length_digits 10 n (by norm_num) (by omega)] at h
  have h' : ((A196563.P12192156625480906411.a n : ℕ) : ℤ) + (A196564.P8945567313368503187.a n : ℕ) =
      (Nat.log 10 n : ℤ) + 1 := by exact_mod_cast h
  linarith
