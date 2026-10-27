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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C011
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A021001: Pisot sequence P(2,9).

The programs for A021001, the canonical program `A021001.P7278233910353599413` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021001 has offset 0).

The definition of A021001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021001.P7278233910353599413

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021001

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P7278233910353599413.Spec : Prop :=
  ∀ n, P7278233910353599413.a n = A021001 n

theorem P7278233910353599413.correct : P7278233910353599413.Spec := by
  intro n
  simp only [A021001]

end A021001

/-! ## A021001.P7768924716654538606

`ogf((2+x)/(1-4x-2x^2))`
-/

namespace A021001.P7768924716654538606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -4, -2] n

end

end A021001.P7768924716654538606

namespace A021001

/-- `ogf((2+x)/(1-4x-2x^2))` -/
def P7768924716654538606.Spec : Prop :=
  ∀ n, P7768924716654538606.a n = A021001 n

end A021001

/-! ## A021001.P11271184811414458103

`2*(a(n-2)+2*a(n-1))` with `a(0)=2, a(1)=9`
-/

namespace A021001.P11271184811414458103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  2 * (a (n - 2) + 2 * a (n - 1))

end

end A021001.P11271184811414458103

namespace A021001

/-- `2*(a(n-2)+2*a(n-1))` -/
def P11271184811414458103.Spec : Prop :=
  ∀ n, (P11271184811414458103.a n : ℤ) = A021001 n

end A021001

/-! ## A021001.P4732577353272700646

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=2, a(1)=9`
-/

namespace A021001.P4732577353272700646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A021001.P4732577353272700646

namespace A021001

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P4732577353272700646.Spec : Prop :=
  ∀ n, P4732577353272700646.a n = A021001 n

end A021001

/-! ## A021001.P3368336726841634596

`A090017(n+2)/2`
-/

namespace A021001.P3368336726841634596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090017 (n + 2) : ℚ) / 2

end

end A021001.P3368336726841634596

namespace A021001

/-- `A090017(n+2)/2` -/
def P3368336726841634596.Spec : Prop :=
  ∀ n, P3368336726841634596.a n = (A021001 n : ℚ)

end A021001

/-! ## A021001.P14108998739468120933

`2^floor(n/2)*A041007(n+1)`
-/

namespace A021001.P14108998739468120933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A041007 (n + 1) : ℚ)

end

end A021001.P14108998739468120933

namespace A021001

/-- `2^floor(n/2)*A041007(n+1)` -/
def P14108998739468120933.Spec : Prop :=
  ∀ n, P14108998739468120933.a n = (A021001 n : ℚ)

end A021001

/-! ## A021001.P1164928585324433877

`A164549(n)+Δ[A090017(n)]`
-/

namespace A021001.P1164928585324433877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n + (f1 (n + 1) - f1 n)

end

end A021001.P1164928585324433877

namespace A021001

/-- `A164549(n)+Δ[A090017(n)]` -/
def P1164928585324433877.Spec : Prop :=
  ∀ n, P1164928585324433877.a n = A021001 n

end A021001

/-! ## A021001.P3483702707537388570

`A123347(n)+A090017(n+1)`
-/

namespace A021001.P3483702707537388570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n + A090017 (n + 1)

end

end A021001.P3483702707537388570

namespace A021001

/-- `A123347(n)+A090017(n+1)` -/
def P3483702707537388570.Spec : Prop :=
  ∀ n, P3483702707537388570.a n = A021001 n

end A021001

/-! ## A021001.P9426624705068135887

`A084059(n+1)-A090017(n)`
-/

namespace A021001.P9426624705068135887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 (n + 1) - A090017 n

end

end A021001.P9426624705068135887

namespace A021001

/-- `A084059(n+1)-A090017(n)` -/
def P9426624705068135887.Spec : Prop :=
  ∀ n, P9426624705068135887.a n = A021001 n

end A021001

/-! ## A021001.P7187796538645838609

`2*A123347(n)-A090017(n)`
-/

namespace A021001.P7187796538645838609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123347 n - A090017 n

end

end A021001.P7187796538645838609

namespace A021001

/-- `2*A123347(n)-A090017(n)` -/
def P7187796538645838609.Spec : Prop :=
  ∀ n, P7187796538645838609.a n = A021001 n

end A021001

/-! ## A021001.P13098759676194656684

`A123348(n+1)-Δ[A090017(n)]`
-/

namespace A021001.P13098759676194656684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 (n + 1) - (f1 (n + 1) - f1 n)

end

end A021001.P13098759676194656684

namespace A021001

/-- `A123348(n+1)-Δ[A090017(n)]` -/
def P13098759676194656684.Spec : Prop :=
  ∀ n, P13098759676194656684.a n = A021001 n

end A021001

/-! ## A021001.P7466011005326595982

`A123348(n)+Δ[2*A090017(n)]`
-/

namespace A021001.P7466011005326595982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 n + (f1 (n + 1) - f1 n)

end

end A021001.P7466011005326595982

namespace A021001

/-- `A123348(n)+Δ[2*A090017(n)]` -/
def P7466011005326595982.Spec : Prop :=
  ∀ n, P7466011005326595982.a n = A021001 n

end A021001

/-! ## A021001.P8220900597420987412

`A090017(n+1)+A026655(2*n)`
-/

namespace A021001.P8220900597420987412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + A026655 (2 * n)

end

end A021001.P8220900597420987412

namespace A021001

/-- `A090017(n+1)+A026655(2*n)` -/
def P8220900597420987412.Spec : Prop :=
  ∀ n, P8220900597420987412.a n = A021001 n

end A021001

/-! ## A021001.P11511048183950710069

`A123347(n+1)-A164549(n+1)/2`
-/

namespace A021001.P11511048183950710069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123347 (n + 1) : ℚ) - (A164549 (n + 1) : ℚ) / 2

end

end A021001.P11511048183950710069

namespace A021001

/-- `A123347(n+1)-A164549(n+1)/2` -/
def P11511048183950710069.Spec : Prop :=
  ∀ n, P11511048183950710069.a n = (A021001 n : ℚ)

end A021001

/-! ## A021001.P12234521815560579524

`A084059(n)+A164549(n)+A090017(n)`
-/

namespace A021001.P12234521815560579524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n + (A164549 n + A090017 n)

end

end A021001.P12234521815560579524

namespace A021001

/-- `A084059(n)+A164549(n)+A090017(n)` -/
def P12234521815560579524.Spec : Prop :=
  ∀ n, P12234521815560579524.a n = A021001 n

end A021001

/-! ## A021001.P1444336056100581623

`A090017(n+1)+A123348(n)+A084059(n)`
-/

namespace A021001.P1444336056100581623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + (A123348 n + A084059 n)

end

end A021001.P1444336056100581623

namespace A021001

/-- `A090017(n+1)+A123348(n)+A084059(n)` -/
def P1444336056100581623.Spec : Prop :=
  ∀ n, P1444336056100581623.a n = A021001 n

end A021001

/-! ## A021001.P4657100481201930102

`A090017(n+1)+A164549(n)-A090017(n)`
-/

namespace A021001.P4657100481201930102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + (A164549 n - A090017 n)

end

end A021001.P4657100481201930102

namespace A021001

/-- `A090017(n+1)+A164549(n)-A090017(n)` -/
def P4657100481201930102.Spec : Prop :=
  ∀ n, P4657100481201930102.a n = A021001 n

end A021001

/-! ## A021001.P17868839552203388454

`A123348(n+1)+A090017(n)-A090017(n+1)`
-/

namespace A021001.P17868839552203388454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 (n + 1) + (A090017 n - A090017 (n + 1))

end

end A021001.P17868839552203388454

namespace A021001

/-- `A123348(n+1)+A090017(n)-A090017(n+1)` -/
def P17868839552203388454.Spec : Prop :=
  ∀ n, P17868839552203388454.a n = A021001 n

end A021001

/-! ## A021001.P8060333834858066447

`A108012(n+1)-(A111567(n)+A090017(n+1))`
-/

namespace A021001.P8060333834858066447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108012 (n + 1) - (A111567 n + A090017 (n + 1))

end

end A021001.P8060333834858066447

namespace A021001

/-- `A108012(n+1)-(A111567(n)+A090017(n+1))` -/
def P8060333834858066447.Spec : Prop :=
  ∀ n, P8060333834858066447.a n = A021001 n

end A021001

/-! ## A021001.P3146654733881208874

`A041007(n+1)/A041006(n+1)*A123347(n+1)`
-/

namespace A021001.P3146654733881208874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 (n + 1) : ℚ) / (A041006 (n + 1) : ℚ) * (A123347 (n + 1) : ℚ)

end

end A021001.P3146654733881208874

namespace A021001

/-- `A041007(n+1)/A041006(n+1)*A123347(n+1)` -/
def P3146654733881208874.Spec : Prop :=
  ∀ n, P3146654733881208874.a n = (A021001 n : ℚ)

end A021001

/-!
# A021003: a(n) = (n/2)*(n^4 + 1).

The programs for A021003, the canonical program `A021003.P1631402243745340027` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021003 has offset 0).

The definition of A021003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n/2*(n^4+1)` (program `A021003.P14140909833261928949`, by `A021003.P14140909833261928949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021003.P2414005126365503063

`(n^5+n)/2`
-/

namespace A021003.P2414005126365503063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 + n : ℚ) / 2

end

end A021003.P2414005126365503063

namespace A021003

/-- `(n^5+n)/2` -/
def P2414005126365503063.Spec : Prop :=
  ∀ n, P2414005126365503063.a n = (A021003 n : ℚ)

theorem P2414005126365503063.correct : P2414005126365503063.Spec := by
  intro n
  simp only [A021003, Nat.add_sub_cancel, A021003.P2414005126365503063.a, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A021003

/-! ## A021003.P14140909833261928949

`n/2*(n^4+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021003.P14140909833261928949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (n ^ 4 + 1 : ℚ)

end

end A021003.P14140909833261928949

namespace A021003

/-- `n/2*(n^4+1)` -/
def P14140909833261928949.Spec : Prop :=
  ∀ n, P14140909833261928949.a n = (A021003 n : ℚ)

theorem P14140909833261928949.correct : P14140909833261928949.Spec := by
  intro n
  simp only [A021003, Nat.add_sub_cancel, A021003.P14140909833261928949.a, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A021003

/-! ## A021003.P4595899580998905005

`((1-n)²+n)*n*∑[n]-C(n, 2)`
-/

namespace A021003.P4595899580998905005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A021003.P4595899580998905005

namespace A021003

/-- `((1-n)²+n)*n*∑[n]-C(n, 2)` -/
def P4595899580998905005.Spec : Prop :=
  ∀ n, P4595899580998905005.a n = A021003 n

end A021003

/-! ## A021003.P6560854939892557056

`A061167(n)/2+n`
-/

namespace A021003.P6560854939892557056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 n : ℚ) / 2 + (n : ℚ)

end

end A021003.P6560854939892557056

namespace A021003

/-- `A061167(n)/2+n` -/
def P6560854939892557056.Spec : Prop :=
  ∀ n, P6560854939892557056.a n = (A021003 n : ℚ)

theorem P6560854939892557056.correct : P6560854939892557056.Spec := by
  intro n
  simp only [A021003, Nat.add_sub_cancel, A021003.P6560854939892557056.a, A021003.P1631402243745340027.a, A061167, A061167.P10314290942309870978.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A021003

/-! ## A021003.P5614284284509213697

`ceil((n-A024003(n))/2)`
-/

namespace A021003.P5614284284509213697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A024003 n : ℚ) / 2⌉

end

end A021003.P5614284284509213697

namespace A021003

/-- `ceil((n-A024003(n))/2)` -/
def P5614284284509213697.Spec : Prop :=
  ∀ n, P5614284284509213697.a n = A021003 n

end A021003

/-! ## A021003.P385923377327645600

`∑[n]+A135497(n)/2`
-/

namespace A021003.P385923377327645600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A135497 n : ℚ) / 2

end

end A021003.P385923377327645600

namespace A021003

/-- `∑[n]+A135497(n)/2` -/
def P385923377327645600.Spec : Prop :=
  ∀ n, P385923377327645600.a n = (A021003 n : ℚ)

end A021003

/-! ## A021003.P5799613783927238126

`A101378(n)+n-∑[n]`
-/

namespace A021003.P5799613783927238126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A021003.P5799613783927238126

namespace A021003

/-- `A101378(n)+n-∑[n]` -/
def P5799613783927238126.Spec : Prop :=
  ∀ n, P5799613783927238126.a n = A021003 n

end A021003

/-! ## A021003.P8613619709453661004

`∑[n]*A062158(n)+n`
-/

namespace A021003.P8613619709453661004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A062158 n + (n : ℤ)

end

end A021003.P8613619709453661004

namespace A021003

/-- `∑[n]*A062158(n)+n` -/
def P8613619709453661004.Spec : Prop :=
  ∀ n, P8613619709453661004.a n = A021003 n

end A021003

/-! ## A021003.P1631402243745340027

`(n+1)*A071252(n)+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021003

/-- `(n+1)*A071252(n)+n` -/
def P1631402243745340027.Spec : Prop :=
  ∀ n, P1631402243745340027.a n = A021003 n

theorem P1631402243745340027.correct : P1631402243745340027.Spec := by
  intro n
  simp only [A021003]

end A021003

/-! ## A021003.P9794189880026490262

`(n-1)*A071237(n)+n`
-/

namespace A021003.P9794189880026490262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A071237 n + (n : ℤ)

end

end A021003.P9794189880026490262

namespace A021003

/-- `(n-1)*A071237(n)+n` -/
def P9794189880026490262.Spec : Prop :=
  ∀ n, P9794189880026490262.a n = A021003 n

end A021003

/-! ## A021003.P7516985807332251262

`A071236(n)%(n^6+n^3+1)`
-/

namespace A021003.P7516985807332251262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071236 n) (n ^ 6 + (n ^ 3 + 1) : ℤ)

end

end A021003.P7516985807332251262

namespace A021003

/-- `A071236(n)%(n^6+n^3+1)` -/
def P7516985807332251262.Spec : Prop :=
  ∀ n, P7516985807332251262.a n = A021003 n

end A021003

/-! ## A021003.P14601190866081850950

`A321672(n)+A006003(n)`
-/

namespace A021003.P14601190866081850950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A006003 n

end

end A021003.P14601190866081850950

namespace A021003

/-- `A321672(n)+A006003(n)` -/
def P14601190866081850950.Spec : Prop :=
  ∀ n, P14601190866081850950.a n = A021003 n

end A021003

/-! ## A021003.P4101727283799827890

`A168178(n)-A135503(n)`
-/

namespace A021003.P4101727283799827890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n - A135503 n

end

end A021003.P4101727283799827890

namespace A021003

/-- `A168178(n)-A135503(n)` -/
def P4101727283799827890.Spec : Prop :=
  ∀ n, P4101727283799827890.a n = A021003 n

end A021003

/-! ## A021003.P7697645009573762319

`A168372(n)%A053717(n)`
-/

namespace A021003.P7697645009573762319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168372 n) (A053717 n)

end

end A021003.P7697645009573762319

namespace A021003

/-- `A168372(n)%A053717(n)` -/
def P7697645009573762319.Spec : Prop :=
  ∀ n, P7697645009573762319.a n = A021003 n

end A021003

/-! ## A021003.P11547811469812534132

`A168412(n)%A059839(n)`
-/

namespace A021003.P11547811469812534132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168412 n) (A059839 n)

end

end A021003.P11547811469812534132

namespace A021003

/-- `A168412(n)%A059839(n)` -/
def P11547811469812534132.Spec : Prop :=
  ∀ n, P11547811469812534132.a n = A021003 n

end A021003

/-! ## A021003.P1881521685616249498

`A344866(n+1)+A019583(n)`
-/

namespace A021003.P1881521685616249498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344866 (n + 1) + A019583 n

end

end A021003.P1881521685616249498

namespace A021003

/-- `A344866(n+1)+A019583(n)` -/
def P1881521685616249498.Spec : Prop :=
  ∀ n, P1881521685616249498.a n = A021003 n

theorem P1881521685616249498.correct : P1881521685616249498.Spec := by
  intro n
  simp only [A021003, Nat.add_sub_cancel, A021003.P1881521685616249498.a, A021003.P1631402243745340027.a, A019583, A019583.P18156360696424512505.a, A071252, A071252.P13937739183146272210.a, A344866, A344866.P1105936836514059683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A021003

/-! ## A021003.P12954984509205405797

`A168029(n)+A168351(n)-A168526(n)`
-/

namespace A021003.P12954984509205405797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A168351 n - A168526 n)

end

end A021003.P12954984509205405797

namespace A021003

/-- `A168029(n)+A168351(n)-A168526(n)` -/
def P12954984509205405797.Spec : Prop :=
  ∀ n, P12954984509205405797.a n = A021003 n

end A021003

/-!
# A021004: Pisot sequence P(4,10).

The programs for A021004, the canonical program `A021004.P4773974474404737794` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021004 has offset 0).

The definition of A021004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021004.P4773974474404737794

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021004

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P4773974474404737794.Spec : Prop :=
  ∀ n, P4773974474404737794.a n = A021004 n

theorem P4773974474404737794.correct : P4773974474404737794.Spec := by
  intro n
  simp only [A021004]

end A021004

/-! ## A021004.P2385781480598888698

`2*a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-6)` with `a(0)=4, a(1)=10, a(2)=25, a(3)=62, a(4)=154, a(5)=383`
-/

namespace A021004.P2385781480598888698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 25, 62, 154, 383] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 6)

end

end A021004.P2385781480598888698

namespace A021004

/-- `2*a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-6)` -/
def P2385781480598888698.Spec : Prop :=
  ∀ n, P2385781480598888698.a n = A021004 n

end A021004

/-! ## A021004.P1155841339826395869

`round(xor(1, a(n-1)²)/a(n-2))` with `a(0)=4, a(1)=10`
-/

namespace A021004.P1155841339826395869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  SequenceMachineLib.roundAway ((Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ))

end

end A021004.P1155841339826395869

namespace A021004

/-- `round(xor(1, a(n-1)²)/a(n-2))` -/
def P1155841339826395869.Spec : Prop :=
  ∀ n, P1155841339826395869.a n = A021004 n

end A021004

/-! ## A021004.P547407605771828401

`A188087(2*a(n-1))` with `a(0)=4`
-/

namespace A021004.P547407605771828401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A188087 (2 * a (n - 1)).toNat

end

end A021004.P547407605771828401

namespace A021004

/-- `A188087(2*a(n-1))` -/
def P547407605771828401.Spec : Prop :=
  ∀ n, P547407605771828401.a n = A021004 n

end A021004

/-! ## A021004.P9130302912114583769

`A004523(ceil((sqrt(3)+2)*a(n-1)))` with `a(0)=4`
-/

namespace A021004.P9130302912114583769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A004523 ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉.toNat

end

end A021004.P9130302912114583769

namespace A021004

/-- `A004523(ceil((sqrt(3)+2)*a(n-1)))` -/
def P9130302912114583769.Spec : Prop :=
  ∀ n, P9130302912114583769.a n = A021004 n

end A021004

/-!
# A021005: Let q_k=p(p+2) be product of k-th pair of twin primes; sequence gives values of p such that (q_k)^2 > q_{k-i}q_{k+i} for all 1 <= i <= k-1.

The programs for A021005, there is no canonical definition to state claims against.
-/

/-! ## A021005.P14785141491535046328

`A021007(n+1)-2`
-/

namespace A021005.P14785141491535046328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021007 (n + 1) - 2

end

end A021005.P14785141491535046328

/-! ## A021005.P4328903839732696025

`A118824(2*n+1)+A021007(n+1)`
-/

namespace A021005.P4328903839732696025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 1) + A021007 (n + 1)

end

end A021005.P4328903839732696025

/-! ## A021005.P11103646010667217618

`A198242((-1)^n+4)+A198242((-1)^n+4)+A021007(n+1)`
-/

namespace A021005.P11103646010667217618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198242 ((-1) ^ n + 4).toNat + (A198242 ((-1) ^ n + 4).toNat + A021007 (n + 1))

end

end A021005.P11103646010667217618

/-! ## A021005.P8960059199065460443

`A209615(8*n+2)+A209615(8*n+2)+A021007(n+1)`
-/

namespace A021005.P8960059199065460443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (8 * n + 2) + (A209615 (8 * n + 2) + A021007 (n + 1))

end

end A021005.P8960059199065460443

/-! ## A021005.P9295141889592415330

`A327276(A001097(n+1))+A021007(n+1)`
-/

namespace A021005.P9295141889592415330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (A001097 (n + 1)).toNat + A021007 (n + 1)

end

end A021005.P9295141889592415330

/-! ## A021005.P10980224184017922467

`A327276(A001359(n+1))+A021007(n+1)`
-/

namespace A021005.P10980224184017922467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (A001359 (n + 1)).toNat + A021007 (n + 1)

end

end A021005.P10980224184017922467

/-! ## A021005.P3909065804422762419

`A008683(A020484(n))+A000010(A021007(n+1))`
-/

namespace A021005.P3909065804422762419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + A000010 (A021007 (n + 1)).toNat

end

end A021005.P3909065804422762419

/-! ## A021005.P10565341321204492180

`A008683(A007821(n+1))+A000010(A021007(n+1))`
-/

namespace A021005.P10565341321204492180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007821 (n + 1)).toNat + A000010 (A021007 (n + 1)).toNat

end

end A021005.P10565341321204492180

/-! ## A021005.P10725703892407829570

`A348952(A014663(n+1))+A000010(A021007(n+1))`
-/

namespace A021005.P10725703892407829570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348952 (A014663 (n + 1)).toNat + A000010 (A021007 (n + 1)).toNat

end

end A021005.P10725703892407829570

/-!
# A021006: Pisot sequence P(4,11), a(0)=4, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1). Evidently satisfies a(n) = 2*a(n-1)+2*a(n-2).

The programs for A021006, the canonical program `A021006.P11131082373719806823` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021006 has offset 0).

The definition of A021006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021006.P11131082373719806823

`sqrt(3)/24*((1+sqrt(3))^(n+4)-(1-sqrt(3))^(n+4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021006

/-- `sqrt(3)/24*((1+sqrt(3))^(n+4)-(1-sqrt(3))^(n+4))` -/
def P11131082373719806823.Spec : Prop :=
  ∀ n, P11131082373719806823.a n = (A021006 n : ℝ)

end A021006

/-! ## A021006.P4681057287958752331

`ogf((4+3x)/(1-2x-2x^2))`
-/

namespace A021006.P4681057287958752331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, -2, -2] n

end

end A021006.P4681057287958752331

namespace A021006

/-- `ogf((4+3x)/(1-2x-2x^2))` -/
def P4681057287958752331.Spec : Prop :=
  ∀ n, P4681057287958752331.a n = A021006 n

end A021006

/-! ## A021006.P7063503867821189309

`round((sqrt(3)+1)*a(n-1))` with `a(0)=4`
-/

namespace A021006.P7063503867821189309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ))

end

end A021006.P7063503867821189309

namespace A021006

/-- `round((sqrt(3)+1)*a(n-1))` -/
def P7063503867821189309.Spec : Prop :=
  ∀ n, P7063503867821189309.a n = A021006 n

end A021006

/-! ## A021006.P1975744336425561041

`Δ[ceil((sqrt(3)+1)*a(n-1))]` with `a(0)=2`
-/

namespace A021006.P1975744336425561041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021006.P1975744336425561041

namespace A021006

/-- `Δ[ceil((sqrt(3)+1)*a(n-1))]` -/
def P1975744336425561041.Spec : Prop :=
  ∀ n, P1975744336425561041.a n = A021006 n

end A021006

/-! ## A021006.P3196480402962443101

`2*a(n-1)+2*a(n-2)` with `a(0)=4, a(1)=11`
-/

namespace A021006.P3196480402962443101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 11] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A021006.P3196480402962443101

namespace A021006

/-- `2*a(n-1)+2*a(n-2)` -/
def P3196480402962443101.Spec : Prop :=
  ∀ n, (P3196480402962443101.a n : ℤ) = A021006 n

end A021006

/-! ## A021006.P17481967451862024351

`A028859(n+2)/2`
-/

namespace A021006.P17481967451862024351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028859 (n + 2) : ℚ) / 2

end

end A021006.P17481967451862024351

namespace A021006

/-- `A028859(n+2)/2` -/
def P17481967451862024351.Spec : Prop :=
  ∀ n, P17481967451862024351.a n = (A021006 n : ℚ)

end A021006

/-! ## A021006.P5879614411936735127

`A155020(n+3)/2`
-/

namespace A021006.P5879614411936735127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155020 (n + 3) : ℚ) / 2

end

end A021006.P5879614411936735127

namespace A021006

/-- `A155020(n+3)/2` -/
def P5879614411936735127.Spec : Prop :=
  ∀ n, P5879614411936735127.a n = (A021006 n : ℚ)

end A021006

/-! ## A021006.P4363733550040958136

`(A005666(n+2)+1)/2`
-/

namespace A021006.P4363733550040958136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005666 (n + 2) + 1 : ℚ) / 2

end

end A021006.P4363733550040958136

namespace A021006

/-- `(A005666(n+2)+1)/2` -/
def P4363733550040958136.Spec : Prop :=
  ∀ n, P4363733550040958136.a n = (A021006 n : ℚ)

end A021006

/-! ## A021006.P4731682509388192957

`A268093(n+2)+2^n`
-/

namespace A021006.P4731682509388192957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268093 (n + 2) + (2 ^ n : ℤ)

end

end A021006.P4731682509388192957

namespace A021006

/-- `A268093(n+2)+2^n` -/
def P4731682509388192957.Spec : Prop :=
  ∀ n, P4731682509388192957.a n = A021006 n

end A021006

/-! ## A021006.P10877494753055467988

`A162559(n)+A116556(n)`
-/

namespace A021006.P10877494753055467988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162559 n + A116556 n

end

end A021006.P10877494753055467988

namespace A021006

/-- `A162559(n)+A116556(n)` -/
def P10877494753055467988.Spec : Prop :=
  ∀ n, P10877494753055467988.a n = A021006 n

end A021006

/-! ## A021006.P6137579413275528126

`Δ[A077846(n)+A028859(n)]`
-/

namespace A021006.P6137579413275528126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 n + A028859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021006.P6137579413275528126

namespace A021006

/-- `Δ[A077846(n)+A028859(n)]` -/
def P6137579413275528126.Spec : Prop :=
  ∀ n, P6137579413275528126.a n = A021006 n

end A021006

/-! ## A021006.P7301207210615373671

`A028859(n+1)+A028859(n)`
-/

namespace A021006.P7301207210615373671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) + A028859 n

end

end A021006.P7301207210615373671

namespace A021006

/-- `A028859(n+1)+A028859(n)` -/
def P7301207210615373671.Spec : Prop :=
  ∀ n, P7301207210615373671.a n = A021006 n

end A021006

/-! ## A021006.P14108588352145932877

`A077846(n+1)+A057960(n)`
-/

namespace A021006.P14108588352145932877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 (n + 1) + A057960 n

end

end A021006.P14108588352145932877

namespace A021006

/-- `A077846(n+1)+A057960(n)` -/
def P14108588352145932877.Spec : Prop :=
  ∀ n, P14108588352145932877.a n = A021006 n

end A021006

/-! ## A021006.P5096118191254266738

`A116556(n+1)+A083337(n)`
-/

namespace A021006.P5096118191254266738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116556 (n + 1) + A083337 n

end

end A021006.P5096118191254266738

namespace A021006

/-- `A116556(n+1)+A083337(n)` -/
def P5096118191254266738.Spec : Prop :=
  ∀ n, P5096118191254266738.a n = A021006 n

end A021006

/-! ## A021006.P7963100220680463384

`A026150(n+2)+A002605(n)`
-/

namespace A021006.P7963100220680463384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 2) + A002605 n

end

end A021006.P7963100220680463384

namespace A021006

/-- `A026150(n+2)+A002605(n)` -/
def P7963100220680463384.Spec : Prop :=
  ∀ n, P7963100220680463384.a n = A021006 n

end A021006

/-! ## A021006.P1350699329707518859

`A057960(n+2)-A057960(n)`
-/

namespace A021006.P1350699329707518859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (n + 2) - A057960 n

end

end A021006.P1350699329707518859

namespace A021006

/-- `A057960(n+2)-A057960(n)` -/
def P1350699329707518859.Spec : Prop :=
  ∀ n, P1350699329707518859.a n = A021006 n

end A021006

/-! ## A021006.P14932845727156769496

`A152035(n+2)-A002605(n)`
-/

namespace A021006.P14932845727156769496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 (n + 2) - A002605 n

end

end A021006.P14932845727156769496

namespace A021006

/-- `A152035(n+2)-A002605(n)` -/
def P14932845727156769496.Spec : Prop :=
  ∀ n, P14932845727156769496.a n = A021006 n

end A021006

/-! ## A021006.P7713639572463663258

`A293005(n+2)-A293005(n)`
-/

namespace A021006.P7713639572463663258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293005 (n + 2) - A293005 n

end

end A021006.P7713639572463663258

namespace A021006

/-- `A293005(n+2)-A293005(n)` -/
def P7713639572463663258.Spec : Prop :=
  ∀ n, P7713639572463663258.a n = A021006 n

end A021006

/-! ## A021006.P5411366579919899577

`A293007(n+3)-A002605(n)`
-/

namespace A021006.P5411366579919899577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 3) - A002605 n

end

end A021006.P5411366579919899577

namespace A021006

/-- `A293007(n+3)-A002605(n)` -/
def P5411366579919899577.Spec : Prop :=
  ∀ n, P5411366579919899577.a n = A021006 n

end A021006

/-! ## A021006.P18363482313639403029

`Δ[A057960(n+1)+A057960(n)]`
-/

namespace A021006.P18363482313639403029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (n + 1) + A057960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021006.P18363482313639403029

namespace A021006

/-- `Δ[A057960(n+1)+A057960(n)]` -/
def P18363482313639403029.Spec : Prop :=
  ∀ n, P18363482313639403029.a n = A021006 n

end A021006

/-!
# A021007: Let q_k = p*(p+2) be product of k-th pair of twin primes; sequence gives values of p+2 such that (q_k)^2 > q_{k-i}*q_{k+i} for all 1 <= i <= k-1.

The programs for A021007, there is no canonical definition to state claims against.
-/

/-! ## A021007.P15593966604942804347

`A021005(n+1)+2`
-/

namespace A021007.P15593966604942804347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021005 (n + 1) + 2

end

end A021007.P15593966604942804347

/-! ## A021007.P14482819376856240233

`A007429(A021005(n+1))`
-/

namespace A021007.P14482819376856240233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A021005 (n + 1)).toNat

end

end A021007.P14482819376856240233

/-! ## A021007.P1688288198081059366

`A006512(eq[A045843(n), A308976(n)])`
-/

namespace A021007.P1688288198081059366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A021007.P1688288198081059366

/-! ## A021007.P9041313189781754004

`A006512(A145569(n)+A032555(n+1))`
-/

namespace A021007.P9041313189781754004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A145569 n + A032555 (n + 1)).toNat

end

end A021007.P9041313189781754004

/-! ## A021007.P6980502352403311546

`A006512(A145569(n)+A078213(n+1))`
-/

namespace A021007.P6980502352403311546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A145569 n + A078213 (n + 1)).toNat

end

end A021007.P6980502352403311546

/-!
# A021008: Pisot sequence P(5,11), a(0)=5, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1).

The programs for A021008, the canonical program `A021008.P12860446418669897852` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021008 has offset 0).

The definition of A021008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021008.P12860446418669897852

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=5, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021008

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P12860446418669897852.Spec : Prop :=
  ∀ n, P12860446418669897852.a n = A021008 n

theorem P12860446418669897852.correct : P12860446418669897852.Spec := by
  intro n
  simp only [A021008]

end A021008

/-! ## A021008.P6054638551351878986

`ogf((5-4x+x^2+2x^3)/(1-3x+2x^2-x^4))`
-/

namespace A021008.P6054638551351878986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, 1, 2] [1, -3, 2, 0, -1] n

end

end A021008.P6054638551351878986

namespace A021008

/-- `ogf((5-4x+x^2+2x^3)/(1-3x+2x^2-x^4))` -/
def P6054638551351878986.Spec : Prop :=
  ∀ n, P6054638551351878986.a n = A021008 n

end A021008

/-! ## A021008.P7976167390537893879

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=11`
-/

namespace A021008.P7976167390537893879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A021008.P7976167390537893879

namespace A021008

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P7976167390537893879.Spec : Prop :=
  ∀ n, P7976167390537893879.a n = A021008 n

end A021008

/-! ## A021008.P3126303269617552874

`3*a(n-1)-2*a(n-2)+a(n-4)` with `a(0)=5, a(1)=11, a(2)=24, a(3)=52`
-/

namespace A021008.P3126303269617552874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 11, 24, 52] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 4)

end

end A021008.P3126303269617552874

namespace A021008

/-- `3*a(n-1)-2*a(n-2)+a(n-4)` -/
def P3126303269617552874.Spec : Prop :=
  ∀ n, P3126303269617552874.a n = A021008 n

end A021008

/-! ## A021008.P5331528501899268186

`Δ[A129891(n+2)]`
-/

namespace A021008.P5331528501899268186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021008.P5331528501899268186

namespace A021008

/-- `Δ[A129891(n+2)]` -/
def P5331528501899268186.Spec : Prop :=
  ∀ n, P5331528501899268186.a n = A021008 n

end A021008

/-! ## A021008.P7692352284658778943

`Δ[record[A129891(A084964(n))]]`
-/

namespace A021008.P7692352284658778943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129891 (A084964 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021008.P7692352284658778943

namespace A021008

/-- `Δ[record[A129891(A084964(n))]]` -/
def P7692352284658778943.Spec : Prop :=
  ∀ n, P7692352284658778943.a n = A021008 n

end A021008

/-! ## A021008.P5240714305960176205

`A129891(n+3)-A129891(n+2)`
-/

namespace A021008.P5240714305960176205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129891 (n + 3) - A129891 (n + 2)

end

end A021008.P5240714305960176205

namespace A021008

/-- `A129891(n+3)-A129891(n+2)` -/
def P5240714305960176205.Spec : Prop :=
  ∀ n, P5240714305960176205.a n = A021008 n

end A021008

/-!
# A021009: Triangle of coefficients of Laguerre polynomials n!*L_n(x) (rising powers of x).

The programs for A021009, the canonical program `A021009.P6799404492599357482` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021009 has offset 0).

The definition of A021009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021009.P6799404492599357482

`(row(n)+col(n))*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021009

/-- `(row(n)+col(n))*T(n-1,k)-T(n-1,k-1)` -/
def P6799404492599357482.Spec : Prop :=
  ∀ n, P6799404492599357482.a n = A021009 n

theorem P6799404492599357482.correct : P6799404492599357482.Spec := by
  intro n
  simp only [A021009]

end A021009

/-! ## A021009.P18375195292713475982

`(2*row(n)-1)*T(n-1,k)-T(n-1,k-1)-(row(n)-1)²*T(n-2,k)` with `a(0)=1`
-/

namespace A021009.P18375195292713475982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triRow n : ℤ) - 1) ^ 2 * SequenceMachineLib.triUp2 a n

end

end A021009.P18375195292713475982

namespace A021009

/-- `(2*row(n)-1)*T(n-1,k)-T(n-1,k-1)-(row(n)-1)²*T(n-2,k)` -/
def P18375195292713475982.Spec : Prop :=
  ∀ n, P18375195292713475982.a n = A021009 n

end A021009

/-! ## A021009.P15411990914445190130

`(-1)^col(n)*row(n)!*C(row(n), col(n))/col(n)!`
-/

namespace A021009.P15411990914445190130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ SequenceMachineLib.triCol n * (Nat.factorial (SequenceMachineLib.triRow n) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A021009.P15411990914445190130

namespace A021009

/-- `(-1)^col(n)*row(n)!*C(row(n), col(n))/col(n)!` -/
def P15411990914445190130.Spec : Prop :=
  ∀ n, P15411990914445190130.a n = (A021009 n : ℚ)

end A021009

/-! ## A021009.P8531484928274081809

`A094587(n)*A130595(A061579(n))`
-/

namespace A021009.P8531484928274081809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A130595 (A061579 n).toNat

end

end A021009.P8531484928274081809

namespace A021009

/-- `A094587(n)*A130595(A061579(n))` -/
def P8531484928274081809.Spec : Prop :=
  ∀ n, P8531484928274081809.a n = A021009 n

end A021009

/-! ## A021009.P4861339710825292152

`A021010(∑[char[∑[n]]]²-(n+1))`
-/

namespace A021009.P4861339710825292152
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A021009.P4861339710825292152

namespace A021009

/-- `A021010(∑[char[∑[n]]]²-(n+1))` -/
def P4861339710825292152.Spec : Prop :=
  ∀ n, P4861339710825292152.a n = A021009 n

end A021009

/-! ## A021009.P4607601412475513609

`or(A000007(n), A021010(A061579(n)))`
-/

namespace A021009.P4607601412475513609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A021010 (A061579 n).toNat)

end

end A021009.P4607601412475513609

namespace A021009

/-- `or(A000007(n), A021010(A061579(n)))` -/
def P4607601412475513609.Spec : Prop :=
  ∀ n, P4607601412475513609.a n = A021009 n

end A021009

/-! ## A021009.P1901964843436702370

`A021012(n)/A233543(n)`
-/

namespace A021009.P1901964843436702370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021012 n : ℚ) / (A233543 n : ℚ)

end

end A021009.P1901964843436702370

namespace A021009

/-- `A021012(n)/A233543(n)` -/
def P1901964843436702370.Spec : Prop :=
  ∀ n, P1901964843436702370.a n = (A021009 n : ℚ)

end A021009

/-! ## A021009.P4556112358623817861

`A021012(n)/A021012(A112367(n))`
-/

namespace A021009.P4556112358623817861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021012 n : ℚ) / (A021012 (A112367 n).toNat : ℚ)

end

end A021009.P4556112358623817861

namespace A021009

/-- `A021012(n)/A021012(A112367(n))` -/
def P4556112358623817861.Spec : Prop :=
  ∀ n, P4556112358623817861.a n = (A021009 n : ℚ)

end A021009

/-! ## A021009.P6846103938229017836

`A007318(n)/A008279(n)*A021012(n)`
-/

namespace A021009.P6846103938229017836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A008279 n : ℚ) * (A021012 n : ℚ)

end

end A021009.P6846103938229017836

namespace A021009

/-- `A007318(n)/A008279(n)*A021012(n)` -/
def P6846103938229017836.Spec : Prop :=
  ∀ n, P6846103938229017836.a n = (A021009 n : ℚ)

end A021009

/-! ## A021009.P12199543508769024572

`A021010(A061579(n))%A013655(n)`
-/

namespace A021009.P12199543508769024572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A021010 (A061579 n).toNat) (A013655 n)

end

end A021009.P12199543508769024572

namespace A021009

/-- `A021010(A061579(n))%A013655(n)` -/
def P12199543508769024572.Spec : Prop :=
  ∀ n, P12199543508769024572.a n = A021009 n

end A021009

/-!
# A021010: Triangle of coefficients of Laguerre polynomials L_n(x) (powers of x in decreasing order).

The programs for A021010, the canonical program `A021010.P6199242732814726185` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021010 has offset 0).

The definition of A021010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021010.P6199242732814726185

`(-1)^(row(n)-col(n))*col(n)!*C(row(n), col(n))²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021010

/-- `(-1)^(row(n)-col(n))*col(n)!*C(row(n), col(n))²` -/
def P6199242732814726185.Spec : Prop :=
  ∀ n, P6199242732814726185.a n = (A021010 n : ℚ)

end A021010

/-! ## A021010.P4626545497147415232

`A008279(n)*A130595(n)`
-/

namespace A021010.P4626545497147415232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A130595 n

end

end A021010.P4626545497147415232

namespace A021010

/-- `A008279(n)*A130595(n)` -/
def P4626545497147415232.Spec : Prop :=
  ∀ n, P4626545497147415232.a n = A021010 n

end A021010

/-! ## A021010.P15002614883773291170

`A097807(n)*A144084(n)`
-/

namespace A021010.P15002614883773291170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A144084 n

end

end A021010.P15002614883773291170

namespace A021010

/-- `A097807(n)*A144084(n)` -/
def P15002614883773291170.Spec : Prop :=
  ∀ n, P15002614883773291170.a n = A021010 n

end A021010

/-! ## A021010.P12547859399276439940

`A094587(A061579(n))*A130595(n)`
-/

namespace A021010.P12547859399276439940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A130595 n

end

end A021010.P12547859399276439940

namespace A021010

/-- `A094587(A061579(n))*A130595(n)` -/
def P12547859399276439940.Spec : Prop :=
  ∀ n, P12547859399276439940.a n = A021010 n

end A021010

/-! ## A021010.P12308339694138031952

`A021009(A061579(n))`
-/

namespace A021010.P12308339694138031952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A061579 n).toNat

end

end A021010.P12308339694138031952

namespace A021010

/-- `A021009(A061579(n))` -/
def P12308339694138031952.Spec : Prop :=
  ∀ n, P12308339694138031952.a n = A021010 n

end A021010

/-! ## A021010.P8028627429975832616

`A021009(A114327(n)+n)`
-/

namespace A021010.P8028627429975832616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A114327 n + (n : ℤ)).toNat

end

end A021010.P8028627429975832616

namespace A021010

/-- `A021009(A114327(n)+n)` -/
def P8028627429975832616.Spec : Prop :=
  ∀ n, P8028627429975832616.a n = A021010 n

end A021010

/-! ## A021010.P3169505530858499413

`A021009(A038722(n+1)-1)`
-/

namespace A021010.P3169505530858499413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A038722 (n + 1) - 1).toNat

end

end A021010.P3169505530858499413

namespace A021010

/-- `A021009(A038722(n+1)-1)` -/
def P3169505530858499413.Spec : Prop :=
  ∀ n, P3169505530858499413.a n = A021010 n

end A021010

/-!
# A021011: Pisot sequence P(6,11), a(0)=6, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1).

The programs for A021011, the canonical program `A021011.P8464783257696250127` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021011 has offset 0).

The definition of A021011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021011.P8464783257696250127

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=6, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021011

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P8464783257696250127.Spec : Prop :=
  ∀ n, P8464783257696250127.a n = A021011 n

theorem P8464783257696250127.correct : P8464783257696250127.Spec := by
  intro n
  simp only [A021011]

end A021011

/-! ## A021011.P2071344776039442917

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=11`
-/

namespace A021011.P2071344776039442917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A021011.P2071344776039442917

namespace A021011

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P2071344776039442917.Spec : Prop :=
  ∀ n, P2071344776039442917.a n = A021011 n

end A021011

/-! ## A021011.P18425545543681673713

`round(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=11`
-/

namespace A021011.P18425545543681673713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A021011.P18425545543681673713

namespace A021011

/-- `round(a(n-1)²/a(n-2))` -/
def P18425545543681673713.Spec : Prop :=
  ∀ n, P18425545543681673713.a n = A021011 n

end A021011

/-!
# A021012: Triangle of coefficients in expansion of x^n in terms of Laguerre polynomials L_n(x).

The programs for A021012, the canonical program `A021012.P5772481309378360015` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021012 has offset 0).

The definition of A021012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021012.P5772481309378360015

`(-1)^col(n)*row(n)!*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021012

/-- `(-1)^col(n)*row(n)!*C(row(n), col(n))` -/
def P5772481309378360015.Spec : Prop :=
  ∀ n, P5772481309378360015.a n = A021012 n

theorem P5772481309378360015.correct : P5772481309378360015.Spec := by
  intro n
  simp only [A021012]

end A021012

/-! ## A021012.P205359360554900888

`row(n)*((row(n)-(col(n)+1))*T(n-1,k-1)+(col(n)+1)*T(n-1,k))` with `a(0)=1`
-/

namespace A021012.P205359360554900888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n + 1 : ℤ) * SequenceMachineLib.triUp a n)

end

end A021012.P205359360554900888

namespace A021012

/-- `row(n)*((row(n)-(col(n)+1))*T(n-1,k-1)+(col(n)+1)*T(n-1,k))` -/
def P205359360554900888.Spec : Prop :=
  ∀ n, P205359360554900888.a n = A021012 n

end A021012

/-! ## A021012.P1490590722158246274

`A021009(n)*A233543(n)`
-/

namespace A021012.P1490590722158246274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n * A233543 n

end

end A021012.P1490590722158246274

namespace A021012

/-- `A021009(n)*A233543(n)` -/
def P1490590722158246274.Spec : Prop :=
  ∀ n, P1490590722158246274.a n = A021012 n

end A021012

/-! ## A021012.P12905429832940833069

`A002262(n)!*A021009(n)`
-/

namespace A021012.P12905429832940833069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A021009 n

end

end A021012.P12905429832940833069

namespace A021012

/-- `A002262(n)!*A021009(n)` -/
def P12905429832940833069.Spec : Prop :=
  ∀ n, P12905429832940833069.a n = A021012 n

end A021012

/-! ## A021012.P13268961349389113280

`A144328(n+1)!*A021009(n)`
-/

namespace A021012.P13268961349389113280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A021009 n

end

end A021012.P13268961349389113280

namespace A021012

/-- `A144328(n+1)!*A021009(n)` -/
def P13268961349389113280.Spec : Prop :=
  ∀ n, P13268961349389113280.a n = A021012 n

end A021012

/-! ## A021012.P6695591694219017045

`A021009(n)*A021009(A112367(n))`
-/

namespace A021012.P6695591694219017045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n * A021009 (A112367 n).toNat

end

end A021012.P6695591694219017045

namespace A021012

/-- `A021009(n)*A021009(A112367(n))` -/
def P6695591694219017045.Spec : Prop :=
  ∀ n, P6695591694219017045.a n = A021012 n

end A021012

/-! ## A021012.P18247172489028748175

`A130595(n)*A133942(A003056(n))`
-/

namespace A021012.P18247172489028748175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A133942 (A003056 n).toNat

end

end A021012.P18247172489028748175

namespace A021012

/-- `A130595(n)*A133942(A003056(n))` -/
def P18247172489028748175.Spec : Prop :=
  ∀ n, P18247172489028748175.a n = A021012 n

end A021012

/-! ## A021012.P3443531370861949066

`A033999(A294317(n))*A196347(n)`
-/

namespace A021012.P3443531370861949066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A196347 n

end

end A021012.P3443531370861949066

namespace A021012

/-- `A033999(A294317(n))*A196347(n)` -/
def P3443531370861949066.Spec : Prop :=
  ∀ n, P3443531370861949066.a n = A021012 n

end A021012

/-! ## A021012.P6506181011661137041

`A002262(n)!*A021010(A061579(n))`
-/

namespace A021012.P6506181011661137041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A021010 (A061579 n).toNat

end

end A021012.P6506181011661137041

namespace A021012

/-- `A002262(n)!*A021010(A061579(n))` -/
def P6506181011661137041.Spec : Prop :=
  ∀ n, P6506181011661137041.a n = A021012 n

end A021012

/-! ## A021012.P11256222918352756399

`A003056(n)!*A130595(A061579(n))`
-/

namespace A021012.P11256222918352756399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003056 n).toNat : ℤ) * A130595 (A061579 n).toNat

end

end A021012.P11256222918352756399

namespace A021012

/-- `A003056(n)!*A130595(A061579(n))` -/
def P11256222918352756399.Spec : Prop :=
  ∀ n, P11256222918352756399.a n = A021012 n

end A021012

/-! ## A021012.P15732306738185201843

`A008279(n)/A007318(n)*A021009(n)`
-/

namespace A021012.P15732306738185201843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A021009 n : ℚ)

end

end A021012.P15732306738185201843

namespace A021012

/-- `A008279(n)/A007318(n)*A021009(n)` -/
def P15732306738185201843.Spec : Prop :=
  ∀ n, P15732306738185201843.a n = (A021012 n : ℚ)

end A021012

/-! ## A021012.P12663064319864820196

`A021009(n)/A059110(n)*A059114(n)`
-/

namespace A021012.P12663064319864820196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021009 n : ℚ) / (A059110 n : ℚ) * (A059114 n : ℚ)

end

end A021012.P12663064319864820196

namespace A021012

/-- `A021009(n)/A059110(n)*A059114(n)` -/
def P12663064319864820196.Spec : Prop :=
  ∀ n, P12663064319864820196.a n = (A021012 n : ℚ)

end A021012

/-! ## A021012.P3182590519486398269

`A008279(n)/A135278(n)*A066667(n)`
-/

namespace A021012.P3182590519486398269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A135278 n : ℚ) * (A066667 n : ℚ)

end

end A021012.P3182590519486398269

namespace A021012

/-- `A008279(n)/A135278(n)*A066667(n)` -/
def P3182590519486398269.Spec : Prop :=
  ∀ n, P3182590519486398269.a n = (A021012 n : ℚ)

end A021012

/-! ## A021012.P11097321960923350408

`A021009(n)*A130675(A059268(n))`
-/

namespace A021012.P11097321960923350408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n * A130675 (A059268 n).toNat

end

end A021012.P11097321960923350408

namespace A021012

/-- `A021009(n)*A130675(A059268(n))` -/
def P11097321960923350408.Spec : Prop :=
  ∀ n, P11097321960923350408.a n = A021012 n

end A021012

/-!
# A021013: Pisot sequence P(7,11), a(0)=7, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1). Agrees with A021014 only for n <= 20.

The programs for A021013, the canonical program `A021013.P11389734019976648562` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021013 has offset 0).

The definition of A021013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021013.P11389734019976648562

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=7, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021013

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P11389734019976648562.Spec : Prop :=
  ∀ n, P11389734019976648562.a n = A021013 n

theorem P11389734019976648562.correct : P11389734019976648562.Spec := by
  intro n
  simp only [A021013]

end A021013

/-! ## A021013.P17927329316658565721

`round(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=11`
-/

namespace A021013.P17927329316658565721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ))

end

end A021013.P17927329316658565721

namespace A021013

/-- `round(a(n-1)²/a(n-2))` -/
def P17927329316658565721.Spec : Prop :=
  ∀ n, P17927329316658565721.a n = A021013 n

theorem P17927329316658565721.correct : P17927329316658565721.Spec := by
  intro n
  simp only [A021013, Nat.add_sub_cancel, A021013.P17927329316658565721.a, A021013.P11389734019976648562.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A021013

/-! ## A021013.P5622336508435251239

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=7, a(1)=11`
-/

namespace A021013.P5622336508435251239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A021013.P5622336508435251239

namespace A021013

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P5622336508435251239.Spec : Prop :=
  ∀ n, P5622336508435251239.a n = A021013 n

end A021013

/-! ## A021013.P14719153661219464362

`A331299(A021014(n))`
-/

namespace A021013.P14719153661219464362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331299 (A021014 n).toNat

end

end A021013.P14719153661219464362

namespace A021013

/-- `A331299(A021014(n))` -/
def P14719153661219464362.Spec : Prop :=
  ∀ n, P14719153661219464362.a n = A021013 n

end A021013

/-! ## A021013.P17745848002965023068

`A014682(2*A021014(n))`
-/

namespace A021013.P17745848002965023068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A021014 n).toNat

end

end A021013.P17745848002965023068

namespace A021013

/-- `A014682(2*A021014(n))` -/
def P17745848002965023068.Spec : Prop :=
  ∀ n, P17745848002965023068.a n = A021013 n

end A021013

/-!
# A021014: a(n)=a(n-1)+a(n-2)-a(n-4)+a(n-5).

The programs for A021014, the canonical program `A021014.P7829936620406155580` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021014 has offset 0).

The definition of A021014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)+a(n-5)` (program `A021014.P7829936620406155580`, by `A021014.P7829936620406155580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021014.P7829936620406155580

`a(n-1)+a(n-2)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=11, a(2)=17, a(3)=26, a(4)=40`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021014

/-- `a(n-1)+a(n-2)-a(n-4)+a(n-5)` -/
def P7829936620406155580.Spec : Prop :=
  ∀ n, P7829936620406155580.a n = A021014 n

theorem P7829936620406155580.correct : P7829936620406155580.Spec := by
  intro n
  simp only [A021014]

end A021014

/-!
# A021016: Decimal expansion of 1/12.

The programs for A021016, the canonical program `A021016.P97965853866761326` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021016 has offset 0).

The definition of A021016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021016.P97965853866761326

`a(n-1)` with `a(0)=0, a(1)=8, a(2)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021016

/-- `a(n-1)` -/
def P97965853866761326.Spec : Prop :=
  ∀ n, (P97965853866761326.a n : ℤ) = A021016 n

theorem P97965853866761326.correct : P97965853866761326.Spec := by
  intro n
  simp only [A021016]

end A021016

/-!
# A021017: Decimal expansion of 1/13.

The programs for A021017, the canonical program `A021017.P14365785595710610474` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021017 has offset 0).

The definition of A021017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021017.P14365785595710610474

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=7, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021017

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P14365785595710610474.Spec : Prop :=
  ∀ n, P14365785595710610474.a n = A021017 n

theorem P14365785595710610474.correct : P14365785595710610474.Spec := by
  intro n
  simp only [A021017]

end A021017

/-!
# A021018: Decimal expansion of 1/14.

The programs for A021018, the canonical program `A021018.P3008986107291953147` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021018 has offset 0).

The definition of A021018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021018.P3008986107291953147

`9-a(n-3)` with `a(0)=0, a(1)=7, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021018

/-- `9-a(n-3)` -/
def P3008986107291953147.Spec : Prop :=
  ∀ n, P3008986107291953147.a n = A021018 n

theorem P3008986107291953147.correct : P3008986107291953147.Spec := by
  intro n
  simp only [A021018]

end A021018

/-!
# A021019: Decimal expansion of 1/15.

The programs for A021019, the canonical program `A021019.P1070054410786946558` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021019 has offset 0).

The definition of A021019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021019.P1070054410786946558

`a(n-1)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021019

/-- `a(n-1)` -/
def P1070054410786946558.Spec : Prop :=
  ∀ n, (P1070054410786946558.a n : ℤ) = A021019 n

theorem P1070054410786946558.correct : P1070054410786946558.Spec := by
  intro n
  simp only [A021019]

end A021019

/-!
# A021020: Decimal expansion of 1/16.

The programs for A021020, the canonical program `A021020.P12252457874779832035` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021020 has offset 0).

The definition of A021020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021020.P12252457874779832035

`a(n-1)` with `a(0)=0, a(1)=6, a(2)=2, a(3)=5, a(4)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021020

/-- `a(n-1)` -/
def P12252457874779832035.Spec : Prop :=
  ∀ n, (P12252457874779832035.a n : ℤ) = A021020 n

theorem P12252457874779832035.correct : P12252457874779832035.Spec := by
  intro n
  simp only [A021020]

end A021020

/-!
# A021021: Expansion of 1/((1-10x)(1-11x)(1-12x)).

The programs for A021021, the canonical program `A021021.P2603919770948470769` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021021 has offset 0).

The definition of A021021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021021.P2603919770948470769

`23*a(n-1)-132*a(n-2)+10^n` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021021

/-- `23*a(n-1)-132*a(n-2)+10^n` -/
def P2603919770948470769.Spec : Prop :=
  ∀ n, P2603919770948470769.a n = A021021 n

theorem P2603919770948470769.correct : P2603919770948470769.Spec := by
  intro n
  simp only [A021021]

end A021021

/-! ## A021021.P2403715013608083144

`6*12^(n+1)-11^(n+2)+5*10^(n+1)`
-/

namespace A021021.P2403715013608083144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 12 ^ (n + 1) : ℤ) - (11 ^ (n + 2) : ℤ) + (5 * 10 ^ (n + 1) : ℤ)

end

end A021021.P2403715013608083144

namespace A021021

/-- `6*12^(n+1)-11^(n+2)+5*10^(n+1)` -/
def P2403715013608083144.Spec : Prop :=
  ∀ n, P2403715013608083144.a n = A021021 n

theorem P2403715013608083144.correct : P2403715013608083144.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A021021, Nat.add_sub_cancel, A021021.P2403715013608083144.a, A021021.P2603919770948470769.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A021021, Nat.add_sub_cancel, A021021.P2403715013608083144.a, A021021.P2603919770948470769.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A021021

/-! ## A021021.P7234909349750276697

`Δ[A016267(n)-A016265(n)]`
-/

namespace A021021.P7234909349750276697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016267 n - A016265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021021.P7234909349750276697

namespace A021021

/-- `Δ[A016267(n)-A016265(n)]` -/
def P7234909349750276697.Spec : Prop :=
  ∀ n, P7234909349750276697.a n = A021021 n

end A021021

/-! ## A021021.P1365213106740723678

`Δ[A016268(n)-A016267(n)]`
-/

namespace A021021.P1365213106740723678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016268 n - A016267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021021.P1365213106740723678

namespace A021021

/-- `Δ[A016268(n)-A016267(n)]` -/
def P1365213106740723678.Spec : Prop :=
  ∀ n, P1365213106740723678.a n = A021021 n

end A021021

/-! ## A021021.P5458647387462429598

`A016197(n+2)%A016196(n+1)`
-/

namespace A021021.P5458647387462429598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016197 (n + 2)) (A016196 (n + 1))

end

end A021021.P5458647387462429598

namespace A021021

/-- `A016197(n+2)%A016196(n+1)` -/
def P5458647387462429598.Spec : Prop :=
  ∀ n, P5458647387462429598.a n = A021021 n

end A021021

/-! ## A021021.P6881832418907332327

`Δ[A016125(n+1)-A016123(n+1)-A016267(n)]`
-/

namespace A021021.P6881832418907332327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 (n + 1) - A016123 (n + 1) - A016267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021021.P6881832418907332327

namespace A021021

/-- `Δ[A016125(n+1)-A016123(n+1)-A016267(n)]` -/
def P6881832418907332327.Spec : Prop :=
  ∀ n, P6881832418907332327.a n = A021021 n

end A021021

/-!
# A021022: Decimal expansion of 1/18.

The programs for A021022, the canonical program `A021022.P1666065805149858434` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021022 has offset 0).

The definition of A021022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021022.P1666065805149858434

`a(n-1)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021022

/-- `a(n-1)` -/
def P1666065805149858434.Spec : Prop :=
  ∀ n, (P1666065805149858434.a n : ℤ) = A021022 n

theorem P1666065805149858434.correct : P1666065805149858434.Spec := by
  intro n
  simp only [A021022]

end A021022

/-!
# A021023: Decimal expansion of 1/19.

The programs for A021023, there is no canonical definition to state claims against.
-/

/-! ## A021023.P16554021870707775586

`A021099(n+2)`
-/

namespace A021023.P16554021870707775586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021099 (n + 2)

end

end A021023.P16554021870707775586

/-!
# A021024: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-3*x)*(1-5*x)).

The programs for A021024, the canonical program `A021024.P4854971225598141455` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021024 has offset 0).

The definition of A021024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-11x+41x^2-61x^3+30x^4))` (program `A021024.P4854971225598141455`, by `A021024.P4854971225598141455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021024.P4854971225598141455

`ogf(1/(1-11x+41x^2-61x^3+30x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021024

/-- `ogf(1/(1-11x+41x^2-61x^3+30x^4))` -/
def P4854971225598141455.Spec : Prop :=
  ∀ n, P4854971225598141455.a n = A021024 n

theorem P4854971225598141455.correct : P4854971225598141455.Spec := by
  intro n
  simp only [A021024]

end A021024

/-! ## A021024.P12764080285346880050

`11*a(n-1)-41*a(n-2)+61*a(n-3)-30*a(n-4)` with `a(0)=1, a(1)=11, a(2)=80, a(3)=490`
-/

namespace A021024.P12764080285346880050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 80, 490] fun n a =>
  11 * a (n - 1) - 41 * a (n - 2) + 61 * a (n - 3) - 30 * a (n - 4)

end

end A021024.P12764080285346880050

namespace A021024

/-- `11*a(n-1)-41*a(n-2)+61*a(n-3)-30*a(n-4)` -/
def P12764080285346880050.Spec : Prop :=
  ∀ n, P12764080285346880050.a n = A021024 n

end A021024

/-! ## A021024.P1052387718911517788

`(5^(n+3)-6*3^(n+3)+8*2^(n+3)-3)/24`
-/

namespace A021024.P1052387718911517788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 3) : ℤ) - (6 * 3 ^ (n + 3) : ℤ) + (8 * 2 ^ (n + 3) : ℤ) - 3 : ℚ) / 24

end

end A021024.P1052387718911517788

namespace A021024

/-- `(5^(n+3)-6*3^(n+3)+8*2^(n+3)-3)/24` -/
def P1052387718911517788.Spec : Prop :=
  ∀ n, P1052387718911517788.a n = (A021024 n : ℚ)

end A021024

/-! ## A021024.P3199853802843741326

`∑[A016273(n)]`
-/

namespace A021024.P3199853802843741326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021024.P3199853802843741326

namespace A021024

/-- `∑[A016273(n)]` -/
def P3199853802843741326.Spec : Prop :=
  ∀ n, P3199853802843741326.a n = A021024 n

end A021024

/-! ## A021024.P6283817167233965212

`a(n-1)+A016209(n)+a(n-1)` with `a(0)=1`
-/

namespace A021024.P6283817167233965212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016209 n + a (n - 1))

end

end A021024.P6283817167233965212

namespace A021024

/-- `a(n-1)+A016209(n)+a(n-1)` -/
def P6283817167233965212.Spec : Prop :=
  ∀ n, P6283817167233965212.a n = A021024 n

end A021024

/-! ## A021024.P14116749043168558604

`A056272(n+4)-A007051(n+3)`
-/

namespace A021024.P14116749043168558604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 4) - A007051 (n + 3)

end

end A021024.P14116749043168558604

namespace A021024

/-- `A056272(n+4)-A007051(n+3)` -/
def P14116749043168558604.Spec : Prop :=
  ∀ n, P14116749043168558604.a n = A021024 n

end A021024

/-! ## A021024.P14148586657323689419

`A056272(n+4)-A124302(n+4)`
-/

namespace A021024.P14148586657323689419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 4) - A124302 (n + 4)

end

end A021024.P14148586657323689419

namespace A021024

/-- `A056272(n+4)-A124302(n+4)` -/
def P14148586657323689419.Spec : Prop :=
  ∀ n, P14148586657323689419.a n = A021024 n

end A021024

/-! ## A021024.P11136847537514471429

`∑[A016209(n)/A000079(n)]*A000079(n)`
-/

namespace A021024.P11136847537514471429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016209 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A021024.P11136847537514471429

namespace A021024

/-- `∑[A016209(n)/A000079(n)]*A000079(n)` -/
def P11136847537514471429.Spec : Prop :=
  ∀ n, P11136847537514471429.a n = (A021024 n : ℚ)

end A021024

/-! ## A021024.P5536523458646552477

`∑[A016209(n)/A007283(n)]*A007283(n)`
-/

namespace A021024.P5536523458646552477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016209 n : ℚ) / (A007283 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007283 n : ℚ)

end

end A021024.P5536523458646552477

namespace A021024

/-- `∑[A016209(n)/A007283(n)]*A007283(n)` -/
def P5536523458646552477.Spec : Prop :=
  ∀ n, P5536523458646552477.a n = (A021024 n : ℚ)

end A021024

/-! ## A021024.P10424821841289335861

`∑[A016209(n)/A020714(n)]*A020714(n)`
-/

namespace A021024.P10424821841289335861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016209 n : ℚ) / (A020714 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A020714 n : ℚ)

end

end A021024.P10424821841289335861

namespace A021024

/-- `∑[A016209(n)/A020714(n)]*A020714(n)` -/
def P10424821841289335861.Spec : Prop :=
  ∀ n, P10424821841289335861.a n = (A021024 n : ℚ)

end A021024

/-! ## A021024.P5209602364954195224

`A056272(n+4)-(A000392(n+4)+A000079(n+3))`
-/

namespace A021024.P5209602364954195224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (n + 4) - (A000392 (n + 4) + A000079 (n + 3))

end

end A021024.P5209602364954195224

namespace A021024

/-- `A056272(n+4)-(A000392(n+4)+A000079(n+3))` -/
def P5209602364954195224.Spec : Prop :=
  ∀ n, P5209602364954195224.a n = A021024 n

end A021024

/-! ## A021024.P10041929190254118694

`A016209(n+1)-A016198(n+1)`
-/

namespace A021024.P10041929190254118694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 (n + 1) - A016198 (n + 1)

end

end A021024.P10041929190254118694

namespace A021024

/-- `A016209(n+1)-A016198(n+1)` -/
def P10041929190254118694.Spec : Prop :=
  ∀ n, P10041929190254118694.a n = A021024 n

end A021024

/-! ## A021024.P8066584416767912167

`∑[A019483(n)/2^n]`
-/

namespace A021024.P8066584416767912167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019483 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021024.P8066584416767912167

namespace A021024

/-- `∑[A019483(n)/2^n]` -/
def P8066584416767912167.Spec : Prop :=
  ∀ n, P8066584416767912167.a n = (A021024 n : ℚ)

end A021024

/-!
# A021025: Decimal expansion of 1/21.

The programs for A021025, the canonical program `A021025.P3670117777676950733` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021025 has offset 0).

The definition of A021025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021025.P3670117777676950733

`a(n-6)` with `a(0)=0, a(1)=4, a(2)=7, a(3)=6, a(4)=1, a(5)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021025

/-- `a(n-6)` -/
def P3670117777676950733.Spec : Prop :=
  ∀ n, (P3670117777676950733.a n : ℤ) = A021025 n

theorem P3670117777676950733.correct : P3670117777676950733.Spec := by
  intro n
  simp only [A021025]

end A021025

/-!
# A021026: Decimal expansion of 1/22.

The programs for A021026, the canonical program `A021026.P16948679890269064134` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021026 has offset 0).

The definition of A021026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021026.P16948679890269064134

`∑{d}[n, C(2, #)²]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021026

/-- `∑{d}[n, C(2, #)²]` -/
def P16948679890269064134.Spec : Prop :=
  ∀ n, (P16948679890269064134.a n : ℤ) = A021026 n

theorem P16948679890269064134.correct : P16948679890269064134.Spec := by
  intro n
  simp only [A021026]

end A021026

/-!
# A021027: Decimal expansion of 1/23.

The programs for A021027, there is no canonical definition to state claims against.
-/

/-! ## A021027.P14644556935873212038

`A021096(n+16)`
-/

namespace A021027.P14644556935873212038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021096 (n + 16)

end

end A021027.P14644556935873212038

/-!
# A021028: Decimal expansion of 1/24.

The programs for A021028, the canonical program `A021028.P13998734493025240515` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021028 has offset 0).

The definition of A021028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021028.P13998734493025240515

`a(n-1)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021028

/-- `a(n-1)` -/
def P13998734493025240515.Spec : Prop :=
  ∀ n, (P13998734493025240515.a n : ℤ) = A021028 n

theorem P13998734493025240515.correct : P13998734493025240515.Spec := by
  intro n
  simp only [A021028]

end A021028

/-!
# A021029: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-6*x)).

The programs for A021029, the canonical program `A021029.P17291718932762861534` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021029 has offset 0).

The definition of A021029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-12x+47x^2-72x^3+36x^4))` (program `A021029.P17291718932762861534`, by `A021029.P17291718932762861534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021029.P17291718932762861534

`ogf(1/(1-12x+47x^2-72x^3+36x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021029

/-- `ogf(1/(1-12x+47x^2-72x^3+36x^4))` -/
def P17291718932762861534.Spec : Prop :=
  ∀ n, P17291718932762861534.a n = A021029 n

theorem P17291718932762861534.correct : P17291718932762861534.Spec := by
  intro n
  simp only [A021029]

end A021029

/-! ## A021029.P13379751364569217078

`∑[3^n*∑[2^n]]+2*a(n-1)` with `a(0)=1`
-/

namespace A021029.P13379751364569217078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A021029.P13379751364569217078

namespace A021029

/-- `∑[3^n*∑[2^n]]+2*a(n-1)` -/
def P13379751364569217078.Spec : Prop :=
  ∀ n, (P13379751364569217078.a n : ℤ) = A021029 n

end A021029

/-! ## A021029.P8832198717342852790

`∑[A001240(n+1)]`
-/

namespace A021029.P8832198717342852790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021029.P8832198717342852790

namespace A021029

/-- `∑[A001240(n+1)]` -/
def P8832198717342852790.Spec : Prop :=
  ∀ n, P8832198717342852790.a n = A021029 n

end A021029

/-! ## A021029.P10098823442752649139

`A016211(n+1)-A016200(n+1)`
-/

namespace A021029.P10098823442752649139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 (n + 1) - A016200 (n + 1)

end

end A021029.P10098823442752649139

namespace A021029

/-- `A016211(n+1)-A016200(n+1)` -/
def P10098823442752649139.Spec : Prop :=
  ∀ n, P10098823442752649139.a n = A021029 n

end A021029

/-! ## A021029.P15295518279291627236

`∑[A160869(n+1)-∑[A001047(n)]]`
-/

namespace A021029.P15295518279291627236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160869 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021029.P15295518279291627236

namespace A021029

/-- `∑[A160869(n+1)-∑[A001047(n)]]` -/
def P15295518279291627236.Spec : Prop :=
  ∀ n, P15295518279291627236.a n = A021029 n

end A021029

/-! ## A021029.P15333785503432414272

`∑[A000225(n)*A034472(n+1)+1]`
-/

namespace A021029.P15333785503432414272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A034472 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021029.P15333785503432414272

namespace A021029

/-- `∑[A000225(n)*A034472(n+1)+1]` -/
def P15333785503432414272.Spec : Prop :=
  ∀ n, P15333785503432414272.a n = A021029 n

end A021029

/-! ## A021029.P3681464281196284476

`∑[(A000244(n+1)+1)*A000225(n)+1]`
-/

namespace A021029.P3681464281196284476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 (n + 1) + 1) * A000225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021029.P3681464281196284476

namespace A021029

/-- `∑[(A000244(n+1)+1)*A000225(n)+1]` -/
def P3681464281196284476.Spec : Prop :=
  ∀ n, P3681464281196284476.a n = A021029 n

end A021029

/-! ## A021029.P6981900166030757359

`∑[Δ[A068179(n)]/10]`
-/

namespace A021029.P6981900166030757359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068179 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021029.P6981900166030757359

namespace A021029

/-- `∑[Δ[A068179(n)]/10]` -/
def P6981900166030757359.Spec : Prop :=
  ∀ n, P6981900166030757359.a n = (A021029 n : ℚ)

end A021029

/-! ## A021029.P11670229646855993664

`A025970(n)/2^n`
-/

namespace A021029.P11670229646855993664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025970 n : ℚ) / (2 ^ n : ℚ)

end

end A021029.P11670229646855993664

namespace A021029

/-- `A025970(n)/2^n` -/
def P11670229646855993664.Spec : Prop :=
  ∀ n, P11670229646855993664.a n = (A021029 n : ℚ)

end A021029

/-! ## A021029.P7636439657785132299

`∑[A019490(n)/A000079(n)]`
-/

namespace A021029.P7636439657785132299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019490 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021029.P7636439657785132299

namespace A021029

/-- `∑[A019490(n)/A000079(n)]` -/
def P7636439657785132299.Spec : Prop :=
  ∀ n, P7636439657785132299.a n = (A021029 n : ℚ)

end A021029

/-!
# A021030: Decimal expansion of 1/26.

The programs for A021030, the canonical program `A021030.P8140569591613765795` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021030 has offset 0).

The definition of A021030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021030.P8140569591613765795

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021030

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P8140569591613765795.Spec : Prop :=
  ∀ n, P8140569591613765795.a n = A021030 n

theorem P8140569591613765795.correct : P8140569591613765795.Spec := by
  intro n
  simp only [A021030]

end A021030

/-!
# A021031: Decimal expansion of 1/27.

The programs for A021031, the canonical program `A021031.P4237084574186444953` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021031 has offset 0).

The definition of A021031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021031.P4237084574186444953

`a(n-3)` with `a(0)=0, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021031

/-- `a(n-3)` -/
def P4237084574186444953.Spec : Prop :=
  ∀ n, (P4237084574186444953.a n : ℤ) = A021031 n

theorem P4237084574186444953.correct : P4237084574186444953.Spec := by
  intro n
  simp only [A021031]

end A021031

/-!
# A021032: Decimal expansion of 1/28.

The programs for A021032, the canonical program `A021032.P4787089392551912596` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021032 has offset 0).

The definition of A021032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021032.P4787089392551912596

`9-a(n-3)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7, a(4)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021032

/-- `9-a(n-3)` -/
def P4787089392551912596.Spec : Prop :=
  ∀ n, P4787089392551912596.a n = A021032 n

theorem P4787089392551912596.correct : P4787089392551912596.Spec := by
  intro n
  simp only [A021032]

end A021032

/-!
# A021033: Decimal expansion of 1/29.

The programs for A021033, there is no canonical definition to state claims against.
-/

/-! ## A021033.P16852067435768176484

`A021236(2*(n+1)+3-n)`
-/

namespace A021033.P16852067435768176484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021236 ((2 * (n + 1) : ℤ) + (3 - (n : ℤ))).toNat

end

end A021033.P16852067435768176484

/-!
# A021034: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-7*x)).

The programs for A021034, the canonical program `A021034.P13080570341910062862` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021034 has offset 0).

The definition of A021034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+53x^2-83x^3+42x^4))` (program `A021034.P13080570341910062862`, by `A021034.P13080570341910062862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021034.P13080570341910062862

`ogf(1/(1-13x+53x^2-83x^3+42x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021034

/-- `ogf(1/(1-13x+53x^2-83x^3+42x^4))` -/
def P13080570341910062862.Spec : Prop :=
  ∀ n, P13080570341910062862.a n = A021034 n

theorem P13080570341910062862.correct : P13080570341910062862.Spec := by
  intro n
  simp only [A021034]

end A021034

/-! ## A021034.P5927432798158715007

`13*a(n-1)-53*a(n-2)+83*a(n-3)-42*a(n-4)` with `a(0)=1, a(1)=13, a(2)=116, a(3)=902`
-/

namespace A021034.P5927432798158715007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 116, 902] fun n a =>
  13 * a (n - 1) - 53 * a (n - 2) + 83 * a (n - 3) - 42 * a (n - 4)

end

end A021034.P5927432798158715007

namespace A021034

/-- `13*a(n-1)-53*a(n-2)+83*a(n-3)-42*a(n-4)` -/
def P5927432798158715007.Spec : Prop :=
  ∀ n, P5927432798158715007.a n = A021034 n

end A021034

/-! ## A021034.P15820070550697015874

`(7^(n+3)-15*3^(n+3)+24*2^(n+3)-10)/120`
-/

namespace A021034.P15820070550697015874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 3) : ℤ) - (15 * 3 ^ (n + 3) : ℤ) + (24 * 2 ^ (n + 3) : ℤ) - 10 : ℚ) / 120

end

end A021034.P15820070550697015874

namespace A021034

/-- `(7^(n+3)-15*3^(n+3)+24*2^(n+3)-10)/120` -/
def P15820070550697015874.Spec : Prop :=
  ∀ n, P15820070550697015874.a n = (A021034 n : ℚ)

end A021034

/-! ## A021034.P16867192239861777063

`∑[A016276(n)]`
-/

namespace A021034.P16867192239861777063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021034.P16867192239861777063

namespace A021034

/-- `∑[A016276(n)]` -/
def P16867192239861777063.Spec : Prop :=
  ∀ n, P16867192239861777063.a n = A021034 n

end A021034

/-! ## A021034.P867694004037825777

`A016201(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021034.P867694004037825777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016201 n + 3 * a (n - 1)

end

end A021034.P867694004037825777

namespace A021034

/-- `A016201(n)+3*a(n-1)` -/
def P867694004037825777.Spec : Prop :=
  ∀ n, P867694004037825777.a n = A021034 n

end A021034

/-! ## A021034.P9318974552999933726

`a(n-1)+A016212(n)+a(n-1)` with `a(0)=1`
-/

namespace A021034.P9318974552999933726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016212 n + a (n - 1))

end

end A021034.P9318974552999933726

namespace A021034

/-- `a(n-1)+A016212(n)+a(n-1)` -/
def P9318974552999933726.Spec : Prop :=
  ∀ n, P9318974552999933726.a n = A021034 n

end A021034

/-! ## A021034.P6213251933521759277

`∑[a(n-1)+A016138(n)+a(n-1)]` with `a(0)=1`
-/

namespace A021034.P6213251933521759277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A016138 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021034.P6213251933521759277

namespace A021034

/-- `∑[a(n-1)+A016138(n)+a(n-1)]` -/
def P6213251933521759277.Spec : Prop :=
  ∀ n, P6213251933521759277.a n = A021034 n

end A021034

/-! ## A021034.P2589383000558807489

`2*A016276(n)-A016212(n)`
-/

namespace A021034.P2589383000558807489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016276 n - A016212 n

end

end A021034.P2589383000558807489

namespace A021034

/-- `2*A016276(n)-A016212(n)` -/
def P2589383000558807489.Spec : Prop :=
  ∀ n, P2589383000558807489.a n = A021034 n

end A021034

/-! ## A021034.P16586286264624839513

`2*A021079(n)-A021364(n)`
-/

namespace A021034.P16586286264624839513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021079 n - A021364 n

end

end A021034.P16586286264624839513

namespace A021034

/-- `2*A021079(n)-A021364(n)` -/
def P16586286264624839513.Spec : Prop :=
  ∀ n, P16586286264624839513.a n = A021034 n

end A021034

/-! ## A021034.P4097835232415889507

`2*A021124(n)-A025931(n)`
-/

namespace A021034.P4097835232415889507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021124 n - A025931 n

end

end A021034.P4097835232415889507

namespace A021034

/-- `2*A021124(n)-A025931(n)` -/
def P4097835232415889507.Spec : Prop :=
  ∀ n, P4097835232415889507.a n = A021034 n

end A021034

/-! ## A021034.P9798196157064495420

`A016212(n)+A016276(n)-A016201(n)`
-/

namespace A021034.P9798196157064495420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016212 n + (A016276 n - A016201 n)

end

end A021034.P9798196157064495420

namespace A021034

/-- `A016212(n)+A016276(n)-A016201(n)` -/
def P9798196157064495420.Spec : Prop :=
  ∀ n, P9798196157064495420.a n = A021034 n

end A021034

/-! ## A021034.P4392864653241582375

`A016212(n+1)-A016201(n+1)`
-/

namespace A021034.P4392864653241582375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016212 (n + 1) - A016201 (n + 1)

end

end A021034.P4392864653241582375

namespace A021034

/-- `A016212(n+1)-A016201(n+1)` -/
def P4392864653241582375.Spec : Prop :=
  ∀ n, P4392864653241582375.a n = A021034 n

end A021034

/-! ## A021034.P3685396489961381923

`A016276(n+1)-A016212(n+1)`
-/

namespace A021034.P3685396489961381923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016276 (n + 1) - A016212 (n + 1)

end

end A021034.P3685396489961381923

namespace A021034

/-- `A016276(n+1)-A016212(n+1)` -/
def P3685396489961381923.Spec : Prop :=
  ∀ n, P3685396489961381923.a n = A021034 n

end A021034

/-!
# A021035: Decimal expansion of 1/31.

The programs for A021035, there is no canonical definition to state claims against.
-/

/-! ## A021035.P1926425681883900219

`A021252(n+3)`
-/

namespace A021035.P1926425681883900219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021252 (n + 3)

end

end A021035.P1926425681883900219

/-!
# A021036: Decimal expansion of 1/32.

The programs for A021036, the canonical program `A021036.P5287061063626496464` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021036 has offset 0).

The definition of A021036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021036.P5287061063626496464

`a(n-1)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=5, a(5)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021036

/-- `a(n-1)` -/
def P5287061063626496464.Spec : Prop :=
  ∀ n, (P5287061063626496464.a n : ℤ) = A021036 n

theorem P5287061063626496464.correct : P5287061063626496464.Spec := by
  intro n
  simp only [A021036]

end A021036

/-!
# A021039: Decimal expansion of 1/35.

The programs for A021039, the canonical program `A021039.P2212609656056785355` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021039 has offset 0).

The definition of A021039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021039.P2212609656056785355

`9-a(n-3)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021039

/-- `9-a(n-3)` -/
def P2212609656056785355.Spec : Prop :=
  ∀ n, P2212609656056785355.a n = A021039 n

theorem P2212609656056785355.correct : P2212609656056785355.Spec := by
  intro n
  simp only [A021039]

end A021039

/-!
# A021040: Decimal expansion of 1/36.

The programs for A021040, the canonical program `A021040.P16989914128435200572` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021040 has offset 0).

The definition of A021040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021040.P16989914128435200572

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021040

/-- `a(n-1)` -/
def P16989914128435200572.Spec : Prop :=
  ∀ n, (P16989914128435200572.a n : ℤ) = A021040 n

theorem P16989914128435200572.correct : P16989914128435200572.Spec := by
  intro n
  simp only [A021040]

end A021040

/-!
# A021041: Decimal expansion of 1/37.

The programs for A021041, the canonical program `A021041.P12716650151524440550` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021041 has offset 0).

The definition of A021041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021041.P12716650151524440550

`a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021041

/-- `a(n-3)` -/
def P12716650151524440550.Spec : Prop :=
  ∀ n, (P12716650151524440550.a n : ℤ) = A021041 n

theorem P12716650151524440550.correct : P12716650151524440550.Spec := by
  intro n
  simp only [A021041]

end A021041

/-!
# A021042: Decimal expansion of 1/38.

The programs for A021042, there is no canonical definition to state claims against.
-/

/-! ## A021042.P266684159880147687

`A021023(A057427(n)+n)`
-/

namespace A021042.P266684159880147687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021023 (A057427 n + (n : ℤ)).toNat

end

end A021042.P266684159880147687

/-!
# A021043: Decimal expansion of 1/39.

The programs for A021043, the canonical program `A021043.P540713205650573083` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021043 has offset 0).

The definition of A021043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021043.P540713205650573083

`6-a(n-3)` with `a(0)=0, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021043

/-- `6-a(n-3)` -/
def P540713205650573083.Spec : Prop :=
  ∀ n, P540713205650573083.a n = A021043 n

theorem P540713205650573083.correct : P540713205650573083.Spec := by
  intro n
  simp only [A021043]

end A021043

/-!
# A021044: Expansion of g.f. 1/((1 - x)*(1 - 2*x)*(1 - 3*x)*(1 - 8*x)).

The programs for A021044, the canonical program `A021044.P7725288055420087983` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021044 has offset 0).

The definition of A021044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+59x^2-94x^3+48x^4))` (program `A021044.P7725288055420087983`, by `A021044.P7725288055420087983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021044.P7725288055420087983

`ogf(1/(1-14x+59x^2-94x^3+48x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021044

/-- `ogf(1/(1-14x+59x^2-94x^3+48x^4))` -/
def P7725288055420087983.Spec : Prop :=
  ∀ n, P7725288055420087983.a n = A021044 n

theorem P7725288055420087983.correct : P7725288055420087983.Spec := by
  intro n
  simp only [A021044]

end A021044

/-! ## A021044.P1839291358267618537

`∑[A016277(n)]`
-/

namespace A021044.P1839291358267618537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021044.P1839291358267618537

namespace A021044

/-- `∑[A016277(n)]` -/
def P1839291358267618537.Spec : Prop :=
  ∀ n, P1839291358267618537.a n = A021044 n

end A021044

/-! ## A021044.P6827925388776174183

`A016214(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021044.P6827925388776174183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016214 n + 2 * a (n - 1)

end

end A021044.P6827925388776174183

namespace A021044

/-- `A016214(n)+2*a(n-1)` -/
def P6827925388776174183.Spec : Prop :=
  ∀ n, P6827925388776174183.a n = A021044 n

end A021044

/-! ## A021044.P152225161770951115

`∑[(A025467(n)+A016269(n))/2]`
-/

namespace A021044.P152225161770951115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025467 n + A016269 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021044.P152225161770951115

namespace A021044

/-- `∑[(A025467(n)+A016269(n))/2]` -/
def P152225161770951115.Spec : Prop :=
  ∀ n, P152225161770951115.a n = (A021044 n : ℚ)

end A021044

/-! ## A021044.P16220727337548364035

`a(n-1)+or(A010051(n+1), A016277(n))` with `a(0)=1`
-/

namespace A021044.P16220727337548364035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A010051 (n + 1)) (A016277 n)

end

end A021044.P16220727337548364035

namespace A021044

/-- `a(n-1)+or(A010051(n+1), A016277(n))` -/
def P16220727337548364035.Spec : Prop :=
  ∀ n, P16220727337548364035.a n = A021044 n

end A021044

/-! ## A021044.P18225757143739270030

`2*A021129(n)-A025932(n)`
-/

namespace A021044.P18225757143739270030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021129 n - A025932 n

end

end A021044.P18225757143739270030

namespace A021044

/-- `2*A021129(n)-A025932(n)` -/
def P18225757143739270030.Spec : Prop :=
  ∀ n, P18225757143739270030.a n = A021044 n

end A021044

/-! ## A021044.P12759551300486398800

`A016214(n+1)-A016203(n+1)`
-/

namespace A021044.P12759551300486398800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016214 (n + 1) - A016203 (n + 1)

end

end A021044.P12759551300486398800

namespace A021044

/-- `A016214(n+1)-A016203(n+1)` -/
def P12759551300486398800.Spec : Prop :=
  ∀ n, P12759551300486398800.a n = A021044 n

end A021044

/-! ## A021044.P4129222549592816175

`a(n-1)+A016277(n)%A025929(n)` with `a(0)=1`
-/

namespace A021044.P4129222549592816175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A016277 n) (A025929 n)

end

end A021044.P4129222549592816175

namespace A021044

/-- `a(n-1)+A016277(n)%A025929(n)` -/
def P4129222549592816175.Spec : Prop :=
  ∀ n, P4129222549592816175.a n = A021044 n

end A021044

/-!
# A021045: Decimal expansion of 1/41.

The programs for A021045, the canonical program `A021045.P8441935852958928174` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021045 has offset 0).

The definition of A021045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021045.P8441935852958928174

`a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=3, a(4)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021045

/-- `a(n-5)` -/
def P8441935852958928174.Spec : Prop :=
  ∀ n, (P8441935852958928174.a n : ℤ) = A021045 n

theorem P8441935852958928174.correct : P8441935852958928174.Spec := by
  intro n
  simp only [A021045]

end A021045

/-!
# A021046: Decimal expansion of 1/42.

The programs for A021046, there is no canonical definition to state claims against.
-/

/-! ## A021046.P7842688860826589317

`9-A021340(n+3)`
-/

namespace A021046.P7842688860826589317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021340 (n + 3)

end

end A021046.P7842688860826589317

/-!
# A021048: Expansion of 1/((1-x)*(1-2x)*(1-3x)*(1-9x)).

The programs for A021048, the canonical program `A021048.P13702195736777519758` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021048 has offset 0).

The definition of A021048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021048.P13702195736777519758

`243/112*9^n-9/4*3^n+8/7*2^n-1/16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021048

/-- `243/112*9^n-9/4*3^n+8/7*2^n-1/16` -/
def P13702195736777519758.Spec : Prop :=
  ∀ n, P13702195736777519758.a n = (A021048 n : ℚ)

end A021048

/-! ## A021048.P12264284732730549705

`∑[2*a(n-1)+3^n*∑[3^n]]` with `a(0)=1`
-/

namespace A021048.P12264284732730549705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 3 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021048.P12264284732730549705

namespace A021048

/-- `∑[2*a(n-1)+3^n*∑[3^n]]` -/
def P12264284732730549705.Spec : Prop :=
  ∀ n, (P12264284732730549705.a n : ℤ) = A021048 n

end A021048

/-! ## A021048.P7069388301989984529

`∑[A016278(n)]`
-/

namespace A021048.P7069388301989984529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021048.P7069388301989984529

namespace A021048

/-- `∑[A016278(n)]` -/
def P7069388301989984529.Spec : Prop :=
  ∀ n, P7069388301989984529.a n = A021048 n

end A021048

/-!
# A021049: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-10*x)).

The programs for A021049, the canonical program `A021049.P16151913952994111315` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021049 has offset 0).

The definition of A021049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021049.P16151913952994111315

`∑[A016279(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021049

/-- `∑[A016279(n)]` -/
def P16151913952994111315.Spec : Prop :=
  ∀ n, P16151913952994111315.a n = A021049 n

theorem P16151913952994111315.correct : P16151913952994111315.Spec := by
  intro n
  simp only [A021049]

end A021049

/-! ## A021049.P11831060726200246654

`a(n-1)+A016215(n)+a(n-1)` with `a(0)=1`
-/

namespace A021049.P11831060726200246654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016215 n + a (n - 1))

end

end A021049.P11831060726200246654

namespace A021049

/-- `a(n-1)+A016215(n)+a(n-1)` -/
def P11831060726200246654.Spec : Prop :=
  ∀ n, P11831060726200246654.a n = A021049 n

end A021049

/-! ## A021049.P15374144434134948395

`2*A016279(n)-A016215(n)`
-/

namespace A021049.P15374144434134948395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016279 n - A016215 n

end

end A021049.P15374144434134948395

namespace A021049

/-- `2*A016279(n)-A016215(n)` -/
def P15374144434134948395.Spec : Prop :=
  ∀ n, P15374144434134948395.a n = A021049 n

end A021049

/-! ## A021049.P15265144439918263086

`2*A021144(n)-A025934(n)`
-/

namespace A021049.P15265144439918263086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021144 n - A025934 n

end

end A021049.P15265144439918263086

namespace A021049

/-- `2*A021144(n)-A025934(n)` -/
def P15265144439918263086.Spec : Prop :=
  ∀ n, P15265144439918263086.a n = A021049 n

end A021049

/-! ## A021049.P11598400591753577306

`A016215(n)+A016279(n)-A016205(n)`
-/

namespace A021049.P11598400591753577306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016215 n + (A016279 n - A016205 n)

end

end A021049.P11598400591753577306

namespace A021049

/-- `A016215(n)+A016279(n)-A016205(n)` -/
def P11598400591753577306.Spec : Prop :=
  ∀ n, P11598400591753577306.a n = A021049 n

end A021049

/-! ## A021049.P7448685411434834544

`A016215(n+1)-A016205(n+1)`
-/

namespace A021049.P7448685411434834544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016215 (n + 1) - A016205 (n + 1)

end

end A021049.P7448685411434834544

namespace A021049

/-- `A016215(n+1)-A016205(n+1)` -/
def P7448685411434834544.Spec : Prop :=
  ∀ n, P7448685411434834544.a n = A021049 n

end A021049

/-! ## A021049.P1468319490656648512

`A016279(n+1)-A016215(n+1)`
-/

namespace A021049.P1468319490656648512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016279 (n + 1) - A016215 (n + 1)

end

end A021049.P1468319490656648512

namespace A021049

/-- `A016279(n+1)-A016215(n+1)` -/
def P1468319490656648512.Spec : Prop :=
  ∀ n, P1468319490656648512.a n = A021049 n

end A021049

/-! ## A021049.P12200581556094185486

`(A016279(n+1)-A016205(n+1))/2`
-/

namespace A021049.P12200581556094185486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016279 (n + 1) - A016205 (n + 1) : ℚ) / 2

end

end A021049.P12200581556094185486

namespace A021049

/-- `(A016279(n+1)-A016205(n+1))/2` -/
def P12200581556094185486.Spec : Prop :=
  ∀ n, P12200581556094185486.a n = (A021049 n : ℚ)

end A021049

/-!
# A021052: Decimal expansion of 1/48.

The programs for A021052, the canonical program `A021052.P590694552932427652` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021052 has offset 0).

The definition of A021052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021052.P590694552932427652

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=8, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021052

/-- `a(n-1)` -/
def P590694552932427652.Spec : Prop :=
  ∀ n, (P590694552932427652.a n : ℤ) = A021052 n

theorem P590694552932427652.correct : P590694552932427652.Spec := by
  intro n
  simp only [A021052]

end A021052

/-!
# A021053: Decimal expansion of 1/49.

The programs for A021053, there is no canonical definition to state claims against.
-/

/-! ## A021053.P4501763903633785843

`A021102(n+2)`
-/

namespace A021053.P4501763903633785843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021102 (n + 2)

end

end A021053.P4501763903633785843

/-!
# A021054: Expansion of 1/((1-x)(1-2x)(1-3x)(1-11x)).

The programs for A021054, the canonical program `A021054.P16558678026524851529` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021054 has offset 0).

The definition of A021054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021054.P16558678026524851529

`(11^(n+3)-45*3^(n+3)+80*2^(n+3)-36)/720`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021054

/-- `(11^(n+3)-45*3^(n+3)+80*2^(n+3)-36)/720` -/
def P16558678026524851529.Spec : Prop :=
  ∀ n, P16558678026524851529.a n = (A021054 n : ℚ)

end A021054

/-! ## A021054.P2998981064039485964

`∑[A016280(n)]`
-/

namespace A021054.P2998981064039485964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021054.P2998981064039485964

namespace A021054

/-- `∑[A016280(n)]` -/
def P2998981064039485964.Spec : Prop :=
  ∀ n, P2998981064039485964.a n = A021054 n

end A021054

/-! ## A021054.P10428891932100782656

`A016216(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021054.P10428891932100782656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016216 n + 2 * a (n - 1)

end

end A021054.P10428891932100782656

namespace A021054

/-- `A016216(n)+2*a(n-1)` -/
def P10428891932100782656.Spec : Prop :=
  ∀ n, P10428891932100782656.a n = A021054 n

end A021054

/-! ## A021054.P11247556640678224589

`2*A021094(n)-A021394(n)`
-/

namespace A021054.P11247556640678224589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021094 n - A021394 n

end

end A021054.P11247556640678224589

namespace A021054

/-- `2*A021094(n)-A021394(n)` -/
def P11247556640678224589.Spec : Prop :=
  ∀ n, P11247556640678224589.a n = A021054 n

end A021054

/-! ## A021054.P17307212502518756409

`2*A021154(n)-A025935(n)`
-/

namespace A021054.P17307212502518756409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - A025935 n

end

end A021054.P17307212502518756409

namespace A021054

/-- `2*A021154(n)-A025935(n)` -/
def P17307212502518756409.Spec : Prop :=
  ∀ n, P17307212502518756409.a n = A021054 n

end A021054

/-! ## A021054.P15966120133995477568

`A016216(n+1)-A016206(n+1)`
-/

namespace A021054.P15966120133995477568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016216 (n + 1) - A016206 (n + 1)

end

end A021054.P15966120133995477568

namespace A021054

/-- `A016216(n+1)-A016206(n+1)` -/
def P15966120133995477568.Spec : Prop :=
  ∀ n, P15966120133995477568.a n = A021054 n

end A021054

/-!
# A021055: Decimal expansion of 1/51.

The programs for A021055, there is no canonical definition to state claims against.
-/

/-! ## A021055.P2413439886458964250

`9-A021106(n+2)`
-/

namespace A021055.P2413439886458964250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021106 (n + 2)

end

end A021055.P2413439886458964250

/-!
# A021056: Decimal expansion of 1/52.

The programs for A021056, the canonical program `A021056.P6384403451896264051` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021056 has offset 0).

The definition of A021056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021056.P6384403451896264051

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021056

/-- `9-a(n-3)` -/
def P6384403451896264051.Spec : Prop :=
  ∀ n, P6384403451896264051.a n = A021056 n

theorem P6384403451896264051.correct : P6384403451896264051.Spec := by
  intro n
  simp only [A021056]

end A021056

/-!
# A021058: Decimal expansion of 1/54.

The programs for A021058, the canonical program `A021058.P6681926142359365723` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021058 has offset 0).

The definition of A021058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021058.P6681926142359365723

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021058

/-- `a(n-3)` -/
def P6681926142359365723.Spec : Prop :=
  ∀ n, (P6681926142359365723.a n : ℤ) = A021058 n

theorem P6681926142359365723.correct : P6681926142359365723.Spec := by
  intro n
  simp only [A021058]

end A021058

/-!
# A021059: Decimal expansion of 1/55.

The programs for A021059, the canonical program `A021059.P18208627452551257228` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021059 has offset 0).

The definition of A021059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021059.P18208627452551257228

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021059

/-- `a(n-2)` -/
def P18208627452551257228.Spec : Prop :=
  ∀ n, (P18208627452551257228.a n : ℤ) = A021059 n

theorem P18208627452551257228.correct : P18208627452551257228.Spec := by
  intro n
  simp only [A021059]

end A021059

/-!
# A021060: Decimal expansion of 1/56.

The programs for A021060, the canonical program `A021060.P10360388723007547266` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021060 has offset 0).

The definition of A021060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021060.P10360388723007547266

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=8, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021060

/-- `9-a(n-3)` -/
def P10360388723007547266.Spec : Prop :=
  ∀ n, P10360388723007547266.a n = A021060 n

theorem P10360388723007547266.correct : P10360388723007547266.Spec := by
  intro n
  simp only [A021060]

end A021060

/-!
# A021061: Decimal expansion of 1/57.

The programs for A021061, there is no canonical definition to state claims against.
-/

/-! ## A021061.P17365608862074992032

`A021574(n+1)`
-/

namespace A021061.P17365608862074992032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021574 (n + 1)

end

end A021061.P17365608862074992032

/-!
# A021062: Decimal expansion of 1/58.

The programs for A021062, there is no canonical definition to state claims against.
-/

/-! ## A021062.P16893072389703559384

`A021584(n+1)`
-/

namespace A021062.P16893072389703559384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021584 (n + 1)

end

end A021062.P16893072389703559384

/-!
# A021064: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-12*x)).

The programs for A021064, the canonical program `A021064.P1880806552713618153` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021064 has offset 0).

The definition of A021064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021064.P1880806552713618153

`(12^(n+3)-55*3^(n+3)+99*2^(n+3)-45)/990`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021064

/-- `(12^(n+3)-55*3^(n+3)+99*2^(n+3)-45)/990` -/
def P1880806552713618153.Spec : Prop :=
  ∀ n, P1880806552713618153.a n = (A021064 n : ℚ)

end A021064

/-! ## A021064.P10261218214779423769

`∑[A016281(n)]`
-/

namespace A021064.P10261218214779423769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021064.P10261218214779423769

namespace A021064

/-- `∑[A016281(n)]` -/
def P10261218214779423769.Spec : Prop :=
  ∀ n, P10261218214779423769.a n = A021064 n

end A021064

/-! ## A021064.P14770748191598280086

`a(n-1)+A016217(n)+a(n-1)` with `a(0)=1`
-/

namespace A021064.P14770748191598280086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016217 n + a (n - 1))

end

end A021064.P14770748191598280086

namespace A021064

/-- `a(n-1)+A016217(n)+a(n-1)` -/
def P14770748191598280086.Spec : Prop :=
  ∀ n, P14770748191598280086.a n = A021064 n

end A021064

/-! ## A021064.P11391161193954288685

`2*A021164(n)-A025936(n)`
-/

namespace A021064.P11391161193954288685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021164 n - A025936 n

end

end A021064.P11391161193954288685

namespace A021064

/-- `2*A021164(n)-A025936(n)` -/
def P11391161193954288685.Spec : Prop :=
  ∀ n, P11391161193954288685.a n = A021064 n

end A021064

/-! ## A021064.P17908780686552039542

`a(n-1)+2*A016309(n)-A025942(n)` with `a(0)=1`
-/

namespace A021064.P17908780686552039542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * A016309 n - A025942 n)

end

end A021064.P17908780686552039542

namespace A021064

/-- `a(n-1)+2*A016309(n)-A025942(n)` -/
def P17908780686552039542.Spec : Prop :=
  ∀ n, P17908780686552039542.a n = A021064 n

end A021064

/-! ## A021064.P3656821270566736909

`3*a(n-1)-(A008585(n)%3-∑[A016136(n)])` with `a(0)=1`
-/

namespace A021064.P3656821270566736909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016136 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (Int.tmod (A008585 n) 3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021064.P3656821270566736909

namespace A021064

/-- `3*a(n-1)-(A008585(n)%3-∑[A016136(n)])` -/
def P3656821270566736909.Spec : Prop :=
  ∀ n, P3656821270566736909.a n = A021064 n

end A021064

/-! ## A021064.P1438119974663374185

`3*a(n-1)-(A000120(n)%-1-∑[A016136(n)])` with `a(0)=1`
-/

namespace A021064.P1438119974663374185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016136 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (Int.tmod (A000120 n) (-1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021064.P1438119974663374185

namespace A021064

/-- `3*a(n-1)-(A000120(n)%-1-∑[A016136(n)])` -/
def P1438119974663374185.Spec : Prop :=
  ∀ n, P1438119974663374185.a n = A021064 n

end A021064

/-! ## A021064.P1269928959690335390

`∑[A016217(n)/A000079(n)]*A000079(n)`
-/

namespace A021064.P1269928959690335390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016217 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A021064.P1269928959690335390

namespace A021064

/-- `∑[A016217(n)/A000079(n)]*A000079(n)` -/
def P1269928959690335390.Spec : Prop :=
  ∀ n, P1269928959690335390.a n = (A021064 n : ℚ)

end A021064

/-! ## A021064.P9683388605845307767

`A016217(n+1)-A016207(n+1)`
-/

namespace A021064.P9683388605845307767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016217 (n + 1) - A016207 (n + 1)

end

end A021064.P9683388605845307767

namespace A021064

/-- `A016217(n+1)-A016207(n+1)` -/
def P9683388605845307767.Spec : Prop :=
  ∀ n, P9683388605845307767.a n = A021064 n

end A021064

/-! ## A021064.P14743077862389353294

`A294032(∑[n])+3*4*a(n-1)` with `a(0)=1`
-/

namespace A021064.P14743077862389353294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294032 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 * (4 * a (n - 1))

end

end A021064.P14743077862389353294

namespace A021064

/-- `A294032(∑[n])+3*4*a(n-1)` -/
def P14743077862389353294.Spec : Prop :=
  ∀ n, P14743077862389353294.a n = A021064 n

end A021064

/-!
# A021065: Decimal expansion of 1/61.

The programs for A021065, there is no canonical definition to state claims against.
-/

/-! ## A021065.P15962892572463894484

`9-A021248(n+4)`
-/

namespace A021065.P15962892572463894484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021248 (n + 4)

end

end A021065.P15962892572463894484

/-!
# A021066: Decimal expansion of 1/62.

The programs for A021066, there is no canonical definition to state claims against.
-/

/-! ## A021066.P8089739832353127495

`A021624(n+1)`
-/

namespace A021066.P8089739832353127495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021624 (n + 1)

end

end A021066.P8089739832353127495

/-!
# A021067: Decimal expansion of 1/63.

The programs for A021067, the canonical program `A021067.P13822626970905147540` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021067 has offset 0).

The definition of A021067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021067.P13822626970905147540

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021067

/-- `2*a(n-1)-2*a(n-2)+a(n-3)` -/
def P13822626970905147540.Spec : Prop :=
  ∀ n, P13822626970905147540.a n = A021067 n

theorem P13822626970905147540.correct : P13822626970905147540.Spec := by
  intro n
  simp only [A021067]

end A021067

/-!
# A021068: Decimal expansion of 1/64.

The programs for A021068, the canonical program `A021068.P1258756413652626306` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021068 has offset 0).

The definition of A021068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021068.P1258756413652626306

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=2, a(5)=5, a(6)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021068

/-- `a(n-1)` -/
def P1258756413652626306.Spec : Prop :=
  ∀ n, (P1258756413652626306.a n : ℤ) = A021068 n

theorem P1258756413652626306.correct : P1258756413652626306.Spec := by
  intro n
  simp only [A021068]

end A021068

/-!
# A021069: Decimal expansion of 1/65.

The programs for A021069, the canonical program `A021069.P6056640706939907002` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021069 has offset 0).

The definition of A021069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021069.P6056640706939907002

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021069

/-- `9-a(n-3)` -/
def P6056640706939907002.Spec : Prop :=
  ∀ n, P6056640706939907002.a n = A021069 n

theorem P6056640706939907002.correct : P6056640706939907002.Spec := by
  intro n
  simp only [A021069]

end A021069

/-!
# A021070: Decimal expansion of 1/66.

The programs for A021070, the canonical program `A021070.P5480795898501616420` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021070 has offset 0).

The definition of A021070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021070.P5480795898501616420

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021070

/-- `a(n-2)` -/
def P5480795898501616420.Spec : Prop :=
  ∀ n, (P5480795898501616420.a n : ℤ) = A021070 n

theorem P5480795898501616420.correct : P5480795898501616420.Spec := by
  intro n
  simp only [A021070]

end A021070

/-!
# A021071: Decimal expansion of 1/67.

The programs for A021071, there is no canonical definition to state claims against.
-/

/-! ## A021071.P14433952769144311467

`9-A021339(n+3)`
-/

namespace A021071.P14433952769144311467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021339 (n + 3)

end

end A021071.P14433952769144311467

/-!
# A021074: Expansion of 1/((1-x)(1-2x)(1-4x)(1-5x)).

The programs for A021074, the canonical program `A021074.P7040385720536305455` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021074 has offset 0).

The definition of A021074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-12x+49x^2-78x^3+40x^4))` (program `A021074.P7040385720536305455`, by `A021074.P7040385720536305455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021074.P13291520893716535346

`12*a(n-1)-49*a(n-2)+78*a(n-3)-40*a(n-4)` with `a(0)=1, a(1)=12, a(2)=95, a(3)=630`
-/

namespace A021074.P13291520893716535346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 95, 630] fun n a =>
  12 * a (n - 1) - 49 * a (n - 2) + 78 * a (n - 3) - 40 * a (n - 4)

end

end A021074.P13291520893716535346

namespace A021074

/-- `12*a(n-1)-49*a(n-2)+78*a(n-3)-40*a(n-4)` -/
def P13291520893716535346.Spec : Prop :=
  ∀ n, P13291520893716535346.a n = A021074 n

end A021074

/-! ## A021074.P7040385720536305455

`ogf(1/(1-12x+49x^2-78x^3+40x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021074

/-- `ogf(1/(1-12x+49x^2-78x^3+40x^4))` -/
def P7040385720536305455.Spec : Prop :=
  ∀ n, P7040385720536305455.a n = A021074 n

theorem P7040385720536305455.correct : P7040385720536305455.Spec := by
  intro n
  simp only [A021074]

end A021074

/-! ## A021074.P1084730684196883943

`(5^(n+3)-2*4^(n+3)+2*2^(n+3)-1)/12`
-/

namespace A021074.P1084730684196883943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 3) : ℤ) - (2 * 4 ^ (n + 3) : ℤ) + (2 * 2 ^ (n + 3) : ℤ) - 1 : ℚ) / 12

end

end A021074.P1084730684196883943

namespace A021074

/-- `(5^(n+3)-2*4^(n+3)+2*2^(n+3)-1)/12` -/
def P1084730684196883943.Spec : Prop :=
  ∀ n, P1084730684196883943.a n = (A021074 n : ℚ)

end A021074

/-! ## A021074.P8035942274756185256

`∑[C(2^(n+1), 2)+5*a(n-1)]` with `a(0)=1`
-/

namespace A021074.P8035942274756185256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (2 ^ (n + 1)) 2 + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021074.P8035942274756185256

namespace A021074

/-- `∑[C(2^(n+1), 2)+5*a(n-1)]` -/
def P8035942274756185256.Spec : Prop :=
  ∀ n, (P8035942274756185256.a n : ℤ) = A021074 n

end A021074

/-! ## A021074.P15384456970353604821

`∑[A016282(n)]`
-/

namespace A021074.P15384456970353604821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021074.P15384456970353604821

namespace A021074

/-- `∑[A016282(n)]` -/
def P15384456970353604821.Spec : Prop :=
  ∀ n, P15384456970353604821.a n = A021074 n

end A021074

/-! ## A021074.P7204510585737959932

`A304975(2*n+5)`
-/

namespace A021074.P7204510585737959932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (2 * n + 5)

end

end A021074.P7204510585737959932

namespace A021074

/-- `A304975(2*n+5)` -/
def P7204510585737959932.Spec : Prop :=
  ∀ n, P7204510585737959932.a n = A021074 n

end A021074

/-! ## A021074.P8090849403111335617

`A016198(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021074.P8090849403111335617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016198 n + 4 * a (n - 1)

end

end A021074.P8090849403111335617

namespace A021074

/-- `A016198(n)+4*a(n-1)` -/
def P8090849403111335617.Spec : Prop :=
  ∀ n, P8090849403111335617.a n = A021074 n

end A021074

/-! ## A021074.P10049183145016436521

`A006095(n+2)+5*a(n-1)` with `a(0)=1`
-/

namespace A021074.P10049183145016436521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006095 (n + 2) + 5 * a (n - 1)

end

end A021074.P10049183145016436521

namespace A021074

/-- `A006095(n+2)+5*a(n-1)` -/
def P10049183145016436521.Spec : Prop :=
  ∀ n, P10049183145016436521.a n = A021074 n

end A021074

/-! ## A021074.P12827985545171792409

`a(n-1)+A016218(n)+a(n-1)` with `a(0)=1`
-/

namespace A021074.P12827985545171792409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016218 n + a (n - 1))

end

end A021074.P12827985545171792409

namespace A021074

/-- `a(n-1)+A016218(n)+a(n-1)` -/
def P12827985545171792409.Spec : Prop :=
  ∀ n, P12827985545171792409.a n = A021074 n

end A021074

/-! ## A021074.P2817395572802339525

`record[A304975(A026741(n))^(n%2)]`
-/

namespace A021074.P2817395572802339525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (A026741 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A021074.P2817395572802339525

namespace A021074

/-- `record[A304975(A026741(n))^(n%2)]` -/
def P2817395572802339525.Spec : Prop :=
  ∀ n, P2817395572802339525.a n = A021074 n

end A021074

/-! ## A021074.P2854474132843342953

`A016198(n+1)-A171477(n+1)`
-/

namespace A021074.P2854474132843342953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016198 (n + 1) - A171477 (n + 1)

end

end A021074.P2854474132843342953

namespace A021074

/-- `A016198(n+1)-A171477(n+1)` -/
def P2854474132843342953.Spec : Prop :=
  ∀ n, P2854474132843342953.a n = A021074 n

end A021074

/-! ## A021074.P15827066010861205226

`A016198(n+1)-A006095(n+3)`
-/

namespace A021074.P15827066010861205226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016198 (n + 1) - A006095 (n + 3)

end

end A021074.P15827066010861205226

namespace A021074

/-- `A016198(n+1)-A006095(n+3)` -/
def P15827066010861205226.Spec : Prop :=
  ∀ n, P15827066010861205226.a n = A021074 n

end A021074

/-! ## A021074.P9114853652107970072

`A025211(n)-2*A056511(A020742(n))`
-/

namespace A021074.P9114853652107970072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n - 2 * A056511 (A020742 n).toNat

end

end A021074.P9114853652107970072

namespace A021074

/-- `A025211(n)-2*A056511(A020742(n))` -/
def P9114853652107970072.Spec : Prop :=
  ∀ n, P9114853652107970072.a n = A021074 n

end A021074

/-! ## A021074.P6116713947248477908

`2*A021076(n)-A021114(n)`
-/

namespace A021074.P6116713947248477908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021076 n - A021114 n

end

end A021074.P6116713947248477908

namespace A021074

/-- `2*A021076(n)-A021114(n)` -/
def P6116713947248477908.Spec : Prop :=
  ∀ n, P6116713947248477908.a n = A021074 n

end A021074

/-! ## A021074.P7524194685258458570

`∑[A019671(n)/2^n]`
-/

namespace A021074.P7524194685258458570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019671 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021074.P7524194685258458570

namespace A021074

/-- `∑[A019671(n)/2^n]` -/
def P7524194685258458570.Spec : Prop :=
  ∀ n, P7524194685258458570.a n = (A021074 n : ℚ)

end A021074

/-!
# A021076: Expansion of 1/((1-x)(1-2x)(1-4x)(1-6x)).

The programs for A021076, the canonical program `A021076.P3940765071836404375` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021076 has offset 0).

The definition of A021076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+56x^2-92x^3+48x^4))` (program `A021076.P3940765071836404375`, by `A021076.P3940765071836404375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021076.P3940765071836404375

`ogf(1/(1-13x+56x^2-92x^3+48x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021076

/-- `ogf(1/(1-13x+56x^2-92x^3+48x^4))` -/
def P3940765071836404375.Spec : Prop :=
  ∀ n, P3940765071836404375.a n = A021076 n

theorem P3940765071836404375.correct : P3940765071836404375.Spec := by
  intro n
  simp only [A021076]

end A021076

/-! ## A021076.P13025001782869006729

`13*a(n-1)-56*a(n-2)+92*a(n-3)-48*a(n-4)` with `a(0)=1, a(1)=13, a(2)=113, a(3)=833`
-/

namespace A021076.P13025001782869006729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 113, 833] fun n a =>
  13 * a (n - 1) - 56 * a (n - 2) + 92 * a (n - 3) - 48 * a (n - 4)

end

end A021076.P13025001782869006729

namespace A021076

/-- `13*a(n-1)-56*a(n-2)+92*a(n-3)-48*a(n-4)` -/
def P13025001782869006729.Spec : Prop :=
  ∀ n, P13025001782869006729.a n = A021076 n

end A021076

/-! ## A021076.P4453752210916562228

`∑[2^n*∑[2^n]]+6*a(n-1)` with `a(0)=1`
-/

namespace A021076.P4453752210916562228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A021076.P4453752210916562228

namespace A021076

/-- `∑[2^n*∑[2^n]]+6*a(n-1)` -/
def P4453752210916562228.Spec : Prop :=
  ∀ n, (P4453752210916562228.a n : ℤ) = A021076 n

end A021076

/-! ## A021076.P14801152137835312746

`∑[A016283(n+2)]`
-/

namespace A021076.P14801152137835312746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021076.P14801152137835312746

namespace A021076

/-- `∑[A016283(n+2)]` -/
def P14801152137835312746.Spec : Prop :=
  ∀ n, P14801152137835312746.a n = A021076 n

end A021076

/-! ## A021076.P5274695082376046162

`A274869(2*n+5)`
-/

namespace A021076.P5274695082376046162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274869 (2 * n + 5)

end

end A021076.P5274695082376046162

namespace A021076

/-- `A274869(2*n+5)` -/
def P5274695082376046162.Spec : Prop :=
  ∀ n, P5274695082376046162.a n = A021076 n

end A021076

/-! ## A021076.P8383707170405207546

`∑[2^n*A000392(n+3)]`
-/

namespace A021076.P8383707170405207546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000392 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021076.P8383707170405207546

namespace A021076

/-- `∑[2^n*A000392(n+3)]` -/
def P8383707170405207546.Spec : Prop :=
  ∀ n, P8383707170405207546.a n = A021076 n

end A021076

/-! ## A021076.P11298613331910704653

`∑[2^n*∑[∑[A027649(n)]]]`
-/

namespace A021076.P11298613331910704653
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021076.P11298613331910704653

namespace A021076

/-- `∑[2^n*∑[∑[A027649(n)]]]` -/
def P11298613331910704653.Spec : Prop :=
  ∀ n, P11298613331910704653.a n = A021076 n

end A021076

/-! ## A021076.P9951503180127995436

`∑[2^n*A028243(n+3)]/2`
-/

namespace A021076.P9951503180127995436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028243 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A021076.P9951503180127995436

namespace A021076

/-- `∑[2^n*A028243(n+3)]/2` -/
def P9951503180127995436.Spec : Prop :=
  ∀ n, P9951503180127995436.a n = (A021076 n : ℚ)

end A021076

/-! ## A021076.P9520451318470350733

`a(n-1)+A016222(n)+a(n-1)` with `a(0)=1`
-/

namespace A021076.P9520451318470350733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016222 n + a (n - 1))

end

end A021076.P9520451318470350733

namespace A021076

/-- `a(n-1)+A016222(n)+a(n-1)` -/
def P9520451318470350733.Spec : Prop :=
  ∀ n, P9520451318470350733.a n = A021076 n

end A021076

/-! ## A021076.P5682770414341820910

`(A021114(n)+A021074(n))/2`
-/

namespace A021076.P5682770414341820910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021114 n + A021074 n : ℚ) / 2

end

end A021076.P5682770414341820910

namespace A021076

/-- `(A021114(n)+A021074(n))/2` -/
def P5682770414341820910.Spec : Prop :=
  ∀ n, P5682770414341820910.a n = (A021076 n : ℚ)

end A021076

/-! ## A021076.P3811825797973215502

`∑[∑[A001047(n+1)]*A011782(n+1)]`
-/

namespace A021076.P3811825797973215502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021076.P3811825797973215502

namespace A021076

/-- `∑[∑[A001047(n+1)]*A011782(n+1)]` -/
def P3811825797973215502.Spec : Prop :=
  ∀ n, P3811825797973215502.a n = A021076 n

end A021076

/-! ## A021076.P9555225998315772600

`record[lcm(2, A274869(n+5))-A274869(n+5)]`
-/

namespace A021076.P9555225998315772600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A274869 (n + 5)) : ℤ) - A274869 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A021076.P9555225998315772600

namespace A021076

/-- `record[lcm(2, A274869(n+5))-A274869(n+5)]` -/
def P9555225998315772600.Spec : Prop :=
  ∀ n, P9555225998315772600.a n = A021076 n

end A021076

/-!
# A021077: Decimal expansion of 1/73.

The programs for A021077, the canonical program `A021077.P16212708078562480926` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021077 has offset 0).

The definition of A021077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021077.P16212708078562480926

`9-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021077

/-- `9-a(n-4)` -/
def P16212708078562480926.Spec : Prop :=
  ∀ n, P16212708078562480926.a n = A021077 n

theorem P16212708078562480926.correct : P16212708078562480926.Spec := by
  intro n
  simp only [A021077]

end A021077

/-!
# A021078: Decimal expansion of 1/74.

The programs for A021078, the canonical program `A021078.P9525352843083301166` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021078 has offset 0).

The definition of A021078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021078.P9525352843083301166

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021078

/-- `a(n-3)` -/
def P9525352843083301166.Spec : Prop :=
  ∀ n, (P9525352843083301166.a n : ℤ) = A021078 n

theorem P9525352843083301166.correct : P9525352843083301166.Spec := by
  intro n
  simp only [A021078]

end A021078

/-!
# A021079: Expansion of 1/((1-x)(1-2x)(1-4x)(1-7x)).

The programs for A021079, the canonical program `A021079.P6710060595549819137` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021079 has offset 0).

The definition of A021079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021079.P6710060595549819137

`∑[A016285(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021079

/-- `∑[A016285(n)]` -/
def P6710060595549819137.Spec : Prop :=
  ∀ n, P6710060595549819137.a n = A021079 n

theorem P6710060595549819137.correct : P6710060595549819137.Spec := by
  intro n
  simp only [A021079]

end A021079

/-! ## A021079.P16588952032293317214

`A016223(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021079.P16588952032293317214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 2 * a (n - 1)

end

end A021079.P16588952032293317214

namespace A021079

/-- `A016223(n)+2*a(n-1)` -/
def P16588952032293317214.Spec : Prop :=
  ∀ n, P16588952032293317214.a n = A021079 n

end A021079

/-! ## A021079.P17345543154822254668

`A171477(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A021079.P17345543154822254668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171477 n + 7 * a (n - 1)

end

end A021079.P17345543154822254668

namespace A021079

/-- `A171477(n)+7*a(n-1)` -/
def P17345543154822254668.Spec : Prop :=
  ∀ n, P17345543154822254668.a n = A021079 n

end A021079

/-! ## A021079.P14343782998061622285

`(A021364(n)+A021034(n))/2`
-/

namespace A021079.P14343782998061622285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021364 n + A021034 n : ℚ) / 2

end

end A021079.P14343782998061622285

namespace A021079

/-- `(A021364(n)+A021034(n))/2` -/
def P14343782998061622285.Spec : Prop :=
  ∀ n, P14343782998061622285.a n = (A021079 n : ℚ)

end A021079

/-! ## A021079.P7157507848567044299

`A016285(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A021079.P7157507848567044299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016285 n + a (A004273 n - (n : ℤ)).toNat

end

end A021079.P7157507848567044299

namespace A021079

/-- `A016285(n)+a(A004273(n)-n)` -/
def P7157507848567044299.Spec : Prop :=
  ∀ n, P7157507848567044299.a n = A021079 n

end A021079

/-! ## A021079.P4602735447452168474

`A021076(n)+A025965(n)-A021804(n)`
-/

namespace A021079.P4602735447452168474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021076 n + (A025965 n - A021804 n)

end

end A021079.P4602735447452168474

namespace A021079

/-- `A021076(n)+A025965(n)-A021804(n)` -/
def P4602735447452168474.Spec : Prop :=
  ∀ n, P4602735447452168474.a n = A021079 n

end A021079

/-! ## A021079.P7624111468527947719

`2*A021092(n)-A021234(n)`
-/

namespace A021079.P7624111468527947719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021092 n - A021234 n

end

end A021079.P7624111468527947719

namespace A021079

/-- `2*A021092(n)-A021234(n)` -/
def P7624111468527947719.Spec : Prop :=
  ∀ n, P7624111468527947719.a n = A021079 n

end A021079

/-! ## A021079.P3858290874445947250

`2*A021104(n)-A021894(n)`
-/

namespace A021079.P3858290874445947250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021104 n - A021894 n

end

end A021079.P3858290874445947250

namespace A021079

/-- `2*A021104(n)-A021894(n)` -/
def P3858290874445947250.Spec : Prop :=
  ∀ n, P3858290874445947250.a n = A021079 n

end A021079

/-!
# A021081: Decimal expansion of 1/77.

The programs for A021081, the canonical program `A021081.P1255992837692532354` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021081 has offset 0).

The definition of A021081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021081.P1255992837692532354

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021081

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P1255992837692532354.Spec : Prop :=
  ∀ n, P1255992837692532354.a n = A021081 n

theorem P1255992837692532354.correct : P1255992837692532354.Spec := by
  intro n
  simp only [A021081]

end A021081

/-!
# A021082: Decimal expansion of 1/78.

The programs for A021082, the canonical program `A021082.P18026910648949179078` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021082 has offset 0).

The definition of A021082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021082.P18026910648949179078

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8, a(4)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021082

/-- `9-(a(n-2)+a(n-4))` -/
def P18026910648949179078.Spec : Prop :=
  ∀ n, P18026910648949179078.a n = A021082 n

theorem P18026910648949179078.correct : P18026910648949179078.Spec := by
  intro n
  simp only [A021082]

end A021082

/-!
# A021084: Expansion of 1/((1-x)(1-2x)(1-4x)(1-9x)).

The programs for A021084, the canonical program `A021084.P12276329249881174431` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021084 has offset 0).

The definition of A021084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021084.P12276329249881174431

`(3*9^(n+3)-28*4^(n+3)+60*2^(n+3)-35)/840`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021084

/-- `(3*9^(n+3)-28*4^(n+3)+60*2^(n+3)-35)/840` -/
def P12276329249881174431.Spec : Prop :=
  ∀ n, P12276329249881174431.a n = (A021084 n : ℚ)

end A021084

/-! ## A021084.P18121431089832675054

`∑[A016291(n)]`
-/

namespace A021084.P18121431089832675054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021084.P18121431089832675054

namespace A021084

/-- `∑[A016291(n)]` -/
def P18121431089832675054.Spec : Prop :=
  ∀ n, P18121431089832675054.a n = A021084 n

end A021084

/-! ## A021084.P4769714284416277415

`A002451(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021084.P4769714284416277415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002451 n + 2 * a (n - 1)

end

end A021084.P4769714284416277415

namespace A021084

/-- `A002451(n)+2*a(n-1)` -/
def P4769714284416277415.Spec : Prop :=
  ∀ n, P4769714284416277415.a n = A021084 n

end A021084

/-! ## A021084.P947658210966374783

`2*A021194(n)-A021824(n)`
-/

namespace A021084.P947658210966374783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021194 n - A021824 n

end

end A021084.P947658210966374783

namespace A021084

/-- `2*A021194(n)-A021824(n)` -/
def P947658210966374783.Spec : Prop :=
  ∀ n, P947658210966374783.a n = A021084 n

end A021084

/-! ## A021084.P13319283729874497806

`2*A021229(n)-A025972(n)`
-/

namespace A021084.P13319283729874497806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021229 n - A025972 n

end

end A021084.P13319283729874497806

namespace A021084

/-- `2*A021229(n)-A025972(n)` -/
def P13319283729874497806.Spec : Prop :=
  ∀ n, P13319283729874497806.a n = A021084 n

end A021084

/-! ## A021084.P11329590173912519604

`A021079(n)+A021864(n)-A021229(n)`
-/

namespace A021084.P11329590173912519604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021079 n + (A021864 n - A021229 n)

end

end A021084.P11329590173912519604

namespace A021084

/-- `A021079(n)+A021864(n)-A021229(n)` -/
def P11329590173912519604.Spec : Prop :=
  ∀ n, P11329590173912519604.a n = A021084 n

end A021084

/-!
# A021085: Decimal expansion of 1/81.

The programs for A021085, the canonical program `A021085.P7432067649626125754` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021085 has offset 0).

The definition of A021085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021085.P7432067649626125754

`a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021085

/-- `a(n-9)` -/
def P7432067649626125754.Spec : Prop :=
  ∀ n, (P7432067649626125754.a n : ℤ) = A021085 n

theorem P7432067649626125754.correct : P7432067649626125754.Spec := by
  intro n
  simp only [A021085]

end A021085

/-!
# A021086: Decimal expansion of 1/82.

The programs for A021086, the canonical program `A021086.P7206642247580925711` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021086 has offset 0).

The definition of A021086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021086.P7206642247580925711

`a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=9, a(5)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021086

/-- `a(n-5)` -/
def P7206642247580925711.Spec : Prop :=
  ∀ n, (P7206642247580925711.a n : ℤ) = A021086 n

theorem P7206642247580925711.correct : P7206642247580925711.Spec := by
  intro n
  simp only [A021086]

end A021086

/-!
# A021087: Decimal expansion of 1/83.

The programs for A021087, there is no canonical definition to state claims against.
-/

/-! ## A021087.P10292157802683851424

`A021336(n+3)`
-/

namespace A021087.P10292157802683851424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021336 (n + 3)

end

end A021087.P10292157802683851424

/-!
# A021089: Decimal expansion of 1/85.

The programs for A021089, there is no canonical definition to state claims against.
-/

/-! ## A021089.P17679398496683199294

`and(A021038(n+3), A260196(n))`
-/

namespace A021089.P17679398496683199294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A021038 (n + 3)) (A260196 n)

end

end A021089.P17679398496683199294

/-!
# A021092: Expansion of 1/((1-x)*(1-2*x)*(1-4*x)*(1-10*x)).

The programs for A021092, the canonical program `A021092.P13933325179621122619` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021092 has offset 0).

The definition of A021092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021092.P6369461858001574863

`∑[2^n*∑[2^n*∑[(5/2)^n]]]`
-/

namespace A021092.P6369461858001574863
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021092.P6369461858001574863

namespace A021092

/-- `∑[2^n*∑[2^n*∑[(5/2)^n]]]` -/
def P6369461858001574863.Spec : Prop :=
  ∀ n, P6369461858001574863.a n = (A021092 n : ℚ)

end A021092

/-! ## A021092.P13933325179621122619

`or(1, ∑[A016292(n)])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021092

/-- `or(1, ∑[A016292(n)])` -/
def P13933325179621122619.Spec : Prop :=
  ∀ n, P13933325179621122619.a n = A021092 n

theorem P13933325179621122619.correct : P13933325179621122619.Spec := by
  intro n
  simp only [A021092]

end A021092

/-! ## A021092.P11129243380716701615

`A016205(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021092.P11129243380716701615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016205 n + 4 * a (n - 1)

end

end A021092.P11129243380716701615

namespace A021092

/-- `A016205(n)+4*a(n-1)` -/
def P11129243380716701615.Spec : Prop :=
  ∀ n, P11129243380716701615.a n = A021092 n

end A021092

/-! ## A021092.P16594058783558462626

`A171477(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021092.P16594058783558462626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171477 n + 10 * a (n - 1)

end

end A021092.P16594058783558462626

namespace A021092

/-- `A171477(n)+10*a(n-1)` -/
def P16594058783558462626.Spec : Prop :=
  ∀ n, P16594058783558462626.a n = A021092 n

end A021092

/-! ## A021092.P16816307591904768947

`a(n-1)+A016225(n)+a(n-1)` with `a(0)=1`
-/

namespace A021092.P16816307591904768947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016225 n + a (n - 1))

end

end A021092.P16816307591904768947

namespace A021092

/-- `a(n-1)+A016225(n)+a(n-1)` -/
def P16816307591904768947.Spec : Prop :=
  ∀ n, P16816307591904768947.a n = A021092 n

end A021092

/-! ## A021092.P5221383569215207798

`(A021234(n)+A021079(n))/2`
-/

namespace A021092.P5221383569215207798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021234 n + A021079 n : ℚ) / 2

end

end A021092.P5221383569215207798

namespace A021092

/-- `(A021234(n)+A021079(n))/2` -/
def P5221383569215207798.Spec : Prop :=
  ∀ n, P5221383569215207798.a n = (A021092 n : ℚ)

end A021092

/-! ## A021092.P12421548937951835974

`(A021829(n)+A021076(n))/2`
-/

namespace A021092.P12421548937951835974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021829 n + A021076 n : ℚ) / 2

end

end A021092.P12421548937951835974

namespace A021092

/-- `(A021829(n)+A021076(n))/2` -/
def P12421548937951835974.Spec : Prop :=
  ∀ n, P12421548937951835974.a n = (A021092 n : ℚ)

end A021092

/-! ## A021092.P13632004765696897062

`2*A021202(n)-A021829(n)`
-/

namespace A021092.P13632004765696897062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021202 n - A021829 n

end

end A021092.P13632004765696897062

namespace A021092

/-- `2*A021202(n)-A021829(n)` -/
def P13632004765696897062.Spec : Prop :=
  ∀ n, P13632004765696897062.a n = A021092 n

end A021092

/-!
# A021094: Expansion of 1/((1-x)*(1-2*x)*(1-4*x)*(1-11*x)).

The programs for A021094, there is no canonical definition to state claims against.
-/

/-! ## A021094.P2752492051192601755

`∑[4^n+11*a(n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A021094.P2752492051192601755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A021094.P2752492051192601755

/-! ## A021094.P6361889367610754110

`∑[A016293(n)]`
-/

namespace A021094.P6361889367610754110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021094.P6361889367610754110

/-! ## A021094.P4630906645962329646

`A016226(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A021094.P4630906645962329646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016226 n + 2 * a (n - 1)

end

end A021094.P4630906645962329646

/-! ## A021094.P11219629678070651924

`2*A016226(n)-A016206(n)`
-/

namespace A021094.P11219629678070651924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016226 n - A016206 n

end

end A021094.P11219629678070651924

/-! ## A021094.P14219593680240766990

`(A025969(n)+A021076(n))/2`
-/

namespace A021094.P14219593680240766990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025969 n + A021076 n : ℚ) / 2

end

end A021094.P14219593680240766990

/-! ## A021094.P16072698239844122770

`2*A021244(n)-A025974(n)`
-/

namespace A021094.P16072698239844122770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021244 n - A025974 n

end

end A021094.P16072698239844122770

/-! ## A021094.P4137481268485701542

`2*A021394(n)-A025928(n)`
-/

namespace A021094.P4137481268485701542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021394 n - A025928 n

end

end A021094.P4137481268485701542

/-! ## A021094.P13737805925901050861

`(A016226(n+1)-A016206(n+1))/2`
-/

namespace A021094.P13737805925901050861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016226 (n + 1) - A016206 (n + 1) : ℚ) / 2

end

end A021094.P13737805925901050861

/-!
# A021095: Decimal expansion of 1/91.

The programs for A021095, the canonical program `A021095.P12406577533088204463` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021095 has offset 0).

The definition of A021095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021095.P12406577533088204463

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021095

/-- `9-a(n-3)` -/
def P12406577533088204463.Spec : Prop :=
  ∀ n, P12406577533088204463.a n = A021095 n

theorem P12406577533088204463.correct : P12406577533088204463.Spec := by
  intro n
  simp only [A021095]

end A021095

/-!
# A021097: Decimal expansion of 1/93.

The programs for A021097, there is no canonical definition to state claims against.
-/

/-! ## A021097.P11469212239332545289

`A021934(n+1)`
-/

namespace A021097.P11469212239332545289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021934 (n + 1)

end

end A021097.P11469212239332545289

