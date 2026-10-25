import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A209700: Triangle of coefficients of polynomials v(n,x) jointly generated with A209699; see the Formula section.

The programs for A209700, there is no canonical definition to state claims against.
-/

/-! ## A209700.P5268414875711049312

`A072088(A208914(n+1))/A172119(n)`
-/

namespace A209700.P5268414875711049312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072088 (A208914 (n + 1)).toNat : ℚ) / (A172119 n : ℚ)

end

end A209700.P5268414875711049312

/-!
# A209701: Triangle of coefficients of polynomials u(n,x) jointly generated with A209702; see the Formula section.

The programs for A209701, there is no canonical definition to state claims against.
-/

/-! ## A209701.P15197447171083502833

`A209687(n+1)+A001221(A022186(n))`
-/

namespace A209701.P15197447171083502833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209687 (n + 1) + A001221 (A022186 n).toNat

end

end A209701.P15197447171083502833

/-!
# A209702: Triangle of coefficients of polynomials v(n,x) jointly generated with A209701; see the Formula section.

The programs for A209702, there is no canonical definition to state claims against.
-/

/-! ## A209702.P2160632438567088221

`A209701(A014132(n+1)+1)-A209701(n+1)`
-/

namespace A209702.P2160632438567088221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209701 (A014132 (n + 1) + 1).toNat - A209701 (n + 1)

end

end A209702.P2160632438567088221

/-!
# A209703: Triangle of coefficients of polynomials u(n,x) jointly generated with A209704; see the Formula section.

The programs for A209703, there is no canonical definition to state claims against.
-/

/-! ## A209703.P17928914720894076009

`A209755(n+1)+A210595(n+2)-A210565(n+2)`
-/

namespace A209703.P17928914720894076009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209755 (n + 1) + (A210595 (n + 2) - A210565 (n + 2))

end

end A209703.P17928914720894076009

/-! ## A209703.P18067324149899258503

`A208608(n+1)-Δ[A155161(A038722(n+1))]`
-/

namespace A209703.P18067324149899258503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208608 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209703.P18067324149899258503

/-! ## A209703.P17403680604006304694

`A138036(A063007(n)%((6*n+1)^7))`
-/

namespace A209703.P17403680604006304694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (Int.tmod (A063007 n) ((6 * n + 1) ^ 7 : ℤ)).toNat

end

end A209703.P17403680604006304694

/-! ## A209703.P9511443145432789434

`A341882(n)+A138036(A063007(n))`
-/

namespace A209703.P9511443145432789434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341882 (n + 64) + A138036 (A063007 n).toNat

end

end A209703.P9511443145432789434

/-! ## A209703.P1345487489210862071

`A138036(A063007(n)-A341882(n))`
-/

namespace A209703.P1345487489210862071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (A063007 n - A341882 (n + 64)).toNat

end

end A209703.P1345487489210862071

/-!
# A209704: Triangle of coefficients of polynomials v(n,x) jointly generated with A209703; see the Formula section.

The programs for A209704, there is no canonical definition to state claims against.
-/

/-! ## A209704.P13371457875411729494

`A209756(n+1)+A210565(n+1)-A209755(n+1)`
-/

namespace A209704.P13371457875411729494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209756 (n + 1) + (A210565 (n + 1) - A209755 (n + 1))

end

end A209704.P13371457875411729494

/-! ## A209704.P4996153801991751009

`A209703(A014132(n+1)+1)-A209703(n+1)`
-/

namespace A209704.P4996153801991751009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209703 (A014132 (n + 1) + 1).toNat - A209703 (n + 1)

end

end A209704.P4996153801991751009

/-! ## A209704.P12398303990308256845

`A268643(A000957(n))+A210595(n+1)`
-/

namespace A209704.P12398303990308256845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A000957 n).toNat + A210595 (n + 1)

end

end A209704.P12398303990308256845

/-! ## A209704.P3212014397814794522

`A151933(A253180(n))+A094435(n+1)`
-/

namespace A209704.P3212014397814794522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A253180 n).toNat + A094435 (n + 1)

end

end A209704.P3212014397814794522

/-!
# A209705: Triangle of coefficients of polynomials u(n,x) jointly generated with A209706; see the Formula section.

The programs for A209705, the canonical program `A209705.P3780900180069936411` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209705 has offset 1).

The definition of A209705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209705.P3780900180069936411

`floor(A029635(n)/2*A059268(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A209705

/-- `floor(A029635(n)/2*A059268(n))` -/
def P3780900180069936411.Spec : Prop :=
  ∀ n, P3780900180069936411.a n = A209705 (n + 1)

theorem P3780900180069936411.correct : P3780900180069936411.Spec := by
  intro n
  simp only [A209705, Nat.add_sub_cancel]

end A209705

/-! ## A209705.P6259971199231274562

`A208913(n+1)+A208914(n+1)-A209706(n+1)`
-/

namespace A209705.P6259971199231274562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (n + 1) + (A208914 (n + 1) - A209706 (n + 1))

end

end A209705.P6259971199231274562

namespace A209705

/-- `A208913(n+1)+A208914(n+1)-A209706(n+1)` -/
def P6259971199231274562.Spec : Prop :=
  ∀ n, P6259971199231274562.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P8836350763415855534

`A207627(n+2)-A209706(n+1)`
-/

namespace A209705.P8836350763415855534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209706 (n + 1)

end

end A209705.P8836350763415855534

namespace A209705

/-- `A207627(n+2)-A209706(n+1)` -/
def P8836350763415855534.Spec : Prop :=
  ∀ n, P8836350763415855534.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P7381759879682396620

`A208324(A066182(n+1))-A209706(n+1)`
-/

namespace A209705.P7381759879682396620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A209706 (n + 1)

end

end A209705.P7381759879682396620

namespace A209705

/-- `A208324(A066182(n+1))-A209706(n+1)` -/
def P7381759879682396620.Spec : Prop :=
  ∀ n, P7381759879682396620.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P2083148081475404193

`A318518(A029635(n)*A059268(n))`
-/

namespace A209705.P2083148081475404193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A029635 n * A059268 n).toNat

end

end A209705.P2083148081475404193

namespace A209705

/-- `A318518(A029635(n)*A059268(n))` -/
def P2083148081475404193.Spec : Prop :=
  ∀ n, P2083148081475404193.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P6588405421234048641

`A318518(A207628(n+1)+A000007(n))`
-/

namespace A209705.P6588405421234048641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A207628 (n + 1) + A000007 n).toNat

end

end A209705.P6588405421234048641

namespace A209705

/-- `A318518(A207628(n+1)+A000007(n))` -/
def P6588405421234048641.Spec : Prop :=
  ∀ n, P6588405421234048641.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P573038124590903570

`A175126(A029635(n)*A059268(n))`
-/

namespace A209705.P573038124590903570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A029635 n * A059268 n).toNat

end

end A209705.P573038124590903570

namespace A209705

/-- `A175126(A029635(n)*A059268(n))` -/
def P573038124590903570.Spec : Prop :=
  ∀ n, P573038124590903570.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P14741212622082504735

`A246425(A029635(n)*A059268(n)-1)`
-/

namespace A209705.P14741212622082504735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A029635 n * A059268 n - 1).toNat

end

end A209705.P14741212622082504735

namespace A209705

/-- `A246425(A029635(n)*A059268(n)-1)` -/
def P14741212622082504735.Spec : Prop :=
  ∀ n, P14741212622082504735.a n = A209705 (n + 1)

end A209705

/-! ## A209705.P10654848234691546984

`A004526(A029635(n)*A059268(n))`
-/

namespace A209705.P10654848234691546984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A029635 n * A059268 n).toNat

end

end A209705.P10654848234691546984

namespace A209705

/-- `A004526(A029635(n)*A059268(n))` -/
def P10654848234691546984.Spec : Prop :=
  ∀ n, P10654848234691546984.a n = A209705 (n + 1)

end A209705

/-!
# A209706: Triangle of coefficients of polynomials v(n,x) jointly generated with A209705; see the Formula section.

The programs for A209706, the canonical program `A209706.P2086193192130295390` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209706 has offset 1).

The definition of A209706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209706.P287674580536281260

`A276985(n+1)-A209761(n+1)`
-/

namespace A209706.P287674580536281260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - A209761 (n + 1)

end

end A209706.P287674580536281260

namespace A209706

/-- `A276985(n+1)-A209761(n+1)` -/
def P287674580536281260.Spec : Prop :=
  ∀ n, P287674580536281260.a n = A209706 (n + 1)

theorem P287674580536281260.correct : P287674580536281260.Spec := by
  intro n
  simp only [A209706, Nat.add_sub_cancel, A209706.P287674580536281260.a, A209706.P2086193192130295390.a, A013609, A013609.P8535619279575218406.a, A193862, A193862.P608042678390646429.a, A209705, A209705.P3780900180069936411.a, A209761, A209761.P11541625464705178303.a, A276985, A276985.P4240912874753505783.a, A007318, A007318.P302227728145965961.a, A029635, A029635.P14447282759070454877.a, A059268, A059268.P15217573790077737885.a, A135278, A135278.P10862305414900331449.a, A018900, A018900.P2868698677378612256.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A097805, A097805.P1755176267250853107.a, A140513, A140513.P13579608035938851890.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209706

/-! ## A209706.P14933347755775191163

`2*A193862(n)-A209761(n+1)`
-/

namespace A209706.P14933347755775191163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193862 n - A209761 (n + 1)

end

end A209706.P14933347755775191163

namespace A209706

/-- `2*A193862(n)-A209761(n+1)` -/
def P14933347755775191163.Spec : Prop :=
  ∀ n, P14933347755775191163.a n = A209706 (n + 1)

theorem P14933347755775191163.correct : P14933347755775191163.Spec := by
  intro n
  simp only [A209706, Nat.add_sub_cancel, A209706.P14933347755775191163.a, A209706.P2086193192130295390.a, A013609, A013609.P8535619279575218406.a, A193862, A193862.P608042678390646429.a, A209705, A209705.P3780900180069936411.a, A209761, A209761.P11541625464705178303.a, A007318, A007318.P302227728145965961.a, A029635, A029635.P14447282759070454877.a, A059268, A059268.P15217573790077737885.a, A135278, A135278.P10862305414900331449.a, A276985, A276985.P4240912874753505783.a, A018900, A018900.P2868698677378612256.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A097805, A097805.P1755176267250853107.a, A140513, A140513.P13579608035938851890.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209706

/-! ## A209706.P2086193192130295390

`A013609(n)+A193862(n)-A209705(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209706

/-- `A013609(n)+A193862(n)-A209705(n+1)` -/
def P2086193192130295390.Spec : Prop :=
  ∀ n, P2086193192130295390.a n = A209706 (n + 1)

theorem P2086193192130295390.correct : P2086193192130295390.Spec := by
  intro n
  simp only [A209706, Nat.add_sub_cancel]

end A209706

/-! ## A209706.P5678136577357560285

`A208913(n+1)+A208914(n+1)-A209705(n+1)`
-/

namespace A209706.P5678136577357560285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (n + 1) + (A208914 (n + 1) - A209705 (n + 1))

end

end A209706.P5678136577357560285

namespace A209706

/-- `A208913(n+1)+A208914(n+1)-A209705(n+1)` -/
def P5678136577357560285.Spec : Prop :=
  ∀ n, P5678136577357560285.a n = A209706 (n + 1)

end A209706

/-! ## A209706.P7293721926400785878

`A209158(n+1)+A209159(n+1)-A209705(n+1)`
-/

namespace A209706.P7293721926400785878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + (A209159 (n + 1) - A209705 (n + 1))

end

end A209706.P7293721926400785878

namespace A209706

/-- `A209158(n+1)+A209159(n+1)-A209705(n+1)` -/
def P7293721926400785878.Spec : Prop :=
  ∀ n, P7293721926400785878.a n = A209706 (n + 1)

end A209706

/-! ## A209706.P4425138660303931301

`A209771(n+1)+A209772(n+1)-A209705(n+1)`
-/

namespace A209706.P4425138660303931301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + (A209772 (n + 1) - A209705 (n + 1))

end

end A209706.P4425138660303931301

namespace A209706

/-- `A209771(n+1)+A209772(n+1)-A209705(n+1)` -/
def P4425138660303931301.Spec : Prop :=
  ∀ n, P4425138660303931301.a n = A209706 (n + 1)

end A209706

/-! ## A209706.P13567252408098141663

`A207627(n+2)-A209705(n+1)`
-/

namespace A209706.P13567252408098141663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209705 (n + 1)

end

end A209706.P13567252408098141663

namespace A209706

/-- `A207627(n+2)-A209705(n+1)` -/
def P13567252408098141663.Spec : Prop :=
  ∀ n, P13567252408098141663.a n = A209706 (n + 1)

end A209706

/-! ## A209706.P11788265856949067979

`A013609(∑[A035214(n)])-A209761(n+1)`
-/

namespace A209706.P11788265856949067979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A209761 (n + 1)

end

end A209706.P11788265856949067979

namespace A209706

/-- `A013609(∑[A035214(n)])-A209761(n+1)` -/
def P11788265856949067979.Spec : Prop :=
  ∀ n, P11788265856949067979.a n = A209706 (n + 1)

end A209706

/-! ## A209706.P6834777033496528676

`A013609(A014132(n+1))-A209761(n+1)`
-/

namespace A209706.P6834777033496528676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A014132 (n + 1)).toNat - A209761 (n + 1)

end

end A209706.P6834777033496528676

namespace A209706

/-- `A013609(A014132(n+1))-A209761(n+1)` -/
def P6834777033496528676.Spec : Prop :=
  ∀ n, P6834777033496528676.a n = A209706 (n + 1)

end A209706

/-! ## A209706.P3816563097395465092

`A209705(A014132(n+1)+1)-A209705(n+1)`
-/

namespace A209706.P3816563097395465092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (A014132 (n + 1) + 1).toNat - A209705 (n + 1)

end

end A209706.P3816563097395465092

namespace A209706

/-- `A209705(A014132(n+1)+1)-A209705(n+1)` -/
def P3816563097395465092.Spec : Prop :=
  ∀ n, P3816563097395465092.a n = A209706 (n + 1)

end A209706

/-!
# A209707: Meandric numbers for a river crossing up to 15 parallel roads at n points.

The programs for A209707, there is no canonical definition to state claims against.
-/

/-! ## A209707.P14203041926277351482

`A210344(n)+A010815(A016946(n))`
-/

namespace A209707.P14203041926277351482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210344 n + A010815 (A016946 n).toNat

end

end A209707.P14203041926277351482

/-! ## A209707.P5821976868944821780

`A210478(n)+A010815(A016946(n))`
-/

namespace A209707.P5821976868944821780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210478 n + A010815 (A016946 n).toNat

end

end A209707.P5821976868944821780

/-! ## A209707.P11835517159248773185

`A210567(n)+A010815(A016946(n))`
-/

namespace A209707.P11835517159248773185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n + A010815 (A016946 n).toNat

end

end A209707.P11835517159248773185

/-! ## A209707.P6380330606671519053

`A210567(n)-A085974(A022171(n))`
-/

namespace A209707.P6380330606671519053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A085974 (A022171 n).toNat

end

end A209707.P6380330606671519053

/-! ## A209707.P12263880889243477974

`A210567(n)-A085974(A157156(n))`
-/

namespace A209707.P12263880889243477974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A085974 (A157156 n).toNat

end

end A209707.P12263880889243477974

/-!
# A209708: 1/4 the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having distinct clockwise edge differences.

The programs for A209708, there is no canonical definition to state claims against.
-/

/-! ## A209708.P16587139779641152885

`A209716((n+1)²+n²)`
-/

namespace A209708.P16587139779641152885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 ((n + 1) ^ 2 + n ^ 2)

end

end A209708.P16587139779641152885

/-!
# A209709: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209709, there is no canonical definition to state claims against.
-/

/-! ## A209709.P1087615432595570975

`A209716(∑[n]+1)`
-/

namespace A209709.P1087615432595570975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209709.P1087615432595570975

/-! ## A209709.P7582785344063667339

`record[A010054(n)*A209716(n+1)]`
-/

namespace A209709.P7582785344063667339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209709.P7582785344063667339

/-! ## A209709.P1851159392951120921

`record[A209716(n+1)/A022167(n)]`
-/

namespace A209709.P1851159392951120921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209716 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209709.P1851159392951120921

/-! ## A209709.P8595599371023379554

`record[gcd(A002262(n), A209716(n+1))]`
-/

namespace A209709.P8595599371023379554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209716 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209709.P8595599371023379554

/-! ## A209709.P84746809394573122

`record[root(A209716(n+1), A028246(n+1))]`
-/

namespace A209709.P84746809394573122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209716 (n + 1) : ℝ) ^ (1 / (A028246 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209709.P84746809394573122

/-!
# A209710: 1/4 the number of (n+1)X3 0..3 arrays with every 2X2 subblock having distinct clockwise edge differences.

The programs for A209710, there is no canonical definition to state claims against.
-/

/-! ## A209710.P13567375165913884147

`A209716(∑[n+1]+2)`
-/

namespace A209710.P13567375165913884147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209710.P13567375165913884147

/-! ## A209710.P7457334748005304340

`-Δ[-∑[A209716(A133263(n))]]`
-/

namespace A209710.P7457334748005304340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A133263 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A209710.P7457334748005304340

/-! ## A209710.P12883494522042959469

`record[A209716(A130270(n+1)+2)]`
-/

namespace A209710.P12883494522042959469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209710.P12883494522042959469

/-! ## A209710.P13327046216166514611

`record[A010054(n)*A209716(n+2)]`
-/

namespace A209710.P13327046216166514611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209716 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209710.P13327046216166514611

/-! ## A209710.P10246046560234943152

`record[gcd(A002262(n), A209716(n+2))]`
-/

namespace A209710.P10246046560234943152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209716 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209710.P10246046560234943152

/-!
# A209711: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having distinct clockwise edge differences.

The programs for A209711, there is no canonical definition to state claims against.
-/

/-! ## A209711.P17021725159003443380

`A209716(∑[n+2]+4)`
-/

namespace A209711.P17021725159003443380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209711.P17021725159003443380

/-! ## A209711.P9424289373533500429

`A209716(A167614(n+1))+A185238(n)`
-/

namespace A209711.P9424289373533500429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A167614 (n + 1)).toNat + A185238 n

end

end A209711.P9424289373533500429

/-! ## A209711.P132571937499037935

`or(A000007(n), A209716(A167614(n+1)))`
-/

namespace A209711.P132571937499037935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A209716 (A167614 (n + 1)).toNat)

end

end A209711.P132571937499037935

/-! ## A209711.P8639518724002965614

`or(A209716(A167614(n+1)), A292256(n))`
-/

namespace A209711.P8639518724002965614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209716 (A167614 (n + 1)).toNat) (A292256 n)

end

end A209711.P8639518724002965614

/-! ## A209711.P3456543571448487903

`or(A209716(A167614(n+1)), A316864(n))`
-/

namespace A209711.P3456543571448487903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209716 (A167614 (n + 1)).toNat) (A316864 n)

end

end A209711.P3456543571448487903

/-!
# A209712: 1/4 the number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209712, there is no canonical definition to state claims against.
-/

/-! ## A209712.P14932743771947058111

`A209716(A374004(n+1))`
-/

namespace A209712.P14932743771947058111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A374004 (n + 1)).toNat

end

end A209712.P14932743771947058111

/-! ## A209712.P5095651066816561256

`A209716(A052905(n)+9)`
-/

namespace A209712.P5095651066816561256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A052905 n + 9).toNat

end

end A209712.P5095651066816561256

/-! ## A209712.P5311831704168866052

`A209716(A055999(n)+10)`
-/

namespace A209712.P5311831704168866052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A055999 n + 10).toNat

end

end A209712.P5311831704168866052

/-! ## A209712.P9573942554452363510

`A209716(A167614(n+2)+1)`
-/

namespace A209712.P9573942554452363510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A167614 (n + 2) + 1).toNat

end

end A209712.P9573942554452363510

/-! ## A209712.P14010492682154521661

`A209716(A141214(n+1))`
-/

namespace A209712.P14010492682154521661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A141214 (n + 1)).toNat

end

end A209712.P14010492682154521661

/-!
# A209713: 1/4 the number of (n+1)X6 0..3 arrays with every 2X2 subblock having distinct clockwise edge differences.

The programs for A209713, there is no canonical definition to state claims against.
-/

/-! ## A209713.P2848947521615450520

`A209716(A374005(n+1))`
-/

namespace A209713.P2848947521615450520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A374005 (n + 1)).toNat

end

end A209713.P2848947521615450520

/-! ## A209713.P3731288488381443176

`A209716(A155212(n)+13)`
-/

namespace A209713.P3731288488381443176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A155212 n + 13).toNat

end

end A209713.P3731288488381443176

/-! ## A209713.P18001543984459805428

`A209716(A056000(n)+15)`
-/

namespace A209713.P18001543984459805428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A056000 n + 15).toNat

end

end A209713.P18001543984459805428

/-! ## A209713.P1719261263462611446

`A209716(eq[4, A193592(n)])`
-/

namespace A209713.P1719261263462611446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209713.P1719261263462611446

/-! ## A209713.P7972228444242872560

`A209716(eq[2, A098950(n)])`
-/

namespace A209713.P7972228444242872560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209713.P7972228444242872560

/-!
# A209714: 1/4 the number of (n+1)X7 0..3 arrays with every 2X2 subblock having distinct clockwise edge differences.

The programs for A209714, there is no canonical definition to state claims against.
-/

/-! ## A209714.P422991185719350911

`A209716(A374007(n+1))`
-/

namespace A209714.P422991185719350911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A374007 (n + 1)).toNat

end

end A209714.P422991185719350911

/-! ## A209714.P9083425984465781760

`A209716(eq[5, A193592(n)])`
-/

namespace A209714.P9083425984465781760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209714.P9083425984465781760

/-! ## A209714.P17816100719973280011

`A209716(Δ[Δ[A006504(n+1)]])`
-/

namespace A209714.P17816100719973280011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (f1 (n + 1) - f1 n).toNat

end

end A209714.P17816100719973280011

/-!
# A209715: 

The programs for A209715, there is no canonical definition to state claims against.
-/

/-! ## A209715.P10004363836091813307

`A209716(A000124(n+7)-7)`
-/

namespace A209715.P10004363836091813307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209716 (A000124 (n + 7) - 7).toNat

end

end A209715.P10004363836091813307

/-!
# A209717: Number of nX1 0..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209717, there is no canonical definition to state claims against.
-/

/-! ## A209717.P16497577952036767523

`A209720(∑[n]+1)`
-/

namespace A209717.P16497577952036767523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209717.P16497577952036767523

/-! ## A209717.P1439845226406236621

`record[A209720(A114091(n+1))]`
-/

namespace A209717.P1439845226406236621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209717.P1439845226406236621

/-! ## A209717.P5887149896754347963

`A209720(A000124(n))+char[8]`
-/

namespace A209717.P5887149896754347963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209717.P5887149896754347963

/-! ## A209717.P13913525963874886107

`record[A010054(n)*A209720(n+1)]`
-/

namespace A209717.P13913525963874886107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209717.P13913525963874886107

/-!
# A209718: Number of n X 2 0..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209718, there is no canonical definition to state claims against.
-/

/-! ## A209718.P13146515263200979775

`A209720(∑[n+1]+2)`
-/

namespace A209718.P13146515263200979775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209718.P13146515263200979775

/-! ## A209718.P1469184938991751590

`record[A209720(A184905(n+1))]`
-/

namespace A209718.P1469184938991751590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (A184905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209718.P1469184938991751590

/-! ## A209718.P14945764493633790710

`record[A209720(A114091(n+1)+1)]`
-/

namespace A209718.P14945764493633790710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209718.P14945764493633790710

/-!
# A209719: Number of nX3 0..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209719, there is no canonical definition to state claims against.
-/

/-! ## A209719.P8003093823738485776

`A209720(∑[n+2]+4)`
-/

namespace A209719.P8003093823738485776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209719.P8003093823738485776

/-! ## A209719.P12978867640296460855

`record[A209720(A336547(2*(n+2)))]`
-/

namespace A209719.P12978867640296460855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209720 (A336547 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209719.P12978867640296460855

/-!
# A209721: 1/4 the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209721, the canonical program `A209721.P2895894640332789596` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209721 has offset 1).

The definition of A209721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209721.P12345780486013821017

`∑[ogf((3+x-5x^2)/(1-2x^2))]`
-/

namespace A209721.P12345780486013821017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -5] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209721.P12345780486013821017

namespace A209721

/-- `∑[ogf((3+x-5x^2)/(1-2x^2))]` -/
def P12345780486013821017.Spec : Prop :=
  ∀ n, P12345780486013821017.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P4171818231453686325

`ogf((3+x-5x^2)/(1-x-2x^2+2x^3))`
-/

namespace A209721.P4171818231453686325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -5] [1, -1, -2, 2] n

end

end A209721.P4171818231453686325

namespace A209721

/-- `ogf((3+x-5x^2)/(1-x-2x^2+2x^3))` -/
def P4171818231453686325.Spec : Prop :=
  ∀ n, P4171818231453686325.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P2895894640332789596

`2*a(n-2)-1` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209721

/-- `2*a(n-2)-1` -/
def P2895894640332789596.Spec : Prop :=
  ∀ n, P2895894640332789596.a n = A209721 (n + 1)

theorem P2895894640332789596.correct : P2895894640332789596.Spec := by
  intro n
  simp only [A209721, Nat.add_sub_cancel]

end A209721

/-! ## A209721.P2775982509730566803

`xor(3, lcm(2, a(n-2)))` with `a(0)=3, a(1)=4`
-/

namespace A209721.P2775982509730566803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  Nat.xor 3 (Nat.lcm 2 (a (n - 2)))

end

end A209721.P2775982509730566803

namespace A209721

/-- `xor(3, lcm(2, a(n-2)))` -/
def P2775982509730566803.Spec : Prop :=
  ∀ n, (P2775982509730566803.a n : ℤ) = A209721 (n + 1)

end A209721

/-! ## A209721.P12556242077807072386

`∑[a(n-2)/sqrt(1/4)]` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A209721.P12556242077807072386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  f1 (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209721.P12556242077807072386

namespace A209721

/-- `∑[a(n-2)/sqrt(1/4)]` -/
def P12556242077807072386.Spec : Prop :=
  ∀ n, P12556242077807072386.a n = (A209721 (n + 1) : ℝ)

end A209721

/-! ## A209721.P1927613204063838099

`a(n-2)+a(n-2)-1` with `a(0)=3, a(1)=4`
-/

namespace A209721.P1927613204063838099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + (a (n - 2) - 1)

end

end A209721.P1927613204063838099

namespace A209721

/-- `a(n-2)+a(n-2)-1` -/
def P1927613204063838099.Spec : Prop :=
  ∀ n, P1927613204063838099.a n = A209721 (n + 1)

theorem P1927613204063838099.correct : P1927613204063838099.Spec := by
  intro n
  simp only [A209721, Nat.add_sub_cancel, A209721.P1927613204063838099.a, A209721.P2895894640332789596.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209721

/-! ## A209721.P6257214261537027427

`a(n-2)-(1-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A209721.P6257214261537027427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) - (1 - a (n - 2))

end

end A209721.P6257214261537027427

namespace A209721

/-- `a(n-2)-(1-a(n-2))` -/
def P6257214261537027427.Spec : Prop :=
  ∀ n, P6257214261537027427.a n = A209721 (n + 1)

theorem P6257214261537027427.correct : P6257214261537027427.Spec := by
  intro n
  simp only [A209721, Nat.add_sub_cancel, A209721.P6257214261537027427.a, A209721.P2895894640332789596.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209721

/-! ## A209721.P14066120900943466

`(4-n%2)*2^floor((n-1)/2)+1`
-/

namespace A209721.P14066120900943466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - ((n % 2 : ℕ) : ℤ) : ℚ) * (2 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) + 1

end

end A209721.P14066120900943466

namespace A209721

/-- `(4-n%2)*2^floor((n-1)/2)+1` -/
def P14066120900943466.Spec : Prop :=
  ∀ n, P14066120900943466.a n = (A209721 (n + 1) : ℚ)

end A209721

/-! ## A209721.P12755037966627113357

`A052955(n)+2`
-/

namespace A209721.P12755037966627113357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 2

end

end A209721.P12755037966627113357

namespace A209721

/-- `A052955(n)+2` -/
def P12755037966627113357.Spec : Prop :=
  ∀ n, P12755037966627113357.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P15496779577385346019

`A164090(n+1)+1`
-/

namespace A209721.P15496779577385346019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + 1

end

end A209721.P15496779577385346019

namespace A209721

/-- `A164090(n+1)+1` -/
def P15496779577385346019.Spec : Prop :=
  ∀ n, P15496779577385346019.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P9041495869054306737

`A029744(n+2)+1`
-/

namespace A209721.P9041495869054306737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + 1

end

end A209721.P9041495869054306737

namespace A209721

/-- `A029744(n+2)+1` -/
def P9041495869054306737.Spec : Prop :=
  ∀ n, P9041495869054306737.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P12786053462566397484

`A209722(n+1)-1`
-/

namespace A209721.P12786053462566397484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) - 1

end

end A209721.P12786053462566397484

namespace A209721

/-- `A209722(n+1)-1` -/
def P12786053462566397484.Spec : Prop :=
  ∀ n, P12786053462566397484.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P15856086149151456526

`A209723(n+1)-3`
-/

namespace A209721.P15856086149151456526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) - 3

end

end A209721.P15856086149151456526

namespace A209721

/-- `A209723(n+1)-3` -/
def P15856086149151456526.Spec : Prop :=
  ∀ n, P15856086149151456526.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P15661652249008697572

`A209724(n+1)-5`
-/

namespace A209721.P15661652249008697572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) - 5

end

end A209721.P15661652249008697572

namespace A209721

/-- `A209724(n+1)-5` -/
def P15661652249008697572.Spec : Prop :=
  ∀ n, P15661652249008697572.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P13201117975642757370

`A209725(n+1)-9`
-/

namespace A209721.P13201117975642757370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) - 9

end

end A209721.P13201117975642757370

namespace A209721

/-- `A209725(n+1)-9` -/
def P13201117975642757370.Spec : Prop :=
  ∀ n, P13201117975642757370.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P12353731011507354235

`∑[abs(A117575(n))]+2`
-/

namespace A209721.P12353731011507354235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A209721.P12353731011507354235

namespace A209721

/-- `∑[abs(A117575(n))]+2` -/
def P12353731011507354235.Spec : Prop :=
  ∀ n, P12353731011507354235.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P11360606392122662533

`∑[A158780(n+1)]+2`
-/

namespace A209721.P11360606392122662533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A209721.P11360606392122662533

namespace A209721

/-- `∑[A158780(n+1)]+2` -/
def P11360606392122662533.Spec : Prop :=
  ∀ n, P11360606392122662533.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P7103353199114930729

`A063759(n)+A054977(n)`
-/

namespace A209721.P7103353199114930729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n + A054977 n

end

end A209721.P7103353199114930729

namespace A209721

/-- `A063759(n)+A054977(n)` -/
def P7103353199114930729.Spec : Prop :=
  ∀ n, P7103353199114930729.a n = A209721 (n + 1)

end A209721

/-! ## A209721.P10226116053941520877

`∑[A011782(A065033(n))]+2`
-/

namespace A209721.P10226116053941520877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A209721.P10226116053941520877

namespace A209721

/-- `∑[A011782(A065033(n))]+2` -/
def P10226116053941520877.Spec : Prop :=
  ∀ n, P10226116053941520877.a n = A209721 (n + 1)

end A209721

/-!
# A209722: 1/4 the number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209722, the canonical program `A209722.P13005166823701892613` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209722 has offset 1).

The definition of A209722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209722.P12699019799142105384

`∑[ogf((4+x-7x^2)/(1-2x^2))]`
-/

namespace A209722.P12699019799142105384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -7] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209722.P12699019799142105384

namespace A209722

/-- `∑[ogf((4+x-7x^2)/(1-2x^2))]` -/
def P12699019799142105384.Spec : Prop :=
  ∀ n, P12699019799142105384.a n = A209722 (n + 1)

end A209722

/-! ## A209722.P6006705961343506313

`ogf((4+x-7x^2)/(1-x-2x^2+2x^3))`
-/

namespace A209722.P6006705961343506313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -7] [1, -1, -2, 2] n

end

end A209722.P6006705961343506313

namespace A209722

/-- `ogf((4+x-7x^2)/(1-x-2x^2+2x^3))` -/
def P6006705961343506313.Spec : Prop :=
  ∀ n, P6006705961343506313.a n = A209722 (n + 1)

end A209722

/-! ## A209722.P13005166823701892613

`2*(a(n-2)-1)` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209722

/-- `2*(a(n-2)-1)` -/
def P13005166823701892613.Spec : Prop :=
  ∀ n, P13005166823701892613.a n = A209722 (n + 1)

theorem P13005166823701892613.correct : P13005166823701892613.Spec := by
  intro n
  simp only [A209722, Nat.add_sub_cancel]

end A209722

/-! ## A209722.P12100877291654926763

`a(n-2)+a(n-2)-2` with `a(0)=4, a(1)=5`
-/

namespace A209722.P12100877291654926763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) + (a (n - 2) - 2)

end

end A209722.P12100877291654926763

namespace A209722

/-- `a(n-2)+a(n-2)-2` -/
def P12100877291654926763.Spec : Prop :=
  ∀ n, P12100877291654926763.a n = A209722 (n + 1)

theorem P12100877291654926763.correct : P12100877291654926763.Spec := by
  intro n
  simp only [A209722, Nat.add_sub_cancel, A209722.P12100877291654926763.a, A209722.P13005166823701892613.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209722

/-! ## A209722.P2911922014496470672

`a(n-2)-(2-a(n-2))` with `a(0)=4, a(1)=5`
-/

namespace A209722.P2911922014496470672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) - (2 - a (n - 2))

end

end A209722.P2911922014496470672

namespace A209722

/-- `a(n-2)-(2-a(n-2))` -/
def P2911922014496470672.Spec : Prop :=
  ∀ n, P2911922014496470672.a n = A209722 (n + 1)

theorem P2911922014496470672.correct : P2911922014496470672.Spec := by
  intro n
  simp only [A209722, Nat.add_sub_cancel, A209722.P2911922014496470672.a, A209722.P13005166823701892613.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209722

/-! ## A209722.P13084959782011058151

`2^floor(n/2)+2^floor((n+1)/2)+2`
-/

namespace A209722.P13084959782011058151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) + 2

end

end A209722.P13084959782011058151

namespace A209722

/-- `2^floor(n/2)+2^floor((n+1)/2)+2` -/
def P13084959782011058151.Spec : Prop :=
  ∀ n, P13084959782011058151.a n = (A209722 (n + 1) : ℚ)

end A209722

/-! ## A209722.P9667471338388570843

`A209723(n+3)/2`
-/

namespace A209722.P9667471338388570843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209723 (n + 3) : ℚ) / 2

end

end A209722.P9667471338388570843

namespace A209722

/-- `A209723(n+3)/2` -/
def P9667471338388570843.Spec : Prop :=
  ∀ n, P9667471338388570843.a n = (A209722 (n + 1) : ℚ)

end A209722

/-! ## A209722.P18030355039024558668

`A183980(n+1)%A140504(n)`
-/

namespace A209722.P18030355039024558668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183980 (n + 1)) (A140504 n)

end

end A209722.P18030355039024558668

namespace A209722

/-- `A183980(n+1)%A140504(n)` -/
def P18030355039024558668.Spec : Prop :=
  ∀ n, P18030355039024558668.a n = A209722 (n + 1)

end A209722

/-! ## A209722.P7274610850453754448

`A183981(n+1)%A246139(n)`
-/

namespace A209722.P7274610850453754448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183981 (n + 1)) (A246139 n)

end

end A209722.P7274610850453754448

namespace A209722

/-- `A183981(n+1)%A246139(n)` -/
def P7274610850453754448.Spec : Prop :=
  ∀ n, P7274610850453754448.a n = A209722 (n + 1)

end A209722

/-! ## A209722.P1140717625023016789

`A209727(A167614(n+1))`
-/

namespace A209722.P1140717625023016789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209727 (A167614 (n + 1)).toNat

end

end A209722.P1140717625023016789

namespace A209722

/-- `A209727(A167614(n+1))` -/
def P1140717625023016789.Spec : Prop :=
  ∀ n, P1140717625023016789.a n = A209722 (n + 1)

end A209722

/-!
# A209723: 1/4 the number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209723, the canonical program `A209723.P6136929982173076576` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209723 has offset 1).

The definition of A209723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209723.P6136929982173076576

`2*(a(n-2)-2)` with `a(0)=6, a(1)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209723

/-- `2*(a(n-2)-2)` -/
def P6136929982173076576.Spec : Prop :=
  ∀ n, P6136929982173076576.a n = A209723 (n + 1)

theorem P6136929982173076576.correct : P6136929982173076576.Spec := by
  intro n
  simp only [A209723, Nat.add_sub_cancel]

end A209723

/-! ## A209723.P12208129646011751647

`a(n-2)+a(n-2)-4` with `a(0)=6, a(1)=7`
-/

namespace A209723.P12208129646011751647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n a =>
  a (n - 2) + (a (n - 2) - 4)

end

end A209723.P12208129646011751647

namespace A209723

/-- `a(n-2)+a(n-2)-4` -/
def P12208129646011751647.Spec : Prop :=
  ∀ n, P12208129646011751647.a n = A209723 (n + 1)

theorem P12208129646011751647.correct : P12208129646011751647.Spec := by
  intro n
  simp only [A209723, Nat.add_sub_cancel, A209723.P12208129646011751647.a, A209723.P6136929982173076576.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209723

/-! ## A209723.P14401202564994740272

`a(n-2)-(4-a(n-2))` with `a(0)=6, a(1)=7`
-/

namespace A209723.P14401202564994740272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7] fun n a =>
  a (n - 2) - (4 - a (n - 2))

end

end A209723.P14401202564994740272

namespace A209723

/-- `a(n-2)-(4-a(n-2))` -/
def P14401202564994740272.Spec : Prop :=
  ∀ n, P14401202564994740272.a n = A209723 (n + 1)

theorem P14401202564994740272.correct : P14401202564994740272.Spec := by
  intro n
  simp only [A209723, Nat.add_sub_cancel, A209723.P14401202564994740272.a, A209723.P6136929982173076576.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209723

/-! ## A209723.P208969542795601540

`4+(4-n%2)*2^floor((n-1)/2)`
-/

namespace A209723.P208969542795601540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 + (4 - ((n % 2 : ℕ) : ℤ) : ℚ) * (2 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ)

end

end A209723.P208969542795601540

namespace A209723

/-- `4+(4-n%2)*2^floor((n-1)/2)` -/
def P208969542795601540.Spec : Prop :=
  ∀ n, P208969542795601540.a n = (A209723 (n + 1) : ℚ)

end A209723

/-! ## A209723.P10208367559749748856

`A052955(n)+5`
-/

namespace A209723.P10208367559749748856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 5

end

end A209723.P10208367559749748856

namespace A209723

/-- `A052955(n)+5` -/
def P10208367559749748856.Spec : Prop :=
  ∀ n, P10208367559749748856.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P9983162200494075324

`A209722(n+1)+2`
-/

namespace A209723.P9983162200494075324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + 2

end

end A209723.P9983162200494075324

namespace A209723

/-- `A209722(n+1)+2` -/
def P9983162200494075324.Spec : Prop :=
  ∀ n, P9983162200494075324.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P1540404969983677361

`A209721(n+1)+3`
-/

namespace A209723.P1540404969983677361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + 3

end

end A209723.P1540404969983677361

namespace A209723

/-- `A209721(n+1)+3` -/
def P1540404969983677361.Spec : Prop :=
  ∀ n, P1540404969983677361.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P3349927238462826967

`A209724(n+1)-2`
-/

namespace A209723.P3349927238462826967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) - 2

end

end A209723.P3349927238462826967

namespace A209723

/-- `A209724(n+1)-2` -/
def P3349927238462826967.Spec : Prop :=
  ∀ n, P3349927238462826967.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P15421396326646953611

`A164090(n+1)+4`
-/

namespace A209723.P15421396326646953611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + 4

end

end A209723.P15421396326646953611

namespace A209723

/-- `A164090(n+1)+4` -/
def P15421396326646953611.Spec : Prop :=
  ∀ n, P15421396326646953611.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P11161615547032641053

`A029744(n+2)+4`
-/

namespace A209723.P11161615547032641053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + 4

end

end A209723.P11161615547032641053

namespace A209723

/-- `A029744(n+2)+4` -/
def P11161615547032641053.Spec : Prop :=
  ∀ n, P11161615547032641053.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P14683432417706713015

`A209725(n+1)-6`
-/

namespace A209723.P14683432417706713015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) - 6

end

end A209723.P14683432417706713015

namespace A209723

/-- `A209725(n+1)-6` -/
def P14683432417706713015.Spec : Prop :=
  ∀ n, P14683432417706713015.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P12122899952961128591

`∑[A158780(n+1)]+5`
-/

namespace A209723.P12122899952961128591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A209723.P12122899952961128591

namespace A209723

/-- `∑[A158780(n+1)]+5` -/
def P12122899952961128591.Spec : Prop :=
  ∀ n, P12122899952961128591.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P14772131339593660028

`A016116(n-1)+a(n-1)` with `a(0)=6`
-/

namespace A209723.P14772131339593660028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A016116 (n - 1) + a (n - 1)

end

end A209723.P14772131339593660028

namespace A209723

/-- `A016116(n-1)+a(n-1)` -/
def P14772131339593660028.Spec : Prop :=
  ∀ n, P14772131339593660028.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P16935167232347366980

`A343177(n)+A054977(n)`
-/

namespace A209723.P16935167232347366980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 n + A054977 n

end

end A209723.P16935167232347366980

namespace A209723

/-- `A343177(n)+A054977(n)` -/
def P16935167232347366980.Spec : Prop :=
  ∀ n, P16935167232347366980.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P4061162223143485355

`A057428(n)+A343177(n)+2`
-/

namespace A209723.P4061162223143485355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A343177 n + 2)

end

end A209723.P4061162223143485355

namespace A209723

/-- `A057428(n)+A343177(n)+2` -/
def P4061162223143485355.Spec : Prop :=
  ∀ n, P4061162223143485355.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P16475463101107323111

`A343177(n)+2-A057427(n)`
-/

namespace A209723.P16475463101107323111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 n + (2 - A057427 n)

end

end A209723.P16475463101107323111

namespace A209723

/-- `A343177(n)+2-A057427(n)` -/
def P16475463101107323111.Spec : Prop :=
  ∀ n, P16475463101107323111.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P3797948085629421379

`A343177(n+1)+1-A016116(n)`
-/

namespace A209723.P3797948085629421379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (n + 1) + (1 - A016116 n)

end

end A209723.P3797948085629421379

namespace A209723

/-- `A343177(n+1)+1-A016116(n)` -/
def P3797948085629421379.Spec : Prop :=
  ∀ n, P3797948085629421379.a n = A209723 (n + 1)

end A209723

/-! ## A209723.P13311620005937807273

`A209724(n+3)/2+1`
-/

namespace A209723.P13311620005937807273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209724 (n + 3) : ℚ) / 2 + 1

end

end A209723.P13311620005937807273

namespace A209723

/-- `A209724(n+3)/2+1` -/
def P13311620005937807273.Spec : Prop :=
  ∀ n, P13311620005937807273.a n = (A209723 (n + 1) : ℚ)

end A209723

/-! ## A209723.P1785377479206898533

`A090989(n+1)/2+4`
-/

namespace A209723.P1785377479206898533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090989 (n + 1) : ℚ) / 2 + 4

end

end A209723.P1785377479206898533

namespace A209723

/-- `A090989(n+1)/2+4` -/
def P1785377479206898533.Spec : Prop :=
  ∀ n, P1785377479206898533.a n = (A209723 (n + 1) : ℚ)

end A209723

/-!
# A209724: 1/4 the number of (n+1) X 6 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209724, the canonical program `A209724.P8347883322755834197` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209724 has offset 1).

The definition of A209724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209724.P8347883322755834197

`2*(a(n-2)-3)` with `a(0)=8, a(1)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209724

/-- `2*(a(n-2)-3)` -/
def P8347883322755834197.Spec : Prop :=
  ∀ n, P8347883322755834197.a n = A209724 (n + 1)

theorem P8347883322755834197.correct : P8347883322755834197.Spec := by
  intro n
  simp only [A209724, Nat.add_sub_cancel]

end A209724

/-! ## A209724.P4083567023305867622

`a(n-2)+a(n-2)-6` with `a(0)=8, a(1)=9`
-/

namespace A209724.P4083567023305867622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9] fun n a =>
  a (n - 2) + (a (n - 2) - 6)

end

end A209724.P4083567023305867622

namespace A209724

/-- `a(n-2)+a(n-2)-6` -/
def P4083567023305867622.Spec : Prop :=
  ∀ n, P4083567023305867622.a n = A209724 (n + 1)

theorem P4083567023305867622.correct : P4083567023305867622.Spec := by
  intro n
  simp only [A209724, Nat.add_sub_cancel, A209724.P4083567023305867622.a, A209724.P8347883322755834197.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209724

/-! ## A209724.P10836483772630050248

`a(n-2)-(6-a(n-2))` with `a(0)=8, a(1)=9`
-/

namespace A209724.P10836483772630050248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9] fun n a =>
  a (n - 2) - (6 - a (n - 2))

end

end A209724.P10836483772630050248

namespace A209724

/-- `a(n-2)-(6-a(n-2))` -/
def P10836483772630050248.Spec : Prop :=
  ∀ n, P10836483772630050248.a n = A209724 (n + 1)

theorem P10836483772630050248.correct : P10836483772630050248.Spec := by
  intro n
  simp only [A209724, Nat.add_sub_cancel, A209724.P10836483772630050248.a, A209724.P8347883322755834197.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209724

/-! ## A209724.P14494818695294716815

`A052955(n)+7`
-/

namespace A209724.P14494818695294716815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 7

end

end A209724.P14494818695294716815

namespace A209724

/-- `A052955(n)+7` -/
def P14494818695294716815.Spec : Prop :=
  ∀ n, P14494818695294716815.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P4234805309484089730

`A209723(n+1)+2`
-/

namespace A209724.P4234805309484089730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + 2

end

end A209724.P4234805309484089730

namespace A209724

/-- `A209723(n+1)+2` -/
def P4234805309484089730.Spec : Prop :=
  ∀ n, P4234805309484089730.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P18393919754718736417

`A209722(n+1)+4`
-/

namespace A209724.P18393919754718736417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + 4

end

end A209724.P18393919754718736417

namespace A209724

/-- `A209722(n+1)+4` -/
def P18393919754718736417.Spec : Prop :=
  ∀ n, P18393919754718736417.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P12625537074188210557

`A209721(n+1)+5`
-/

namespace A209724.P12625537074188210557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + 5

end

end A209724.P12625537074188210557

namespace A209724

/-- `A209721(n+1)+5` -/
def P12625537074188210557.Spec : Prop :=
  ∀ n, P12625537074188210557.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P8062178768680867355

`A209725(n+1)-4`
-/

namespace A209724.P8062178768680867355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) - 4

end

end A209724.P8062178768680867355

namespace A209724

/-- `A209725(n+1)-4` -/
def P8062178768680867355.Spec : Prop :=
  ∀ n, P8062178768680867355.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P9530944988577746152

`A164090(n+1)+6`
-/

namespace A209724.P9530944988577746152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + 6

end

end A209724.P9530944988577746152

namespace A209724

/-- `A164090(n+1)+6` -/
def P9530944988577746152.Spec : Prop :=
  ∀ n, P9530944988577746152.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P5857551904969684546

`A029744(n+2)+6`
-/

namespace A209724.P5857551904969684546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + 6

end

end A209724.P5857551904969684546

namespace A209724

/-- `A029744(n+2)+6` -/
def P5857551904969684546.Spec : Prop :=
  ∀ n, P5857551904969684546.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P3281978945834094151

`A209726(n+1)-8`
-/

namespace A209724.P3281978945834094151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209726 (n + 1) - 8

end

end A209724.P3281978945834094151

namespace A209724

/-- `A209726(n+1)-8` -/
def P3281978945834094151.Spec : Prop :=
  ∀ n, P3281978945834094151.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P4046882632433006004

`∑[A158780(n+1)]+7`
-/

namespace A209724.P4046882632433006004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A209724.P4046882632433006004

namespace A209724

/-- `∑[A158780(n+1)]+7` -/
def P4046882632433006004.Spec : Prop :=
  ∀ n, P4046882632433006004.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P18108350294038058517

`A016116(n-1)+a(n-1)` with `a(0)=8`
-/

namespace A209724.P18108350294038058517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A016116 (n - 1) + a (n - 1)

end

end A209724.P18108350294038058517

namespace A209724

/-- `A016116(n-1)+a(n-1)` -/
def P18108350294038058517.Spec : Prop :=
  ∀ n, P18108350294038058517.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P1692857812328820260

`A054977(n)+A343177(n)+2`
-/

namespace A209724.P1692857812328820260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A343177 n + 2)

end

end A209724.P1692857812328820260

namespace A209724

/-- `A054977(n)+A343177(n)+2` -/
def P1692857812328820260.Spec : Prop :=
  ∀ n, P1692857812328820260.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P118906372256566597

`A209725(n+3)/2+1`
-/

namespace A209724.P118906372256566597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209725 (n + 3) : ℚ) / 2 + 1

end

end A209724.P118906372256566597

namespace A209724

/-- `A209725(n+3)/2+1` -/
def P118906372256566597.Spec : Prop :=
  ∀ n, P118906372256566597.a n = (A209724 (n + 1) : ℚ)

end A209724

/-! ## A209724.P2597993090307097841

`Δ[A070875(n)]+6`
-/

namespace A209724.P2597993090307097841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 6

end

end A209724.P2597993090307097841

namespace A209724

/-- `Δ[A070875(n)]+6` -/
def P2597993090307097841.Spec : Prop :=
  ∀ n, P2597993090307097841.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P6184052013538640679

`A123760(2*n+1)-A063757(n)`
-/

namespace A209724.P6184052013538640679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (2 * n + 1) - A063757 n

end

end A209724.P6184052013538640679

namespace A209724

/-- `A123760(2*n+1)-A063757(n)` -/
def P6184052013538640679.Spec : Prop :=
  ∀ n, P6184052013538640679.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P5763795436567514162

`A070875(n+1)+A070875(n)-A063757(n+1)`
-/

namespace A209724.P5763795436567514162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (n + 1) + (A070875 n - A063757 (n + 1))

end

end A209724.P5763795436567514162

namespace A209724

/-- `A070875(n+1)+A070875(n)-A063757(n+1)` -/
def P5763795436567514162.Spec : Prop :=
  ∀ n, P5763795436567514162.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P14818085048923019186

`A063920(n+1)-(A070875(n)+A063757(n))`
-/

namespace A209724.P14818085048923019186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063920 (n + 1) - (A070875 n + A063757 n)

end

end A209724.P14818085048923019186

namespace A209724

/-- `A063920(n+1)-(A070875(n)+A063757(n))` -/
def P14818085048923019186.Spec : Prop :=
  ∀ n, P14818085048923019186.a n = A209724 (n + 1)

end A209724

/-! ## A209724.P15838529223266722090

`A386707(n+1)-A295730(n)`
-/

namespace A209724.P15838529223266722090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386707 (n + 1) - A295730 n

end

end A209724.P15838529223266722090

namespace A209724

/-- `A386707(n+1)-A295730(n)` -/
def P15838529223266722090.Spec : Prop :=
  ∀ n, P15838529223266722090.a n = A209724 (n + 1)

end A209724

/-!
# A209725: 1/4 the number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209725, the canonical program `A209725.P15523822458420071895` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209725 has offset 1).

The definition of A209725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209725.P15523822458420071895

`2*(a(n-2)-5)` with `a(0)=12, a(1)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209725

/-- `2*(a(n-2)-5)` -/
def P15523822458420071895.Spec : Prop :=
  ∀ n, P15523822458420071895.a n = A209725 (n + 1)

theorem P15523822458420071895.correct : P15523822458420071895.Spec := by
  intro n
  simp only [A209725, Nat.add_sub_cancel]

end A209725

/-! ## A209725.P7653748432238036031

`a(n-2)+a(n-2)-10` with `a(0)=12, a(1)=13`
-/

namespace A209725.P7653748432238036031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 13] fun n a =>
  a (n - 2) + (a (n - 2) - 10)

end

end A209725.P7653748432238036031

namespace A209725

/-- `a(n-2)+a(n-2)-10` -/
def P7653748432238036031.Spec : Prop :=
  ∀ n, P7653748432238036031.a n = A209725 (n + 1)

theorem P7653748432238036031.correct : P7653748432238036031.Spec := by
  intro n
  simp only [A209725, Nat.add_sub_cancel, A209725.P7653748432238036031.a, A209725.P15523822458420071895.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209725

/-! ## A209725.P1868260310127707270

`a(n-2)-(10-a(n-2))` with `a(0)=12, a(1)=13`
-/

namespace A209725.P1868260310127707270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 13] fun n a =>
  a (n - 2) - (10 - a (n - 2))

end

end A209725.P1868260310127707270

namespace A209725

/-- `a(n-2)-(10-a(n-2))` -/
def P1868260310127707270.Spec : Prop :=
  ∀ n, P1868260310127707270.a n = A209725 (n + 1)

theorem P1868260310127707270.correct : P1868260310127707270.Spec := by
  intro n
  simp only [A209725, Nat.add_sub_cancel, A209725.P1868260310127707270.a, A209725.P15523822458420071895.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209725

/-! ## A209725.P18080259830089967554

`A052955(n)+11`
-/

namespace A209725.P18080259830089967554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 11

end

end A209725.P18080259830089967554

namespace A209725

/-- `A052955(n)+11` -/
def P18080259830089967554.Spec : Prop :=
  ∀ n, P18080259830089967554.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P1538340848973218396

`A209724(n+1)+4`
-/

namespace A209725.P1538340848973218396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + 4

end

end A209725.P1538340848973218396

namespace A209725

/-- `A209724(n+1)+4` -/
def P1538340848973218396.Spec : Prop :=
  ∀ n, P1538340848973218396.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P14172972049881834379

`A209726(n+1)-4`
-/

namespace A209725.P14172972049881834379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209726 (n + 1) - 4

end

end A209725.P14172972049881834379

namespace A209725

/-- `A209726(n+1)-4` -/
def P14172972049881834379.Spec : Prop :=
  ∀ n, P14172972049881834379.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P13335563341046506543

`A209723(n+1)+6`
-/

namespace A209725.P13335563341046506543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + 6

end

end A209725.P13335563341046506543

namespace A209725

/-- `A209723(n+1)+6` -/
def P13335563341046506543.Spec : Prop :=
  ∀ n, P13335563341046506543.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P8538867310764903270

`A209722(n+1)+8`
-/

namespace A209725.P8538867310764903270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + 8

end

end A209725.P8538867310764903270

namespace A209725

/-- `A209722(n+1)+8` -/
def P8538867310764903270.Spec : Prop :=
  ∀ n, P8538867310764903270.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P11591971453911514190

`A209721(n+1)+9`
-/

namespace A209725.P11591971453911514190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + 9

end

end A209725.P11591971453911514190

namespace A209725

/-- `A209721(n+1)+9` -/
def P11591971453911514190.Spec : Prop :=
  ∀ n, P11591971453911514190.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P16719622826877059289

`A164090(n+1)+10`
-/

namespace A209725.P16719622826877059289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + 10

end

end A209725.P16719622826877059289

namespace A209725

/-- `A164090(n+1)+10` -/
def P16719622826877059289.Spec : Prop :=
  ∀ n, P16719622826877059289.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P9745552932350087046

`A029744(n+2)+10`
-/

namespace A209725.P9745552932350087046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + 10

end

end A209725.P9745552932350087046

namespace A209725

/-- `A029744(n+2)+10` -/
def P9745552932350087046.Spec : Prop :=
  ∀ n, P9745552932350087046.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P18120529947649753295

`A209726(n+3)/2+3`
-/

namespace A209725.P18120529947649753295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209726 (n + 3) : ℚ) / 2 + 3

end

end A209725.P18120529947649753295

namespace A209725

/-- `A209726(n+3)/2+3` -/
def P18120529947649753295.Spec : Prop :=
  ∀ n, P18120529947649753295.a n = (A209725 (n + 1) : ℚ)

end A209725

/-! ## A209725.P6873444917342897524

`Δ[A070875(n)]+10`
-/

namespace A209725.P6873444917342897524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 10

end

end A209725.P6873444917342897524

namespace A209725

/-- `Δ[A070875(n)]+10` -/
def P6873444917342897524.Spec : Prop :=
  ∀ n, P6873444917342897524.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P6332369226612776307

`10+A070004(n+2)/5`
-/

namespace A209725.P6332369226612776307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 + (A070004 (n + 2) : ℚ) / 5

end

end A209725.P6332369226612776307

namespace A209725

/-- `10+A070004(n+2)/5` -/
def P6332369226612776307.Spec : Prop :=
  ∀ n, P6332369226612776307.a n = (A209725 (n + 1) : ℚ)

end A209725

/-! ## A209725.P2314940841032202905

`A267615(n)-A274230(n)`
-/

namespace A209725.P2314940841032202905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 n - A274230 n

end

end A209725.P2314940841032202905

namespace A209725

/-- `A267615(n)-A274230(n)` -/
def P2314940841032202905.Spec : Prop :=
  ∀ n, P2314940841032202905.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P9090780437886184703

`A183981(n+1)-A052548(n)`
-/

namespace A209725.P9090780437886184703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) - A052548 n

end

end A209725.P9090780437886184703

namespace A209725

/-- `A183981(n+1)-A052548(n)` -/
def P9090780437886184703.Spec : Prop :=
  ∀ n, P9090780437886184703.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P10863978819740075884

`A183978(n+1)-A185346(n)`
-/

namespace A209725.P10863978819740075884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 1) - A185346 n

end

end A209725.P10863978819740075884

namespace A209725

/-- `A183978(n+1)-A185346(n)` -/
def P10863978819740075884.Spec : Prop :=
  ∀ n, P10863978819740075884.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P1693042389066365637

`A183981(n+1)-(A000051(n)+1)`
-/

namespace A209725.P1693042389066365637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) - (A000051 n + 1)

end

end A209725.P1693042389066365637

namespace A209725

/-- `A183981(n+1)-(A000051(n)+1)` -/
def P1693042389066365637.Spec : Prop :=
  ∀ n, P1693042389066365637.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P8131791718046993437

`A183981(n+1)-(A000079(n)+2)`
-/

namespace A209725.P8131791718046993437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) - (A000079 n + 2)

end

end A209725.P8131791718046993437

namespace A209725

/-- `A183981(n+1)-(A000079(n)+2)` -/
def P8131791718046993437.Spec : Prop :=
  ∀ n, P8131791718046993437.a n = A209725 (n + 1)

end A209725

/-! ## A209725.P15960668899965854845

`A183979(n+1)+2-A168616(n)`
-/

namespace A209725.P15960668899965854845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + (2 - A168616 n)

end

end A209725.P15960668899965854845

namespace A209725

/-- `A183979(n+1)+2-A168616(n)` -/
def P15960668899965854845.Spec : Prop :=
  ∀ n, P15960668899965854845.a n = A209725 (n + 1)

end A209725

/-!
# A209726: 1/4 the number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209726, the canonical program `A209726.P16224831591025779515` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209726 has offset 1).

The definition of A209726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209726.P16224831591025779515

`2*(a(n-2)-7)` with `a(0)=16, a(1)=17`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209726

/-- `2*(a(n-2)-7)` -/
def P16224831591025779515.Spec : Prop :=
  ∀ n, P16224831591025779515.a n = A209726 (n + 1)

theorem P16224831591025779515.correct : P16224831591025779515.Spec := by
  intro n
  simp only [A209726, Nat.add_sub_cancel]

end A209726

/-! ## A209726.P4739724864693483360

`a(n-2)+a(n-2)-14` with `a(0)=16, a(1)=17`
-/

namespace A209726.P4739724864693483360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 17] fun n a =>
  a (n - 2) + (a (n - 2) - 14)

end

end A209726.P4739724864693483360

namespace A209726

/-- `a(n-2)+a(n-2)-14` -/
def P4739724864693483360.Spec : Prop :=
  ∀ n, P4739724864693483360.a n = A209726 (n + 1)

theorem P4739724864693483360.correct : P4739724864693483360.Spec := by
  intro n
  simp only [A209726, Nat.add_sub_cancel, A209726.P4739724864693483360.a, A209726.P16224831591025779515.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209726

/-! ## A209726.P7114016736301817750

`a(n-2)-(14-a(n-2))` with `a(0)=16, a(1)=17`
-/

namespace A209726.P7114016736301817750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 17] fun n a =>
  a (n - 2) - (14 - a (n - 2))

end

end A209726.P7114016736301817750

namespace A209726

/-- `a(n-2)-(14-a(n-2))` -/
def P7114016736301817750.Spec : Prop :=
  ∀ n, P7114016736301817750.a n = A209726 (n + 1)

theorem P7114016736301817750.correct : P7114016736301817750.Spec := by
  intro n
  simp only [A209726, Nat.add_sub_cancel, A209726.P7114016736301817750.a, A209726.P16224831591025779515.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A209726

/-! ## A209726.P10000565268843608633

`A052955(n)+15`
-/

namespace A209726.P10000565268843608633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 15

end

end A209726.P10000565268843608633

namespace A209726

/-- `A052955(n)+15` -/
def P10000565268843608633.Spec : Prop :=
  ∀ n, P10000565268843608633.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P12589932786140196703

`A209725(n+1)+4`
-/

namespace A209726.P12589932786140196703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + 4

end

end A209726.P12589932786140196703

namespace A209726

/-- `A209725(n+1)+4` -/
def P12589932786140196703.Spec : Prop :=
  ∀ n, P12589932786140196703.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P15454752688644115111

`A209724(n+1)+8`
-/

namespace A209726.P15454752688644115111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + 8

end

end A209726.P15454752688644115111

namespace A209726

/-- `A209724(n+1)+8` -/
def P15454752688644115111.Spec : Prop :=
  ∀ n, P15454752688644115111.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P851841423190118672

`A209723(n+1)+10`
-/

namespace A209726.P851841423190118672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + 10

end

end A209726.P851841423190118672

namespace A209726

/-- `A209723(n+1)+10` -/
def P851841423190118672.Spec : Prop :=
  ∀ n, P851841423190118672.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P17314387764517294601

`A209722(n+1)+12`
-/

namespace A209726.P17314387764517294601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + 12

end

end A209726.P17314387764517294601

namespace A209726

/-- `A209722(n+1)+12` -/
def P17314387764517294601.Spec : Prop :=
  ∀ n, P17314387764517294601.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P8063199922877596125

`A164090(n+1)+14`
-/

namespace A209726.P8063199922877596125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + 14

end

end A209726.P8063199922877596125

namespace A209726

/-- `A164090(n+1)+14` -/
def P8063199922877596125.Spec : Prop :=
  ∀ n, P8063199922877596125.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P11197840754642579724

`Δ[A070875(n)]+14`
-/

namespace A209726.P11197840754642579724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 14

end

end A209726.P11197840754642579724

namespace A209726

/-- `Δ[A070875(n)]+14` -/
def P11197840754642579724.Spec : Prop :=
  ∀ n, P11197840754642579724.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P17376385483577695019

`A183981(n+1)-A000918(n)`
-/

namespace A209726.P17376385483577695019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) - A000918 n

end

end A209726.P17376385483577695019

namespace A209726

/-- `A183981(n+1)-A000918(n)` -/
def P17376385483577695019.Spec : Prop :=
  ∀ n, P17376385483577695019.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P17683794176495366499

`A183982(n+1)-A242475(n)`
-/

namespace A209726.P17683794176495366499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) - A242475 n

end

end A209726.P17683794176495366499

namespace A209726

/-- `A183982(n+1)-A242475(n)` -/
def P17683794176495366499.Spec : Prop :=
  ∀ n, P17683794176495366499.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P5449991892567184164

`A183981(n+1)+1-A000225(n)`
-/

namespace A209726.P5449991892567184164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) + (1 - A000225 n)

end

end A209726.P5449991892567184164

namespace A209726

/-- `A183981(n+1)+1-A000225(n)` -/
def P5449991892567184164.Spec : Prop :=
  ∀ n, P5449991892567184164.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P555094599470375827

`A183981(n+1)+2-A000079(n)`
-/

namespace A209726.P555094599470375827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) + (2 - A000079 n)

end

end A209726.P555094599470375827

namespace A209726

/-- `A183981(n+1)+2-A000079(n)` -/
def P555094599470375827.Spec : Prop :=
  ∀ n, P555094599470375827.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P13672924047648933563

`A183981(n+1)+3-A000051(n)`
-/

namespace A209726.P13672924047648933563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 1) + 3 - A000051 n

end

end A209726.P13672924047648933563

namespace A209726

/-- `A183981(n+1)+3-A000051(n)` -/
def P13672924047648933563.Spec : Prop :=
  ∀ n, P13672924047648933563.a n = A209726 (n + 1)

end A209726

/-! ## A209726.P17582391987159208073

`A029744(n+2)+A005009(n+1)/A000079(n)`
-/

namespace A209726.P17582391987159208073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 2) : ℚ) + (A005009 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A209726.P17582391987159208073

namespace A209726

/-- `A029744(n+2)+A005009(n+1)/A000079(n)` -/
def P17582391987159208073.Spec : Prop :=
  ∀ n, P17582391987159208073.a n = (A209726 (n + 1) : ℚ)

end A209726

/-!
# A209727: T(n,k) = 1/4 the number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock having distinct clockwise edge differences.

The programs for A209727, the canonical program `A209727.P8910992822076776989` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209727 has offset 1).

The definition of A209727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209727.P6798937384510360378

`floor(A209898(n+1)/4)`
-/

namespace A209727.P6798937384510360378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209898 (n + 1) : ℚ) / 4⌋

end

end A209727.P6798937384510360378

namespace A209727

/-- `floor(A209898(n+1)/4)` -/
def P6798937384510360378.Spec : Prop :=
  ∀ n, P6798937384510360378.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P8910992822076776989

`A052955(A002262(n))+A052955(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A209727

/-- `A052955(A002262(n))+A052955(A025581(n))` -/
def P8910992822076776989.Spec : Prop :=
  ∀ n, P8910992822076776989.a n = A209727 (n + 1)

theorem P8910992822076776989.correct : P8910992822076776989.Spec := by
  intro n
  simp only [A209727, Nat.add_sub_cancel]

end A209727

/-! ## A209727.P8404456270482587138

`A183986(n+1)-A271709(n)`
-/

namespace A209727.P8404456270482587138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183986 (n + 1) - A271709 n

end

end A209727.P8404456270482587138

namespace A209727

/-- `A183986(n+1)-A271709(n)` -/
def P8404456270482587138.Spec : Prop :=
  ∀ n, P8404456270482587138.a n = A209727 (n + 1)

theorem P8404456270482587138.correct : P8404456270482587138.Spec := by
  intro n
  simp only [A209727, Nat.add_sub_cancel, A209727.P8404456270482587138.a, A209727.P8910992822076776989.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A052955, A052955.P5313474801376957548.a, A183986, A183986.P9474763813998468520.a, A271709, A271709.P2626185223326178723.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A131816, A131816.P3689264983321174764.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209727

/-! ## A209727.P3933956225270028052

`A183986(n+1)-(A131816(n)+1)`
-/

namespace A209727.P3933956225270028052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183986 (n + 1) - (A131816 n + 1)

end

end A209727.P3933956225270028052

namespace A209727

/-- `A183986(n+1)-(A131816(n)+1)` -/
def P3933956225270028052.Spec : Prop :=
  ∀ n, P3933956225270028052.a n = A209727 (n + 1)

theorem P3933956225270028052.correct : P3933956225270028052.Spec := by
  intro n
  simp only [A209727, Nat.add_sub_cancel, A209727.P3933956225270028052.a, A209727.P8910992822076776989.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A052955, A052955.P5313474801376957548.a, A131816, A131816.P3689264983321174764.a, A183986, A183986.P9474763813998468520.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A271709, A271709.P2626185223326178723.a, A000079, A000079.P10855139691139572931.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209727

/-! ## A209727.P11948320005636165889

`A103391(A209898(n+1)-8)`
-/

namespace A209727.P11948320005636165889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A209898 (n + 1) - 8).toNat

end

end A209727.P11948320005636165889

namespace A209727

/-- `A103391(A209898(n+1)-8)` -/
def P11948320005636165889.Spec : Prop :=
  ∀ n, P11948320005636165889.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P14259294078449796167

`A002265(A209898(n+1))`
-/

namespace A209727.P14259294078449796167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A209898 (n + 1)).toNat

end

end A209727.P14259294078449796167

namespace A209727

/-- `A002265(A209898(n+1))` -/
def P14259294078449796167.Spec : Prop :=
  ∀ n, P14259294078449796167.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P2041095932211644653

`A025480(A209898(n+1)-2)`
-/

namespace A209727.P2041095932211644653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A209898 (n + 1) - 2).toNat

end

end A209727.P2041095932211644653

namespace A209727

/-- `A025480(A209898(n+1)-2)` -/
def P2041095932211644653.Spec : Prop :=
  ∀ n, P2041095932211644653.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P11337673464798272100

`A054576(A209898(n+1)-3)`
-/

namespace A209727.P11337673464798272100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A209898 (n + 1) - 3).toNat

end

end A209727.P11337673464798272100

namespace A209727

/-- `A054576(A209898(n+1)-3)` -/
def P11337673464798272100.Spec : Prop :=
  ∀ n, P11337673464798272100.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P8917684266973685380

`A008621(A209898(n+1)-4)`
-/

namespace A209727.P8917684266973685380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A209898 (n + 1) - 4).toNat

end

end A209727.P8917684266973685380

namespace A209727

/-- `A008621(A209898(n+1)-4)` -/
def P8917684266973685380.Spec : Prop :=
  ∀ n, P8917684266973685380.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P15029428096212966529

`A003602(A209898(n+1)-5)`
-/

namespace A209727.P15029428096212966529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A209898 (n + 1) - 5).toNat

end

end A209727.P15029428096212966529

namespace A209727

/-- `A003602(A209898(n+1)-5)` -/
def P15029428096212966529.Spec : Prop :=
  ∀ n, P15029428096212966529.a n = A209727 (n + 1)

end A209727

/-! ## A209727.P2347049414061328510

`A054576(xor(3, A209898(n+1)))`
-/

namespace A209727.P2347049414061328510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.xor 3 (A209898 (n + 1))).toNat

end

end A209727.P2347049414061328510

namespace A209727

/-- `A054576(xor(3, A209898(n+1)))` -/
def P2347049414061328510.Spec : Prop :=
  ∀ n, P2347049414061328510.a n = A209727 (n + 1)

end A209727

/-!
# A209728: 1/4 the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209728, there is no canonical definition to state claims against.
-/

/-! ## A209728.P321246258514017779

`A209736((n+1)²+n²)`
-/

namespace A209728.P321246258514017779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 ((n + 1) ^ 2 + n ^ 2)

end

end A209728.P321246258514017779

/-!
# A209729: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209729, the canonical program `A209729.P542034570364184855` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209729 has offset 1).

The definition of A209729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209729.P542034570364184855

`3*a(n-1)+14*a(n-2)+4*a(n-3)` with `a(0)=22, a(1)=124, a(2)=696`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209729

/-- `3*a(n-1)+14*a(n-2)+4*a(n-3)` -/
def P542034570364184855.Spec : Prop :=
  ∀ n, (P542034570364184855.a n : ℤ) = A209729 (n + 1)

theorem P542034570364184855.correct : P542034570364184855.Spec := by
  intro n
  simp only [A209729, Nat.add_sub_cancel]

end A209729

/-! ## A209729.P97243300611444920

`A209736(∑[n]+1)`
-/

namespace A209729.P97243300611444920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209729.P97243300611444920

namespace A209729

/-- `A209736(∑[n]+1)` -/
def P97243300611444920.Spec : Prop :=
  ∀ n, P97243300611444920.a n = A209729 (n + 1)

end A209729

/-! ## A209729.P235956470928791896

`lcm(2, A209736(A000124(n)))`
-/

namespace A209729.P235956470928791896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209736 (A000124 n).toNat)

end

end A209729.P235956470928791896

namespace A209729

/-- `lcm(2, A209736(A000124(n)))` -/
def P235956470928791896.Spec : Prop :=
  ∀ n, (P235956470928791896.a n : ℤ) = A209729 (n + 1)

end A209729

/-! ## A209729.P15863880101093376854

`record[A103451(n)*A209736(n+1)]`
-/

namespace A209729.P15863880101093376854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A209736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209729.P15863880101093376854

namespace A209729

/-- `record[A103451(n)*A209736(n+1)]` -/
def P15863880101093376854.Spec : Prop :=
  ∀ n, P15863880101093376854.a n = A209729 (n + 1)

end A209729

/-! ## A209729.P8591035386694884967

`record[A209736(n+1)/A022167(n)]`
-/

namespace A209729.P8591035386694884967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209736 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209729.P8591035386694884967

namespace A209729

/-- `record[A209736(n+1)/A022167(n)]` -/
def P8591035386694884967.Spec : Prop :=
  ∀ n, P8591035386694884967.a n = (A209729 (n + 1) : ℚ)

end A209729

/-!
# A209730: 1/4 the number of (n+1)X3 0..3 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209730, there is no canonical definition to state claims against.
-/

/-! ## A209730.P3055358704494662164

`A209736(∑[n+1]+2)`
-/

namespace A209730.P3055358704494662164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209730.P3055358704494662164

/-! ## A209730.P11304135911265518218

`record[root(A209736(n+3), A209694(n+1))]`
-/

namespace A209730.P11304135911265518218
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209736 (n + 3) : ℝ) ^ (1 / (A209694 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209730.P11304135911265518218

/-! ## A209730.P6294850739972593841

`record[root(A209736(n+3), A209695(n+2))]`
-/

namespace A209730.P6294850739972593841
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209736 (n + 3) : ℝ) ^ (1 / (A209695 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209730.P6294850739972593841

/-! ## A209730.P16100323886887613587

`record[root(A209736(n+3), A209696(n+2))]`
-/

namespace A209730.P16100323886887613587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209736 (n + 3) : ℝ) ^ (1 / (A209696 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209730.P16100323886887613587

/-! ## A209730.P10422547812233389276

`record[gcd(A209697(n+2), A209736(n+3))]`
-/

namespace A209730.P10422547812233389276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209697 (n + 2)) (A209736 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209730.P10422547812233389276

/-!
# A209731: 1/4 the number of (n+1)X4 0..3 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209731, there is no canonical definition to state claims against.
-/

/-! ## A209731.P3370056714539974204

`A209736(∑[n+2]+4)`
-/

namespace A209731.P3370056714539974204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209731.P3370056714539974204

/-! ## A209731.P10285881119321979254

`lcm(2, A209736(A167614(n+1)))`
-/

namespace A209731.P10285881119321979254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209736 (A167614 (n + 1)).toNat)

end

end A209731.P10285881119321979254

/-! ## A209731.P10226483603679996248

`record[A209736(A152950(val(n+1, 2)+2))]`
-/

namespace A209731.P10226483603679996248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A152950 (SequenceMachineLib.valuation (n + 1) 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209731.P10226483603679996248

/-! ## A209731.P2191257609367949724

`A209736(A167614(n+1))+A167688(n+1)`
-/

namespace A209731.P2191257609367949724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A167614 (n + 1)).toNat + A167688 (n + 1)

end

end A209731.P2191257609367949724

/-! ## A209731.P17378290788387349534

`A209736(A167614(n+1))%A120409(n+1)`
-/

namespace A209731.P17378290788387349534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209736 (A167614 (n + 1)).toNat) (A120409 (n + 1))

end

end A209731.P17378290788387349534

/-!
# A209732: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209732, there is no canonical definition to state claims against.
-/

/-! ## A209732.P9203457494375940937

`A209736(A374004(n+1))`
-/

namespace A209732.P9203457494375940937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A374004 (n + 1)).toNat

end

end A209732.P9203457494375940937

/-! ## A209732.P12575516659224056789

`A209736(A141214(n)+7)`
-/

namespace A209732.P12575516659224056789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A141214 n + 7).toNat

end

end A209732.P12575516659224056789

/-! ## A209732.P13059968938327480910

`A209736(A052905(n)+9)`
-/

namespace A209732.P13059968938327480910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A052905 n + 9).toNat

end

end A209732.P13059968938327480910

/-! ## A209732.P8337368288842951207

`A209736(A055999(n)+10)`
-/

namespace A209732.P8337368288842951207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A055999 n + 10).toNat

end

end A209732.P8337368288842951207

/-! ## A209732.P17153607576067190715

`A209736(A167614(n+2)+1)`
-/

namespace A209732.P17153607576067190715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A167614 (n + 2) + 1).toNat

end

end A209732.P17153607576067190715

/-!
# A209733: 1/4 the number of (n+1)X6 0..3 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209733, there is no canonical definition to state claims against.
-/

/-! ## A209733.P10733034314206634998

`A209736(A374005(n+1))`
-/

namespace A209733.P10733034314206634998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A374005 (n + 1)).toNat

end

end A209733.P10733034314206634998

/-! ## A209733.P9174178964602956661

`A209736(A155212(n)+13)`
-/

namespace A209733.P9174178964602956661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A155212 n + 13).toNat

end

end A209733.P9174178964602956661

/-! ## A209733.P5705913776866721663

`A209736(A056000(n)+15)`
-/

namespace A209733.P5705913776866721663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A056000 n + 15).toNat

end

end A209733.P5705913776866721663

/-! ## A209733.P16283135653691778020

`A209736(A051936(n+4)+14)`
-/

namespace A209733.P16283135653691778020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A051936 (n + 4) + 14).toNat

end

end A209733.P16283135653691778020

/-! ## A209733.P8254665139388850600

`A209736(eq[4, A002262(n)]+1)`
-/

namespace A209733.P8254665139388850600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209733.P8254665139388850600

/-!
# A209734: 1/4 the number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209734, there is no canonical definition to state claims against.
-/

/-! ## A209734.P6168507677285519062

`A209736(A374007(n+1))`
-/

namespace A209734.P6168507677285519062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A374007 (n + 1)).toNat

end

end A209734.P6168507677285519062

/-! ## A209734.P1488098889471368280

`A209736(A141214(n+2)+9)`
-/

namespace A209734.P1488098889471368280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A141214 (n + 2) + 9).toNat

end

end A209734.P1488098889471368280

/-! ## A209734.P14264693223371606238

`A209736(A051936(n+5)+15)`
-/

namespace A209734.P14264693223371606238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A051936 (n + 5) + 15).toNat

end

end A209734.P14264693223371606238

/-! ## A209734.P5108836352343080581

`A209736(eq[5, A002262(n)]+1)`
-/

namespace A209734.P5108836352343080581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209734.P5108836352343080581

/-! ## A209734.P6894656033698988856

`A209736(eq[7, A131818(n+1)])`
-/

namespace A209734.P6894656033698988856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209734.P6894656033698988856

/-!
# A209735: 1/4 the number of (n+1)X8 0..3 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209735, there is no canonical definition to state claims against.
-/

/-! ## A209735.P14510940533878225315

`A209736(A374008(n+1))`
-/

namespace A209735.P14510940533878225315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A374008 (n + 1)).toNat

end

end A209735.P14510940533878225315

/-! ## A209735.P14581076844078250844

`A209736(A055999(n+3)+13)`
-/

namespace A209735.P14581076844078250844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (A055999 (n + 3) + 13).toNat

end

end A209735.P14581076844078250844

/-! ## A209735.P5488198454318116199

`A209736(eq[6, A002262(n)]+1)`
-/

namespace A209735.P5488198454318116199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209735.P5488198454318116199

/-! ## A209735.P2860803116722278603

`A209736(eq[8, A131818(n+1)])`
-/

namespace A209735.P2860803116722278603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209735.P2860803116722278603

/-! ## A209735.P14047387017253188644

`A209736(eq[6, A193592(n)])`
-/

namespace A209735.P14047387017253188644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209735.P14047387017253188644

/-!
# A209737: Number of n X n 0..5 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209737, there is no canonical definition to state claims against.
-/

/-! ## A209737.P1194676411449774159

`A209744((n+1)²+n²)`
-/

namespace A209737.P1194676411449774159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 ((n + 1) ^ 2 + n ^ 2)

end

end A209737.P1194676411449774159

/-!
# A209738: Number of n X 2 0..5 arrays with every 2 X 2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209738, there is no canonical definition to state claims against.
-/

/-! ## A209738.P16062652792283340634

`A209744(∑[n+1]+2)`
-/

namespace A209738.P16062652792283340634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209738.P16062652792283340634

/-! ## A209738.P16123028567293129171

`record[gcd(A209744(n+2), A340666(n))]`
-/

namespace A209738.P16123028567293129171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209744 (n + 2)) (A340666 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209738.P16123028567293129171

/-! ## A209738.P4309194835400897360

`record[root(A209744(n+2), A209758(n+1))]`
-/

namespace A209738.P4309194835400897360
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209744 (n + 2) : ℝ) ^ (1 / (A209758 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209738.P4309194835400897360

/-! ## A209738.P12744297102897253960

`record[root(A209744(n+2), A209760(n+1))]`
-/

namespace A209738.P12744297102897253960
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209744 (n + 2) : ℝ) ^ (1 / (A209760 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209738.P12744297102897253960

/-! ## A209738.P11015891843029555421

`record[root(A209744(n+2), A209766(n+1))]`
-/

namespace A209738.P11015891843029555421
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209744 (n + 2) : ℝ) ^ (1 / (A209766 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209738.P11015891843029555421

/-!
# A209739: Number of n X 3 0..5 arrays with every 2 X 2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209739, there is no canonical definition to state claims against.
-/

/-! ## A209739.P1948326535165499714

`A209744(∑[n+2]+4)`
-/

namespace A209739.P1948326535165499714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209739.P1948326535165499714

/-! ## A209739.P9813425393036283481

`or(n%2, A209744(A167614(n+1)))`
-/

namespace A209739.P9813425393036283481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A209744 (A167614 (n + 1)).toNat)

end

end A209739.P9813425393036283481

/-! ## A209739.P2095089541312891778

`A326460(n)+A209744(A167614(n+1))`
-/

namespace A209739.P2095089541312891778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n + A209744 (A167614 (n + 1)).toNat

end

end A209739.P2095089541312891778

/-! ## A209739.P13496331628927713285

`lcm(A033999(n), A209744(A167614(n+1)))`
-/

namespace A209739.P13496331628927713285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209744 (A167614 (n + 1)).toNat)

end

end A209739.P13496331628927713285

/-! ## A209739.P2746280863517241463

`or(A010059(n), A209744(A167614(n+1)))`
-/

namespace A209739.P2746280863517241463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 n) (A209744 (A167614 (n + 1)).toNat)

end

end A209739.P2746280863517241463

/-!
# A209740: Number of nX4 0..5 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209740, there is no canonical definition to state claims against.
-/

/-! ## A209740.P4996640301019851357

`A209744(A374004(n+1))`
-/

namespace A209740.P4996640301019851357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A374004 (n + 1)).toNat

end

end A209740.P4996640301019851357

/-! ## A209740.P6882278546459402830

`A209744(A141214(n)+7)`
-/

namespace A209740.P6882278546459402830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A141214 n + 7).toNat

end

end A209740.P6882278546459402830

/-! ## A209740.P17563155310012326974

`A209744(A052905(n)+9)`
-/

namespace A209740.P17563155310012326974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A052905 n + 9).toNat

end

end A209740.P17563155310012326974

/-! ## A209740.P10591204450494135019

`A209744(A055999(n)+10)`
-/

namespace A209740.P10591204450494135019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A055999 n + 10).toNat

end

end A209740.P10591204450494135019

/-! ## A209740.P2072888396160612024

`A209744(A167614(n+2)+1)`
-/

namespace A209740.P2072888396160612024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A167614 (n + 2) + 1).toNat

end

end A209740.P2072888396160612024

/-!
# A209741: Number of nX5 0..5 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209741, there is no canonical definition to state claims against.
-/

/-! ## A209741.P16317323049647467919

`A209744(A374005(n+1))`
-/

namespace A209741.P16317323049647467919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A374005 (n + 1)).toNat

end

end A209741.P16317323049647467919

/-! ## A209741.P16181320103592556728

`A209744(A155212(n)+13)`
-/

namespace A209741.P16181320103592556728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A155212 n + 13).toNat

end

end A209741.P16181320103592556728

/-! ## A209741.P1304764035712007166

`A209744(eq[4, A002262(n)]+1)`
-/

namespace A209741.P1304764035712007166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209741.P1304764035712007166

/-! ## A209741.P15500019503559510794

`A209744(Δ[A264443(n)])`
-/

namespace A209741.P15500019503559510794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (f1 (n + 1) - f1 n).toNat

end

end A209741.P15500019503559510794

/-! ## A209741.P276479949837622543

`A209744(A052905(n+2)+1)`
-/

namespace A209741.P276479949837622543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A052905 (n + 2) + 1).toNat

end

end A209741.P276479949837622543

/-!
# A209742: Number of nX6 0..5 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209742, there is no canonical definition to state claims against.
-/

/-! ## A209742.P12082861012608057735

`A209744(A374007(n+1))`
-/

namespace A209742.P12082861012608057735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A374007 (n + 1)).toNat

end

end A209742.P12082861012608057735

/-! ## A209742.P2550917655713526558

`A209744(eq[5, A002262(n)]+1)`
-/

namespace A209742.P2550917655713526558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209742.P2550917655713526558

/-! ## A209742.P10650125773095317163

`A209744(eq[7, A131818(n+1)])`
-/

namespace A209742.P10650125773095317163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209742.P10650125773095317163

/-! ## A209742.P1106890060849534869

`A209744(A052905(n+3))`
-/

namespace A209742.P1106890060849534869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A052905 (n + 3)).toNat

end

end A209742.P1106890060849534869

/-! ## A209742.P15685821769363107941

`A209744(A141214(n+3)-2)`
-/

namespace A209742.P15685821769363107941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A141214 (n + 3) - 2).toNat

end

end A209742.P15685821769363107941

/-!
# A209743: 

The programs for A209743, there is no canonical definition to state claims against.
-/

/-! ## A209743.P7368757093424691733

`A209744(A141214(n+3)+10)`
-/

namespace A209743.P7368757093424691733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (A141214 (n + 3) + 10).toNat

end

end A209743.P7368757093424691733

/-! ## A209743.P10840086177845091212

`A209744(eq[6, A002262(n)]+1)`
-/

namespace A209743.P10840086177845091212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209743.P10840086177845091212

/-!
# A209744: T(n,k)=Number of nXk 0..5 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..5 introduced in row major order.

The programs for A209744, there is no canonical definition to state claims against.
-/

/-! ## A209744.P2913273155658808055

`A209465(n+1)-A130779(A140871(n+1))`
-/

namespace A209744.P2913273155658808055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) - A130779 (A140871 (n + 1)).toNat

end

end A209744.P2913273155658808055

/-! ## A209744.P4851542639411362933

`A209527(n+1)-A130779(A140871(n+1))`
-/

namespace A209744.P4851542639411362933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (n + 1) - A130779 (A140871 (n + 1)).toNat

end

end A209744.P4851542639411362933

/-! ## A209744.P1562896925709516655

`A004179(A209465(n+1)-A283666(n+1))`
-/

namespace A209744.P1562896925709516655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A209465 (n + 1) - A283666 (n + 1)).toNat

end

end A209744.P1562896925709516655

/-! ## A209744.P17357358245472270027

`A004179(A209527(n+1)-A283666(n+1))`
-/

namespace A209744.P17357358245472270027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A209527 (n + 1) - A283666 (n + 1)).toNat

end

end A209744.P17357358245472270027

/-! ## A209744.P9757099310499618525

`A209465(n+1)-A107279(A209511(n+1))`
-/

namespace A209744.P9757099310499618525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (n + 1) - A107279 (A209511 (n + 1)).toNat

end

end A209744.P9757099310499618525

/-!
# A209745: Triangle of coefficients of polynomials u(n,x) jointly generated with A209746; see the Formula section.

The programs for A209745, there is no canonical definition to state claims against.
-/

/-! ## A209745.P7470742043134122253

`2*A210600(n+1)-A210601(n+1)`
-/

namespace A209745.P7470742043134122253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210600 (n + 1) - A210601 (n + 1)

end

end A209745.P7470742043134122253

/-! ## A209745.P4147990758180048183

`A209775(n+1)+A209776(n+1)-A210601(n+1)`
-/

namespace A209745.P4147990758180048183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209775 (n + 1) + (A209776 (n + 1) - A210601 (n + 1))

end

end A209745.P4147990758180048183

/-! ## A209745.P16753314581318513040

`A209141(A038722(n+1))`
-/

namespace A209745.P16753314581318513040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209141 (A038722 (n + 1)).toNat

end

end A209745.P16753314581318513040

/-! ## A209745.P1723758108027826505

`A209141(A061579(n)+1)`
-/

namespace A209745.P1723758108027826505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209141 (A061579 n + 1).toNat

end

end A209745.P1723758108027826505

/-! ## A209745.P2698820851190744631

`A209141(A093995(n+1)-n)`
-/

namespace A209745.P2698820851190744631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209141 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209745.P2698820851190744631

/-!
# A209746: Triangle of coefficients of polynomials v(n,x) jointly generated with A209745; see the Formula section.

The programs for A209746, there is no canonical definition to state claims against.
-/

/-! ## A209746.P15264971545902120117

`A209142(A038722(n+1))`
-/

namespace A209746.P15264971545902120117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (A038722 (n + 1)).toNat

end

end A209746.P15264971545902120117

/-! ## A209746.P5998046801615083668

`A209142(A061579(n)+1)`
-/

namespace A209746.P5998046801615083668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (A061579 n + 1).toNat

end

end A209746.P5998046801615083668

/-! ## A209746.P8455072054370358320

`A209142(A114327(n)+1+n)`
-/

namespace A209746.P8455072054370358320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209746.P8455072054370358320

/-! ## A209746.P15941687065028986379

`A209142(A093995(n+1)-n)`
-/

namespace A209746.P15941687065028986379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209746.P15941687065028986379

/-! ## A209746.P18300363424394839490

`A209142(A002024(n+1)²-n)`
-/

namespace A209746.P18300363424394839490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209142 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A209746.P18300363424394839490

/-!
# A209747: Triangle of coefficients of polynomials u(n,x) jointly generated with A209748; see the Formula section.

The programs for A209747, there is no canonical definition to state claims against.
-/

/-! ## A209747.P16495574805197832283

`2*A037027(n)-char[∑[n]]`
-/

namespace A209747.P16495574805197832283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037027 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209747.P16495574805197832283

/-! ## A209747.P17975551538374276799

`A057428(A198954(n))+2*A037027(n)`
-/

namespace A209747.P17975551538374276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A198954 n).toNat + 2 * A037027 n

end

end A209747.P17975551538374276799

/-! ## A209747.P11172819993256300487

`A037027(n)+A037027(n)-A010054(n)`
-/

namespace A209747.P11172819993256300487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A037027 n - A010054 n)

end

end A209747.P11172819993256300487

/-! ## A209747.P2447721662581511489

`A210200(n+1)+A037027(n)-A122075(n)`
-/

namespace A209747.P2447721662581511489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) + (A037027 n - A122075 n)

end

end A209747.P2447721662581511489

/-! ## A209747.P14965979312223820187

`A210200(n+1)-A155161(n+1)`
-/

namespace A209747.P14965979312223820187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210200 (n + 1) - A155161 (n + 1)

end

end A209747.P14965979312223820187

/-! ## A209747.P4457589155292590895

`A004277(A037027(n))-char[∑[n]]`
-/

namespace A209747.P4457589155292590895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A037027 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209747.P4457589155292590895

/-! ## A209747.P6472359148141622043

`A005843(A037027(n))-A010054(n)`
-/

namespace A209747.P6472359148141622043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A037027 n).toNat - A010054 n

end

end A209747.P6472359148141622043

/-! ## A209747.P1137113202807603332

`A005408(A037027(n))-A035214(n)`
-/

namespace A209747.P1137113202807603332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A037027 n).toNat - A035214 n

end

end A209747.P1137113202807603332

/-! ## A209747.P17337726962766178393

`A005408(A037027(n))-Δ[A080036(n)]`
-/

namespace A209747.P17337726962766178393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A037027 n).toNat - (f1 (n + 1) - f1 n)

end

end A209747.P17337726962766178393

/-! ## A209747.P9111108980706779996

`A004273(A037027(n))+A001221(A059268(n))`
-/

namespace A209747.P9111108980706779996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A037027 n).toNat + A001221 (A059268 n).toNat

end

end A209747.P9111108980706779996

/-!
# A209748: Triangle of coefficients of polynomials v(n,x) jointly generated with A209747; see the Formula section.

The programs for A209748, there is no canonical definition to state claims against.
-/

/-! ## A209748.P3398463370419537054

`A210199(n+1)+A210229(n+1)-A210200(n+1)`
-/

namespace A209748.P3398463370419537054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210199 (n + 1) + (A210229 (n + 1) - A210200 (n + 1))

end

end A209748.P3398463370419537054

/-!
# A209749: Triangle of coefficients of polynomials u(n,x) jointly generated with A209750; see the Formula section.

The programs for A209749, there is no canonical definition to state claims against.
-/

/-! ## A209749.P5339645922900401395

`A094953(n+2)-A107846(A094968(n))`
-/

namespace A209749.P5339645922900401395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) - A107846 (A094968 n).toNat

end

end A209749.P5339645922900401395

/-! ## A209749.P18368574564466313246

`A094953(n+2)-A025469(A330659(n))`
-/

namespace A209749.P18368574564466313246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) - A025469 (A330659 n).toNat

end

end A209749.P18368574564466313246

/-! ## A209749.P12913039616480446382

`A094953(n+2)-A025469(n²²)`
-/

namespace A209749.P12913039616480446382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) - A025469 ((n ^ 2) ^ 2)

end

end A209749.P12913039616480446382

/-! ## A209749.P3336612446979312346

`A094953(n+2)-A094912(A033192(n))`
-/

namespace A209749.P3336612446979312346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) - A094912 (A033192 n).toNat

end

end A209749.P3336612446979312346

/-! ## A209749.P3069764166183692186

`A094953(n+2)-A107846(A033539(n))`
-/

namespace A209749.P3069764166183692186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) - A107846 (A033539 n).toNat

end

end A209749.P3069764166183692186

/-!
# A209750: Triangle of coefficients of polynomials v(n,x) jointly generated with A209749; see the Formula section.

The programs for A209750, there is no canonical definition to state claims against.
-/

/-! ## A209750.P2438131096874194662

`A257783(n+1)+A122402(A054403(2*(n+1)))`
-/

namespace A209750.P2438131096874194662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 (n + 1) + A122402 (A054403 (2 * (n + 1))).toNat

end

end A209750.P2438131096874194662

/-! ## A209750.P1565257687232151453

`A070939(A054531(n+1)*A156950(n))`
-/

namespace A209750.P1565257687232151453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A054531 (n + 1) * A156950 n).toNat

end

end A209750.P1565257687232151453

/-! ## A209750.P16785921639787360460

`A071673(A054531(n+1)*A156950(n))`
-/

namespace A209750.P16785921639787360460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A054531 (n + 1) * A156950 n).toNat

end

end A209750.P16785921639787360460

/-! ## A209750.P7020580946566939876

`A064515(or(A199943(n+1), A317952(n)))`
-/

namespace A209750.P7020580946566939876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (Int.lor (A199943 (n + 1)) (A317952 n)).toNat

end

end A209750.P7020580946566939876

/-!
# A209751: Triangle of coefficients of polynomials u(n,x) jointly generated with A209752; see the Formula section.

The programs for A209751, there is no canonical definition to state claims against.
-/

/-! ## A209751.P225872997129634771

`A209771(n+1)+A124761(A157638(n))`
-/

namespace A209751.P225872997129634771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + A124761 (A157638 n).toNat

end

end A209751.P225872997129634771

/-! ## A209751.P17365200596909815585

`A360604(A199256(n+1))+A209771(n+1)`
-/

namespace A209751.P17365200596909815585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360604 (A199256 (n + 1)).toNat + A209771 (n + 1)

end

end A209751.P17365200596909815585

/-!
# A209752: Triangle of coefficients of polynomials v(n,x) jointly generated with A209751; see the Formula section.

The programs for A209752, there is no canonical definition to state claims against.
-/

/-! ## A209752.P10024665222121077571

`A209558(n+1)+A135385(A307883(n))`
-/

namespace A209752.P10024665222121077571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209558 (n + 1) + A135385 (A307883 n).toNat

end

end A209752.P10024665222121077571

/-!
# A209753: Triangle of coefficients of polynomials u(n,x) jointly generated with A209754; see the Formula section.

The programs for A209753, there is no canonical definition to state claims against.
-/

/-! ## A209753.P14001953833719727500

`2*A209999(n+1)-A209584(n+1)`
-/

namespace A209753.P14001953833719727500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209999 (n + 1) - A209584 (n + 1)

end

end A209753.P14001953833719727500

/-! ## A209753.P8087299559543980410

`A209583(n+1)+A209999(n+1)-A210235(n+1)`
-/

namespace A209753.P8087299559543980410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209583 (n + 1) + (A209999 (n + 1) - A210235 (n + 1))

end

end A209753.P8087299559543980410

/-! ## A209753.P1814970791084701550

`A005843(A209999(n+1))-A209584(n+1)`
-/

namespace A209753.P1814970791084701550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209999 (n + 1)).toNat - A209584 (n + 1)

end

end A209753.P1814970791084701550

/-!
# A209754: Triangle of coefficients of polynomials v(n,x) jointly generated with A209753; see the Formula section.

The programs for A209754, there is no canonical definition to state claims against.
-/

/-! ## A209754.P7963095240925815208

`A210235(n)+A209584(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A209754.P7963095240925815208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210235 n + (A209584 (n + 1) - a (n - 1))

end

end A209754.P7963095240925815208

/-!
# A209755: Triangle of coefficients of polynomials u(n,x) jointly generated with A209756; see the Formula section.

The programs for A209755, there is no canonical definition to state claims against.
-/

/-! ## A209755.P12259687799225386627

`A209756(n+1)+A210565(n+1)-A209704(n+1)`
-/

namespace A209755.P12259687799225386627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209756 (n + 1) + (A210565 (n + 1) - A209704 (n + 1))

end

end A209755.P12259687799225386627

/-! ## A209755.P4404714408825635894

`A209151(n+1)-Δ[A155161(A038722(n+1))]`
-/

namespace A209755.P4404714408825635894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209755.P4404714408825635894

/-! ## A209755.P15214504982766315825

`A260999(A036561(n)*A136482(n))`
-/

namespace A209755.P15214504982766315825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A036561 n * A136482 n).toNat

end

end A209755.P15214504982766315825

/-!
# A209756: Triangle of coefficients of polynomials v(n,x) jointly generated with A209755; see the Formula section.

The programs for A209756, there is no canonical definition to state claims against.
-/

/-! ## A209756.P12009947398184770659

`2*A210595(n+1)-A209151(n+1)`
-/

namespace A209756.P12009947398184770659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210595 (n + 1) - A209151 (n + 1)

end

end A209756.P12009947398184770659

/-! ## A209756.P7409676107165275067

`A209704(n+1)+A209755(n+1)-A210565(n+1)`
-/

namespace A209756.P7409676107165275067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209704 (n + 1) + (A209755 (n + 1) - A210565 (n + 1))

end

end A209756.P7409676107165275067

/-! ## A209756.P13117911836008977325

`A004277(A210595(n+1))-A209151(n+1)`
-/

namespace A209756.P13117911836008977325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210595 (n + 1)).toNat - A209151 (n + 1)

end

end A209756.P13117911836008977325

/-! ## A209756.P8171286531449627317

`A082860(A175107(n+1)+A157221(n))`
-/

namespace A209756.P8171286531449627317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (A175107 (n + 1) + A157221 n).toNat

end

end A209756.P8171286531449627317

/-! ## A209756.P10408119541381428320

`A295660(A277600(n+1)+A000108(n))`
-/

namespace A209756.P10408119541381428320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A277600 (n + 1) + A000108 n).toNat

end

end A209756.P10408119541381428320

/-!
# A209757: Triangle of coefficients of polynomials v(n,x) jointly generated with A013609; see the Formula section.

The programs for A209757, the canonical program `A209757.P13901960123179879850` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209757 has offset 1).

The definition of A209757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209757.P13901960123179879850

`A059268(n)*A110813(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209757

/-- `A059268(n)*A110813(n)` -/
def P13901960123179879850.Spec : Prop :=
  ∀ n, P13901960123179879850.a n = A209757 (n + 1)

theorem P13901960123179879850.correct : P13901960123179879850.Spec := by
  intro n
  simp only [A209757, Nat.add_sub_cancel]

end A209757

/-! ## A209757.P12404497491782833758

`A276985(n+1)-A013609(n)`
-/

namespace A209757.P12404497491782833758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - A013609 n

end

end A209757.P12404497491782833758

namespace A209757

/-- `A276985(n+1)-A013609(n)` -/
def P12404497491782833758.Spec : Prop :=
  ∀ n, P12404497491782833758.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P3759455705049451304

`2*A193862(n)-A013609(n)`
-/

namespace A209757.P3759455705049451304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193862 n - A013609 n

end

end A209757.P3759455705049451304

namespace A209757

/-- `2*A193862(n)-A013609(n)` -/
def P3759455705049451304.Spec : Prop :=
  ∀ n, P3759455705049451304.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P3753090750476166273

`A016116(A158405(n+1))*A110813(n)`
-/

namespace A209757.P3753090750476166273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A158405 (n + 1)).toNat * A110813 n

end

end A209757.P3753090750476166273

namespace A209757

/-- `A016116(A158405(n+1))*A110813(n)` -/
def P3753090750476166273.Spec : Prop :=
  ∀ n, P3753090750476166273.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P14266618811807264244

`A185045(n+1)/A208510(n+1)*A110813(n)`
-/

namespace A209757.P14266618811807264244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185045 (n + 1) : ℚ) / (A208510 (n + 1) : ℚ) * (A110813 n : ℚ)

end

end A209757.P14266618811807264244

namespace A209757

/-- `A185045(n+1)/A208510(n+1)*A110813(n)` -/
def P14266618811807264244.Spec : Prop :=
  ∀ n, P14266618811807264244.a n = (A209757 (n + 1) : ℚ)

end A209757

/-! ## A209757.P18159015944497199186

`A182059(n+1)+A013609(n)`
-/

namespace A209757.P18159015944497199186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 (n + 1) + A013609 n

end

end A209757.P18159015944497199186

namespace A209757

/-- `A182059(n+1)+A013609(n)` -/
def P18159015944497199186.Spec : Prop :=
  ∀ n, P18159015944497199186.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P12087081956483316654

`A029655(n+1)*A059268(n)`
-/

namespace A209757.P12087081956483316654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (n + 1) * A059268 n

end

end A209757.P12087081956483316654

namespace A209757

/-- `A029655(n+1)*A059268(n)` -/
def P12087081956483316654.Spec : Prop :=
  ∀ n, P12087081956483316654.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P14873193863971420741

`A182059(n+1)+A182059(n)+A073424(n)`
-/

namespace A209757.P14873193863971420741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 (n + 1) + (A182059 n + A073424 n)

end

end A209757.P14873193863971420741

namespace A209757

/-- `A182059(n+1)+A182059(n)+A073424(n)` -/
def P14873193863971420741.Spec : Prop :=
  ∀ n, P14873193863971420741.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P10468813677691434410

`A182059(n+1)+A326822(n+1)+A182059(n)`
-/

namespace A209757.P10468813677691434410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 (n + 1) + (A326822 (n + 1) + A182059 n)

end

end A209757.P10468813677691434410

namespace A209757

/-- `A182059(n+1)+A326822(n+1)+A182059(n)` -/
def P10468813677691434410.Spec : Prop :=
  ∀ n, P10468813677691434410.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P4564745569735976998

`A013609(n+1)+A013609(n)-A073424(n+1)`
-/

namespace A209757.P4564745569735976998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 1) + (A013609 n - A073424 (n + 1))

end

end A209757.P4564745569735976998

namespace A209757

/-- `A013609(n+1)+A013609(n)-A073424(n+1)` -/
def P4564745569735976998.Spec : Prop :=
  ∀ n, P4564745569735976998.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P13207926205228831128

`A081277(comp[∑[n]])`
-/

namespace A209757.P13207926205228831128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A209757.P13207926205228831128

namespace A209757

/-- `A081277(comp[∑[n]])` -/
def P13207926205228831128.Spec : Prop :=
  ∀ n, P13207926205228831128.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P11392607249545649661

`abs(A079628(∑[A035214(n)]))`
-/

namespace A209757.P11392607249545649661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079628 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A209757.P11392607249545649661

namespace A209757

/-- `abs(A079628(∑[A035214(n)]))` -/
def P11392607249545649661.Spec : Prop :=
  ∀ n, P11392607249545649661.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P13406202618620677957

`A013609(comp[∑[n]])-A013609(n)`
-/

namespace A209757.P13406202618620677957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A013609 n

end

end A209757.P13406202618620677957

namespace A209757

/-- `A013609(comp[∑[n]])-A013609(n)` -/
def P13406202618620677957.Spec : Prop :=
  ∀ n, P13406202618620677957.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P12589489785976923572

`A200139(A099375(n)+n)`
-/

namespace A209757.P12589489785976923572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 (A099375 n + (n : ℤ)).toNat

end

end A209757.P12589489785976923572

namespace A209757

/-- `A200139(A099375(n)+n)` -/
def P12589489785976923572.Spec : Prop :=
  ∀ n, P12589489785976923572.a n = A209757 (n + 1)

end A209757

/-! ## A209757.P17241666299418541266

`abs(A185342(n))-A013609(n)`
-/

namespace A209757.P17241666299418541266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185342 n| - A013609 n

end

end A209757.P17241666299418541266

namespace A209757

/-- `abs(A185342(n))-A013609(n)` -/
def P17241666299418541266.Spec : Prop :=
  ∀ n, P17241666299418541266.a n = A209757 (n + 1)

end A209757

/-!
# A209758: Triangle of coefficients of polynomials v(n,x) jointly generated with A210041; see the Formula section.

The programs for A209758, there is no canonical definition to state claims against.
-/

/-! ## A209758.P9278612485866299032

`A208511(n+1)+2*A049600(n)`
-/

namespace A209758.P9278612485866299032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208511 (n + 1) + 2 * A049600 n

end

end A209758.P9278612485866299032

/-! ## A209758.P13269120077313166614

`A160232(n+1)+A208341(n)-A010054(n)`
-/

namespace A209758.P13269120077313166614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + (A208341 n - A010054 n)

end

end A209758.P13269120077313166614

/-! ## A209758.P9769352883716918688

`(A208341(n)+A160232(n+1))/A035214(n)`
-/

namespace A209758.P9769352883716918688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208341 n + A160232 (n + 1) : ℚ) / (A035214 n : ℚ)

end

end A209758.P9769352883716918688

/-! ## A209758.P3177170286933733725

`A208341(n)+A160232(n+1)%A013609(n)`
-/

namespace A209758.P3177170286933733725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n + Int.tmod (A160232 (n + 1)) (A013609 n)

end

end A209758.P3177170286933733725

/-! ## A209758.P5478575892031985774

`A160232(n+1)+A208341(n)%A207619(n+1)`
-/

namespace A209758.P5478575892031985774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + Int.tmod (A208341 n) (A207619 (n + 1))

end

end A209758.P5478575892031985774

/-! ## A209758.P3116087666606001071

`A208341(n)+(A208341(n)-A049600(n))%A208341(n)`
-/

namespace A209758.P3116087666606001071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n + Int.tmod (A208341 n - A049600 n) (A208341 n)

end

end A209758.P3116087666606001071

/-! ## A209758.P3540154447297773690

`2*A208341(n)-A055587(A038722(n+1))`
-/

namespace A209758.P3540154447297773690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208341 n - A055587 (A038722 (n + 1)).toNat

end

end A209758.P3540154447297773690

/-! ## A209758.P5350012639066710831

`A160232(n+1)+A049600(A080036(n))`
-/

namespace A209758.P5350012639066710831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + A049600 (A080036 n).toNat

end

end A209758.P5350012639066710831

/-! ## A209758.P3423099475506720857

`A208511(n+1)+A005843(A049600(n))`
-/

namespace A209758.P3423099475506720857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208511 (n + 1) + A005843 (A049600 n).toNat

end

end A209758.P3423099475506720857

/-! ## A209758.P8696942543586899592

`A005843(A208341(n))-A055587(A038722(n+1))`
-/

namespace A209758.P8696942543586899592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208341 n).toNat - A055587 (A038722 (n + 1)).toNat

end

end A209758.P8696942543586899592

/-!
# A209759: Triangle of coefficients of polynomials u(n,x) jointly generated with A209760; see the Formula section.

The programs for A209759, there is no canonical definition to state claims against.
-/

/-! ## A209759.P8861578148180412083

`A194055(4*A199909(n+1))`
-/

namespace A209759.P8861578148180412083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194055 (4 * A199909 (n + 1)).toNat

end

end A209759.P8861578148180412083

/-! ## A209759.P3458281498895023970

`A349903(A133038(n))+A209765(n+1)`
-/

namespace A209759.P3458281498895023970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349903 (A133038 n).toNat + A209765 (n + 1)

end

end A209759.P3458281498895023970

/-! ## A209759.P15523661068721023882

`A007095(gcd(A128688(n+1), A209765(n+1)))`
-/

namespace A209759.P15523661068721023882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.gcd (A128688 (n + 1)) (A209765 (n + 1)))

end

end A209759.P15523661068721023882

/-!
# A209760: Triangle of coefficients of polynomials v(n,x) jointly generated with A209759; see the Formula section.

The programs for A209760, there is no canonical definition to state claims against.
-/

/-! ## A209760.P13779479458137794404

`A062575(A203647(n+1)²)`
-/

namespace A209760.P13779479458137794404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A203647 (n + 1) ^ 2).toNat

end

end A209760.P13779479458137794404

/-! ## A209760.P4063224093839157141

`A062575(A203647(n+1)^2)`
-/

namespace A209760.P4063224093839157141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A203647 (n + 1) ^ 2).toNat

end

end A209760.P4063224093839157141

/-! ## A209760.P7996224525341925440

`or(A287561(A006130(n)), A328807(n))`
-/

namespace A209760.P7996224525341925440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287561 (A006130 n).toNat) (A328807 n)

end

end A209760.P7996224525341925440

/-! ## A209760.P12756726648001554821

`or(A305054(A000124(n)), A328807(n))`
-/

namespace A209760.P12756726648001554821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305054 (A000124 n).toNat) (A328807 n)

end

end A209760.P12756726648001554821

/-! ## A209760.P4907210910956144769

`A132827(A106683(n+1)*A265312(n))`
-/

namespace A209760.P4907210910956144769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 (A106683 (n + 1) * A265312 n).toNat

end

end A209760.P4907210910956144769

/-!
# A209761: Triangle of coefficients of polynomials u(n,x) jointly generated with A209762; see the Formula section.

The programs for A209761, the canonical program `A209761.P11541625464705178303` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209761 has offset 1).

The definition of A209761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209761.P11345602630294750575

`A209762(n+1)-A073424(n)`
-/

namespace A209761.P11345602630294750575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - A073424 n

end

end A209761.P11345602630294750575

namespace A209761

/-- `A209762(n+1)-A073424(n)` -/
def P11345602630294750575.Spec : Prop :=
  ∀ n, P11345602630294750575.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P8515246986675647626

`A209762(n+1)-char[A008805(n)]`
-/

namespace A209761.P8515246986675647626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209761.P8515246986675647626

namespace A209761

/-- `A209762(n+1)-char[A008805(n)]` -/
def P8515246986675647626.Spec : Prop :=
  ∀ n, P8515246986675647626.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P11541625464705178303

`A276985(n+1)-A209706(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209761

/-- `A276985(n+1)-A209706(n+1)` -/
def P11541625464705178303.Spec : Prop :=
  ∀ n, P11541625464705178303.a n = A209761 (n + 1)

theorem P11541625464705178303.correct : P11541625464705178303.Spec := by
  intro n
  simp only [A209761, Nat.add_sub_cancel]

end A209761

/-! ## A209761.P5669491752956960745

`A209762(n+1)-char[eq[2, A002260(n+2)]]`
-/

namespace A209761.P5669491752956960745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209761.P5669491752956960745

namespace A209761

/-- `A209762(n+1)-char[eq[2, A002260(n+2)]]` -/
def P5669491752956960745.Spec : Prop :=
  ∀ n, P5669491752956960745.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P29668492650302718

`A209705(n+1)+A193862(n)-A013609(n)`
-/

namespace A209761.P29668492650302718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A193862 n - A013609 n)

end

end A209761.P29668492650302718

namespace A209761

/-- `A209705(n+1)+A193862(n)-A013609(n)` -/
def P29668492650302718.Spec : Prop :=
  ∀ n, P29668492650302718.a n = A209761 (n + 1)

theorem P29668492650302718.correct : P29668492650302718.Spec := by
  intro n
  simp only [A209761, Nat.add_sub_cancel, A209761.P29668492650302718.a, A209761.P11541625464705178303.a, A013609, A013609.P8535619279575218406.a, A193862, A193862.P608042678390646429.a, A209705, A209705.P3780900180069936411.a, A209706, A209706.P2086193192130295390.a, A276985, A276985.P4240912874753505783.a, A007318, A007318.P302227728145965961.a, A029635, A029635.P14447282759070454877.a, A059268, A059268.P15217573790077737885.a, A135278, A135278.P10862305414900331449.a, A018900, A018900.P2868698677378612256.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A097805, A097805.P1755176267250853107.a, A140513, A140513.P13579608035938851890.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209761

/-! ## A209761.P11643725810294983633

`A208510(n+1)+A209762(n+1)-A029653(n)`
-/

namespace A209761.P11643725810294983633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + (A209762 (n + 1) - A029653 n)

end

end A209761.P11643725810294983633

namespace A209761

/-- `A208510(n+1)+A209762(n+1)-A029653(n)` -/
def P11643725810294983633.Spec : Prop :=
  ∀ n, P11643725810294983633.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P17388780054066293597

`A185045(n+1)+A209762(n+1)-A208659(n+1)`
-/

namespace A209761.P17388780054066293597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185045 (n + 1) + (A209762 (n + 1) - A208659 (n + 1))

end

end A209761.P17388780054066293597

namespace A209761

/-- `A185045(n+1)+A209762(n+1)-A208659(n+1)` -/
def P17388780054066293597.Spec : Prop :=
  ∀ n, P17388780054066293597.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P6539103520987576365

`A209148(n+1)+A209762(n+1)-A209149(n+1)`
-/

namespace A209761.P6539103520987576365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209148 (n + 1) + (A209762 (n + 1) - A209149 (n + 1))

end

end A209761.P6539103520987576365

namespace A209761

/-- `A209148(n+1)+A209762(n+1)-A209149(n+1)` -/
def P6539103520987576365.Spec : Prop :=
  ∀ n, P6539103520987576365.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P7926748564253856984

`A209561(n+1)+A209762(n+1)-A209562(n+1)`
-/

namespace A209761.P7926748564253856984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + (A209762 (n + 1) - A209562 (n + 1))

end

end A209761.P7926748564253856984

namespace A209761

/-- `A209561(n+1)+A209762(n+1)-A209562(n+1)` -/
def P7926748564253856984.Spec : Prop :=
  ∀ n, P7926748564253856984.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P342394069532506353

`A209762(n+1)-A000007(A061199(n))`
-/

namespace A209761.P342394069532506353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - A000007 (A061199 n).toNat

end

end A209761.P342394069532506353

namespace A209761

/-- `A209762(n+1)-A000007(A061199(n))` -/
def P342394069532506353.Spec : Prop :=
  ∀ n, P342394069532506353.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P13091309197357898452

`A209762(n+1)-A000007(A097805(n))`
-/

namespace A209761.P13091309197357898452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - A000007 (A097805 n).toNat

end

end A209761.P13091309197357898452

namespace A209761

/-- `A209762(n+1)-A000007(A097805(n))` -/
def P13091309197357898452.Spec : Prop :=
  ∀ n, P13091309197357898452.a n = A209761 (n + 1)

end A209761

/-! ## A209761.P1479831275005493429

`A209762(n+1)-A000007(A210381(n))`
-/

namespace A209761.P1479831275005493429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209762 (n + 1) - A000007 (A210381 n).toNat

end

end A209761.P1479831275005493429

namespace A209761

/-- `A209762(n+1)-A000007(A210381(n))` -/
def P1479831275005493429.Spec : Prop :=
  ∀ n, P1479831275005493429.a n = A209761 (n + 1)

end A209761

/-!
# A209762: Triangle of coefficients of polynomials v(n,x) jointly generated with A209761; see the Formula section.

The programs for A209762, the canonical program `A209762.P11771980091990745712` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209762 has offset 1).

The definition of A209762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209762.P15240398541551445415

`A209761(n+1)+char[∑[n+1]]`
-/

namespace A209762.P15240398541551445415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209762.P15240398541551445415

namespace A209762

/-- `A209761(n+1)+char[∑[n+1]]` -/
def P15240398541551445415.Spec : Prop :=
  ∀ n, P15240398541551445415.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P17055640648792012631

`(A209761(n+1)+A073424(n))^ceil(acot(n))`
-/

namespace A209762.P17055640648792012631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209761 (n + 1) + A073424 n : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A209762.P17055640648792012631

namespace A209762

/-- `(A209761(n+1)+A073424(n))^ceil(acot(n))` -/
def P17055640648792012631.Spec : Prop :=
  ∀ n, P17055640648792012631.a n = (A209762 (n + 1) : ℚ)

end A209762

/-! ## A209762.P11771980091990745712

`A209761(n+1)+A097805(n)-A177767(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A209762

/-- `A209761(n+1)+A097805(n)-A177767(n)` -/
def P11771980091990745712.Spec : Prop :=
  ∀ n, P11771980091990745712.a n = A209762 (n + 1)

theorem P11771980091990745712.correct : P11771980091990745712.Spec := by
  intro n
  simp only [A209762, Nat.add_sub_cancel]

end A209762

/-! ## A209762.P17569585431478309150

`A000038(n+1)+A209761(n+1)+A073424(n)`
-/

namespace A209762.P17569585431478309150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A209761 (n + 1) + A073424 n)

end

end A209762.P17569585431478309150

namespace A209762

/-- `A000038(n+1)+A209761(n+1)+A073424(n)` -/
def P17569585431478309150.Spec : Prop :=
  ∀ n, P17569585431478309150.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P14356593490474064076

`A209761(n+1)+A029653(n)-A208510(n+1)`
-/

namespace A209762.P14356593490474064076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (n + 1) + A029653 n - A208510 (n + 1)

end

end A209762.P14356593490474064076

namespace A209762

/-- `A209761(n+1)+A029653(n)-A208510(n+1)` -/
def P14356593490474064076.Spec : Prop :=
  ∀ n, P14356593490474064076.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P3010166849217593554

`A208659(n+1)+A209761(n+1)-A185045(n+1)`
-/

namespace A209762.P3010166849217593554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208659 (n + 1) + (A209761 (n + 1) - A185045 (n + 1))

end

end A209762.P3010166849217593554

namespace A209762

/-- `A208659(n+1)+A209761(n+1)-A185045(n+1)` -/
def P3010166849217593554.Spec : Prop :=
  ∀ n, P3010166849217593554.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P16364322425152046156

`A209562(n+1)+A209761(n+1)-A209561(n+1)`
-/

namespace A209762.P16364322425152046156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209562 (n + 1) + (A209761 (n + 1) - A209561 (n + 1))

end

end A209762.P16364322425152046156

namespace A209762

/-- `A209562(n+1)+A209761(n+1)-A209561(n+1)` -/
def P16364322425152046156.Spec : Prop :=
  ∀ n, P16364322425152046156.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P10347357577372438244

`(A209761(n+1)+A073424(n))^(A000040(n+1)%2)`
-/

namespace A209762.P10347357577372438244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209761 (n + 1) + A073424 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A209762.P10347357577372438244

namespace A209762

/-- `(A209761(n+1)+A073424(n))^(A000040(n+1)%2)` -/
def P10347357577372438244.Spec : Prop :=
  ∀ n, P10347357577372438244.a n = (A209762 (n + 1) : ℚ)

end A209762

/-! ## A209762.P10288895045346630702

`A326822(n+1)+A209761(n+1)`
-/

namespace A209762.P10288895045346630702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (n + 1) + A209761 (n + 1)

end

end A209762.P10288895045346630702

namespace A209762

/-- `A326822(n+1)+A209761(n+1)` -/
def P10288895045346630702.Spec : Prop :=
  ∀ n, P10288895045346630702.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P3037814803613851972

`A209761(A066182(n+1)+1)`
-/

namespace A209762.P3037814803613851972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (A066182 (n + 1) + 1).toNat

end

end A209762.P3037814803613851972

namespace A209762

/-- `A209761(A066182(n+1)+1)` -/
def P3037814803613851972.Spec : Prop :=
  ∀ n, P3037814803613851972.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P13611942163481388944

`A209761(n+1)+A035214(n)-A014963(A001749(n+1))`
-/

namespace A209762.P13611942163481388944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (n + 1) + A035214 n - A014963 (A001749 (n + 1)).toNat

end

end A209762.P13611942163481388944

namespace A209762

/-- `A209761(n+1)+A035214(n)-A014963(A001749(n+1))` -/
def P13611942163481388944.Spec : Prop :=
  ∀ n, P13611942163481388944.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P7215028911514069679

`A319797(A000124(n))+A209761(n+1)`
-/

namespace A209762.P7215028911514069679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 n).toNat + A209761 (n + 1)

end

end A209762.P7215028911514069679

namespace A209762

/-- `A319797(A000124(n))+A209761(n+1)` -/
def P7215028911514069679.Spec : Prop :=
  ∀ n, P7215028911514069679.a n = A209762 (n + 1)

end A209762

/-! ## A209762.P8588089813531248972

`A000027(A209761(n+1)+A073424(n))`
-/

namespace A209762.P8588089813531248972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A209761 (n + 1) + A073424 n).toNat

end

end A209762.P8588089813531248972

namespace A209762

/-- `A000027(A209761(n+1)+A073424(n))` -/
def P8588089813531248972.Spec : Prop :=
  ∀ n, P8588089813531248972.a n = A209762 (n + 1)

end A209762

/-!
# A209763: Triangle of coefficients of polynomials u(n,x) jointly generated with A209764; see the Formula section.

The programs for A209763, there is no canonical definition to state claims against.
-/

/-! ## A209763.P12655848840638572642

`A208913(n+1)+A208914(n+1)-A208908(n+1)`
-/

namespace A209763.P12655848840638572642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (n + 1) + (A208914 (n + 1) - A208908 (n + 1))

end

end A209763.P12655848840638572642

/-! ## A209763.P12881081287115180693

`A209158(n+1)+A209159(n+1)-A208908(n+1)`
-/

namespace A209763.P12881081287115180693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + (A209159 (n + 1) - A208908 (n + 1))

end

end A209763.P12881081287115180693

/-! ## A209763.P6090171780378854436

`A209581(n+1)+A209582(n+1)-A208908(n+1)`
-/

namespace A209763.P6090171780378854436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209581 (n + 1) + (A209582 (n + 1) - A208908 (n + 1))

end

end A209763.P6090171780378854436

/-! ## A209763.P11133222919689242293

`A209705(n+1)+A209706(n+1)-A208908(n+1)`
-/

namespace A209763.P11133222919689242293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209706 (n + 1) - A208908 (n + 1))

end

end A209763.P11133222919689242293

/-! ## A209763.P13705401783783367463

`A209771(n+1)+A209772(n+1)-A208908(n+1)`
-/

namespace A209763.P13705401783783367463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + (A209772 (n + 1) - A208908 (n + 1))

end

end A209763.P13705401783783367463

/-! ## A209763.P6488068025483818489

`A207627(n+2)-A208908(n+1)`
-/

namespace A209763.P6488068025483818489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A208908 (n + 1)

end

end A209763.P6488068025483818489

/-! ## A209763.P14233001438887205774

`A208324(A066182(n+1))-A208908(n+1)`
-/

namespace A209763.P14233001438887205774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A208908 (n + 1)

end

end A209763.P14233001438887205774

/-!
# A209764: Triangle of coefficients of polynomials v(n,x) jointly generated with A209763; see the Formula section.

The programs for A209764, there is no canonical definition to state claims against.
-/

/-! ## A209764.P12369145360630975452

`char[∑[n]]+A208324(n)-A208923(n+1)`
-/

namespace A209764.P12369145360630975452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A208324 n - A208923 (n + 1))

end

end A209764.P12369145360630975452

/-! ## A209764.P6910792332136866804

`A208913(n+1)+A208914(n+1)-A208923(n+1)`
-/

namespace A209764.P6910792332136866804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208913 (n + 1) + (A208914 (n + 1) - A208923 (n + 1))

end

end A209764.P6910792332136866804

/-! ## A209764.P10362316635369499516

`A207627(n+2)-A208923(n+1)`
-/

namespace A209764.P10362316635369499516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A208923 (n + 1)

end

end A209764.P10362316635369499516

/-! ## A209764.P2522608700001152680

`A208324(A066182(n+1))-A208923(n+1)`
-/

namespace A209764.P2522608700001152680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A208923 (n + 1)

end

end A209764.P2522608700001152680

/-!
# A209766: Triangle of coefficients of polynomials v(n,x) jointly generated with A209765; see the Formula section.

The programs for A209766, there is no canonical definition to state claims against.
-/

/-! ## A209766.P12211185767663891814

`A261046(A101031(n))`
-/

namespace A209766.P12211185767663891814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261046 (A101031 n).toNat

end

end A209766.P12211185767663891814

/-! ## A209766.P17940435091321002464

`A006530(C(floor((n+3)²/8), A108458(n+1)))`
-/

namespace A209766.P17940435091321002464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose ⌊((n + 3) ^ 2 : ℚ) / 8⌋.toNat (A108458 (n + 1)).toNat)

end

end A209766.P17940435091321002464

/-! ## A209766.P12043597060531403491

`A006530(C(floor((n+3)²/8), A208756(n+1)))`
-/

namespace A209766.P12043597060531403491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose ⌊((n + 3) ^ 2 : ℚ) / 8⌋.toNat (A208756 (n + 1)).toNat)

end

end A209766.P12043597060531403491

/-! ## A209766.P8393477784489448822

`A006530(C(A001972(n), A198321(n)))`
-/

namespace A209766.P8393477784489448822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A001972 n).toNat (A198321 n).toNat)

end

end A209766.P8393477784489448822

/-! ## A209766.P18036059270555960010

`A006530(C(A001972(n), A291556(n)))`
-/

namespace A209766.P18036059270555960010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A001972 n).toNat (A291556 n).toNat)

end

end A209766.P18036059270555960010

/-!
# A209769: Triangle of coefficients of polynomials u(n,x) jointly generated with A209770; see the Formula section.

The programs for A209769, there is no canonical definition to state claims against.
-/

/-! ## A209769.P7790675865780865784

`A209138(n+1)+A209166(n+1)-A209137(n+1)`
-/

namespace A209769.P7790675865780865784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209138 (n + 1) + (A209166 (n + 1) - A209137 (n + 1))

end

end A209769.P7790675865780865784

/-!
# A209771: Triangle of coefficients of polynomials u(n,x) jointly generated with A209772; see the Formula section.

The programs for A209771, the canonical program `A209771.P15471991878597447221` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209771 has offset 1).

The definition of A209771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209771.P15471991878597447221

`ceil(A208324(n)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A209771

/-- `ceil(A208324(n)/2)` -/
def P15471991878597447221.Spec : Prop :=
  ∀ n, P15471991878597447221.a n = A209771 (n + 1)

theorem P15471991878597447221.correct : P15471991878597447221.Spec := by
  intro n
  simp only [A209771, Nat.add_sub_cancel]

end A209771

/-! ## A209771.P14911459467316600373

`round(A208324(A028310(n))/2)`
-/

namespace A209771.P14911459467316600373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A208324 (A028310 n).toNat : ℚ) / 2)

end

end A209771.P14911459467316600373

namespace A209771

/-- `round(A208324(A028310(n))/2)` -/
def P14911459467316600373.Spec : Prop :=
  ∀ n, P14911459467316600373.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P14239809181612276413

`A209772(2-A130296(n+1)+n)`
-/

namespace A209771.P14239809181612276413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209772 (2 - A130296 (n + 1) + (n : ℤ)).toNat

end

end A209771.P14239809181612276413

namespace A209771

/-- `A209772(2-A130296(n+1)+n)` -/
def P14239809181612276413.Spec : Prop :=
  ∀ n, P14239809181612276413.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P3791423947156255295

`A209772(n+1)-A056944(n)%2`
-/

namespace A209771.P3791423947156255295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209772 (n + 1) - Int.tmod (A056944 n) 2

end

end A209771.P3791423947156255295

namespace A209771

/-- `A209772(n+1)-A056944(n)%2` -/
def P3791423947156255295.Spec : Prop :=
  ∀ n, P3791423947156255295.a n = A209771 (n + 1)

theorem P3791423947156255295.correct : P3791423947156255295.Spec := by
  intro n
  simp only [A209771, Nat.add_sub_cancel, A209771.P3791423947156255295.a, A209771.P15471991878597447221.a, A056944, A056944.P15541445897934142795.a, A208324, A208324.P5562649891701857175.a, A209772, A209772.P1281362737997625489.a, A010054, A010054.P18347828677204923252.a, A013609, A013609.P8535619279575218406.a, A193862, A193862.P608042678390646429.a, A005369, A005369.P10796159359873341658.a, A007318, A007318.P302227728145965961.a, A059268, A059268.P15217573790077737885.a, A135278, A135278.P10862305414900331449.a, A018900, A018900.P2868698677378612256.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A140513, A140513.P13579608035938851890.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A209771

/-! ## A209771.P1295534595999282082

`A209772(n+1)-A003056(n)%A035214(n)`
-/

namespace A209771.P1295534595999282082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209772 (n + 1) - Int.tmod (A003056 n) (A035214 n)

end

end A209771.P1295534595999282082

namespace A209771

/-- `A209772(n+1)-A003056(n)%A035214(n)` -/
def P1295534595999282082.Spec : Prop :=
  ∀ n, P1295534595999282082.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P13594729096578469951

`A209772(n+1)-A114327(n)%A035214(n)`
-/

namespace A209771.P13594729096578469951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209772 (n + 1) - Int.tmod (A114327 n) (A035214 n)

end

end A209771.P13594729096578469951

namespace A209771

/-- `A209772(n+1)-A114327(n)%A035214(n)` -/
def P13594729096578469951.Spec : Prop :=
  ∀ n, P13594729096578469951.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P15673081212884132627

`A209158(n+1)+A209159(n+1)-A209772(n+1)`
-/

namespace A209771.P15673081212884132627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + (A209159 (n + 1) - A209772 (n + 1))

end

end A209771.P15673081212884132627

namespace A209771

/-- `A209158(n+1)+A209159(n+1)-A209772(n+1)` -/
def P15673081212884132627.Spec : Prop :=
  ∀ n, P15673081212884132627.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P4622349999046635024

`A209705(n+1)+A209706(n+1)-A209772(n+1)`
-/

namespace A209771.P4622349999046635024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209706 (n + 1) - A209772 (n + 1))

end

end A209771.P4622349999046635024

namespace A209771

/-- `A209705(n+1)+A209706(n+1)-A209772(n+1)` -/
def P4622349999046635024.Spec : Prop :=
  ∀ n, P4622349999046635024.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P139390382397183729

`floor(A013609(n)+A013609(n+1)/4)`
-/

namespace A209771.P139390382397183729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A013609 n : ℚ) + (A013609 (n + 1) : ℚ) / 4⌋

end

end A209771.P139390382397183729

namespace A209771

/-- `floor(A013609(n)+A013609(n+1)/4)` -/
def P139390382397183729.Spec : Prop :=
  ∀ n, P139390382397183729.a n = A209771 (n + 1)

end A209771

/-! ## A209771.P11574428536150583067

`round(A209705(n+1)+A209705(n+2)/2)`
-/

namespace A209771.P11574428536150583067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209705 (n + 1) : ℚ) + (A209705 (n + 2) : ℚ) / 2)

end

end A209771.P11574428536150583067

namespace A209771

/-- `round(A209705(n+1)+A209705(n+2)/2)` -/
def P11574428536150583067.Spec : Prop :=
  ∀ n, P11574428536150583067.a n = A209771 (n + 1)

end A209771

/-!
# A209772: Triangle of coefficients of polynomials v(n,x) jointly generated with A209771; see the Formula section.

The programs for A209772, the canonical program `A209772.P1281362737997625489` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209772 has offset 1).

The definition of A209772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209772.P1281362737997625489

`A209771(n+1)+A056944(n)%2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209772

/-- `A209771(n+1)+A056944(n)%2` -/
def P1281362737997625489.Spec : Prop :=
  ∀ n, P1281362737997625489.a n = A209772 (n + 1)

theorem P1281362737997625489.correct : P1281362737997625489.Spec := by
  intro n
  simp only [A209772, Nat.add_sub_cancel]

end A209772

/-! ## A209772.P13101597490147223627

`round((A208914(n+1)+A208913(n+1))/2)`
-/

namespace A209772.P13101597490147223627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A208914 (n + 1) + A208913 (n + 1) : ℚ) / 2)

end

end A209772.P13101597490147223627

namespace A209772

/-- `round((A208914(n+1)+A208913(n+1))/2)` -/
def P13101597490147223627.Spec : Prop :=
  ∀ n, P13101597490147223627.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P2150373353801826675

`A209771(n+1)+and(A003056(n), A010054(n))`
-/

namespace A209772.P2150373353801826675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + Int.land (A003056 n) (A010054 n)

end

end A209772.P2150373353801826675

namespace A209772

/-- `A209771(n+1)+and(A003056(n), A010054(n))` -/
def P2150373353801826675.Spec : Prop :=
  ∀ n, P2150373353801826675.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P12036078817544338816

`A209158(n+1)+A209159(n+1)-A209771(n+1)`
-/

namespace A209772.P12036078817544338816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + (A209159 (n + 1) - A209771 (n + 1))

end

end A209772.P12036078817544338816

namespace A209772

/-- `A209158(n+1)+A209159(n+1)-A209771(n+1)` -/
def P12036078817544338816.Spec : Prop :=
  ∀ n, P12036078817544338816.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P12246764320498430459

`A209705(n+1)+A209706(n+1)-A209771(n+1)`
-/

namespace A209772.P12246764320498430459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209706 (n + 1) - A209771 (n + 1))

end

end A209772.P12246764320498430459

namespace A209772

/-- `A209705(n+1)+A209706(n+1)-A209771(n+1)` -/
def P12246764320498430459.Spec : Prop :=
  ∀ n, P12246764320498430459.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P11537845188282241316

`round(A207627(n+2)/2)`
-/

namespace A209772.P11537845188282241316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A207627 (n + 2) : ℚ) / 2)

end

end A209772.P11537845188282241316

namespace A209772

/-- `round(A207627(n+2)/2)` -/
def P11537845188282241316.Spec : Prop :=
  ∀ n, P11537845188282241316.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P12432472198370188567

`A209771(A066182(n+1)+1)`
-/

namespace A209772.P12432472198370188567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (A066182 (n + 1) + 1).toNat

end

end A209772.P12432472198370188567

namespace A209772

/-- `A209771(A066182(n+1)+1)` -/
def P12432472198370188567.Spec : Prop :=
  ∀ n, P12432472198370188567.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P11641771789198524517

`A303764(A013609(n+1))+A013609(n)-A013609(n+1)`
-/

namespace A209772.P11641771789198524517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 (A013609 (n + 1)).toNat + (A013609 n - A013609 (n + 1))

end

end A209772.P11641771789198524517

namespace A209772

/-- `A303764(A013609(n+1))+A013609(n)-A013609(n+1)` -/
def P11641771789198524517.Spec : Prop :=
  ∀ n, P11641771789198524517.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P1877136791013484248

`A065033(A207627(n+2))`
-/

namespace A209772.P1877136791013484248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A207627 (n + 2)).toNat

end

end A209772.P1877136791013484248

namespace A209772

/-- `A065033(A207627(n+2))` -/
def P1877136791013484248.Spec : Prop :=
  ∀ n, P1877136791013484248.a n = A209772 (n + 1)

end A209772

/-! ## A209772.P15090330439365583734

`A004526(A207627(n+2)+1)`
-/

namespace A209772.P15090330439365583734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A207627 (n + 2) + 1).toNat

end

end A209772.P15090330439365583734

namespace A209772

/-- `A004526(A207627(n+2)+1)` -/
def P15090330439365583734.Spec : Prop :=
  ∀ n, P15090330439365583734.a n = A209772 (n + 1)

end A209772

/-!
# A209775: Triangle of coefficients of polynomials u(n,x) jointly generated with A209776; see the Formula section.

The programs for A209775, there is no canonical definition to state claims against.
-/

/-! ## A209775.P11854526465295462033

`2*A210600(n+1)-A209776(n+1)`
-/

namespace A209775.P11854526465295462033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210600 (n + 1) - A209776 (n + 1)

end

end A209775.P11854526465295462033

/-! ## A209775.P172408768461519121

`A005843(A210600(n+1))-A209776(n+1)`
-/

namespace A209775.P172408768461519121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210600 (n + 1)).toNat - A209776 (n + 1)

end

end A209775.P172408768461519121

/-!
# A209776: Triangle of coefficients of polynomials v(n,x) jointly generated with A209773; see the Formula section.

The programs for A209776, there is no canonical definition to state claims against.
-/

/-! ## A209776.P6847063266289593817

`2*A210600(n+1)-A209775(n+1)`
-/

namespace A209776.P6847063266289593817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210600 (n + 1) - A209775 (n + 1)

end

end A209776.P6847063266289593817

/-! ## A209776.P14835110780760094462

`A005843(A210600(n+1))-A209775(n+1)`
-/

namespace A209776.P14835110780760094462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210600 (n + 1)).toNat - A209775 (n + 1)

end

end A209776.P14835110780760094462

/-!
# A209777: Number of q in the range 0<=q<=n for which A006002(n)+A006002(q) is prime.

The programs for A209777, there is no canonical definition to state claims against.
-/

/-! ## A209777.P17716421966303731652

`and(A005041(floor(2^(n-1))), A259799(n+1))`
-/

namespace A209777.P17716421966303731652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005041 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat) (A259799 (n + 1))

end

end A209777.P17716421966303731652

/-! ## A209777.P1491630000143764433

`and(A065331(A189174(n+1)), A082284(n))`
-/

namespace A209777.P1491630000143764433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065331 (A189174 (n + 1)).toNat) (A082284 n)

end

end A209777.P1491630000143764433

/-! ## A209777.P9854803091115449277

`A030373(or(A097806(n), A166628(n+1)))`
-/

namespace A209777.P9854803091115449277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030373 (Int.lor (A097806 n) (A166628 (n + 1))).toNat

end

end A209777.P9854803091115449277

/-! ## A209777.P16734439871102066279

`and(A025841(A307069(n+1)), A242641(n+1))`
-/

namespace A209777.P16734439871102066279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025841 (A307069 (n + 1)).toNat) (A242641 (n + 1))

end

end A209777.P16734439871102066279

/-! ## A209777.P5453104104345167213

`and(A025841(A307069(n+1)), A259799(n+1))`
-/

namespace A209777.P5453104104345167213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025841 (A307069 (n + 1)).toNat) (A259799 (n + 1))

end

end A209777.P5453104104345167213

/-!
# A209778: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 + k^2*x) / (1 + x + k^2*x^2).

The programs for A209778, there is no canonical definition to state claims against.
-/

/-! ## A209778.P13879299003214730197

`A156549(or(3, A279571(n)))`
-/

namespace A209778.P13879299003214730197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (Int.lor 3 (A279571 n)).toNat

end

end A209778.P13879299003214730197

/-! ## A209778.P398110633518976216

`A025443(A164737(n+1)+81)`
-/

namespace A209778.P398110633518976216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A164737 (n + 1) + 81).toNat

end

end A209778.P398110633518976216

/-! ## A209778.P12293076757832072196

`A156549(A279571(n)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)`
-/

namespace A209778.P12293076757832072196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (SequenceMachineLib.roundAway ((A279571 n : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1))).toNat

end

end A209778.P12293076757832072196

/-!
# A209779: Half the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209779, there is no canonical definition to state claims against.
-/

/-! ## A209779.P9290176692574876092

`A209787((n+1)²+n²)`
-/

namespace A209779.P9290176692574876092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 ((n + 1) ^ 2 + n ^ 2)

end

end A209779.P9290176692574876092

/-! ## A209779.P3594822654824109662

`record[A003982(n)*A209787(n+1)]`
-/

namespace A209779.P3594822654824109662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A209787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209779.P3594822654824109662

/-! ## A209779.P4462152360206826654

`record[gcd(A114327(n), A209787(n+1))]`
-/

namespace A209779.P4462152360206826654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A209787 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209779.P4462152360206826654

/-!
# A209780: Half the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209780, there is no canonical definition to state claims against.
-/

/-! ## A209780.P7449565544773978650

`A209787(∑[n]+1)`
-/

namespace A209780.P7449565544773978650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209780.P7449565544773978650

/-! ## A209780.P10111324639723604056

`record[A010054(n)*A209787(n+1)]`
-/

namespace A209780.P10111324639723604056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209780.P10111324639723604056

/-! ## A209780.P13841655568954183615

`record[A209787(n+1)/A034801(n)]`
-/

namespace A209780.P13841655568954183615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209787 (n + 1) : ℚ) / (A034801 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209780.P13841655568954183615

/-! ## A209780.P12298860321343098585

`record[root(A209787(n+1), A008288(n))]`
-/

namespace A209780.P12298860321343098585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209787 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209780.P12298860321343098585

/-! ## A209780.P1800726358994844751

`record[root(A209787(n+1), A063007(n))]`
-/

namespace A209780.P1800726358994844751
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209787 (n + 1) : ℝ) ^ (1 / (A063007 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209780.P1800726358994844751

/-!
# A209781: Half the number of (n+1)X3 0..3 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209781, there is no canonical definition to state claims against.
-/

/-! ## A209781.P16600607203696361110

`A209787(∑[n+1]+2)`
-/

namespace A209781.P16600607203696361110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209781.P16600607203696361110

/-! ## A209781.P446844711020568963

`record[lcm(Δ[round(sqrt(2*n))%2], A209787(n+2))]`
-/

namespace A209781.P446844711020568963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f2 (n + 1) - f2 n) (A209787 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209781.P446844711020568963

/-! ## A209781.P2686878474710225853

`record[A209787(A286238(n+1)+1)]`
-/

namespace A209781.P2686878474710225853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A286238 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209781.P2686878474710225853

/-! ## A209781.P3082617612725910109

`record[A010054(n)*A209787(n+2)]`
-/

namespace A209781.P3082617612725910109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209781.P3082617612725910109

/-! ## A209781.P17134056814233406871

`record[root(A209787(n+2), A063007(n))]`
-/

namespace A209781.P17134056814233406871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209787 (n + 2) : ℝ) ^ (1 / (A063007 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209781.P17134056814233406871

/-!
# A209782: Half the number of (n+1)X4 0..3 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209782, there is no canonical definition to state claims against.
-/

/-! ## A209782.P1894451175558069652

`A209787(∑[n+2]+4)`
-/

namespace A209782.P1894451175558069652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209782.P1894451175558069652

/-! ## A209782.P449588413351068244

`record[A209787(A167614(1-floor(sqrt(n))²+n))]`
-/

namespace A209782.P449588413351068244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A167614 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209782.P449588413351068244

/-! ## A209782.P1988600998742094703

`A209787(A167614(n+1))+A185037(n)`
-/

namespace A209782.P1988600998742094703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A167614 (n + 1)).toNat + A185037 n

end

end A209782.P1988600998742094703

/-! ## A209782.P14691362062607139930

`A014998(n)*A209787(A167614(n+1))`
-/

namespace A209782.P14691362062607139930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A209787 (A167614 (n + 1)).toNat

end

end A209782.P14691362062607139930

/-! ## A209782.P9065254191706856083

`lcm(A033999(n), A209787(A167614(n+1)))`
-/

namespace A209782.P9065254191706856083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209787 (A167614 (n + 1)).toNat)

end

end A209782.P9065254191706856083

/-!
# A209783: Half the number of (n+1)X5 0..3 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209783, there is no canonical definition to state claims against.
-/

/-! ## A209783.P5009302227253836220

`A209787(A167614(n+2)+1)`
-/

namespace A209783.P5009302227253836220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A167614 (n + 2) + 1).toNat

end

end A209783.P5009302227253836220

/-! ## A209783.P8069174013718745717

`A209787(Δ[A023545(n+1)-n²])`
-/

namespace A209783.P8069174013718745717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (f1 (n + 1) - f1 n).toNat

end

end A209783.P8069174013718745717

/-! ## A209783.P4342191346649605982

`A209787(A052905(n+1)+2)`
-/

namespace A209783.P4342191346649605982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A052905 (n + 1) + 2).toNat

end

end A209783.P4342191346649605982

/-! ## A209783.P4455612866457320635

`A209787(∑[∑[A014998(n)]+3]+3)`
-/

namespace A209783.P4455612866457320635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A209783.P4455612866457320635

/-!
# A209784: Half the number of (n+1)X6 0..3 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209784, there is no canonical definition to state claims against.
-/

/-! ## A209784.P7126865991313474213

`A209787(A374005(n+1))`
-/

namespace A209784.P7126865991313474213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A374005 (n + 1)).toNat

end

end A209784.P7126865991313474213

/-! ## A209784.P10013466487434668786

`A209787(Δ[A023545(n+1)])`
-/

namespace A209784.P10013466487434668786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (f1 (n + 1) - f1 n).toNat

end

end A209784.P10013466487434668786

/-!
# A209785: 

The programs for A209785, there is no canonical definition to state claims against.
-/

/-! ## A209785.P7807952636381658243

`A209787(A000096(n+4)+7)`
-/

namespace A209785.P7807952636381658243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A000096 (n + 4) + 7).toNat

end

end A209785.P7807952636381658243

/-! ## A209785.P15120925657305866080

`A209787(A055999(n+3)+1)`
-/

namespace A209785.P15120925657305866080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A055999 (n + 3) + 1).toNat

end

end A209785.P15120925657305866080

/-! ## A209785.P12388625234839158681

`A209787(Δ[A023551(n+1)+n])`
-/

namespace A209785.P12388625234839158681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (f1 (n + 1) - f1 n).toNat

end

end A209785.P12388625234839158681

/-! ## A209785.P8558932130412249047

`A209787(A014998(n)+A000217(n+6)-6)`
-/

namespace A209785.P8558932130412249047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A014998 n + (A000217 (n + 6) - 6)).toNat

end

end A209785.P8558932130412249047

/-!
# A209786: 

The programs for A209786, there is no canonical definition to state claims against.
-/

/-! ## A209786.P15968984943272941016

`A209787(A167499(n+5)+2)`
-/

namespace A209786.P15968984943272941016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (A167499 (n + 5) + 2).toNat

end

end A209786.P15968984943272941016

/-! ## A209786.P18353952781013005861

`A209787(eq[4, A219347(n)])`
-/

namespace A209786.P18353952781013005861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209786.P18353952781013005861

/-! ## A209786.P12950317731326084980

`A209787(Δ[A023551(n+2)])`
-/

namespace A209786.P12950317731326084980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209787 (f1 (n + 1) - f1 n).toNat

end

end A209786.P12950317731326084980

/-!
# A209788: Half the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209788, there is no canonical definition to state claims against.
-/

/-! ## A209788.P16489894496298964527

`A209796((n+1)²+n²)`
-/

namespace A209788.P16489894496298964527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 ((n + 1) ^ 2 + n ^ 2)

end

end A209788.P16489894496298964527

/-!
# A209789: Half the number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209789, the canonical program `A209789.P1698013958458874422` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209789 has offset 1).

The definition of A209789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209789.P1698013958458874422

`5*a(n-1)+12*a(n-2)` with `a(0)=30, a(1)=204`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A209789

/-- `5*a(n-1)+12*a(n-2)` -/
def P1698013958458874422.Spec : Prop :=
  ∀ n, (P1698013958458874422.a n : ℤ) = A209789 (n + 1)

theorem P1698013958458874422.correct : P1698013958458874422.Spec := by
  intro n
  simp only [A209789, Nat.add_sub_cancel]

end A209789

/-! ## A209789.P7571611090198888210

`A209796(∑[n]+1)`
-/

namespace A209789.P7571611090198888210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209789.P7571611090198888210

namespace A209789

/-- `A209796(∑[n]+1)` -/
def P7571611090198888210.Spec : Prop :=
  ∀ n, P7571611090198888210.a n = A209789 (n + 1)

end A209789

/-! ## A209789.P1603579741622608031

`lcm(2, A209796(A000124(n)))`
-/

namespace A209789.P1603579741622608031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209796 (A000124 n).toNat)

end

end A209789.P1603579741622608031

namespace A209789

/-- `lcm(2, A209796(A000124(n)))` -/
def P1603579741622608031.Spec : Prop :=
  ∀ n, (P1603579741622608031.a n : ℤ) = A209789 (n + 1)

end A209789

/-! ## A209789.P10952362439139532224

`record[A010054(n)*A209796(n+1)]`
-/

namespace A209789.P10952362439139532224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209789.P10952362439139532224

namespace A209789

/-- `record[A010054(n)*A209796(n+1)]` -/
def P10952362439139532224.Spec : Prop :=
  ∀ n, P10952362439139532224.a n = A209789 (n + 1)

end A209789

/-! ## A209789.P1479048843827379816

`record[root(A209796(n+1), A200181(n+1))]`
-/

namespace A209789.P1479048843827379816
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209796 (n + 1) : ℝ) ^ (1 / (A200181 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209789.P1479048843827379816

namespace A209789

/-- `record[root(A209796(n+1), A200181(n+1))]` -/
def P1479048843827379816.Spec : Prop :=
  ∀ n, P1479048843827379816.a n = (A209789 (n + 1) : ℝ)

end A209789

/-!
# A209790: Half the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209790, there is no canonical definition to state claims against.
-/

/-! ## A209790.P17663583916665439505

`A209796(∑[n+1]+2)`
-/

namespace A209790.P17663583916665439505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209790.P17663583916665439505

/-! ## A209790.P8357423775075228534

`record[A010054(n)*A209796(n+2)]`
-/

namespace A209790.P8357423775075228534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209790.P8357423775075228534

/-! ## A209790.P14869682810150549317

`record[A209796(C(A004736(n+1), 2)+2)]`
-/

namespace A209790.P14869682810150549317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (Nat.choose (A004736 (n + 1)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209790.P14869682810150549317

/-! ## A209790.P4384864471839494056

`record[root(A209796(n+2), A209819(n+1))]`
-/

namespace A209790.P4384864471839494056
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209796 (n + 2) : ℝ) ^ (1 / (A209819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209790.P4384864471839494056

/-! ## A209790.P5813217575944072497

`record[gcd(A209796(n+2), A317896(n+3))]`
-/

namespace A209790.P5813217575944072497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209796 (n + 2)) (A317896 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209790.P5813217575944072497

/-!
# A209791: Half the number of (n+1)X4 0..2 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209791, there is no canonical definition to state claims against.
-/

/-! ## A209791.P4245739445464546023

`A209796(∑[n+2]+4)`
-/

namespace A209791.P4245739445464546023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209791.P4245739445464546023

/-! ## A209791.P142007785877984179

`lcm(2, A209796(A167614(n+1)))`
-/

namespace A209791.P142007785877984179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209796 (A167614 (n + 1)).toNat)

end

end A209791.P142007785877984179

/-! ## A209791.P14664737040511261535

`A209796(A167614(n+1))+A025444(n)`
-/

namespace A209791.P14664737040511261535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A167614 (n + 1)).toNat + A025444 n

end

end A209791.P14664737040511261535

/-! ## A209791.P12116190628011825170

`A217155(n+1)+A209796(A167614(n+1))`
-/

namespace A209791.P12116190628011825170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + A209796 (A167614 (n + 1)).toNat

end

end A209791.P12116190628011825170

/-! ## A209791.P10979825089146157671

`A209796(A167614(n+1))%A209792(n+1)`
-/

namespace A209791.P10979825089146157671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209796 (A167614 (n + 1)).toNat) (A209792 (n + 1))

end

end A209791.P10979825089146157671

/-!
# A209792: Half the number of (n+1)X5 0..2 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209792, there is no canonical definition to state claims against.
-/

/-! ## A209792.P12387819637931843614

`A209796(A141214(n)+7)`
-/

namespace A209792.P12387819637931843614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A141214 n + 7).toNat

end

end A209792.P12387819637931843614

/-! ## A209792.P3038226014268402138

`A209796(A052905(n)+9)`
-/

namespace A209792.P3038226014268402138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A052905 n + 9).toNat

end

end A209792.P3038226014268402138

/-! ## A209792.P15488277669681357766

`A209796(A167614(n+2)+1)`
-/

namespace A209792.P15488277669681357766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A167614 (n + 2) + 1).toNat

end

end A209792.P15488277669681357766

/-! ## A209792.P13360267242983915400

`A209796(Δ[A264443(n)-n²])`
-/

namespace A209792.P13360267242983915400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (f1 (n + 1) - f1 n).toNat

end

end A209792.P13360267242983915400

/-! ## A209792.P17744181131120325869

`A209796(A155212(n)+5)`
-/

namespace A209792.P17744181131120325869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A155212 n + 5).toNat

end

end A209792.P17744181131120325869

/-!
# A209793: Half the number of (n+1)X6 0..2 arrays with every 2X2 subblock having exactly one duplicate clockwise edge difference.

The programs for A209793, there is no canonical definition to state claims against.
-/

/-! ## A209793.P10010475298347687214

`A209796(A374005(n+1))`
-/

namespace A209793.P10010475298347687214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A374005 (n + 1)).toNat

end

end A209793.P10010475298347687214

/-! ## A209793.P8023422604879286533

`A209796(Δ[A264443(n)])`
-/

namespace A209793.P8023422604879286533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (f1 (n + 1) - f1 n).toNat

end

end A209793.P8023422604879286533

/-! ## A209793.P7092351229737804389

`A209796(A264443(n+1)-A264443(n))`
-/

namespace A209793.P7092351229737804389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209796 (A264443 (n + 1) - A264443 n).toNat

end

end A209793.P7092351229737804389

/-!
# A209797: The number of partitions of the set [n] where each element can be colored 1 or 2 avoiding the patterns 1^11^2 and 1^22^1 in the pattern sense.

The programs for A209797, there is no canonical definition to state claims against.
-/

/-! ## A209797.P4203769451579869444

`A106444(A080522(n+1))+A059716(n+1)`
-/

namespace A209797.P4203769451579869444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (A080522 (n + 1)).toNat + A059716 (n + 1)

end

end A209797.P4203769451579869444

/-! ## A209797.P1183154218680482911

`A240163(A077058(n+1)+A017936(n+1))`
-/

namespace A209797.P1183154218680482911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240163 (A077058 (n + 1) + A017936 (n + 1)).toNat

end

end A209797.P1183154218680482911

/-!
# A209798: The number of partitions of the set [n] where each element can be colored 1 or 2 avoiding the patterns 1^11^2, 1^12^2, and 1^22^1 in the pattern sense.

The programs for A209798, there is no canonical definition to state claims against.
-/

/-! ## A209798.P2837827644228648657

`A060719(n)+1+n`
-/

namespace A209798.P2837827644228648657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060719 n + 1 + (n : ℤ)

end

end A209798.P2837827644228648657

/-! ## A209798.P1327531989411668064

`A186021(n+1)+n`
-/

namespace A209798.P1327531989411668064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 (n + 1) + (n : ℤ)

end

end A209798.P1327531989411668064

/-! ## A209798.P6924670624029990142

`2*A011972(∑[n])+n`
-/

namespace A209798.P6924670624029990142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011972 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A209798.P6924670624029990142

/-! ## A209798.P8684841285031862411

`2*A283424(∑[n])+n`
-/

namespace A209798.P8684841285031862411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283424 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A209798.P8684841285031862411

/-! ## A209798.P6000660660990398407

`record[2*A095149(n)]+n`
-/

namespace A209798.P6000660660990398407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A209798.P6000660660990398407

/-!
# A209799: Composite numbers n such that the concatenation of the digits of the prime divisors of n is a prime number.

The programs for A209799, there is no canonical definition to state claims against.
-/

/-! ## A209799.P6012730211886747887

`filter[A068998(n+1), A005171(#)]`
-/

namespace A209799.P6012730211886747887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A209799.P6012730211886747887

/-! ## A209799.P3328270131250119134

`filter[A068998(n+1), A066247(#)]`
-/

namespace A209799.P3328270131250119134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A209799.P3328270131250119134

/-! ## A209799.P396003470435645505

`∩[A002808(n+1), A068998(n+1)]`
-/

namespace A209799.P396003470435645505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P396003470435645505

/-! ## A209799.P9909695918863214797

`∩[A018252(n+1), A068998(n+1)]`
-/

namespace A209799.P9909695918863214797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P9909695918863214797

/-! ## A209799.P13657125545856291192

`∩[A068998(n+1), A141468(n+1)]`
-/

namespace A209799.P13657125545856291192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P13657125545856291192

/-! ## A209799.P21206767515408643

`∪[A123710(n+1), A221220(n+1)]`
-/

namespace A209799.P21206767515408643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P21206767515408643

/-! ## A209799.P4123769727572532808

`∪[A134612(n+1), A221220(n+1)]`
-/

namespace A209799.P4123769727572532808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P4123769727572532808

/-! ## A209799.P4451650731105533301

`∪[A221220(n+1), A319163(n+1)]`
-/

namespace A209799.P4451650731105533301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P4451650731105533301

/-! ## A209799.P16634862197932293635

`∪[A221220(n+1), A344030(n+1)]`
-/

namespace A209799.P16634862197932293635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A209799.P16634862197932293635

