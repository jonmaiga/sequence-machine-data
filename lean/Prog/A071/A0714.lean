import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A071400: Rounded volume of a regular octahedron with edge length n.

The programs for A071400, the canonical program `A071400.P12176362447893920708` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071400 has offset 0).

The definition of A071400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071400.P12176362447893920708

`round(n^3*sqrt(2)/3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071400

/-- `round(n^3*sqrt(2)/3)` -/
def P12176362447893920708.Spec : Prop :=
  ∀ n, P12176362447893920708.a n = A071400 n

theorem P12176362447893920708.correct : P12176362447893920708.Spec := by
  intro n
  simp only [A071400]

end A071400

/-! ## A071400.P9781427476993631750

`A004396(round(sqrt(A085742(n))))`
-/

namespace A071400.P9781427476993631750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway (Real.sqrt (A085742 n : ℝ))).toNat

end

end A071400.P9781427476993631750

namespace A071400

/-- `A004396(round(sqrt(A085742(n))))` -/
def P9781427476993631750.Spec : Prop :=
  ∀ n, P9781427476993631750.a n = A071400 n

end A071400

/-!
# A071401: Rounded volume of a regular dodecahedron with edge length n.

The programs for A071401, the canonical program `A071401.P835650602583595864` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071401 has offset 0).

The definition of A071401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071401.P835650602583595864

`round(n^3*(15+7*sqrt(5))/4)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071401

/-- `round(n^3*(15+7*sqrt(5))/4)` -/
def P835650602583595864.Spec : Prop :=
  ∀ n, P835650602583595864.a n = A071401 n

theorem P835650602583595864.correct : P835650602583595864.Spec := by
  intro n
  simp only [A071401]

end A071401

/-!
# A071402: Rounded volume of a regular icosahedron with edge length n.

The programs for A071402, the canonical program `A071402.P16752336042761634876` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071402 has offset 0).

The definition of A071402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071402.P16752336042761634876

`round(n^3*(3+sqrt(5))*5/12)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071402

/-- `round(n^3*(3+sqrt(5))*5/12)` -/
def P16752336042761634876.Spec : Prop :=
  ∀ n, P16752336042761634876.a n = A071402 n

theorem P16752336042761634876.correct : P16752336042761634876.Spec := by
  intro n
  simp only [A071402]

end A071402

/-! ## A071402.P6919958393163937669

`A004526(A312068(n*n²))`
-/

namespace A071402.P6919958393163937669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312068 (n * n ^ 2)).toNat

end

end A071402.P6919958393163937669

namespace A071402

/-- `A004526(A312068(n*n²))` -/
def P6919958393163937669.Spec : Prop :=
  ∀ n, P6919958393163937669.a n = A071402 n

end A071402

/-! ## A071402.P5888790310645500586

`floor(floor(A311331(2*n^3)/2)/2)`
-/

namespace A071402.P5888790310645500586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A311331 (2 * n ^ 3) : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A071402.P5888790310645500586

namespace A071402

/-- `floor(floor(A311331(2*n^3)/2)/2)` -/
def P5888790310645500586.Spec : Prop :=
  ∀ n, P5888790310645500586.a n = A071402 n

end A071402

/-!
# A071403: Which squarefree number is prime? a(n)-th squarefree number equals n-th prime.

The programs for A071403, the canonical program `A071403.P15817908968978529389` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071403 has offset 1).

The definition of A071403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071403.P15817908968978529389

`A112929(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071403

/-- `A112929(n+1)+1` -/
def P15817908968978529389.Spec : Prop :=
  ∀ n, P15817908968978529389.a n = A071403 (n + 1)

theorem P15817908968978529389.correct : P15817908968978529389.Spec := by
  intro n
  simp only [A071403, Nat.add_sub_cancel]

end A071403

/-! ## A071403.P15216491097516815462

`A013928(A008864(n+1))`
-/

namespace A071403.P15216491097516815462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A008864 (n + 1)).toNat

end

end A071403.P15216491097516815462

namespace A071403

/-- `A013928(A008864(n+1))` -/
def P15216491097516815462.Spec : Prop :=
  ∀ n, P15216491097516815462.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P9667806914405042016

`A112930(n+1)-1`
-/

namespace A071403.P9667806914405042016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1) - 1

end

end A071403.P9667806914405042016

namespace A071403

/-- `A112930(n+1)-1` -/
def P9667806914405042016.Spec : Prop :=
  ∀ n, P9667806914405042016.a n = A071403 (n + 1)

theorem P9667806914405042016.correct : P9667806914405042016.Spec := by
  intro n
  simp only [A071403, Nat.add_sub_cancel, A071403.P9667806914405042016.a, A071403.P15817908968978529389.a, A112929, A112929.P128816744454326581.a, A112930, A112930.P7126053726691172401.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071403

/-! ## A071403.P15259430612710066280

`A337030(n+1)+2+n`
-/

namespace A071403.P15259430612710066280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1) + 2 + (n : ℤ)

end

end A071403.P15259430612710066280

namespace A071403

/-- `A337030(n+1)+2+n` -/
def P15259430612710066280.Spec : Prop :=
  ∀ n, P15259430612710066280.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P17032821643942868993

`A373198(n)+a(n-1)` with `a(0)=2`
-/

namespace A071403.P17032821643942868993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A373198 n + a (n - 1)

end

end A071403.P17032821643942868993

namespace A071403

/-- `A373198(n)+a(n-1)` -/
def P17032821643942868993.Spec : Prop :=
  ∀ n, P17032821643942868993.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P17442734602351616593

`A355936(A093074(n+1))+A112930(n+1)`
-/

namespace A071403.P17442734602351616593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355936 (A093074 (n + 1)).toNat + A112930 (n + 1)

end

end A071403.P17442734602351616593

namespace A071403

/-- `A355936(A093074(n+1))+A112930(n+1)` -/
def P17442734602351616593.Spec : Prop :=
  ∀ n, P17442734602351616593.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P11965077463004938677

`A013928(A028815(n+1))`
-/

namespace A071403.P11965077463004938677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A028815 (n + 1)).toNat

end

end A071403.P11965077463004938677

namespace A071403

/-- `A013928(A028815(n+1))` -/
def P11965077463004938677.Spec : Prop :=
  ∀ n, P11965077463004938677.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P16160672762355734659

`A107079(A000040(n+1))`
-/

namespace A071403.P16160672762355734659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A000040 (n + 1)).toNat

end

end A071403.P16160672762355734659

namespace A071403

/-- `A107079(A000040(n+1))` -/
def P16160672762355734659.Spec : Prop :=
  ∀ n, P16160672762355734659.a n = A071403 (n + 1)

theorem P16160672762355734659.correct : P16160672762355734659.Spec := by
  intro n
  simp only [A071403, Nat.add_sub_cancel, A071403.P16160672762355734659.a, A071403.P15817908968978529389.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A107079, A107079.P8145768499534566836.a, A112929, A112929.P128816744454326581.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071403

/-! ## A071403.P13966501134548836491

`A013928(A112926(n+1))`
-/

namespace A071403.P13966501134548836491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112926 (n + 1)).toNat

end

end A071403.P13966501134548836491

namespace A071403

/-- `A013928(A112926(n+1))` -/
def P13966501134548836491.Spec : Prop :=
  ∀ n, P13966501134548836491.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P13535214704544779881

`A107079(A008578(n+2))`
-/

namespace A071403.P13535214704544779881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A008578 (n + 2)).toNat

end

end A071403.P13535214704544779881

namespace A071403

/-- `A107079(A008578(n+2))` -/
def P13535214704544779881.Spec : Prop :=
  ∀ n, P13535214704544779881.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P11584571239644678912

`A013928(Δ[A007504(n)]+1)`
-/

namespace A071403.P11584571239644678912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (n + 1) - f1 n + 1).toNat

end

end A071403.P11584571239644678912

namespace A071403

/-- `A013928(Δ[A007504(n)]+1)` -/
def P11584571239644678912.Spec : Prop :=
  ∀ n, P11584571239644678912.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P1751644356078150906

`A107079(record[A006530(n+2)])`
-/

namespace A071403.P1751644356078150906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071403.P1751644356078150906

namespace A071403

/-- `A107079(record[A006530(n+2)])` -/
def P1751644356078150906.Spec : Prop :=
  ∀ n, P1751644356078150906.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P11901276257570910228

`A107079(record[A020639(n+2)])`
-/

namespace A071403.P11901276257570910228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071403.P11901276257570910228

namespace A071403

/-- `A107079(record[A020639(n+2)])` -/
def P11901276257570910228.Spec : Prop :=
  ∀ n, P11901276257570910228.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P7193911121318091323

`A013928(A000040(n+1)+1)`
-/

namespace A071403.P7193911121318091323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 1) + 1).toNat

end

end A071403.P7193911121318091323

namespace A071403

/-- `A013928(A000040(n+1)+1)` -/
def P7193911121318091323.Spec : Prop :=
  ∀ n, P7193911121318091323.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P6134370283826710167

`A013928(A006093(n+1)+2)`
-/

namespace A071403.P6134370283826710167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A006093 (n + 1) + 2).toNat

end

end A071403.P6134370283826710167

namespace A071403

/-- `A013928(A006093(n+1)+2)` -/
def P6134370283826710167.Spec : Prop :=
  ∀ n, P6134370283826710167.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P16864877223559803432

`A013928(A008578(n+2)+1)`
-/

namespace A071403.P16864877223559803432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A008578 (n + 2) + 1).toNat

end

end A071403.P16864877223559803432

namespace A071403

/-- `A013928(A008578(n+2)+1)` -/
def P16864877223559803432.Spec : Prop :=
  ∀ n, P16864877223559803432.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P14288749160287354811

`A107079(A008864(n+1)-1)`
-/

namespace A071403.P14288749160287354811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A008864 (n + 1) - 1).toNat

end

end A071403.P14288749160287354811

namespace A071403

/-- `A107079(A008864(n+1)-1)` -/
def P14288749160287354811.Spec : Prop :=
  ∀ n, P14288749160287354811.a n = A071403 (n + 1)

theorem P14288749160287354811.correct : P14288749160287354811.Spec := by
  intro n
  simp only [A071403, Nat.add_sub_cancel, A071403.P14288749160287354811.a, A071403.P15817908968978529389.a, A008864, A008864.P9177617808325052279.a, A107079, A107079.P8145768499534566836.a, A112929, A112929.P128816744454326581.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071403

/-! ## A071403.P5174603460391468688

`A013928(A112925(n+1))+2`
-/

namespace A071403.P5174603460391468688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A112925 (n + 1)).toNat + 2

end

end A071403.P5174603460391468688

namespace A071403

/-- `A013928(A112925(n+1))+2` -/
def P5174603460391468688.Spec : Prop :=
  ∀ n, P5174603460391468688.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P4439144546678398568

`A107079(A028815(n+1)-1)`
-/

namespace A071403.P4439144546678398568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A028815 (n + 1) - 1).toNat

end

end A071403.P4439144546678398568

namespace A071403

/-- `A107079(A028815(n+1)-1)` -/
def P4439144546678398568.Spec : Prop :=
  ∀ n, P4439144546678398568.a n = A071403 (n + 1)

end A071403

/-! ## A071403.P10047472552767317385

`A013928(record[A006530(n+2)+1])`
-/

namespace A071403.P10047472552767317385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071403.P10047472552767317385

namespace A071403

/-- `A013928(record[A006530(n+2)+1])` -/
def P10047472552767317385.Spec : Prop :=
  ∀ n, P10047472552767317385.a n = A071403 (n + 1)

end A071403

/-!
# A071404: Which nonsquarefree number is a square number? a(n)-th nonsquarefree number equals n^2, the n-th square.

The programs for A071404, the canonical program `A071404.P1885177704798718554` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071404 has offset 2).

The definition of A071404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071404.P1885177704798718554

`∑[2*n+3-A077381(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071404

/-- `∑[2*n+3-A077381(n+1)]` -/
def P1885177704798718554.Spec : Prop :=
  ∀ n, P1885177704798718554.a n = A071404 (n + 2)

theorem P1885177704798718554.correct : P1885177704798718554.Spec := by
  intro n
  simp only [A071404, Nat.add_sub_cancel]

end A071404

/-! ## A071404.P3762077126117374969

`(n+2)²-A278100(n+2)`
-/

namespace A071404.P3762077126117374969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A278100 (n + 2)

end

end A071404.P3762077126117374969

namespace A071404

/-- `(n+2)²-A278100(n+2)` -/
def P3762077126117374969.Spec : Prop :=
  ∀ n, P3762077126117374969.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P5620659223261658403

`A305980((n+2)²)-2`
-/

namespace A071404.P5620659223261658403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 ((n + 2) ^ 2) - 2

end

end A071404.P5620659223261658403

namespace A071404

/-- `A305980((n+2)²)-2` -/
def P5620659223261658403.Spec : Prop :=
  ∀ n, P5620659223261658403.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P13598287338316314642

`(n+2)²-A013928((n+2)²)`
-/

namespace A071404.P13598287338316314642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A013928 ((n + 2) ^ 2)

end

end A071404.P13598287338316314642

namespace A071404

/-- `(n+2)²-A013928((n+2)²)` -/
def P13598287338316314642.Spec : Prop :=
  ∀ n, P13598287338316314642.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P5742751108535775583

`A000290(n+2)%A013928(A000290(n+2))`
-/

namespace A071404.P5742751108535775583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 2)) (A013928 (A000290 (n + 2)).toNat)

end

end A071404.P5742751108535775583

namespace A071404

/-- `A000290(n+2)%A013928(A000290(n+2))` -/
def P5742751108535775583.Spec : Prop :=
  ∀ n, P5742751108535775583.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P15790146667762254191

`A057627((n+2)²)`
-/

namespace A071404.P15790146667762254191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 ((n + 2) ^ 2)

end

end A071404.P15790146667762254191

namespace A071404

/-- `A057627((n+2)²)` -/
def P15790146667762254191.Spec : Prop :=
  ∀ n, P15790146667762254191.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P16173826856294140822

`A284584((n+2)²)`
-/

namespace A071404.P16173826856294140822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 ((n + 2) ^ 2)

end

end A071404.P16173826856294140822

namespace A071404

/-- `A284584((n+2)²)` -/
def P16173826856294140822.Spec : Prop :=
  ∀ n, P16173826856294140822.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P14730550730094041387

`A243352((n+2)²)/2`
-/

namespace A071404.P14730550730094041387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243352 ((n + 2) ^ 2) : ℚ) / 2

end

end A071404.P14730550730094041387

namespace A071404

/-- `A243352((n+2)²)/2` -/
def P14730550730094041387.Spec : Prop :=
  ∀ n, P14730550730094041387.a n = (A071404 (n + 2) : ℚ)

end A071404

/-! ## A071404.P4668700023687634947

`A057627(∑[2*n+3])+1`
-/

namespace A071404.P4668700023687634947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A071404.P4668700023687634947

namespace A071404

/-- `A057627(∑[2*n+3])+1` -/
def P4668700023687634947.Spec : Prop :=
  ∀ n, P4668700023687634947.a n = A071404 (n + 2)

end A071404

/-! ## A071404.P15250262282972739456

`(n+2)²-A091813((n+2)²)`
-/

namespace A071404.P15250262282972739456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A091813 ((n + 2) ^ 2)

end

end A071404.P15250262282972739456

namespace A071404

/-- `(n+2)²-A091813((n+2)²)` -/
def P15250262282972739456.Spec : Prop :=
  ∀ n, P15250262282972739456.a n = A071404 (n + 2)

end A071404

/-!
# A071406: a(n) is the smallest multiplier of n! such that -1+a(n)*n! and 1+a(n)*n! are both primes.

The programs for A071406, there is no canonical definition to state claims against.
-/

/-! ## A071406.P9362805652977564702

`A090531(n+1)/(n+1)!`
-/

namespace A071406.P9362805652977564702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090531 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A071406.P9362805652977564702

/-! ## A071406.P11126800333521279924

`A090531(n+1)/record[A098361(n)]`
-/

namespace A071406.P11126800333521279924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090531 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A071406.P11126800333521279924

/-! ## A071406.P10855079364639152589

`A090531(n+1)/record[A190782(n)]`
-/

namespace A071406.P10855079364639152589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090531 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A071406.P10855079364639152589

/-! ## A071406.P17819487663404187379

`A090531(n+1)/A000142(n+1)`
-/

namespace A071406.P17819487663404187379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090531 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A071406.P17819487663404187379

/-! ## A071406.P13273127523918107611

`A090531(n+1)/Δ[A003422(n+1)]`
-/

namespace A071406.P13273127523918107611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090531 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A071406.P13273127523918107611

/-!
# A071407: Least k such that k*prime(n) + 1 and k*prime(n) - 1 are twin primes.

The programs for A071407, there is no canonical definition to state claims against.
-/

/-! ## A071407.P14429610332117915290

`A090530(n+1)/A000040(n+1)`
-/

namespace A071407.P14429610332117915290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090530 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A071407.P14429610332117915290

/-! ## A071407.P17017073338454630435

`A071558(p?[comp[n²]])`
-/

namespace A071407.P17017073338454630435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A071407.P17017073338454630435

/-! ## A071407.P13310114538753739698

`A071558(A000040(n+1))`
-/

namespace A071407.P13310114538753739698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A000040 (n + 1)).toNat

end

end A071407.P13310114538753739698

/-! ## A071407.P8137128550485961591

`A071558(A008578(n+2))`
-/

namespace A071407.P8137128550485961591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A008578 (n + 2)).toNat

end

end A071407.P8137128550485961591

/-! ## A071407.P5507476435913789162

`A071558(A182986(n+2))`
-/

namespace A071407.P5507476435913789162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A182986 (n + 2)).toNat

end

end A071407.P5507476435913789162

/-! ## A071407.P2356293400073702530

`A071558(record[A093074(n+1)])`
-/

namespace A071407.P2356293400073702530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071407.P2356293400073702530

/-! ## A071407.P18271942338371317763

`A071558(record[A006530(n+2)])`
-/

namespace A071407.P18271942338371317763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071407.P18271942338371317763

/-! ## A071407.P4217636994385353166

`A071558(record[A014963(n+2)])`
-/

namespace A071407.P4217636994385353166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071407.P4217636994385353166

/-! ## A071407.P9175548416883534102

`A071558(record[A020639(n+2)])`
-/

namespace A071407.P9175548416883534102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071407.P9175548416883534102

/-! ## A071407.P15959082010044427435

`A071558(A006093(n+1)+1)`
-/

namespace A071407.P15959082010044427435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A006093 (n + 1) + 1).toNat

end

end A071407.P15959082010044427435

/-! ## A071407.P6605560064101294133

`A071558(A008864(n+1)-1)`
-/

namespace A071407.P6605560064101294133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A008864 (n + 1) - 1).toNat

end

end A071407.P6605560064101294133

/-! ## A071407.P13108544513194812175

`A071558(A040976(n+1)+2)`
-/

namespace A071407.P13108544513194812175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A040976 (n + 1) + 2).toNat

end

end A071407.P13108544513194812175

/-! ## A071407.P5967044902957000376

`A071558(eq[1, A053989(n+1)])`
-/

namespace A071407.P5967044902957000376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071407.P5967044902957000376

/-! ## A071407.P13155332804545096621

`2*A124522(eq[1, A003415(n)])`
-/

namespace A071407.P13155332804545096621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071407.P13155332804545096621

/-! ## A071407.P11666608272711435383

`A071558(record[p?[A300827(n+1)]])`
-/

namespace A071407.P11666608272711435383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071407.P11666608272711435383

/-! ## A071407.P6938169860284406638

`2*A124522(A156037(n+1)+1)`
-/

namespace A071407.P6938169860284406638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124522 (A156037 (n + 1) + 1).toNat

end

end A071407.P6938169860284406638

/-! ## A071407.P5862759139199787705

`A071558(eq[n, A000010(n+1)]+1)`
-/

namespace A071407.P5862759139199787705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071407.P5862759139199787705

/-! ## A071407.P11946395416103791076

`A071558(A034694(A006093(n+1)))`
-/

namespace A071407.P11946395416103791076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A034694 (A006093 (n + 1)).toNat).toNat

end

end A071407.P11946395416103791076

/-! ## A071407.P10264293303557090968

`A071558(eq[2, A007012(n)])`
-/

namespace A071407.P10264293303557090968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071407.P10264293303557090968

/-! ## A071407.P3227552606379923483

`A071256(A100484(n+1))/A006530(A100484(n+1))`
-/

namespace A071407.P3227552606379923483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 (A100484 (n + 1)).toNat : ℚ) / (A006530 (A100484 (n + 1)).toNat : ℚ)

end

end A071407.P3227552606379923483

/-!
# A071408: a(n+1) - 2*a(n) + a(n-1) = (2/3)*(1 + w^(n+1) + w^(2*n+2)) with a(1)=0, a(2)=1, and where w is the imaginary cubic root of unity.

The programs for A071408, the canonical program `A071408.P8896339472637545559` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071408 has offset 1).

The definition of A071408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071408.P8896339472637545559

`floor(((n+2)²-4)/3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071408

/-- `floor(((n+2)²-4)/3)` -/
def P8896339472637545559.Spec : Prop :=
  ∀ n, P8896339472637545559.a n = A071408 (n + 1)

theorem P8896339472637545559.correct : P8896339472637545559.Spec := by
  intro n
  simp only [A071408, Nat.add_sub_cancel]

end A071408

/-! ## A071408.P16121790016686522497

`record[floor(n*(n-4)/3)]`
-/

namespace A071408.P16121790016686522497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) - 4) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071408.P16121790016686522497

namespace A071408

/-- `record[floor(n*(n-4)/3)]` -/
def P16121790016686522497.Spec : Prop :=
  ∀ n, P16121790016686522497.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P5042343223853390447

`ceil(record[(2-n)²/3-2])`
-/

namespace A071408.P5042343223853390447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℚ) / 3 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A071408.P5042343223853390447

namespace A071408

/-- `ceil(record[(2-n)²/3-2])` -/
def P5042343223853390447.Spec : Prop :=
  ∀ n, P5042343223853390447.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P125095252805725309

`floor(lcm(n, n+1)/3)+n`
-/

namespace A071408.P125095252805725309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (n + 1) : ℚ) / 3⌋ + (n : ℤ)

end

end A071408.P125095252805725309

namespace A071408

/-- `floor(lcm(n, n+1)/3)+n` -/
def P125095252805725309.Spec : Prop :=
  ∀ n, P125095252805725309.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P8205988149051959683

`∑[a(n-3)+2]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A071408.P8205988149051959683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071408.P8205988149051959683

namespace A071408

/-- `∑[a(n-3)+2]` -/
def P8205988149051959683.Spec : Prop :=
  ∀ n, (P8205988149051959683.a n : ℤ) = A071408 (n + 1)

end A071408

/-! ## A071408.P12494364377736645785

`∑[∑[and(2, a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A071408.P12494364377736645785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  Nat.land 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071408.P12494364377736645785

namespace A071408

/-- `∑[∑[and(2, a(n-3))]]` -/
def P12494364377736645785.Spec : Prop :=
  ∀ n, (P12494364377736645785.a n : ℤ) = A071408 (n + 1)

end A071408

/-! ## A071408.P9695901369111892875

`Δ[n²]+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A071408.P9695901369111892875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 3)

end

end A071408.P9695901369111892875

namespace A071408

/-- `Δ[n²]+a(n-3)` -/
def P9695901369111892875.Spec : Prop :=
  ∀ n, P9695901369111892875.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P6026060228697167696

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A071408.P6026060228697167696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071408.P6026060228697167696

namespace A071408

/-- `∑[∑[floor(a(n-3))]]` -/
def P6026060228697167696.Spec : Prop :=
  ∀ n, (P6026060228697167696.a n : ℤ) = A071408 (n + 1)

end A071408

/-! ## A071408.P10787635965781250188

`n-∑[a(n-3)-2]` with `a(0)=0, a(1)=0, a(2)=-2`
-/

namespace A071408.P10787635965781250188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -2] fun n f1 =>
  f1 (n - 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071408.P10787635965781250188

namespace A071408

/-- `n-∑[a(n-3)-2]` -/
def P10787635965781250188.Spec : Prop :=
  ∀ n, P10787635965781250188.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P788775625411712032

`2*n+a(n-3)+1` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A071408.P788775625411712032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * n + (a (n - 3) + 1)

end

end A071408.P788775625411712032

namespace A071408

/-- `2*n+a(n-3)+1` -/
def P788775625411712032.Spec : Prop :=
  ∀ n, (P788775625411712032.a n : ℤ) = A071408 (n + 1)

end A071408

/-! ## A071408.P15246799044159169047

`a(n-3)+1+n+n` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A071408.P15246799044159169047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 3) + 1 + n + n

end

end A071408.P15246799044159169047

namespace A071408

/-- `a(n-3)+1+n+n` -/
def P15246799044159169047.Spec : Prop :=
  ∀ n, (P15246799044159169047.a n : ℤ) = A071408 (n + 1)

end A071408

/-! ## A071408.P13043513060128510873

`∑[∑[gcd(n+1, n-2)-1]]+n`
-/

namespace A071408.P13043513060128510873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A071408.P13043513060128510873

namespace A071408

/-- `∑[∑[gcd(n+1, n-2)-1]]+n` -/
def P13043513060128510873.Spec : Prop :=
  ∀ n, P13043513060128510873.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P1193587389904491959

`∑[or(1, ceil(2*n/3)%(n+1))]-1`
-/

namespace A071408.P1193587389904491959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod ⌈2 * ((n : ℚ) / 3)⌉ (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A071408.P1193587389904491959

namespace A071408

/-- `∑[or(1, ceil(2*n/3)%(n+1))]-1` -/
def P1193587389904491959.Spec : Prop :=
  ∀ n, P1193587389904491959.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P13339729204623293566

`Δ[A070333(n)]-2`
-/

namespace A071408.P13339729204623293566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A071408.P13339729204623293566

namespace A071408

/-- `Δ[A070333(n)]-2` -/
def P13339729204623293566.Spec : Prop :=
  ∀ n, P13339729204623293566.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P8331951911314815661

`A208994(n)-1+n`
-/

namespace A071408.P8331951911314815661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n - 1 + (n : ℤ)

end

end A071408.P8331951911314815661

namespace A071408

/-- `A208994(n)-1+n` -/
def P8331951911314815661.Spec : Prop :=
  ∀ n, P8331951911314815661.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P6512538403356134120

`A194275(n)+n-∑[n]`
-/

namespace A071408.P6512538403356134120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A071408.P6512538403356134120

namespace A071408

/-- `A194275(n)+n-∑[n]` -/
def P6512538403356134120.Spec : Prop :=
  ∀ n, P6512538403356134120.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P3207237387517604238

`∑[A047395(n+1)]-n²`
-/

namespace A071408.P3207237387517604238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A071408.P3207237387517604238

namespace A071408

/-- `∑[A047395(n+1)]-n²` -/
def P3207237387517604238.Spec : Prop :=
  ∀ n, P3207237387517604238.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P3867850730557108671

`A000212(n)+comp[4*n+2]`
-/

namespace A071408.P3867850730557108671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A071408.P3867850730557108671

namespace A071408

/-- `A000212(n)+comp[4*n+2]` -/
def P3867850730557108671.Spec : Prop :=
  ∀ n, P3867850730557108671.a n = A071408 (n + 1)

end A071408

/-! ## A071408.P16062045829037702800

`A208994(n)+A023443(n)`
-/

namespace A071408.P16062045829037702800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n + A023443 n

end

end A071408.P16062045829037702800

namespace A071408

/-- `A208994(n)+A023443(n)` -/
def P16062045829037702800.Spec : Prop :=
  ∀ n, P16062045829037702800.a n = A071408 (n + 1)

end A071408

/-!
# A071411: "Sum of n first primes" minus "sum of first n nonprimes".

The programs for A071411, the canonical program `A071411.P1894007710603126055` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071411 has offset 1).

The definition of A071411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071411.P1894007710603126055

`A007504(n+1)-A051349(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071411

/-- `A007504(n+1)-A051349(n+1)` -/
def P1894007710603126055.Spec : Prop :=
  ∀ n, P1894007710603126055.a n = A071411 (n + 1)

theorem P1894007710603126055.correct : P1894007710603126055.Spec := by
  intro n
  simp only [A071411, Nat.add_sub_cancel]

end A071411

/-! ## A071411.P3067809340113968384

`∑[A014237(n+1)]`
-/

namespace A071411.P3067809340113968384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P3067809340113968384

namespace A071411

/-- `∑[A014237(n+1)]` -/
def P3067809340113968384.Spec : Prop :=
  ∀ n, P3067809340113968384.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P5453726295584074890

`A237589(n+1)-A053767(n)`
-/

namespace A071411.P5453726295584074890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - A053767 n

end

end A071411.P5453726295584074890

namespace A071411

/-- `A237589(n+1)-A053767(n)` -/
def P5453726295584074890.Spec : Prop :=
  ∀ n, P5453726295584074890.a n = A071411 (n + 1)

theorem P5453726295584074890.correct : P5453726295584074890.Spec := by
  intro n
  simp only [A071411, Nat.add_sub_cancel, A071411.P5453726295584074890.a, A071411.P1894007710603126055.a, A007504, A007504.P14310834286015847203.a, A051349, A051349.P2414547720400107792.a, A053767, A053767.P11805917997260904903.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071411

/-! ## A071411.P17084951796925007741

`∑[A014689(n+1)-A073425(n)]`
-/

namespace A071411.P17084951796925007741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A073425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P17084951796925007741

namespace A071411

/-- `∑[A014689(n+1)-A073425(n)]` -/
def P17084951796925007741.Spec : Prop :=
  ∀ n, P17084951796925007741.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P13137936192141247687

`A072668(n+1)+A072476(n+1)`
-/

namespace A071411.P13137936192141247687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + A072476 (n + 1)

end

end A071411.P13137936192141247687

namespace A071411

/-- `A072668(n+1)+A072476(n+1)` -/
def P13137936192141247687.Spec : Prop :=
  ∀ n, P13137936192141247687.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P9816026019453772560

`A163116(n+1)-A018252(n+1)`
-/

namespace A071411.P9816026019453772560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (n + 1) - A018252 (n + 1)

end

end A071411.P9816026019453772560

namespace A071411

/-- `A163116(n+1)-A018252(n+1)` -/
def P9816026019453772560.Spec : Prop :=
  ∀ n, P9816026019453772560.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P9644123864956061263

`A112997(n+1)-A161569(n+1)`
-/

namespace A071411.P9644123864956061263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1) - A161569 (n + 1)

end

end A071411.P9644123864956061263

namespace A071411

/-- `A112997(n+1)-A161569(n+1)` -/
def P9644123864956061263.Spec : Prop :=
  ∀ n, P9644123864956061263.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P3668277486930456595

`A163116(n+1)-A141468(n+2)`
-/

namespace A071411.P3668277486930456595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (n + 1) - A141468 (n + 2)

end

end A071411.P3668277486930456595

namespace A071411

/-- `A163116(n+1)-A141468(n+2)` -/
def P3668277486930456595.Spec : Prop :=
  ∀ n, P3668277486930456595.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P8034891771611393953

`∑[A000040(n+1)-A018252(n+1)]`
-/

namespace A071411.P8034891771611393953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P8034891771611393953

namespace A071411

/-- `∑[A000040(n+1)-A018252(n+1)]` -/
def P8034891771611393953.Spec : Prop :=
  ∀ n, P8034891771611393953.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P4711014436778262487

`∑[A000040(n+1)]-(A053767(n)+1)`
-/

namespace A071411.P4711014436778262487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A053767 n + 1)

end

end A071411.P4711014436778262487

namespace A071411

/-- `∑[A000040(n+1)]-(A053767(n)+1)` -/
def P4711014436778262487.Spec : Prop :=
  ∀ n, P4711014436778262487.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P5797974067027403924

`A007504(n+1)-∑[A141468(n+2)]`
-/

namespace A071411.P5797974067027403924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P5797974067027403924

namespace A071411

/-- `A007504(n+1)-∑[A141468(n+2)]` -/
def P5797974067027403924.Spec : Prop :=
  ∀ n, P5797974067027403924.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P9766715735965284968

`∑[A000040(n+1)-∑[A054546(n+1)]]`
-/

namespace A071411.P9766715735965284968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P9766715735965284968

namespace A071411

/-- `∑[A000040(n+1)-∑[A054546(n+1)]]` -/
def P9766715735965284968.Spec : Prop :=
  ∀ n, P9766715735965284968.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P7008799473480676935

`∑[∑[A054541(n+1)]-A018252(n+1)]`
-/

namespace A071411.P7008799473480676935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P7008799473480676935

namespace A071411

/-- `∑[∑[A054541(n+1)]-A018252(n+1)]` -/
def P7008799473480676935.Spec : Prop :=
  ∀ n, P7008799473480676935.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P6275515890999782782

`∑[∑[A054541(n+1)-A054546(n+1)]]`
-/

namespace A071411.P6275515890999782782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P6275515890999782782

namespace A071411

/-- `∑[∑[A054541(n+1)-A054546(n+1)]]` -/
def P6275515890999782782.Spec : Prop :=
  ∀ n, P6275515890999782782.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P4427451083759695751

`∑[A006093(n+1)-comp[A006093(n+1)]]`
-/

namespace A071411.P4427451083759695751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P4427451083759695751

namespace A071411

/-- `∑[A006093(n+1)-comp[A006093(n+1)]]` -/
def P4427451083759695751.Spec : Prop :=
  ∀ n, P4427451083759695751.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P4715442501763075978

`∑[A006093(n+1)+1-A018252(n+1)]`
-/

namespace A071411.P4715442501763075978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P4715442501763075978

namespace A071411

/-- `∑[A006093(n+1)+1-A018252(n+1)]` -/
def P4715442501763075978.Spec : Prop :=
  ∀ n, P4715442501763075978.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P15757261874218015024

`∑[A040976(n+1)+2-A018252(n+1)]`
-/

namespace A071411.P15757261874218015024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071411.P15757261874218015024

namespace A071411

/-- `∑[A040976(n+1)+2-A018252(n+1)]` -/
def P15757261874218015024.Spec : Prop :=
  ∀ n, P15757261874218015024.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P1625402863689675557

`a(n-1)+A000040(n+1)-comp[A020639(n+1)]` with `a(0)=1`
-/

namespace A071411.P1625402863689675557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A071411.P1625402863689675557

namespace A071411

/-- `a(n-1)+A000040(n+1)-comp[A020639(n+1)]` -/
def P1625402863689675557.Spec : Prop :=
  ∀ n, P1625402863689675557.a n = A071411 (n + 1)

end A071411

/-! ## A071411.P14320038038563734236

`A163061(n+1)-(A051349(n+1)+A051349(n))`
-/

namespace A071411.P14320038038563734236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163061 (n + 1) - (A051349 (n + 1) + A051349 n)

end

end A071411.P14320038038563734236

namespace A071411

/-- `A163061(n+1)-(A051349(n+1)+A051349(n))` -/
def P14320038038563734236.Spec : Prop :=
  ∀ n, P14320038038563734236.a n = A071411 (n + 1)

theorem P14320038038563734236.correct : P14320038038563734236.Spec := by
  intro n
  simp only [A071411, Nat.add_sub_cancel, A071411.P14320038038563734236.a, A071411.P1894007710603126055.a, A007504, A007504.P14310834286015847203.a, A051349, A051349.P2414547720400107792.a, A163061, A163061.P15581848910612517848.a, A014284, A014284.P18183547548072881472.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071411

/-! ## A071411.P16182793424747334730

`A163116(n+1)+A051349(n)-A051349(n+1)`
-/

namespace A071411.P16182793424747334730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (n + 1) + (A051349 n - A051349 (n + 1))

end

end A071411.P16182793424747334730

namespace A071411

/-- `A163116(n+1)+A051349(n)-A051349(n+1)` -/
def P16182793424747334730.Spec : Prop :=
  ∀ n, P16182793424747334730.a n = A071411 (n + 1)

theorem P16182793424747334730.correct : P16182793424747334730.Spec := by
  intro n
  simp only [A071411, Nat.add_sub_cancel, A071411.P16182793424747334730.a, A071411.P1894007710603126055.a, A007504, A007504.P14310834286015847203.a, A051349, A051349.P2414547720400107792.a, A163116, A163116.P9298683324671648407.a, A014284, A014284.P18183547548072881472.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071411

/-!
# A071412: A002487 mod 3.

The programs for A071412, the canonical program `A071412.P9701321601537696184` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071412 has offset 0).

The definition of A071412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071412.P9701321601537696184

`A002487(n)%3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071412

/-- `A002487(n)%3` -/
def P9701321601537696184.Spec : Prop :=
  ∀ n, P9701321601537696184.a n = A071412 n

theorem P9701321601537696184.correct : P9701321601537696184.Spec := by
  intro n
  simp only [A071412]

end A071412

/-! ## A071412.P1518170836349546989

`A342611(n)%3`
-/

namespace A071412.P1518170836349546989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342611 n) 3

end

end A071412.P1518170836349546989

namespace A071412

/-- `A342611(n)%3` -/
def P1518170836349546989.Spec : Prop :=
  ∀ n, P1518170836349546989.a n = A071412 n

end A071412

/-! ## A071412.P1058026878283230040

`A342634(n)%3`
-/

namespace A071412.P1058026878283230040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342634 n) 3

end

end A071412.P1058026878283230040

namespace A071412

/-- `A342634(n)%3` -/
def P1058026878283230040.Spec : Prop :=
  ∀ n, P1058026878283230040.a n = A071412 n

end A071412

/-! ## A071412.P303826978948892627

`A342636(n)%3`
-/

namespace A071412.P303826978948892627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342636 n) 3

end

end A071412.P303826978948892627

namespace A071412

/-- `A342636(n)%3` -/
def P303826978948892627.Spec : Prop :=
  ∀ n, P303826978948892627.a n = A071412 n

end A071412

/-! ## A071412.P13699769135444352278

`(n-A284013(n))%3`
-/

namespace A071412.P13699769135444352278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A284013 n) 3

end

end A071412.P13699769135444352278

namespace A071412

/-- `(n-A284013(n))%3` -/
def P13699769135444352278.Spec : Prop :=
  ∀ n, P13699769135444352278.a n = A071412 n

theorem P13699769135444352278.correct : P13699769135444352278.Spec := by
  intro n
  simp only [A071412, Nat.add_sub_cancel, A071412.P13699769135444352278.a, A071412.P9701321601537696184.a, A002487, A002487.P6236436194084017932.a, A284013, A284013.P1136611558935881771.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071412

/-! ## A071412.P9290205859130797515

`∑{d}[n, A317839(#)]%3`
-/

namespace A071412.P9290205859130797515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A317839 d) 3

end

end A071412.P9290205859130797515

namespace A071412

/-- `∑{d}[n, A317839(#)]%3` -/
def P9290205859130797515.Spec : Prop :=
  ∀ n, P9290205859130797515.a n = A071412 n

end A071412

/-! ## A071412.P13611666468327649100

`A324337(xor(n, floor(n/2)))%3`
-/

namespace A071412.P13611666468327649100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat) 3

end

end A071412.P13611666468327649100

namespace A071412

/-- `A324337(xor(n, floor(n/2)))%3` -/
def P13611666468327649100.Spec : Prop :=
  ∀ n, P13611666468327649100.a n = A071412 n

end A071412

/-! ## A071412.P2567924370761746582

`(A007306(n)-a(n-1))%3` with `a(0)=0`
-/

namespace A071412.P2567924370761746582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A007306 n - a (n - 1)) 3

end

end A071412.P2567924370761746582

namespace A071412

/-- `(A007306(n)-a(n-1))%3` -/
def P2567924370761746582.Spec : Prop :=
  ∀ n, P2567924370761746582.a n = A071412 n

end A071412

/-! ## A071412.P10375383521376052048

`A010872(A002487(n))`
-/

namespace A071412.P10375383521376052048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A002487 n).toNat

end

end A071412.P10375383521376052048

namespace A071412

/-- `A010872(A002487(n))` -/
def P10375383521376052048.Spec : Prop :=
  ∀ n, P10375383521376052048.a n = A071412 n

end A071412

/-! ## A071412.P113473468556127349

`A080425(A126606(n+1))`
-/

namespace A071412.P113473468556127349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A126606 (n + 1)).toNat

end

end A071412.P113473468556127349

namespace A071412

/-- `A080425(A126606(n+1))` -/
def P113473468556127349.Spec : Prop :=
  ∀ n, P113473468556127349.a n = A071412 n

end A071412

/-! ## A071412.P4350199920788230785

`A010872(n-A284556(n))`
-/

namespace A071412.P4350199920788230785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((n : ℤ) - A284556 n).toNat

end

end A071412.P4350199920788230785

namespace A071412

/-- `A010872(n-A284556(n))` -/
def P4350199920788230785.Spec : Prop :=
  ∀ n, P4350199920788230785.a n = A071412 n

end A071412

/-! ## A071412.P674794468572810785

`A049347(A002487(n)+1)+1`
-/

namespace A071412.P674794468572810785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A002487 n + 1).toNat + 1

end

end A071412.P674794468572810785

namespace A071412

/-- `A049347(A002487(n)+1)+1` -/
def P674794468572810785.Spec : Prop :=
  ∀ n, P674794468572810785.a n = A071412 n

end A071412

/-! ## A071412.P18174041666725308720

`1-A010892(2*A002487(n))`
-/

namespace A071412.P18174041666725308720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010892 (2 * A002487 n).toNat

end

end A071412.P18174041666725308720

namespace A071412

/-- `1-A010892(2*A002487(n))` -/
def P18174041666725308720.Spec : Prop :=
  ∀ n, P18174041666725308720.a n = A071412 n

end A071412

/-! ## A071412.P1150396981674650271

`1-A049347(2*A002487(n))`
-/

namespace A071412.P1150396981674650271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049347 (2 * A002487 n).toNat

end

end A071412.P1150396981674650271

namespace A071412

/-- `1-A049347(2*A002487(n))` -/
def P1150396981674650271.Spec : Prop :=
  ∀ n, P1150396981674650271.a n = A071412 n

end A071412

/-! ## A071412.P9408298381311305647

`1-A057078(n-A284556(n))`
-/

namespace A071412.P9408298381311305647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057078 ((n : ℤ) - A284556 n).toNat

end

end A071412.P9408298381311305647

namespace A071412

/-- `1-A057078(n-A284556(n))` -/
def P9408298381311305647.Spec : Prop :=
  ∀ n, P9408298381311305647.a n = A071412 n

end A071412

/-! ## A071412.P7601425983503669549

`(A283978(n)+A283976(n))%3`
-/

namespace A071412.P7601425983503669549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283978 n + A283976 n) 3

end

end A071412.P7601425983503669549

namespace A071412

/-- `(A283978(n)+A283976(n))%3` -/
def P7601425983503669549.Spec : Prop :=
  ∀ n, P7601425983503669549.a n = A071412 n

theorem P7601425983503669549.correct : P7601425983503669549.Spec := by
  intro n
  simp only [A071412, Nat.add_sub_cancel, A071412.P7601425983503669549.a, A071412.P9701321601537696184.a, A002487, A002487.P6236436194084017932.a, A283976, A283976.P17238727065902708821.a, A283978, A283978.P12954739794367481226.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A295515, A295515.P11785583445350184235.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071412

/-! ## A071412.P522916693029696483

`(A284272(n)+A284271(n))%3`
-/

namespace A071412.P522916693029696483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284272 n + A284271 n) 3

end

end A071412.P522916693029696483

namespace A071412

/-- `(A284272(n)+A284271(n))%3` -/
def P522916693029696483.Spec : Prop :=
  ∀ n, P522916693029696483.a n = A071412 n

end A071412

/-! ## A071412.P1231370742568403395

`A010872(2*A284556(n)+n)`
-/

namespace A071412.P1231370742568403395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A284556 n + (n : ℤ)).toNat

end

end A071412.P1231370742568403395

namespace A071412

/-- `A010872(2*A284556(n)+n)` -/
def P1231370742568403395.Spec : Prop :=
  ∀ n, P1231370742568403395.a n = A071412 n

end A071412

/-! ## A071412.P14747936085417960311

`A010872(A284556(n)+A284556(n)+n)`
-/

namespace A071412.P14747936085417960311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A284556 n + (A284556 n + (n : ℤ))).toNat

end

end A071412.P14747936085417960311

namespace A071412

/-- `A010872(A284556(n)+A284556(n)+n)` -/
def P14747936085417960311.Spec : Prop :=
  ∀ n, P14747936085417960311.a n = A071412 n

end A071412

/-!
# A071413: a(n) = if n=0 then 0 else a(floor(n/2))+n*(-1)^(n mod 2).

The programs for A071413, the canonical program `A071413.P1237449826947109582` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071413 has offset 0).

The definition of A071413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))+n*(-1)^n` (program `A071413.P1237449826947109582`, by `A071413.P1237449826947109582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071413.P1237449826947109582

`a(floor(n/2))+n*(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071413

/-- `a(floor(n/2))+n*(-1)^n` -/
def P1237449826947109582.Spec : Prop :=
  ∀ n, P1237449826947109582.a n = A071413 n

theorem P1237449826947109582.correct : P1237449826947109582.Spec := by
  intro n
  simp only [A071413]

end A071413

/-! ## A071413.P10034267739890651817

`a(floor(n/2))+n*(-1)^(n%2)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071413.P10034267739890651817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) * (-1) ^ (n % 2)

end

end A071413.P10034267739890651817

namespace A071413

/-- `a(floor(n/2))+n*(-1)^(n%2)` -/
def P10034267739890651817.Spec : Prop :=
  ∀ n, P10034267739890651817.a n = A071413 n

end A071413

/-! ## A071413.P14248230597273752831

`A005187(n)-2*A228451(n)`
-/

namespace A071413.P14248230597273752831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - 2 * A228451 n

end

end A071413.P14248230597273752831

namespace A071413

/-- `A005187(n)-2*A228451(n)` -/
def P14248230597273752831.Spec : Prop :=
  ∀ n, P14248230597273752831.a n = A071413 n

end A071413

/-! ## A071413.P16054913049636130526

`A038608(n)+a(A004526(n))` with `a(0)=0`
-/

namespace A071413.P16054913049636130526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A038608 n + a (A004526 n).toNat

end

end A071413.P16054913049636130526

namespace A071413

/-- `A038608(n)+a(A004526(n))` -/
def P16054913049636130526.Spec : Prop :=
  ∀ n, P16054913049636130526.a n = A071413 n

end A071413

/-! ## A071413.P15338768065215634310

`A274922(n)+a(A123108(n))` with `a(0)=0`
-/

namespace A071413.P15338768065215634310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A274922 n + a (A123108 n).toNat

end

end A071413.P15338768065215634310

namespace A071413

/-- `A274922(n)+a(A123108(n))` -/
def P15338768065215634310.Spec : Prop :=
  ∀ n, P15338768065215634310.a n = A071413 n

end A071413

/-! ## A071413.P12056784096491234569

`2*A233931(n)-(A233904(n)+n)`
-/

namespace A071413.P12056784096491234569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233931 n - (A233904 n + (n : ℤ))

end

end A071413.P12056784096491234569

namespace A071413

/-- `2*A233931(n)-(A233904(n)+n)` -/
def P12056784096491234569.Spec : Prop :=
  ∀ n, P12056784096491234569.a n = A071413 n

end A071413

/-! ## A071413.P9161265126352656123

`A005843(A005187(n)-A228451(n))-A005187(n)`
-/

namespace A071413.P9161265126352656123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005187 n - A228451 n).toNat - A005187 n

end

end A071413.P9161265126352656123

namespace A071413

/-- `A005843(A005187(n)-A228451(n))-A005187(n)` -/
def P9161265126352656123.Spec : Prop :=
  ∀ n, P9161265126352656123.a n = A071413 n

end A071413

/-! ## A071413.P925501869393053862

`A005187(n)-A005843(A228451(n))`
-/

namespace A071413.P925501869393053862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A005843 (A228451 n).toNat

end

end A071413.P925501869393053862

namespace A071413

/-- `A005187(n)-A005843(A228451(n))` -/
def P925501869393053862.Spec : Prop :=
  ∀ n, P925501869393053862.a n = A071413 n

end A071413

/-! ## A071413.P7303927165011708621

`A011371(2*n)-2*(A233904(n)+n)`
-/

namespace A071413.P7303927165011708621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n) - 2 * (A233904 n + (n : ℤ))

end

end A071413.P7303927165011708621

namespace A071413

/-- `A011371(2*n)-2*(A233904(n)+n)` -/
def P7303927165011708621.Spec : Prop :=
  ∀ n, P7303927165011708621.a n = A071413 n

end A071413

/-!
# A071414: Number of times 4n+r and 2n+r are both prime, with 0 < r < 2n.

The programs for A071414, there is no canonical definition to state claims against.
-/

/-! ## A071414.P13385368038775158568

`A122170(2*(n+1))-A092953(2*(n+1))`
-/

namespace A071414.P13385368038775158568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122170 (2 * (n + 1)) - A092953 (2 * (n + 1))

end

end A071414.P13385368038775158568

/-! ## A071414.P10294089262864709041

`A001227(A250286(n)+A053830(n))`
-/

namespace A071414.P10294089262864709041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A250286 n + A053830 n).toNat

end

end A071414.P10294089262864709041

/-! ## A071414.P17782787659456498059

`A001227(A243744(n+9)+A062078(n+1))`
-/

namespace A071414.P17782787659456498059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A243744 (n + 9) + A062078 (n + 1)).toNat

end

end A071414.P17782787659456498059

/-! ## A071414.P18355796294423806338

`A106476(A161090(n+1))*A276806(A078642(n+2))`
-/

namespace A071414.P18355796294423806338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (A161090 (n + 1)).toNat * A276806 (A078642 (n + 2)).toNat

end

end A071414.P18355796294423806338

/-! ## A071414.P9093427457508692362

`A076398(A361830(3*n+2)+1)`
-/

namespace A071414.P9093427457508692362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076398 (A361830 (3 * n + 2) + 1).toNat

end

end A071414.P9093427457508692362

/-!
# A071415: Maximal m such that all numbers in [0,m] are expressible as a*b + c with a + c <= n, b <= n and a,b,c nonnegative integers.

The programs for A071415, the canonical program `A071415.P1186602952399303221` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071415 has offset 1).

The definition of A071415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071415.P8414627173923936788

`A001000(n+1)+n-floor(acot(n))`
-/

namespace A071415.P8414627173923936788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 1) + ((n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A071415.P8414627173923936788

namespace A071415

/-- `A001000(n+1)+n-floor(acot(n))` -/
def P8414627173923936788.Spec : Prop :=
  ∀ n, P8414627173923936788.a n = A071415 (n + 1)

end A071415

/-! ## A071415.P1186602952399303221

`A033638(A083479(n)+1+n)+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071415

/-- `A033638(A083479(n)+1+n)+n` -/
def P1186602952399303221.Spec : Prop :=
  ∀ n, P1186602952399303221.a n = A071415 (n + 1)

theorem P1186602952399303221.correct : P1186602952399303221.Spec := by
  intro n
  simp only [A071415, Nat.add_sub_cancel]

end A071415

/-! ## A071415.P620877881331753424

`A001000(n+1)+n-A000007(n)`
-/

namespace A071415.P620877881331753424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 1) + ((n : ℤ) - A000007 n)

end

end A071415.P620877881331753424

namespace A071415

/-- `A001000(n+1)+n-A000007(n)` -/
def P620877881331753424.Spec : Prop :=
  ∀ n, P620877881331753424.a n = A071415 (n + 1)

end A071415

/-! ## A071415.P12935017127950382623

`(A001000(n+1)+n)/A054977(n)`
-/

namespace A071415.P12935017127950382623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001000 (n + 1) + (n : ℤ) : ℚ) / (A054977 n : ℚ)

end

end A071415.P12935017127950382623

namespace A071415

/-- `(A001000(n+1)+n)/A054977(n)` -/
def P12935017127950382623.Spec : Prop :=
  ∀ n, P12935017127950382623.a n = (A071415 (n + 1) : ℚ)

end A071415

/-! ## A071415.P10734087285340824247

`A001000(n+1)+A087156(n+1)-1`
-/

namespace A071415.P10734087285340824247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 1) + (A087156 (n + 1) - 1)

end

end A071415.P10734087285340824247

namespace A071415

/-- `A001000(n+1)+A087156(n+1)-1` -/
def P10734087285340824247.Spec : Prop :=
  ∀ n, P10734087285340824247.a n = A071415 (n + 1)

end A071415

/-! ## A071415.P15848881504913620547

`A001000(n+1)-(A036987(2*n)-n)`
-/

namespace A071415.P15848881504913620547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 1) - (A036987 (2 * n) - (n : ℤ))

end

end A071415.P15848881504913620547

namespace A071415

/-- `A001000(n+1)-(A036987(2*n)-n)` -/
def P15848881504913620547.Spec : Prop :=
  ∀ n, P15848881504913620547.a n = A071415 (n + 1)

end A071415

/-! ## A071415.P15400269620407038216

`A001000(n+1)+n-A000010(n+2)%2`
-/

namespace A071415.P15400269620407038216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 1) + (n : ℤ) - Int.tmod (A000010 (n + 2)) 2

end

end A071415.P15400269620407038216

namespace A071415

/-- `A001000(n+1)+n-A000010(n+2)%2` -/
def P15400269620407038216.Spec : Prop :=
  ∀ n, P15400269620407038216.a n = A071415 (n + 1)

end A071415

/-! ## A071415.P4559932008059460261

`(A001000(n+1)+n)^and(1, A000040(n+1))`
-/

namespace A071415.P4559932008059460261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001000 (n + 1) + (n : ℤ) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A071415.P4559932008059460261

namespace A071415

/-- `(A001000(n+1)+n)^and(1, A000040(n+1))` -/
def P4559932008059460261.Spec : Prop :=
  ∀ n, P4559932008059460261.a n = (A071415 (n + 1) : ℚ)

end A071415

/-! ## A071415.P8081356264442040854

`A001000(n+1)/A014963(4*n+2)+n`
-/

namespace A071415.P8081356264442040854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001000 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ) + (n : ℚ)

end

end A071415.P8081356264442040854

namespace A071415

/-- `A001000(n+1)/A014963(4*n+2)+n` -/
def P8081356264442040854.Spec : Prop :=
  ∀ n, P8081356264442040854.a n = (A071415 (n + 1) : ℚ)

end A071415

/-!
# A071416: a(n) = gcd(n, binomial(2*n, n)).

The programs for A071416, the canonical program `A071416.P17788588421426584051` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071416 has offset 1).

The definition of A071416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, C(2*(n+1), n+1))` (program `A071416.P17788588421426584051`, by `A071416.P17788588421426584051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071416.P17788588421426584051

`gcd(n+1, C(2*(n+1), n+1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071416

/-- `gcd(n+1, C(2*(n+1), n+1))` -/
def P17788588421426584051.Spec : Prop :=
  ∀ n, (P17788588421426584051.a n : ℤ) = A071416 (n + 1)

theorem P17788588421426584051.correct : P17788588421426584051.Spec := by
  intro n
  simp only [A071416, Nat.add_sub_cancel]

end A071416

/-! ## A071416.P6379098844745377428

`(n+1)/A093527(n)`
-/

namespace A071416.P6379098844745377428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A093527 n : ℚ)

end

end A071416.P6379098844745377428

namespace A071416

/-- `(n+1)/A093527(n)` -/
def P6379098844745377428.Spec : Prop :=
  ∀ n, P6379098844745377428.a n = (A071416 (n + 1) : ℚ)

end A071416

/-! ## A071416.P272585676958672839

`gcd(n+1, A053214(n+1))`
-/

namespace A071416.P272585676958672839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053214 (n + 1))

end

end A071416.P272585676958672839

namespace A071416

/-- `gcd(n+1, A053214(n+1))` -/
def P272585676958672839.Spec : Prop :=
  ∀ n, (P272585676958672839.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P8708514276374723357

`gcd(2*A333461(n+1), 3*(n+1))`
-/

namespace A071416.P8708514276374723357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A333461 (n + 1)) (3 * (n + 1) : ℤ)

end

end A071416.P8708514276374723357

namespace A071416

/-- `gcd(2*A333461(n+1), 3*(n+1))` -/
def P8708514276374723357.Spec : Prop :=
  ∀ n, (P8708514276374723357.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P16089038754380186904

`gcd(A005915(n), A058005(n+1))`
-/

namespace A071416.P16089038754380186904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005915 n) (A058005 (n + 1))

end

end A071416.P16089038754380186904

namespace A071416

/-- `gcd(A005915(n), A058005(n+1))` -/
def P16089038754380186904.Spec : Prop :=
  ∀ n, (P16089038754380186904.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P6172684399883644206

`gcd(A000027(n+1), A059288(n+1))`
-/

namespace A071416.P6172684399883644206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A059288 (n + 1))

end

end A071416.P6172684399883644206

namespace A071416

/-- `gcd(A000027(n+1), A059288(n+1))` -/
def P6172684399883644206.Spec : Prop :=
  ∀ n, (P6172684399883644206.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P5679904773550893848

`gcd(2*A099908(n+1), A061019(n+1))`
-/

namespace A071416.P5679904773550893848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A099908 (n + 1)) (A061019 (n + 1))

end

end A071416.P5679904773550893848

namespace A071416

/-- `gcd(2*A099908(n+1), A061019(n+1))` -/
def P5679904773550893848.Spec : Prop :=
  ∀ n, (P5679904773550893848.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P15642593637275821120

`gcd(1-A000027(n+2), A042970(2*n+2))`
-/

namespace A071416.P15642593637275821120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000027 (n + 2)) (A042970 (2 * n + 2))

end

end A071416.P15642593637275821120

namespace A071416

/-- `gcd(1-A000027(n+2), A042970(2*n+2))` -/
def P15642593637275821120.Spec : Prop :=
  ∀ n, (P15642593637275821120.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P7616857646342690839

`n%A057815(2*(n+1))+1`
-/

namespace A071416.P7616857646342690839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A057815 (2 * (n + 1))) + 1

end

end A071416.P7616857646342690839

namespace A071416

/-- `n%A057815(2*(n+1))+1` -/
def P7616857646342690839.Spec : Prop :=
  ∀ n, P7616857646342690839.a n = A071416 (n + 1)

end A071416

/-! ## A071416.P12877246802865829091

`gcd(A057815(2*n+1)-n, A057815(2*(n+1)))`
-/

namespace A071416.P12877246802865829091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057815 (2 * n + 1) - (n : ℤ)) (A057815 (2 * (n + 1)))

end

end A071416.P12877246802865829091

namespace A071416

/-- `gcd(A057815(2*n+1)-n, A057815(2*(n+1)))` -/
def P12877246802865829091.Spec : Prop :=
  ∀ n, (P12877246802865829091.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P2424372151460255632

`gcd(A057815(2*(n+1)), A222239(A222239(n+1)))`
-/

namespace A071416.P2424372151460255632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057815 (2 * (n + 1))) (A222239 (A222239 (n + 1)).toNat)

end

end A071416.P2424372151460255632

namespace A071416

/-- `gcd(A057815(2*(n+1)), A222239(A222239(n+1)))` -/
def P2424372151460255632.Spec : Prop :=
  ∀ n, (P2424372151460255632.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P65702424296863116

`gcd(A131738(n), A263931(n+1))`
-/

namespace A071416.P65702424296863116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A263931 (n + 1))

end

end A071416.P65702424296863116

namespace A071416

/-- `gcd(A131738(n), A263931(n+1))` -/
def P65702424296863116.Spec : Prop :=
  ∀ n, (P65702424296863116.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P15892820696368097483

`gcd(n+1, A068875(n))`
-/

namespace A071416.P15892820696368097483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A068875 n)

end

end A071416.P15892820696368097483

namespace A071416

/-- `gcd(n+1, A068875(n))` -/
def P15892820696368097483.Spec : Prop :=
  ∀ n, (P15892820696368097483.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P2080584454381218733

`A000108(n+1)/A093526(n)`
-/

namespace A071416.P2080584454381218733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A093526 n : ℚ)

end

end A071416.P2080584454381218733

namespace A071416

/-- `A000108(n+1)/A093526(n)` -/
def P2080584454381218733.Spec : Prop :=
  ∀ n, P2080584454381218733.a n = (A071416 (n + 1) : ℚ)

end A071416

/-! ## A071416.P6792863663276311228

`A000108(n+1)/A098512(n+1)`
-/

namespace A071416.P6792863663276311228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A098512 (n + 1) : ℚ)

end

end A071416.P6792863663276311228

namespace A071416

/-- `A000108(n+1)/A098512(n+1)` -/
def P6792863663276311228.Spec : Prop :=
  ∀ n, P6792863663276311228.a n = (A071416 (n + 1) : ℚ)

end A071416

/-! ## A071416.P1297676179549736607

`A208355(2*n+1)/A093526(n)`
-/

namespace A071416.P1297676179549736607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208355 (2 * n + 1) : ℚ) / (A093526 n : ℚ)

end

end A071416.P1297676179549736607

namespace A071416

/-- `A208355(2*n+1)/A093526(n)` -/
def P1297676179549736607.Spec : Prop :=
  ∀ n, P1297676179549736607.a n = (A071416 (n + 1) : ℚ)

end A071416

/-! ## A071416.P10525522839521974236

`gcd(A009474(n+1), A168491(n+1))`
-/

namespace A071416.P10525522839521974236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009474 (n + 1)) (A168491 (n + 1))

end

end A071416.P10525522839521974236

namespace A071416

/-- `gcd(A009474(n+1), A168491(n+1))` -/
def P10525522839521974236.Spec : Prop :=
  ∀ n, (P10525522839521974236.a n : ℤ) = A071416 (n + 1)

end A071416

/-! ## A071416.P11978181758414409157

`gcd(A120304(n+1)+2, A266285(2*n))`
-/

namespace A071416.P11978181758414409157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120304 (n + 1) + 2) (A266285 (2 * n))

end

end A071416.P11978181758414409157

namespace A071416

/-- `gcd(A120304(n+1)+2, A266285(2*n))` -/
def P11978181758414409157.Spec : Prop :=
  ∀ n, (P11978181758414409157.a n : ℤ) = A071416 (n + 1)

end A071416

/-!
# A071417: Triangle of expected coupon collection numbers rounded up; i.e., if aiming to collect part of a set of n coupons, the expected number of random coupons required to receive first the set with exactly k missing.

The programs for A071417, there is no canonical definition to state claims against.
-/

/-! ## A071417.P10660623098330167947

`A033627(A004736(n+1))-A005136(A047888(n+1))`
-/

namespace A071417.P10660623098330167947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A004736 (n + 1)).toNat - A005136 (A047888 (n + 1)).toNat

end

end A071417.P10660623098330167947

/-! ## A071417.P620839021269240365

`A338731(A120105(n))`
-/

namespace A071417.P620839021269240365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338731 (A120105 n).toNat

end

end A071417.P620839021269240365

/-! ## A071417.P12884067975318878401

`A095999(A096334(n)²)`
-/

namespace A071417.P12884067975318878401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095999 (A096334 n ^ 2).toNat

end

end A071417.P12884067975318878401

/-! ## A071417.P15923275690231447009

`A325033(A144280(n+1))`
-/

namespace A071417.P15923275690231447009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A144280 (n + 1)).toNat

end

end A071417.P15923275690231447009

/-! ## A071417.P17357239980995805213

`A343911(A134151(n+1))`
-/

namespace A071417.P17357239980995805213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343911 (A134151 (n + 1)).toNat

end

end A071417.P17357239980995805213

/-!
# A071418: a(1)=0, a(n+1)=(a(n)+n)/2 if a(n)+n is even, a(n+1)=(3*(a(n)+n)+1)/2 otherwise.

The programs for A071418, the canonical program `A071418.P16881111361451450051` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071418 has offset 1).

The definition of A071418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071418.P16881111361451450051

`A014682(a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071418

/-- `A014682(a(n-1)+n)` -/
def P16881111361451450051.Spec : Prop :=
  ∀ n, P16881111361451450051.a n = A071418 (n + 1)

theorem P16881111361451450051.correct : P16881111361451450051.Spec := by
  intro n
  simp only [A071418, Nat.add_sub_cancel]

end A071418

/-! ## A071418.P6666701847561272607

`A014682(n-(char[1]-a(n-1)))` with `a(0)=0, a(1)=2`
-/

namespace A071418.P6666701847561272607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A014682 ((n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))).toNat

end

end A071418.P6666701847561272607

namespace A071418

/-- `A014682(n-(char[1]-a(n-1)))` -/
def P6666701847561272607.Spec : Prop :=
  ∀ n, P6666701847561272607.a n = A071418 (n + 1)

end A071418

/-! ## A071418.P12717723838782013078

`A064455(a(n-1)+n+1)-1` with `a(0)=0`
-/

namespace A071418.P12717723838782013078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064455 (a (n - 1) + (n + 1 : ℤ)).toNat - 1

end

end A071418.P12717723838782013078

namespace A071418

/-- `A064455(a(n-1)+n+1)-1` -/
def P12717723838782013078.Spec : Prop :=
  ∀ n, P12717723838782013078.a n = A071418 (n + 1)

end A071418

/-! ## A071418.P13447832029760585264

`A014682(n-A001489(a(n-1)))` with `a(0)=0`
-/

namespace A071418.P13447832029760585264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014682 ((n : ℤ) - A001489 (a (n - 1)).toNat).toNat

end

end A071418.P13447832029760585264

namespace A071418

/-- `A014682(n-A001489(a(n-1)))` -/
def P13447832029760585264.Spec : Prop :=
  ∀ n, P13447832029760585264.a n = A071418 (n + 1)

end A071418

/-! ## A071418.P9772821440803330143

`A131739(2*(a(n-1)+n))` with `a(0)=0`
-/

namespace A071418.P9772821440803330143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131739 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A071418.P9772821440803330143

namespace A071418

/-- `A131739(2*(a(n-1)+n))` -/
def P9772821440803330143.Spec : Prop :=
  ∀ n, P9772821440803330143.a n = A071418 (n + 1)

end A071418

/-! ## A071418.P17829191421439549024

`A110654(A347365(a(n-1)+n))` with `a(0)=0, a(1)=2`
-/

namespace A071418.P17829191421439549024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A110654 (A347365 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A071418.P17829191421439549024

namespace A071418

/-- `A110654(A347365(a(n-1)+n))` -/
def P17829191421439549024.Spec : Prop :=
  ∀ n, P17829191421439549024.a n = A071418 (n + 1)

end A071418

/-!
# A071419: a(1)=1, a(n+1)=(a(n)+n)/2 if a(n)+n is even, a(n+1)=(3*(a(n)+n)+1)/2 otherwise.

The programs for A071419, the canonical program `A071419.P10901612576107053612` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071419 has offset 1).

The definition of A071419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071419.P10901612576107053612

`A014682(a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071419

/-- `A014682(a(n-1)+n)` -/
def P10901612576107053612.Spec : Prop :=
  ∀ n, P10901612576107053612.a n = A071419 (n + 1)

theorem P10901612576107053612.correct : P10901612576107053612.Spec := by
  intro n
  simp only [A071419, Nat.add_sub_cancel]

end A071419

/-! ## A071419.P15440418792072921982

`A014682(n-(char[1]-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A071419.P15440418792072921982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014682 ((n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))).toNat

end

end A071419.P15440418792072921982

namespace A071419

/-- `A014682(n-(char[1]-a(n-1)))` -/
def P15440418792072921982.Spec : Prop :=
  ∀ n, P15440418792072921982.a n = A071419 (n + 1)

end A071419

/-! ## A071419.P2723027221269388388

`A014682(round(a(n-1)-(n-2*n)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A071419.P2723027221269388388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014682 (a (n - 1) - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A071419.P2723027221269388388

namespace A071419

/-- `A014682(round(a(n-1)-(n-2*n)))` -/
def P2723027221269388388.Spec : Prop :=
  ∀ n, P2723027221269388388.a n = A071419 (n + 1)

theorem P2723027221269388388.correct : P2723027221269388388.Spec := by
  intro n
  simp only [A071419, Nat.add_sub_cancel, A071419.P2723027221269388388.a, A071419.P10901612576107053612.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A071419

/-! ## A071419.P16922967137180685452

`A064455(a(n-1)+n+1)-1` with `a(0)=1`
-/

namespace A071419.P16922967137180685452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064455 (a (n - 1) + (n + 1 : ℤ)).toNat - 1

end

end A071419.P16922967137180685452

namespace A071419

/-- `A064455(a(n-1)+n+1)-1` -/
def P16922967137180685452.Spec : Prop :=
  ∀ n, P16922967137180685452.a n = A071419 (n + 1)

end A071419

/-! ## A071419.P13690104167904628422

`A131739(2*(a(n-1)+n))` with `a(0)=1`
-/

namespace A071419.P13690104167904628422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131739 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A071419.P13690104167904628422

namespace A071419

/-- `A131739(2*(a(n-1)+n))` -/
def P13690104167904628422.Spec : Prop :=
  ∀ n, P13690104167904628422.a n = A071419 (n + 1)

end A071419

/-! ## A071419.P11762002007003507481

`A134172(2*a(n-1)+2*n+1)` with `a(0)=1`
-/

namespace A071419.P11762002007003507481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134172 (2 * a (n - 1) + (2 * n + 1 : ℤ)).toNat

end

end A071419.P11762002007003507481

namespace A071419

/-- `A134172(2*a(n-1)+2*n+1)` -/
def P11762002007003507481.Spec : Prop :=
  ∀ n, P11762002007003507481.a n = A071419 (n + 1)

end A071419

/-!
# A071421: a(n) = a(n-1) + sum of decimal digits of n^n.

The programs for A071421, there is no canonical definition to state claims against.
-/

/-! ## A071421.P18064325473146950277

`∑[A066588(n+1)]`
-/

namespace A071421.P18064325473146950277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071421.P18064325473146950277

/-! ## A071421.P5437256549940371850

`A066588(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A071421.P5437256549940371850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066588 (A028310 n + 1).toNat + a (n - 1)

end

end A071421.P5437256549940371850

/-! ## A071421.P10819870514485623420

`A066588(n+1)+a(n-1)%A017510(n)` with `a(0)=1`
-/

namespace A071421.P10819870514485623420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066588 (n + 1) + Int.tmod (a (n - 1)) (A017510 n)

end

end A071421.P10819870514485623420

/-! ## A071421.P5589837066091616497

`a(n-1)+A007318(C(2, n+1))*A066588(n+1)` with `a(0)=1`
-/

namespace A071421.P5589837066091616497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 (n + 1)) * A066588 (n + 1)

end

end A071421.P5589837066091616497

/-! ## A071421.P8963117702233838031

`a(n-1)+A000034(2*n)*A066588(n+1)` with `a(0)=1`
-/

namespace A071421.P8963117702233838031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000034 (2 * n) * A066588 (n + 1)

end

end A071421.P8963117702233838031

/-! ## A071421.P11421304749440421617

`∑[∑{digits}[(n+1)^(n+1), #]]`
-/

namespace A071421.P11421304749440421617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071421.P11421304749440421617

/-! ## A071421.P608392292605239787

`∑{digits}[(n+1)^(n+1), #]+a(n-1)` with `a(0)=1`
-/

namespace A071421.P608392292605239787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071421.P608392292605239787

/-! ## A071421.P10853656536034981096

`∑[∑{digits}[A062018(n+1), #]+C(n, 64)]`
-/

namespace A071421.P10853656536034981096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062018 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + Nat.choose n 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071421.P10853656536034981096

/-! ## A071421.P2366098574770456987

`∑[A000035(2*n)+∑{digits}[A062018(n+1), #]]`
-/

namespace A071421.P2366098574770456987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062018 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071421.P2366098574770456987

/-!
# A071422: a(n) = a(n-1) + sum of decimal digits of sigma(n), the sum of divisors of n.

The programs for A071422, the canonical program `A071422.P14325882028616666752` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071422 has offset 1).

The definition of A071422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071422.P14325882028616666752

`∑[∑{digits}[∑{d}[n+1, #], #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071422

/-- `∑[∑{digits}[∑{d}[n+1, #], #]]` -/
def P14325882028616666752.Spec : Prop :=
  ∀ n, (P14325882028616666752.a n : ℤ) = A071422 (n + 1)

theorem P14325882028616666752.correct : P14325882028616666752.Spec := by
  intro n
  simp only [A071422, Nat.add_sub_cancel]

end A071422

/-! ## A071422.P5269195287641314590

`∑{digits}[∑{d}[n+1, #], #]+a(n-1)` with `a(0)=1`
-/

namespace A071422.P5269195287641314590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071422.P5269195287641314590

namespace A071422

/-- `∑{digits}[∑{d}[n+1, #], #]+a(n-1)` -/
def P5269195287641314590.Spec : Prop :=
  ∀ n, (P5269195287641314590.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P4257764093933028820

`∑[A067342(n+1)]`
-/

namespace A071422.P4257764093933028820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P4257764093933028820

namespace A071422

/-- `∑[A067342(n+1)]` -/
def P4257764093933028820.Spec : Prop :=
  ∀ n, P4257764093933028820.a n = A071422 (n + 1)

end A071422

/-! ## A071422.P12531560758451815570

`∑[∑{digits}[A000203(n+1), #]]`
-/

namespace A071422.P12531560758451815570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P12531560758451815570

namespace A071422

/-- `∑[∑{digits}[A000203(n+1), #]]` -/
def P12531560758451815570.Spec : Prop :=
  ∀ n, (P12531560758451815570.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P11281439841578147291

`∑[∑{digits}[1-A088580(n+1), #]]`
-/

namespace A071422.P11281439841578147291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088580 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P11281439841578147291

namespace A071422

/-- `∑[∑{digits}[1-A088580(n+1), #]]` -/
def P11281439841578147291.Spec : Prop :=
  ∀ n, (P11281439841578147291.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P17262559156525553829

`∑[∑{digits}[A001065(n+1)+1+n, #]]`
-/

namespace A071422.P17262559156525553829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P17262559156525553829

namespace A071422

/-- `∑[∑{digits}[A001065(n+1)+1+n, #]]` -/
def P17262559156525553829.Spec : Prop :=
  ∀ n, (P17262559156525553829.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P15371702759138471478

`∑[∑{digits}[2*(n+1)-A033879(n+1), #]]`
-/

namespace A071422.P15371702759138471478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P15371702759138471478

namespace A071422

/-- `∑[∑{digits}[2*(n+1)-A033879(n+1), #]]` -/
def P15371702759138471478.Spec : Prop :=
  ∀ n, (P15371702759138471478.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P17675803536005008699

`∑[∑{digits}[A070039(n+1)+A070038(n+1), #]]`
-/

namespace A071422.P17675803536005008699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (n + 1) + A070038 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P17675803536005008699

namespace A071422

/-- `∑[∑{digits}[A070039(n+1)+A070038(n+1), #]]` -/
def P17675803536005008699.Spec : Prop :=
  ∀ n, (P17675803536005008699.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P4148435980203383804

`∑[∑{digits}[A117004(n+1)+A079667(n+1), #]]`
-/

namespace A071422.P4148435980203383804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) + A079667 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P4148435980203383804

namespace A071422

/-- `∑[∑{digits}[A117004(n+1)+A079667(n+1), #]]` -/
def P4148435980203383804.Spec : Prop :=
  ∀ n, (P4148435980203383804.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P15906176310539673161

`∑[∑{digits}[A178637(n+1)+A023889(n+1), #]]`
-/

namespace A071422.P15906176310539673161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (n + 1) + A023889 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P15906176310539673161

namespace A071422

/-- `∑[∑{digits}[A178637(n+1)+A023889(n+1), #]]` -/
def P15906176310539673161.Spec : Prop :=
  ∀ n, (P15906176310539673161.a n : ℤ) = A071422 (n + 1)

end A071422

/-! ## A071422.P6143158454755166676

`∑[A007953(∑{d}[n+1, #])]`
-/

namespace A071422.P6143158454755166676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P6143158454755166676

namespace A071422

/-- `∑[A007953(∑{d}[n+1, #])]` -/
def P6143158454755166676.Spec : Prop :=
  ∀ n, P6143158454755166676.a n = A071422 (n + 1)

end A071422

/-! ## A071422.P5075412189103163068

`∑[A007953(A000203(n+1))]`
-/

namespace A071422.P5075412189103163068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P5075412189103163068

namespace A071422

/-- `∑[A007953(A000203(n+1))]` -/
def P5075412189103163068.Spec : Prop :=
  ∀ n, P5075412189103163068.a n = A071422 (n + 1)

end A071422

/-! ## A071422.P3079002271733325201

`∑[A004092(A274535(n+1))]`
-/

namespace A071422.P3079002271733325201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A274535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P3079002271733325201

namespace A071422

/-- `∑[A004092(A274535(n+1))]` -/
def P3079002271733325201.Spec : Prop :=
  ∀ n, P3079002271733325201.a n = A071422 (n + 1)

end A071422

/-! ## A071422.P9161863322975715853

`∑[A007953(A326122(n+1))]`
-/

namespace A071422.P9161863322975715853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A326122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071422.P9161863322975715853

namespace A071422

/-- `∑[A007953(A326122(n+1))]` -/
def P9161863322975715853.Spec : Prop :=
  ∀ n, P9161863322975715853.a n = A071422 (n + 1)

end A071422

/-!
# A071423: a(n) = a(n-1) + number of decimal digits of 2^n. Number of decimal digits of concatenation of first n powers of 2.

The programs for A071423, the canonical program `A071423.P4735204547254809980` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071423 has offset 1).

The definition of A071423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071423.P4735204547254809980

`a(n-1)+A034887(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071423

/-- `a(n-1)+A034887(n+1)` -/
def P4735204547254809980.Spec : Prop :=
  ∀ n, P4735204547254809980.a n = A071423 (n + 1)

theorem P4735204547254809980.correct : P4735204547254809980.Spec := by
  intro n
  simp only [A071423, Nat.add_sub_cancel]

end A071423

/-! ## A071423.P1159897213265375334

`∑[ceil((n+1)/log2(10))]`
-/

namespace A071423.P1159897213265375334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.logb 2 (10 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071423.P1159897213265375334

namespace A071423

/-- `∑[ceil((n+1)/log2(10))]` -/
def P1159897213265375334.Spec : Prop :=
  ∀ n, P1159897213265375334.a n = A071423 (n + 1)

end A071423

/-! ## A071423.P5110597557129823489

`A025695(n+1)-1`
-/

namespace A071423.P5110597557129823489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025695 (n + 1) - 1

end

end A071423.P5110597557129823489

namespace A071423

/-- `A025695(n+1)-1` -/
def P5110597557129823489.Spec : Prop :=
  ∀ n, P5110597557129823489.a n = A071423 (n + 1)

end A071423

/-! ## A071423.P2763313797394131952

`A023443(A025695(n+1))`
-/

namespace A071423.P2763313797394131952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025695 (n + 1)).toNat

end

end A071423.P2763313797394131952

namespace A071423

/-- `A023443(A025695(n+1))` -/
def P2763313797394131952.Spec : Prop :=
  ∀ n, P2763313797394131952.a n = A071423 (n + 1)

end A071423

/-! ## A071423.P741254783314514697

`eq[A000007(n), A025684(n+1)]`
-/

namespace A071423.P741254783314514697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071423.P741254783314514697

namespace A071423

/-- `eq[A000007(n), A025684(n+1)]` -/
def P741254783314514697.Spec : Prop :=
  ∀ n, (P741254783314514697.a n : ℤ) = A071423 (n + 1)

end A071423

/-! ## A071423.P17407268677274724894

`eq[A000038(n), A025684(n+1)]`
-/

namespace A071423.P17407268677274724894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071423.P17407268677274724894

namespace A071423

/-- `eq[A000038(n), A025684(n+1)]` -/
def P17407268677274724894.Spec : Prop :=
  ∀ n, (P17407268677274724894.a n : ℤ) = A071423 (n + 1)

end A071423

/-! ## A071423.P3840141622191564958

`A059995(A354529(n+2))`
-/

namespace A071423.P3840141622191564958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A354529 (n + 2)).toNat

end

end A071423.P3840141622191564958

namespace A071423

/-- `A059995(A354529(n+2))` -/
def P3840141622191564958.Spec : Prop :=
  ∀ n, P3840141622191564958.a n = A071423 (n + 1)

end A071423

/-!
# A071424: a(n) = a(n-1) + number of decimal digits of n!. Number of decimal digits of concatenation of first n factorials.

The programs for A071424, there is no canonical definition to state claims against.
-/

/-! ## A071424.P14317143833391316141

`∑[A034886(n+1)]`
-/

namespace A071424.P14317143833391316141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071424.P14317143833391316141

/-! ## A071424.P7476078258499037159

`record[A034886(n)+a(n-1)]` with `a(0)=1, a(1)=-8, a(2)=2`
-/

namespace A071424.P7476078258499037159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -8, 2] fun n f1 =>
  A034886 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071424.P7476078258499037159

/-! ## A071424.P7177146650071077111

`A034886(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A071424.P7177146650071077111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034886 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A071424.P7177146650071077111

/-! ## A071424.P6944568751110132982

`A034886(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A071424.P6944568751110132982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A071424.P6944568751110132982

/-! ## A071424.P5043073668773653044

`A000203(((-1)^n)²)*∑[A034886(Δ[n²]-n)]`
-/

namespace A071424.P5043073668773653044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071424.P5043073668773653044

/-! ## A071424.P3686389411865141268

`A000027(∑[A034886(Δ[n²]-n)])`
-/

namespace A071424.P3686389411865141268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071424.P3686389411865141268

/-! ## A071424.P4085057944667601830

`A005843(∑[A034886(Δ[n²]-n)])/2`
-/

namespace A071424.P4085057944667601830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A071424.P4085057944667601830

/-! ## A071424.P8924756934938701267

`A008586(∑[A034886(Δ[n²]-n)])/4`
-/

namespace A071424.P8924756934938701267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4

end

end A071424.P8924756934938701267

/-! ## A071424.P15040349402996968939

`A004525(2*∑[A034886(Δ[n²]-n)])`
-/

namespace A071424.P15040349402996968939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A071424.P15040349402996968939

/-! ## A071424.P14534031205912532519

`∑[∑{digits}[∏[n+1], A111633(#)]]`
-/

namespace A071424.P14534031205912532519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A111633 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071424.P14534031205912532519

/-!
# A071425: Total number of 1's in binary representation of all factorials from 1 to n.

The programs for A071425, there is no canonical definition to state claims against.
-/

/-! ## A071425.P14873483228506970004

`∑[A079584(n+1)]`
-/

namespace A071425.P14873483228506970004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071425.P14873483228506970004

/-! ## A071425.P3170740270605985253

`∑[A079584(-xor(n, -1))]%(2*A008577(n))`
-/

namespace A071425.P3170740270605985253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * A008577 n)

end

end A071425.P3170740270605985253

/-! ## A071425.P13988968018148277562

`a(n-1)+A079584(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A071425.P13988968018148277562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A079584 (n + 1) + A000007 n)

end

end A071425.P13988968018148277562

/-! ## A071425.P8149512946685205708

`∑[A072831(n+1)-A078565(n+1)]`
-/

namespace A071425.P8149512946685205708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 (n + 1) - A078565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071425.P8149512946685205708

/-! ## A071425.P8475221687128517442

`∑[A028310(A079584(n-log2(1/2)))]`
-/

namespace A071425.P8475221687128517442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A079584 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071425.P8475221687128517442

/-! ## A071425.P6407221258188388231

`∑[A079584(-xor(n, -1))]%A156279(n)`
-/

namespace A071425.P6407221258188388231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A156279 n)

end

end A071425.P6407221258188388231

/-! ## A071425.P7738745532782811022

`∑[A000142(n+1)-A245087(n+1)]`
-/

namespace A071425.P7738745532782811022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A245087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071425.P7738745532782811022

/-!
# A071426: Sprague-Grundy values for octal game .11337.

The programs for A071426, there is no canonical definition to state claims against.
-/

/-! ## A071426.P9751196395255211128

`A395248(n+3)`
-/

namespace A071426.P9751196395255211128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395248 (n + 3)

end

end A071426.P9751196395255211128

/-! ## A071426.P8226133511837628332

`A071441((A001951(n)+1)%A175179(n+9))`
-/

namespace A071426.P8226133511837628332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071441 (Int.tmod (A001951 n + 1) (A175179 (n + 9))).toNat

end

end A071426.P8226133511837628332

/-!
# A071428: Numbers k such that x^k + x^(k-1) + x^(k-2) + ... + x + 1 is irreducible over GF(3).

The programs for A071428, there is no canonical definition to state claims against.
-/

/-! ## A071428.P16418014074269892952

`A019334(n+2)-1`
-/

namespace A071428.P16418014074269892952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 2) - 1

end

end A071428.P16418014074269892952

/-! ## A071428.P12464662984483560847

`p?[A167792(n+2)]-1`
-/

namespace A071428.P12464662984483560847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A071428.P12464662984483560847

/-! ## A071428.P2148056453307553638

`record[2*A301917(n+2)]`
-/

namespace A071428.P2148056453307553638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071428.P2148056453307553638

/-! ## A071428.P17106440867434522945

`record[A062117(n+3)]`
-/

namespace A071428.P17106440867434522945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071428.P17106440867434522945

/-! ## A071428.P1268144804563540075

`A000010(A019334(n+2))`
-/

namespace A071428.P1268144804563540075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019334 (n + 2)).toNat

end

end A071428.P1268144804563540075

/-! ## A071428.P9575331562819203558

`record[A053446(or(4, n))]`
-/

namespace A071428.P9575331562819203558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053446 (Nat.lor 4 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071428.P9575331562819203558

/-! ## A071428.P14889513934505899626

`record[A007734(A000040(n+3))]`
-/

namespace A071428.P14889513934505899626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A000040 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071428.P14889513934505899626

/-! ## A071428.P4340308836669907540

`eq[A007734(n+1), A038608(n)]`
-/

namespace A071428.P4340308836669907540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P4340308836669907540

/-! ## A071428.P886596314073646419

`eq[A007734(n+1), A059029(n)]`
-/

namespace A071428.P886596314073646419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P886596314073646419

/-! ## A071428.P6030984728343958856

`eq[A007734(n+1), A066104(n)]`
-/

namespace A071428.P6030984728343958856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P6030984728343958856

/-! ## A071428.P14229728996379980937

`eq[A007734(n+1), A109043(n)]`
-/

namespace A071428.P14229728996379980937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P14229728996379980937

/-! ## A071428.P13949425312595220343

`eq[A007734(n+1), A137501(n)]`
-/

namespace A071428.P13949425312595220343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P13949425312595220343

/-! ## A071428.P1485184742033700797

`eq[A007734(n+1), A159966(n)]`
-/

namespace A071428.P1485184742033700797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P1485184742033700797

/-! ## A071428.P6946234581336870667

`eq[A007734(n+1), A201629(n)]`
-/

namespace A071428.P6946234581336870667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P6946234581336870667

/-! ## A071428.P7087380761285406912

`eq[A007734(n+1), A237420(n)]`
-/

namespace A071428.P7087380761285406912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P7087380761285406912

/-! ## A071428.P5289102409461506292

`eq[A007734(n+1), A254667(n)]`
-/

namespace A071428.P5289102409461506292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P5289102409461506292

/-! ## A071428.P11151555373085070299

`eq[A070676(n+1), A274922(n)]`
-/

namespace A071428.P11151555373085070299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P11151555373085070299

/-! ## A071428.P9169824200577300016

`eq[A007734(n+1), A347365(n)]`
-/

namespace A071428.P9169824200577300016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P9169824200577300016

/-! ## A071428.P2075954423288606465

`eq[A007734(n+1), A390255(n)]`
-/

namespace A071428.P2075954423288606465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P2075954423288606465

/-! ## A071428.P4592137314492627294

`eq[A029936(n+1), A070676(n+1)]`
-/

namespace A071428.P4592137314492627294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071428.P4592137314492627294

/-!
# A071429: Sprague-Grundy values for octal game .14.

The programs for A071429, there is no canonical definition to state claims against.
-/

/-! ## A071429.P3783232690464803129

`and(A057979(A000045(n)), A208647(n))`
-/

namespace A071429.P3783232690464803129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057979 (A000045 n).toNat) (A208647 n)

end

end A071429.P3783232690464803129

/-! ## A071429.P3000521010086009615

`A179759(A000045(n)+55)`
-/

namespace A071429.P3000521010086009615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179759 (A000045 n + 55).toNat

end

end A071429.P3000521010086009615

/-! ## A071429.P3373343988604810720

`A057536(C(A057560(n+1), A057554(3*n+2)))`
-/

namespace A071429.P3373343988604810720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (Nat.choose (A057560 (n + 1)).toNat (A057554 (3 * n + 2)).toNat)

end

end A071429.P3373343988604810720

/-! ## A071429.P6553795765444005944

`A179759(A000032(n)+89)`
-/

namespace A071429.P6553795765444005944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179759 (A000032 n + 89).toNat

end

end A071429.P6553795765444005944

/-! ## A071429.P6095723170561210515

`A028422(n+1)+and(1, A058952(3*n+4))`
-/

namespace A071429.P6095723170561210515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + Int.land 1 (A058952 (3 * n + 4))

end

end A071429.P6095723170561210515

/-!
# A071430: Sprague-Grundy values for octal game .16.

The programs for A071430, there is no canonical definition to state claims against.
-/

/-! ## A071430.P16413845799209671841

`and(A062948(n+1), A326441(A326438(n)))`
-/

namespace A071430.P16413845799209671841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062948 (n + 1)) (A326441 (A326438 n).toNat)

end

end A071430.P16413845799209671841

/-! ## A071430.P12070670926604003736

`and(A319444(n+2), A326441(A326438(n)))`
-/

namespace A071430.P12070670926604003736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A319444 (n + 2)) (A326441 (A326438 n).toNat)

end

end A071430.P12070670926604003736

/-! ## A071430.P15593258074136805101

`A050326(xor(A224409(3*n+4), A238343(2*(n+2))))`
-/

namespace A071430.P15593258074136805101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (Int.xor (A224409 (3 * n + 4)) (A238343 (2 * (n + 2)))).toNat

end

end A071430.P15593258074136805101

/-!
# A071431: Sprague-Grundy values for octal game .17.

The programs for A071431, there is no canonical definition to state claims against.
-/

/-! ## A071431.P2921624054233041101

`A307421(A307458(n+4))+A048881(n)`
-/

namespace A071431.P2921624054233041101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307421 (A307458 (n + 4)).toNat + A048881 n

end

end A071431.P2921624054233041101

/-!
# A071432: Sprague-Grundy values for octal games .36 and .361.

The programs for A071432, there is no canonical definition to state claims against.
-/

/-! ## A071432.P14005527573373705685

`A002188(n+6)%A034884(3*(n+1))`
-/

namespace A071432.P14005527573373705685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002188 (n + 6)) (A034884 (3 * (n + 1)))

end

end A071432.P14005527573373705685

/-! ## A071432.P11745028088001816270

`A014963(A158117(n))*A002188(n+6)`
-/

namespace A071432.P11745028088001816270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A158117 n).toNat * A002188 (n + 6)

end

end A071432.P11745028088001816270

/-! ## A071432.P16175212739613054213

`A000010(A172542(n)+1)*A002188(n+6)`
-/

namespace A071432.P16175212739613054213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A172542 n + 1).toNat * A002188 (n + 6)

end

end A071432.P16175212739613054213

/-! ## A071432.P15272537988982940819

`A001222(A084161(n))*A002188(n+6)`
-/

namespace A071432.P15272537988982940819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084161 n).toNat * A002188 (n + 6)

end

end A071432.P15272537988982940819

/-! ## A071432.P1849760969037131928

`A343638(2*(n+1))-A327936(A000041(3*n+1))`
-/

namespace A071432.P1849760969037131928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343638 (2 * (n + 1)) - A327936 (A000041 (3 * n + 1)).toNat

end

end A071432.P1849760969037131928

/-!
# A071433: Sprague-Grundy values for octal game .37.

The programs for A071433, there is no canonical definition to state claims against.
-/

/-! ## A071433.P4668775140910040812

`A046695(n+2)`
-/

namespace A071433.P4668775140910040812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046695 (n + 2)

end

end A071433.P4668775140910040812

/-! ## A071433.P14362970915582327494

`A002188(2*n+3)-A102683(A081277(4*n+3))`
-/

namespace A071433.P14362970915582327494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 (2 * n + 3) - A102683 (A081277 (4 * n + 3)).toNat

end

end A071433.P14362970915582327494

/-! ## A071433.P14442829213048496778

`A325166(2^n)+A002188(2*n+3)`
-/

namespace A071433.P14442829213048496778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (2 ^ n) + A002188 (2 * n + 3)

end

end A071433.P14442829213048496778

/-! ## A071433.P7255807018991439215

`A002188(2*n+3)%record[A330915(n+1)]`
-/

namespace A071433.P7255807018991439215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002188 (2 * n + 3)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A071433.P7255807018991439215

/-! ## A071433.P4907373309334550533

`A049084(A002445(n))+A002188(2*n+3)`
-/

namespace A071433.P4907373309334550533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A002445 n).toNat + A002188 (2 * n + 3)

end

end A071433.P4907373309334550533

/-!
# A071434: Sprague-Grundy values for octal game .1377.

The programs for A071434, there is no canonical definition to state claims against.
-/

/-! ## A071434.P8882933580118553010

`A002186(∑[log2(gcd(2, n))])`
-/

namespace A071434.P8882933580118553010
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A071434.P8882933580118553010

/-!
# A071435: Sprague-Grundy values for octal game .177.

The programs for A071435, there is no canonical definition to state claims against.
-/

/-! ## A071435.P14552616338632237770

`gcd(A002186(A210434(n)), A338535(n+1))`
-/

namespace A071435.P14552616338632237770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002186 (A210434 n).toNat) (A338535 (n + 1))

end

end A071435.P14552616338632237770

/-! ## A071435.P11744755809792115927

`A071455(∑[A071447((6*n+3)²)])`
-/

namespace A071435.P11744755809792115927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071447 ((6 * n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071455 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071435.P11744755809792115927

/-!
# A071436: Sprague-Grundy values for octal game .560-.563.

The programs for A071436, there is no canonical definition to state claims against.
-/

/-! ## A071436.P275319786423058561

`A071470(A008619(3*n)%A165451(2*n+1))`
-/

namespace A071436.P275319786423058561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071470 (Int.tmod (A008619 (3 * n)) (A165451 (2 * n + 1))).toNat

end

end A071436.P275319786423058561

/-! ## A071436.P6128787220782435157

`A071470(comp[3*n])%A051970(n+1)`
-/

namespace A071436.P6128787220782435157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071470 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A051970 (n + 1))

end

end A071436.P6128787220782435157

/-! ## A071436.P9126299581669923871

`A071472(A008619(3*n+2))%A051970(n+1)`
-/

namespace A071436.P9126299581669923871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071472 (A008619 (3 * n + 2)).toNat) (A051970 (n + 1))

end

end A071436.P9126299581669923871

/-! ## A071436.P18105041674869308636

`A071470(A187829(n+1)+floor(n/2))`
-/

namespace A071436.P18105041674869308636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071470 (A187829 (n + 1) + ⌊(n : ℚ) / 2⌋).toNat

end

end A071436.P18105041674869308636

/-!
# A071440: Start with 1; add the digits of the previous term and the squares of the digits of the previous term.

The programs for A071440, the canonical program `A071440.P12289870813246919657` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071440 has offset 0).

The definition of A071440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071440.P12289870813246919657

`A077253(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071440

/-- `A077253(a(n-1))` -/
def P12289870813246919657.Spec : Prop :=
  ∀ n, P12289870813246919657.a n = A071440 n

theorem P12289870813246919657.correct : P12289870813246919657.Spec := by
  intro n
  simp only [A071440]

end A071440

/-!
# A071444: Sprague-Grundy values for octal game .1007.

The programs for A071444, there is no canonical definition to state claims against.
-/

/-! ## A071444.P13023726740414471996

`and(a(n-1)+1, A065106(A114327(n)+n))` with `a(0)=1`
-/

namespace A071444.P13023726740414471996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) + 1) (A065106 (A114327 n + (n : ℤ)).toNat)

end

end A071444.P13023726740414471996

/-! ## A071444.P18106259075680392270

`A278182(A036788(n+1)%Δ[A060109(n)])`
-/

namespace A071444.P18106259075680392270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278182 (Int.tmod (A036788 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A071444.P18106259075680392270

/-!
# A071445: Sprague-Grundy values for octal game .1107.

The programs for A071445, there is no canonical definition to state claims against.
-/

/-! ## A071445.P10769848152462137540

`A034178(A126011(3*n+4)+1)`
-/

namespace A071445.P10769848152462137540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A126011 (3 * n + 4) + 1).toNat

end

end A071445.P10769848152462137540

/-! ## A071445.P13691130760453686697

`and(A137735(n), A305733(A160793(n+1)))`
-/

namespace A071445.P13691130760453686697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137735 n) (A305733 (A160793 (n + 1)).toNat)

end

end A071445.P13691130760453686697

/-! ## A071445.P14739936288896239209

`A316523(A233998(n+3)+A164949(n+3))`
-/

namespace A071445.P14739936288896239209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (A233998 (n + 3) + A164949 (n + 3)).toNat

end

end A071445.P14739936288896239209

/-! ## A071445.P11253752586677916203

`A062756(A215924(3*(n+1))%A134385(2*n+5))`
-/

namespace A071445.P11253752586677916203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.tmod (A215924 (3 * (n + 1))) (A134385 (2 * n + 5))).toNat

end

end A071445.P11253752586677916203

/-! ## A071445.P17938582583482638756

`A081603(A204352(n)+A081603(3*n+2))`
-/

namespace A071445.P17938582583482638756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A204352 n + A081603 (3 * n + 2)).toNat

end

end A071445.P17938582583482638756

/-!
# A071447: Sprague-Grundy values for octal game .1137.

The programs for A071447, there is no canonical definition to state claims against.
-/

/-! ## A071447.P17451027879106422000

`gcd(A143142(A017089(n)), A309044(n))`
-/

namespace A071447.P17451027879106422000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143142 (A017089 n).toNat) (A309044 n)

end

end A071447.P17451027879106422000

/-!
# A071449: Sprague-Grundy values for octal game .13337.

The programs for A071449, there is no canonical definition to state claims against.
-/

/-! ## A071449.P14080442914883560523

`or(A040051(A007088(n)), A071448(n+1))`
-/

namespace A071449.P14080442914883560523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040051 (A007088 n).toNat) (A071448 (n + 1))

end

end A071449.P14080442914883560523

/-!
# A071450: Sprague-Grundy values for octal game .1307.

The programs for A071450, there is no canonical definition to state claims against.
-/

/-! ## A071450.P14774801235673584920

`A348956(n)+A001221(A018044(n))`
-/

namespace A071450.P14774801235673584920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348956 n + A001221 (A018044 n).toNat

end

end A071450.P14774801235673584920

/-! ## A071450.P3002979807873712769

`and(A053251(n+2), A073514(A304442(3*n+4)))`
-/

namespace A071450.P3002979807873712769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053251 (n + 2)) (A073514 (A304442 (3 * n + 4)).toNat)

end

end A071450.P3002979807873712769

/-! ## A071450.P6961516075652917

`A001221(A220386(3*n+4)+A112765(3*n+5))`
-/

namespace A071450.P6961516075652917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A220386 (3 * n + 4) + A112765 (3 * n + 5)).toNat

end

end A071450.P6961516075652917

/-!
# A071451: Sprague-Grundy values for octal game .113377.

The programs for A071451, there is no canonical definition to state claims against.
-/

/-! ## A071451.P8783662856963757037

`A002186(floor(n/3)+1)`
-/

namespace A071451.P8783662856963757037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (⌊(n : ℚ) / 3⌋ + 1).toNat

end

end A071451.P8783662856963757037

/-!
# A071456: Sprague-Grundy values for octal game .13377.

The programs for A071456, there is no canonical definition to state claims against.
-/

/-! ## A071456.P7952641209061157208

`A180600(A071508(n+1)%A060699(n+1))`
-/

namespace A071456.P7952641209061157208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180600 (Int.tmod (A071508 (n + 1)) (A060699 (n + 1))).toNat

end

end A071456.P7952641209061157208

/-! ## A071456.P10091967975730200414

`A180600(A071508(n+1))%A180618(n+1)`
-/

namespace A071456.P10091967975730200414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180600 (A071508 (n + 1)).toNat) (A180618 (n + 1))

end

end A071456.P10091967975730200414

/-!
# A071458: Sprague-Grundy values for octal game .106.

The programs for A071458, there is no canonical definition to state claims against.
-/

/-! ## A071458.P10108686223751350415

`and(n-A008619(n), A075530(n+1))`
-/

namespace A071458.P10108686223751350415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A008619 n) (A075530 (n + 1))

end

end A071458.P10108686223751350415

/-!
# A071459: Sprague-Grundy values for octal game .114.

The programs for A071459, there is no canonical definition to state claims against.
-/

/-! ## A071459.P2045379939007631805

`A000188(A221623(n+1))*A188192(n+1)`
-/

namespace A071459.P2045379939007631805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A221623 (n + 1)).toNat * A188192 (n + 1)

end

end A071459.P2045379939007631805

/-! ## A071459.P8561637499934244245

`A023895(n)+A010051(A238826(n+1))`
-/

namespace A071459.P8561637499934244245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n + A010051 (A238826 (n + 1)).toNat

end

end A071459.P8561637499934244245

/-! ## A071459.P7064901878764472366

`A072721(and(A072721(n), A133291(n+1)))`
-/

namespace A071459.P7064901878764472366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 (Int.land (A072721 n) (A133291 (n + 1))).toNat

end

end A071459.P7064901878764472366

/-! ## A071459.P10195657710353356504

`A101605(A250140(2*n+5))+A023895(n)`
-/

namespace A071459.P10195657710353356504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A250140 (2 * n + 5)).toNat + A023895 n

end

end A071459.P10195657710353356504

/-! ## A071459.P2195273663301414461

`A041055(n)%(A255598(n+1)+A010051(A096399(2*n+1)))`
-/

namespace A071459.P2195273663301414461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041055 n) (A255598 (n + 1) + A010051 (A096399 (2 * n + 1)).toNat)

end

end A071459.P2195273663301414461

/-!
# A071460: Sprague-Grundy values for octal game .116.

The programs for A071460, there is no canonical definition to state claims against.
-/

/-! ## A071460.P5258174653886736485

`and(A109449(n), A292987(A308360(n+1)))`
-/

namespace A071460.P5258174653886736485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109449 n) (A292987 (A308360 (n + 1)).toNat)

end

end A071460.P5258174653886736485

/-! ## A071460.P2681899351639209745

`and(A052250(n+1), A292987(A308360(n+1)))`
-/

namespace A071460.P2681899351639209745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052250 (n + 1)) (A292987 (A308360 (n + 1)).toNat)

end

end A071460.P2681899351639209745

/-! ## A071460.P5767175563898255051

`and(A261684(A065159(n))%5+1, A135878(n))`
-/

namespace A071460.P5767175563898255051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A261684 (A065159 n).toNat) 5 + 1) (A135878 n)

end

end A071460.P5767175563898255051

/-! ## A071460.P17797038572490226214

`A139354(A329049(n)+A188999(n+1))`
-/

namespace A071460.P17797038572490226214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A329049 n + A188999 (n + 1)).toNat

end

end A071460.P17797038572490226214

/-! ## A071460.P2048567223509690250

`A179765(A007875(n+2)+A000073(n))`
-/

namespace A071460.P2048567223509690250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179765 (A007875 (n + 2) + A000073 n).toNat

end

end A071460.P2048567223509690250

/-!
# A071461: Sprague-Grundy values for octal games .124 and .1241.

The programs for A071461, there is no canonical definition to state claims against.
-/

/-! ## A071461.P6795299702695674741

`xor(A329449(n)%2, A071465(n+1))`
-/

namespace A071461.P6795299702695674741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A329449 n) 2) (A071465 (n + 1))

end

end A071461.P6795299702695674741

/-! ## A071461.P11734490725596604462

`xor(A000035(A329449(n)), A071465(n+1))`
-/

namespace A071461.P11734490725596604462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A329449 n).toNat) (A071465 (n + 1))

end

end A071461.P11734490725596604462

/-! ## A071461.P672549014980300115

`xor(A059841(A329449(n+3)), A071465(n+1))`
-/

namespace A071461.P672549014980300115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 (A329449 (n + 3)).toNat) (A071465 (n + 1))

end

end A071461.P672549014980300115

/-! ## A071461.P4304295484318743238

`xor(A000035(A000384(n)), A071465(n+1))`
-/

namespace A071461.P4304295484318743238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A000384 n).toNat) (A071465 (n + 1))

end

end A071461.P4304295484318743238

/-! ## A071461.P2005992179910789211

`xor(A056594(A273309(n)), A071465(n+1))`
-/

namespace A071461.P2005992179910789211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 (A273309 n).toNat) (A071465 (n + 1))

end

end A071461.P2005992179910789211

/-!
# A071462: Sprague-Grundy values for octal games .125 and .1251.

The programs for A071462, there is no canonical definition to state claims against.
-/

/-! ## A071462.P12458505212596830587

`xor(A000035(A000384(n+8)), A071466(n+1))`
-/

namespace A071462.P12458505212596830587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A000384 (n + 8)).toNat) (A071466 (n + 1))

end

end A071462.P12458505212596830587

/-! ## A071462.P18277303523814766727

`A032741(3^xor(A000035(n), A071466(n+1)))`
-/

namespace A071462.P18277303523814766727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.xor (A000035 n) (A071466 (n + 1)) : ℤ))).toNat

end

end A071462.P18277303523814766727

/-! ## A071462.P13076031003884633020

`A062799(3^xor(A000035(n), A071466(n+1)))`
-/

namespace A071462.P13076031003884633020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.xor (A000035 n) (A071466 (n + 1)) : ℤ))).toNat

end

end A071462.P13076031003884633020

/-! ## A071462.P5733274884057124036

`A318995(3^xor(A000035(n), A071466(n+1)))`
-/

namespace A071462.P5733274884057124036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.xor (A000035 n) (A071466 (n + 1)) : ℤ))).toNat

end

end A071462.P5733274884057124036

/-! ## A071462.P7375936065059399361

`A001222(5^xor(A000035(n), A071466(n+1)))`
-/

namespace A071462.P7375936065059399361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (Int.xor (A000035 n) (A071466 (n + 1)) : ℤ))).toNat

end

end A071462.P7375936065059399361

/-! ## A071462.P13276632461741689041

`A151934(n)!*xor(A000035(n), A071466(n+1))`
-/

namespace A071462.P13276632461741689041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151934 n).toNat : ℤ) * Int.xor (A000035 n) (A071466 (n + 1))

end

end A071462.P13276632461741689041

/-! ## A071462.P150911899699172694

`xor(A071466(n+1)%A102306(n+1), A000035(n))`
-/

namespace A071462.P150911899699172694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A071466 (n + 1)) (A102306 (n + 1))) (A000035 n)

end

end A071462.P150911899699172694

/-!
# A071464: Sprague-Grundy values for octal games .127 and .1271.

The programs for A071464, there is no canonical definition to state claims against.
-/

/-! ## A071464.P17686160124365797928

`and(A055442(A055456(n+1)), A055448(2*n+3))`
-/

namespace A071464.P17686160124365797928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055442 (A055456 (n + 1)).toNat) (A055448 (2 * n + 3))

end

end A071464.P17686160124365797928

/-!
# A071465: Sprague-Grundy values for octal game .134.

The programs for A071465, there is no canonical definition to state claims against.
-/

/-! ## A071465.P412592802611101680

`xor(A329449(n)%2, A071461(n+1))`
-/

namespace A071465.P412592802611101680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A329449 n) 2) (A071461 (n + 1))

end

end A071465.P412592802611101680

/-!
# A071466: Sprague-Grundy values for octal game .135.

The programs for A071466, there is no canonical definition to state claims against.
-/

/-! ## A071466.P17085914835594099774

`xor(A071462(n+1)%A102306(n+1), A000035(n))`
-/

namespace A071466.P17085914835594099774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A071462 (n + 1)) (A102306 (n + 1))) (A000035 n)

end

end A071466.P17085914835594099774

/-! ## A071466.P9718691602941745214

`xor(A000035((3*n)²), A071462(n+1))`
-/

namespace A071466.P9718691602941745214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 ((3 * n) ^ 2)) (A071462 (n + 1))

end

end A071466.P9718691602941745214

/-! ## A071466.P9383479280632846749

`val(A061200(A253653(n+1)), A061200(n+5))`
-/

namespace A071466.P9383479280632846749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061200 (A253653 (n + 1)).toNat).toNat (A061200 (n + 5)).toNat

end

end A071466.P9383479280632846749

/-! ## A071466.P4705274689803150336

`and(A124461(A111924(n+5)), A140670(2*(n+2)))`
-/

namespace A071466.P4705274689803150336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124461 (A111924 (n + 5)).toNat) (A140670 (2 * (n + 2)))

end

end A071466.P4705274689803150336

/-!
# A071467: Sprague-Grundy values for octal game .136.

The programs for A071467, there is no canonical definition to state claims against.
-/

/-! ## A071467.P5937236328913668506

`val(A037292(n+2), A175268(A006519(n+1)))`
-/

namespace A071467.P5937236328913668506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037292 (n + 2)).toNat (A175268 (A006519 (n + 1)).toNat).toNat

end

end A071467.P5937236328913668506

/-! ## A071467.P12286336428805229742

`and(A001222(n+2), A037143(A128362(n+1)))`
-/

namespace A071467.P12286336428805229742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 2)) (A037143 (A128362 (n + 1)).toNat)

end

end A071467.P12286336428805229742

/-! ## A071467.P5261503199649902686

`and(A217439(A249716(n)), A238337(n))`
-/

namespace A071467.P5261503199649902686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217439 (A249716 n).toNat) (A238337 n)

end

end A071467.P5261503199649902686

/-! ## A071467.P14398197489606969245

`A156542(or(A020705(n), A036626(n)))`
-/

namespace A071467.P14398197489606969245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (Int.lor (A020705 n) (A036626 n)).toNat

end

end A071467.P14398197489606969245

/-! ## A071467.P2372257958377479216

`A095734(lt[A096334(n), A185315(n)])`
-/

namespace A071467.P2372257958377479216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095734 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071467.P2372257958377479216

/-!
# A071469: Sprague-Grundy values for octal games .143 and .1431.

The programs for A071469, there is no canonical definition to state claims against.
-/

/-! ## A071469.P10811593534302309467

`A293916(n+3)%A010706(A103537(n))`
-/

namespace A071469.P10811593534302309467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293916 (n + 3)) (A010706 (A103537 n).toNat)

end

end A071469.P10811593534302309467

/-!
# A071474: Sprague-Grundy values for octal games .163 and .1631.

The programs for A071474, there is no canonical definition to state claims against.
-/

/-! ## A071474.P18310343431848370491

`A165277(A183908(n+1)+A001057(n))`
-/

namespace A071474.P18310343431848370491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (A183908 (n + 1) + A001057 n).toNat

end

end A071474.P18310343431848370491

/-!
# A071476: Sprague-Grundy values for octal games .165 and .1651.

The programs for A071476, there is no canonical definition to state claims against.
-/

/-! ## A071476.P1512479146030876943

`A110658(lt[A110640(n), A110636(3*n+1)])`
-/

namespace A071476.P1512479146030876943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110636 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071476.P1512479146030876943

/-!
# A071480: Sprague-Grundy values for octal games .173 and .1731.

The programs for A071480, there is no canonical definition to state claims against.
-/

/-! ## A071480.P7768551762412786335

`A241181(A269143(n+5)-A129215(n+1))`
-/

namespace A071480.P7768551762412786335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241181 (A269143 (n + 5) - A129215 (n + 1)).toNat

end

end A071480.P7768551762412786335

/-! ## A071480.P4586407682466096384

`A054726(n)%A322091(A022183(n))`
-/

namespace A071480.P4586407682466096384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054726 n) (A322091 (A022183 n).toNat)

end

end A071480.P4586407682466096384

/-!
# A071482: Sprague-Grundy values for octal game .3007.

The programs for A071482, there is no canonical definition to state claims against.
-/

/-! ## A071482.P14850042083782789195

`and(A014895(n+1), A253626(ceil(2^(n-1))))`
-/

namespace A071482.P14850042083782789195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014895 (n + 1)) (A253626 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A071482.P14850042083782789195

/-! ## A071482.P2111539266211766525

`(a(n-1)+1)%A353382(A000918(n+2))` with `a(0)=1`
-/

namespace A071482.P2111539266211766525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A353382 (A000918 (n + 2)).toNat)

end

end A071482.P2111539266211766525

/-! ## A071482.P789048750823458614

`and(A005811(A094373(n)), A014895(n+1))`
-/

namespace A071482.P789048750823458614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A094373 n).toNat) (A014895 (n + 1))

end

end A071482.P789048750823458614

/-! ## A071482.P12447911578903196804

`and(A014895(n+1), A260450(A135491(n)))`
-/

namespace A071482.P12447911578903196804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014895 (n + 1)) (A260450 (A135491 n).toNat)

end

end A071482.P12447911578903196804

/-! ## A071482.P13235248358244290965

`and(A093110(n+3), A302044(A007283(n)))`
-/

namespace A071482.P13235248358244290965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093110 (n + 3)) (A302044 (A007283 n).toNat)

end

end A071482.P13235248358244290965

/-!
# A071490: Sprague-Grundy values for octal game .324.

The programs for A071490, there is no canonical definition to state claims against.
-/

/-! ## A071490.P6247324615829812615

`A002262(eq[1, A195860(3*(n+1))])`
-/

namespace A071490.P6247324615829812615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071490.P6247324615829812615

/-! ## A071490.P3626639751124601757

`A362327(n+1)+A010060(A097550(n))`
-/

namespace A071490.P3626639751124601757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362327 (n + 1) + A010060 (A097550 n).toNat

end

end A071490.P3626639751124601757

/-! ## A071490.P5932552933409371004

`A144629(A233249(n+1)+A155717(n+1))`
-/

namespace A071490.P5932552933409371004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144629 (A233249 (n + 1) + A155717 (n + 1)).toNat

end

end A071490.P5932552933409371004

/-!
# A071491: Sprague-Grundy values for octal games .334 and .3341.

The programs for A071491, there is no canonical definition to state claims against.
-/

/-! ## A071491.P4180258184340769442

`and(A008486(A302017(n)), A071496(n+1))`
-/

namespace A071491.P4180258184340769442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008486 (A302017 n).toNat) (A071496 (n + 1))

end

end A071491.P4180258184340769442

/-! ## A071491.P6298828860444152767

`and(A008486(A302017(n)), A071502(n+1))`
-/

namespace A071491.P6298828860444152767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008486 (A302017 n).toNat) (A071502 (n + 1))

end

end A071491.P6298828860444152767

/-! ## A071491.P6763295192488467601

`A071496(n+1)%(A318189(n)+1)`
-/

namespace A071491.P6763295192488467601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071496 (n + 1)) (A318189 n + 1)

end

end A071491.P6763295192488467601

/-! ## A071491.P16634105077419505415

`A071502(n+1)%(A318189(n)+1)`
-/

namespace A071491.P16634105077419505415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071502 (n + 1)) (A318189 n + 1)

end

end A071491.P16634105077419505415

/-! ## A071491.P15105026552204230256

`A071496(n+1)%A002088(A318189(n))`
-/

namespace A071491.P15105026552204230256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071496 (n + 1)) (A002088 (A318189 n).toNat)

end

end A071491.P15105026552204230256

/-!
# A071492: Sprague-Grundy values for octal games .336 and .3361.

The programs for A071492, there is no canonical definition to state claims against.
-/

/-! ## A071492.P16360491061095910289

`A018625(n+1)%A036555(A167614(n+1))`
-/

namespace A071492.P16360491061095910289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018625 (n + 1)) (A036555 (A167614 (n + 1)).toNat)

end

end A071492.P16360491061095910289

/-!
# A071496: Sprague-Grundy values for octal games .354 and .3541.

The programs for A071496, there is no canonical definition to state claims against.
-/

/-! ## A071496.P10040354577150105495

`A071502(n+1)-A107846(A144152(2*n+1))`
-/

namespace A071496.P10040354577150105495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071502 (n + 1) - A107846 (A144152 (2 * n + 1)).toNat

end

end A071496.P10040354577150105495

/-! ## A071496.P16830363679295722971

`A000195(3^A071502(n+1))`
-/

namespace A071496.P16830363679295722971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A071502 (n + 1) : ℤ))).toNat

end

end A071496.P16830363679295722971

/-! ## A071496.P15801779998663261597

`A007949(3^A071502(n+1))`
-/

namespace A071496.P15801779998663261597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A071502 (n + 1) : ℤ))).toNat

end

end A071496.P15801779998663261597

/-! ## A071496.P11175526546452966124

`A032741(3^A071502(n+1))`
-/

namespace A071496.P11175526546452966124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A071502 (n + 1) : ℤ))).toNat

end

end A071496.P11175526546452966124

/-! ## A071496.P11381933310593996322

`A071502(n+1)%A157358(n+1)`
-/

namespace A071496.P11381933310593996322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071502 (n + 1)) (A157358 (n + 1))

end

end A071496.P11381933310593996322

