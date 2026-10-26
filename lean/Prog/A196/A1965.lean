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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A196506: a(n) = 1*3*5 + 3*5*7 + 5*7*9 + ... (n terms).

The programs for A196506, the canonical program `A196506.P13094109565414344105` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196506 has offset 0).

The definition of A196506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196506.P13094109565414344105

`2*n^4+8*n^3+7*n²-2*n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196506

/-- `2*n^4+8*n^3+7*n²-2*n` -/
def P13094109565414344105.Spec : Prop :=
  ∀ n, P13094109565414344105.a n = A196506 n

theorem P13094109565414344105.correct : P13094109565414344105.Spec := by
  intro n
  simp only [A196506]

end A196506

/-! ## A196506.P2876426235518794766

`C(2*n*(n+2), 2)`
-/

namespace A196506.P2876426235518794766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n * (n + 2))) 2

end

end A196506.P2876426235518794766

namespace A196506

/-- `C(2*n*(n+2), 2)` -/
def P2876426235518794766.Spec : Prop :=
  ∀ n, (P2876426235518794766.a n : ℤ) = A196506 n

theorem P2876426235518794766.correct : P2876426235518794766.Spec := by
  intro n
  simp only [A196506, Nat.add_sub_cancel, A196506.P2876426235518794766.a, A196506.P13094109565414344105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196506

/-! ## A196506.P14290215044291994284

`lcm(1-2*n*(n+2), n*(n+2))`
-/

namespace A196506.P14290215044291994284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 * (n * (n + 2)) : ℤ)) (n * (n + 2) : ℤ)

end

end A196506.P14290215044291994284

namespace A196506

/-- `lcm(1-2*n*(n+2), n*(n+2))` -/
def P14290215044291994284.Spec : Prop :=
  ∀ n, (P14290215044291994284.a n : ℤ) = A196506 n

end A196506

/-! ## A196506.P1051415740926250762

`(A054000(n+1)-1)*A005563(n)`
-/

namespace A196506.P1051415740926250762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054000 (n + 1) - 1) * A005563 n

end

end A196506.P1051415740926250762

namespace A196506

/-- `(A054000(n+1)-1)*A005563(n)` -/
def P1051415740926250762.Spec : Prop :=
  ∀ n, P1051415740926250762.a n = A196506 n

theorem P1051415740926250762.correct : P1051415740926250762.Spec := by
  intro n
  simp only [A196506, Nat.add_sub_cancel, A196506.P1051415740926250762.a, A196506.P13094109565414344105.a, A005563, A005563.P13300161655551567421.a, A054000, A054000.P17308049870375270601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196506

/-! ## A196506.P14661742965797117388

`(A014209(n)+A002378(n))*A005563(n)`
-/

namespace A196506.P14661742965797117388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014209 n + A002378 n) * A005563 n

end

end A196506.P14661742965797117388

namespace A196506

/-- `(A014209(n)+A002378(n))*A005563(n)` -/
def P14661742965797117388.Spec : Prop :=
  ∀ n, P14661742965797117388.a n = A196506 n

theorem P14661742965797117388.correct : P14661742965797117388.Spec := by
  intro n
  simp only [A196506, Nat.add_sub_cancel, A196506.P14661742965797117388.a, A196506.P13094109565414344105.a, A002378, A002378.P6342434596694243671.a, A005563, A005563.P13300161655551567421.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196506

/-! ## A196506.P12453246506766900881

`(A008865(n+1)+A005563(n))*A005563(n)`
-/

namespace A196506.P12453246506766900881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008865 (n + 1) + A005563 n) * A005563 n

end

end A196506.P12453246506766900881

namespace A196506

/-- `(A008865(n+1)+A005563(n))*A005563(n)` -/
def P12453246506766900881.Spec : Prop :=
  ∀ n, P12453246506766900881.a n = A196506 n

theorem P12453246506766900881.correct : P12453246506766900881.Spec := by
  intro n
  simp only [A196506, Nat.add_sub_cancel, A196506.P12453246506766900881.a, A196506.P13094109565414344105.a, A005563, A005563.P13300161655551567421.a, A008865, A008865.P16699731729816255732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196506

/-! ## A196506.P12044489600708064807

`(2-A056220(n+1))*A258837(n+1)`
-/

namespace A196506.P12044489600708064807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A056220 (n + 1)) * A258837 (n + 1)

end

end A196506.P12044489600708064807

namespace A196506

/-- `(2-A056220(n+1))*A258837(n+1)` -/
def P12044489600708064807.Spec : Prop :=
  ∀ n, P12044489600708064807.a n = A196506 n

theorem P12044489600708064807.correct : P12044489600708064807.Spec := by
  intro n
  simp only [A196506, Nat.add_sub_cancel, A196506.P12044489600708064807.a, A196506.P13094109565414344105.a, A056220, A056220.P5045014962229294692.a, A258837, A258837.P16350684666179390251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196506

/-! ## A196506.P7028108229143009564

`n*(n+2)*A179207(2*n+1)`
-/

namespace A196506.P7028108229143009564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) * A179207 (2 * n + 1)

end

end A196506.P7028108229143009564

namespace A196506

/-- `n*(n+2)*A179207(2*n+1)` -/
def P7028108229143009564.Spec : Prop :=
  ∀ n, P7028108229143009564.a n = A196506 n

end A196506

/-! ## A196506.P18383277039652996765

`record[C(n*A084964(n), 2)]`
-/

namespace A196506.P18383277039652996765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * A084964 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196506.P18383277039652996765

namespace A196506

/-- `record[C(n*A084964(n), 2)]` -/
def P18383277039652996765.Spec : Prop :=
  ∀ n, (P18383277039652996765.a n : ℤ) = A196506 n

end A196506

/-! ## A196506.P7633722611034279420

`record[C(2*A276584(n), 2)]`
-/

namespace A196506.P7633722611034279420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A276584 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196506.P7633722611034279420

namespace A196506

/-- `record[C(2*A276584(n), 2)]` -/
def P7633722611034279420.Spec : Prop :=
  ∀ n, (P7633722611034279420.a n : ℤ) = A196506 n

end A196506

/-! ## A196506.P14326616816601903689

`record[C(2*A276574(n), 2)]`
-/

namespace A196506.P14326616816601903689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A276574 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196506.P14326616816601903689

namespace A196506

/-- `record[C(2*A276574(n), 2)]` -/
def P14326616816601903689.Spec : Prop :=
  ∀ n, (P14326616816601903689.a n : ℤ) = A196506 n

end A196506

/-! ## A196506.P13698328339069311542

`C(A054000(n+1), 2)/A007318(∑[n])`
-/

namespace A196506.P13698328339069311542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A054000 (n + 1)).toNat 2 : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A196506.P13698328339069311542

namespace A196506

/-- `C(A054000(n+1), 2)/A007318(∑[n])` -/
def P13698328339069311542.Spec : Prop :=
  ∀ n, P13698328339069311542.a n = (A196506 n : ℚ)

end A196506

/-! ## A196506.P12664699539740087630

`A000217(A132209(n)+2*n)`
-/

namespace A196506.P12664699539740087630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A132209 n + (2 * n : ℤ)).toNat

end

end A196506.P12664699539740087630

namespace A196506

/-- `A000217(A132209(n)+2*n)` -/
def P12664699539740087630.Spec : Prop :=
  ∀ n, P12664699539740087630.a n = A196506 n

end A196506

/-! ## A196506.P7195856811754637797

`A000217(A132209(n)+n+n)`
-/

namespace A196506.P7195856811754637797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A132209 n + (n : ℤ) + (n : ℤ)).toNat

end

end A196506.P7195856811754637797

namespace A196506

/-- `A000217(A132209(n)+n+n)` -/
def P7195856811754637797.Spec : Prop :=
  ∀ n, P7195856811754637797.a n = A196506 n

end A196506

/-! ## A196506.P8280450863149454139

`A000384(n*(n+2))`
-/

namespace A196506.P8280450863149454139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n * (n + 2))

end

end A196506.P8280450863149454139

namespace A196506

/-- `A000384(n*(n+2))` -/
def P8280450863149454139.Spec : Prop :=
  ∀ n, P8280450863149454139.a n = A196506 n

theorem P8280450863149454139.correct : P8280450863149454139.Spec := by
  intro n
  simp only [A196506, Nat.add_sub_cancel, A196506.P8280450863149454139.a, A196506.P13094109565414344105.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196506

/-! ## A196506.P10528873237969772459

`A000217(A004273(n*(n+2)))`
-/

namespace A196506.P10528873237969772459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004273 (n * (n + 2))).toNat

end

end A196506.P10528873237969772459

namespace A196506

/-- `A000217(A004273(n*(n+2)))` -/
def P10528873237969772459.Spec : Prop :=
  ∀ n, P10528873237969772459.a n = A196506 n

end A196506

/-! ## A196506.P14514097812156156315

`A000217(A163985(n*(n+2)))`
-/

namespace A196506.P14514097812156156315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A163985 (n * (n + 2))).toNat

end

end A196506.P14514097812156156315

namespace A196506

/-- `A000217(A163985(n*(n+2)))` -/
def P14514097812156156315.Spec : Prop :=
  ∀ n, P14514097812156156315.a n = A196506 n

end A196506

/-!
# A196507: a(n) = n*(3*n^2 + 6*n + 1).

The programs for A196507, the canonical program `A196507.P14709704508244085490` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196507 has offset 0).

The definition of A196507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n²+6*n+1)` (program `A196507.P14709704508244085490`, by `A196507.P14709704508244085490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196507.P14709704508244085490

`n*(3*n²+6*n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196507

/-- `n*(3*n²+6*n+1)` -/
def P14709704508244085490.Spec : Prop :=
  ∀ n, (P14709704508244085490.a n : ℤ) = A196507 n

theorem P14709704508244085490.correct : P14709704508244085490.Spec := by
  intro n
  simp only [A196507]

end A196507

/-! ## A196507.P1188581420789911639

`lcm(n, ∑[ogf((1+7x-2x^2)/(1-2x+x^2))])`
-/

namespace A196507.P1188581420789911639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -2] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196507.P1188581420789911639

namespace A196507

/-- `lcm(n, ∑[ogf((1+7x-2x^2)/(1-2x+x^2))])` -/
def P1188581420789911639.Spec : Prop :=
  ∀ n, (P1188581420789911639.a n : ℤ) = A196507 n

end A196507

/-! ## A196507.P9816213456099328403

`floor(n*∑[a(n-1)+6])` with `a(0)=1, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A196507.P9816213456099328403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196507.P9816213456099328403

namespace A196507

/-- `floor(n*∑[a(n-1)+6])` -/
def P9816213456099328403.Spec : Prop :=
  ∀ n, (P9816213456099328403.a n : ℤ) = A196507 n

end A196507

/-! ## A196507.P3873535687746406313

`ceil(n*∑[a(n-1)+6])` with `a(0)=1, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A196507.P3873535687746406313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196507.P3873535687746406313

namespace A196507

/-- `ceil(n*∑[a(n-1)+6])` -/
def P3873535687746406313.Spec : Prop :=
  ∀ n, (P3873535687746406313.a n : ℤ) = A196507 n

end A196507

/-! ## A196507.P9043518646590260475

`round(n*∑[a(n-1)+6])` with `a(0)=1, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A196507.P9043518646590260475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196507.P9043518646590260475

namespace A196507

/-- `round(n*∑[a(n-1)+6])` -/
def P9043518646590260475.Spec : Prop :=
  ∀ n, (P9043518646590260475.a n : ℤ) = A196507 n

end A196507

/-! ## A196507.P4315223140438334907

`∑[2*(C(3*n+1, 2)-1)]+2`
-/

namespace A196507.P4315223140438334907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (3 * n + 1) 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A196507.P4315223140438334907

namespace A196507

/-- `∑[2*(C(3*n+1, 2)-1)]+2` -/
def P4315223140438334907.Spec : Prop :=
  ∀ n, P4315223140438334907.a n = A196507 n

end A196507

/-! ## A196507.P8406037735826904728

`A179259(n)-2`
-/

namespace A196507.P8406037735826904728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179259 n - 2

end

end A196507.P8406037735826904728

namespace A196507

/-- `A179259(n)-2` -/
def P8406037735826904728.Spec : Prop :=
  ∀ n, P8406037735826904728.a n = A196507 n

theorem P8406037735826904728.correct : P8406037735826904728.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P8406037735826904728.a, A196507.P14709704508244085490.a, A179259, A179259.P11329462594109540401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P16563013747893567209

`A059986(n)-2*n`
-/

namespace A196507.P16563013747893567209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n - (2 * n : ℤ)

end

end A196507.P16563013747893567209

namespace A196507

/-- `A059986(n)-2*n` -/
def P16563013747893567209.Spec : Prop :=
  ∀ n, P16563013747893567209.a n = A196507 n

theorem P16563013747893567209.correct : P16563013747893567209.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P16563013747893567209.a, A196507.P14709704508244085490.a, A059986, A059986.P854937850389378493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P9462746164840882876

`n*A067725(n)+n`
-/

namespace A196507.P9462746164840882876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067725 n + (n : ℤ)

end

end A196507.P9462746164840882876

namespace A196507

/-- `n*A067725(n)+n` -/
def P9462746164840882876.Spec : Prop :=
  ∀ n, P9462746164840882876.a n = A196507 n

theorem P9462746164840882876.correct : P9462746164840882876.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P9462746164840882876.a, A196507.P14709704508244085490.a, A067725, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P12611334186715419464

`∑[A045945(n)-2]+2`
-/

namespace A196507.P12611334186715419464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A196507.P12611334186715419464

namespace A196507

/-- `∑[A045945(n)-2]+2` -/
def P12611334186715419464.Spec : Prop :=
  ∀ n, P12611334186715419464.a n = A196507 n

end A196507

/-! ## A196507.P16045680170418697633

`A027903(n)+2*n²`
-/

namespace A196507.P16045680170418697633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n + (2 * n ^ 2 : ℤ)

end

end A196507.P16045680170418697633

namespace A196507

/-- `A027903(n)+2*n²` -/
def P16045680170418697633.Spec : Prop :=
  ∀ n, P16045680170418697633.a n = A196507 n

theorem P16045680170418697633.correct : P16045680170418697633.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P16045680170418697633.a, A196507.P14709704508244085490.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P13524518342173466651

`A067389(n)+(2*n)²`
-/

namespace A196507.P13524518342173466651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + ((2 * n) ^ 2 : ℤ)

end

end A196507.P13524518342173466651

namespace A196507

/-- `A067389(n)+(2*n)²` -/
def P13524518342173466651.Spec : Prop :=
  ∀ n, P13524518342173466651.a n = A196507 n

theorem P13524518342173466651.correct : P13524518342173466651.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P13524518342173466651.a, A196507.P14709704508244085490.a, A067389, A067389.P14097551594125527113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P12934676503982203929

`A257042(n)+n-n²`
-/

namespace A196507.P12934676503982203929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257042 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A196507.P12934676503982203929

namespace A196507

/-- `A257042(n)+n-n²` -/
def P12934676503982203929.Spec : Prop :=
  ∀ n, P12934676503982203929.a n = A196507 n

theorem P12934676503982203929.correct : P12934676503982203929.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P12934676503982203929.a, A196507.P14709704508244085490.a, A257042, A257042.P6657327043587294459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P16393557320125092289

`Δ[n²²]-A005491(n)`
-/

namespace A196507.P16393557320125092289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A005491 n

end

end A196507.P16393557320125092289

namespace A196507

/-- `Δ[n²²]-A005491(n)` -/
def P16393557320125092289.Spec : Prop :=
  ∀ n, P16393557320125092289.a n = A196507 n

theorem P16393557320125092289.correct : P16393557320125092289.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P16393557320125092289.f1, A196507.P16393557320125092289.a, A196507.P14709704508244085490.a, A005491, A005491.P208303026648680842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P2865911618223817361

`(n+2)*A056107(n)-2`
-/

namespace A196507.P2865911618223817361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A056107 n - 2

end

end A196507.P2865911618223817361

namespace A196507

/-- `(n+2)*A056107(n)-2` -/
def P2865911618223817361.Spec : Prop :=
  ∀ n, P2865911618223817361.a n = A196507 n

theorem P2865911618223817361.correct : P2865911618223817361.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P2865911618223817361.a, A196507.P14709704508244085490.a, A056107, A056107.P16256314836093114361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P3313705389390877994

`(n+2)*A033428(n)+n`
-/

namespace A196507.P3313705389390877994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A033428 n + (n : ℤ)

end

end A196507.P3313705389390877994

namespace A196507

/-- `(n+2)*A033428(n)+n` -/
def P3313705389390877994.Spec : Prop :=
  ∀ n, P3313705389390877994.a n = A196507 n

theorem P3313705389390877994.correct : P3313705389390877994.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P3313705389390877994.a, A196507.P14709704508244085490.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P1497070294699172714

`3*n*A005563(n)+n`
-/

namespace A196507.P1497070294699172714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A005563 n) + (n : ℤ)

end

end A196507.P1497070294699172714

namespace A196507

/-- `3*n*A005563(n)+n` -/
def P1497070294699172714.Spec : Prop :=
  ∀ n, P1497070294699172714.a n = A196507 n

theorem P1497070294699172714.correct : P1497070294699172714.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P1497070294699172714.a, A196507.P14709704508244085490.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P14620273614237304864

`(A016777(n)+5)*n²+n`
-/

namespace A196507.P14620273614237304864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + 5) * (n ^ 2 : ℤ) + (n : ℤ)

end

end A196507.P14620273614237304864

namespace A196507

/-- `(A016777(n)+5)*n²+n` -/
def P14620273614237304864.Spec : Prop :=
  ∀ n, P14620273614237304864.a n = A196507 n

theorem P14620273614237304864.correct : P14620273614237304864.Spec := by
  intro n
  simp only [A196507, Nat.add_sub_cancel, A196507.P14620273614237304864.a, A196507.P14709704508244085490.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196507

/-! ## A196507.P17365719034265313496

`A022275(n)+A005945(n)`
-/

namespace A196507.P17365719034265313496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022275 n + A005945 n

end

end A196507.P17365719034265313496

namespace A196507

/-- `A022275(n)+A005945(n)` -/
def P17365719034265313496.Spec : Prop :=
  ∀ n, P17365719034265313496.a n = A196507 n

end A196507

/-! ## A196507.P13854262434393533299

`A071230(n)+A022276(n)`
-/

namespace A196507.P13854262434393533299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071230 n + A022276 n

end

end A196507.P13854262434393533299

namespace A196507

/-- `A071230(n)+A022276(n)` -/
def P13854262434393533299.Spec : Prop :=
  ∀ n, P13854262434393533299.a n = A196507 n

end A196507

/-!
# A196508: a(n) = 2^n*(n^2 - n + 4) - 4.

The programs for A196508, the canonical program `A196508.P5950256969241296671` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196508 has offset 0).

The definition of A196508 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n²-n+4)-4` (program `A196508.P5950256969241296671`, by `A196508.P5950256969241296671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196508.P5950256969241296671

`2^n*(n²-n+4)-4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196508

/-- `2^n*(n²-n+4)-4` -/
def P5950256969241296671.Spec : Prop :=
  ∀ n, P5950256969241296671.a n = A196508 n

theorem P5950256969241296671.correct : P5950256969241296671.Spec := by
  intro n
  simp only [A196508]

end A196508

/-! ## A196508.P3652694986389246493

`4*A053545(n)`
-/

namespace A196508.P3652694986389246493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A053545 n

end

end A196508.P3652694986389246493

namespace A196508

/-- `4*A053545(n)` -/
def P3652694986389246493.Spec : Prop :=
  ∀ n, P3652694986389246493.a n = A196508 n

end A196508

/-! ## A196508.P11924027449079851460

`4*(A053730(n)-1)`
-/

namespace A196508.P11924027449079851460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A053730 n - 1)

end

end A196508.P11924027449079851460

namespace A196508

/-- `4*(A053730(n)-1)` -/
def P11924027449079851460.Spec : Prop :=
  ∀ n, P11924027449079851460.a n = A196508 n

end A196508

/-! ## A196508.P16310259067505579563

`∑[(∑[n]+1)*A155559(n)]`
-/

namespace A196508.P16310259067505579563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196508.P16310259067505579563

namespace A196508

/-- `∑[(∑[n]+1)*A155559(n)]` -/
def P16310259067505579563.Spec : Prop :=
  ∀ n, P16310259067505579563.a n = A196508 n

end A196508

/-! ## A196508.P15206832477801557986

`∑[∑[char[1]+n]*A000079(n)]`
-/

namespace A196508.P15206832477801557986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196508.P15206832477801557986

namespace A196508

/-- `∑[∑[char[1]+n]*A000079(n)]` -/
def P15206832477801557986.Spec : Prop :=
  ∀ n, P15206832477801557986.a n = A196508 n

end A196508

/-! ## A196508.P15683866753001217824

`4*(A001815(n)+2^n-1)`
-/

namespace A196508.P15683866753001217824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001815 n + (2 ^ n : ℤ) - 1)

end

end A196508.P15683866753001217824

namespace A196508

/-- `4*(A001815(n)+2^n-1)` -/
def P15683866753001217824.Spec : Prop :=
  ∀ n, P15683866753001217824.a n = A196508 n

end A196508

/-! ## A196508.P1381558867925855839

`∑[2*(∑[n]+1)*A131577(n)]`
-/

namespace A196508.P1381558867925855839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℕ) : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196508.P1381558867925855839

namespace A196508

/-- `∑[2*(∑[n]+1)*A131577(n)]` -/
def P1381558867925855839.Spec : Prop :=
  ∀ n, P1381558867925855839.a n = A196508 n

end A196508

/-! ## A196508.P3401543019126443607

`4*(2^(n-1)*∑[n]-∑[A139756(n)])`
-/

namespace A196508.P3401543019126443607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ))

end

end A196508.P3401543019126443607

namespace A196508

/-- `4*(2^(n-1)*∑[n]-∑[A139756(n)])` -/
def P3401543019126443607.Spec : Prop :=
  ∀ n, P3401543019126443607.a n = (A196508 n : ℚ)

end A196508

/-! ## A196508.P7936162110694171749

`4*floor((∑[(A000217(n)+1)*2^n]+1)/4)`
-/

namespace A196508.P7936162110694171749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌋

end

end A196508.P7936162110694171749

namespace A196508

/-- `4*floor((∑[(A000217(n)+1)*2^n]+1)/4)` -/
def P7936162110694171749.Spec : Prop :=
  ∀ n, P7936162110694171749.a n = A196508 n

end A196508

/-! ## A196508.P3213774209593353299

`lcm(A040002(n), A053545(n))`
-/

namespace A196508.P3213774209593353299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040002 n) (A053545 n)

end

end A196508.P3213774209593353299

namespace A196508

/-- `lcm(A040002(n), A053545(n))` -/
def P3213774209593353299.Spec : Prop :=
  ∀ n, (P3213774209593353299.a n : ℤ) = A196508 n

end A196508

/-! ## A196508.P18328529732145316737

`2*(A000225(n)+∑[A001788(n)])`
-/

namespace A196508.P18328529732145316737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000225 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196508.P18328529732145316737

namespace A196508

/-- `2*(A000225(n)+∑[A001788(n)])` -/
def P18328529732145316737.Spec : Prop :=
  ∀ n, P18328529732145316737.a n = A196508 n

end A196508

/-! ## A196508.P10984013779025686987

`∑[(A000225(n)+A157532(n+1)-2)*(∑[n]+1)]`
-/

namespace A196508.P10984013779025686987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + (A157532 (n + 1) - 2)) * ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196508.P10984013779025686987

namespace A196508

/-- `∑[(A000225(n)+A157532(n+1)-2)*(∑[n]+1)]` -/
def P10984013779025686987.Spec : Prop :=
  ∀ n, P10984013779025686987.a n = A196508 n

end A196508

/-! ## A196508.P14013149131818917130

`(A055581(n)-1+n)/2`
-/

namespace A196508.P14013149131818917130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055581 n - 1 + (n : ℤ) : ℚ) / 2

end

end A196508.P14013149131818917130

namespace A196508

/-- `(A055581(n)-1+n)/2` -/
def P14013149131818917130.Spec : Prop :=
  ∀ n, P14013149131818917130.a n = (A196508 n : ℚ)

theorem P14013149131818917130.correct : P14013149131818917130.Spec := by
  intro n
  simp only [A196508, Nat.add_sub_cancel, A196508.P14013149131818917130.a, A196508.P5950256969241296671.a, A055581, A055581.P13846569690494246256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196508

/-! ## A196508.P4791882746509147218

`and(A217528(2*(n+1))-1, A217528(n+2))`
-/

namespace A196508.P4791882746509147218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217528 (2 * (n + 1)) - 1) (A217528 (n + 2))

end

end A196508.P4791882746509147218

namespace A196508

/-- `and(A217528(2*(n+1))-1, A217528(n+2))` -/
def P4791882746509147218.Spec : Prop :=
  ∀ n, P4791882746509147218.a n = A196508 n

end A196508

/-! ## A196508.P9495724572904823489

`and(2*A217528(2*n+2), A217528(n+2))`
-/

namespace A196508.P9495724572904823489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A217528 (2 * n + 2)) (A217528 (n + 2))

end

end A196508.P9495724572904823489

namespace A196508

/-- `and(2*A217528(2*n+2), A217528(n+2))` -/
def P9495724572904823489.Spec : Prop :=
  ∀ n, P9495724572904823489.a n = A196508 n

end A196508

/-!
# A196512: Expansion of g.f. (1-9*x)/(1-28*x).

The programs for A196512, the canonical program `A196512.P4273698226303702933` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196512 has offset 0).

The definition of A196512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-9x)/(1-28x))` (program `A196512.P4273698226303702933`, by `A196512.P4273698226303702933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196512.P4273698226303702933

`ogf((1-9x)/(1-28x))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196512

/-- `ogf((1-9x)/(1-28x))` -/
def P4273698226303702933.Spec : Prop :=
  ∀ n, P4273698226303702933.a n = A196512 n

theorem P4273698226303702933.correct : P4273698226303702933.Spec := by
  intro n
  simp only [A196512]

end A196512

/-! ## A196512.P15593509273066170411

`28*a(n-1)` with `a(0)=1, a(1)=19`
-/

namespace A196512.P15593509273066170411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n a =>
  28 * a (n - 1)

end

end A196512.P15593509273066170411

namespace A196512

/-- `28*a(n-1)` -/
def P15593509273066170411.Spec : Prop :=
  ∀ n, (P15593509273066170411.a n : ℤ) = A196512 n

end A196512

/-! ## A196512.P7721909862005632769

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=19, a(2)=28`
-/

namespace A196512.P7721909862005632769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 19, 28] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196512.P7721909862005632769

namespace A196512

/-- `abs(∏[-a(n-1)])` -/
def P7721909862005632769.Spec : Prop :=
  ∀ n, P7721909862005632769.a n = A196512 n

end A196512

/-! ## A196512.P16938653031716122551

`lcm(29, a(n-1))-a(n-1)` with `a(0)=1, a(1)=19`
-/

namespace A196512.P16938653031716122551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  (Int.lcm 29 (a (n - 1)) : ℤ) - a (n - 1)

end

end A196512.P16938653031716122551

namespace A196512

/-- `lcm(29, a(n-1))-a(n-1)` -/
def P16938653031716122551.Spec : Prop :=
  ∀ n, P16938653031716122551.a n = A196512 n

end A196512

/-! ## A196512.P10023692472918699979

`(A067427(n)+A009972(n))/2`
-/

namespace A196512.P10023692472918699979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067427 n + A009972 n : ℚ) / 2

end

end A196512.P10023692472918699979

namespace A196512

/-- `(A067427(n)+A009972(n))/2` -/
def P10023692472918699979.Spec : Prop :=
  ∀ n, P10023692472918699979.a n = (A196512 n : ℚ)

end A196512

/-!
# A196513: a(n) = 1*4*7 + 4*7*10 + 7*10*13 + ... (n terms).

The programs for A196513, the canonical program `A196513.P9529469040951413948` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196513 has offset 0).

The definition of A196513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196513.P9529469040951413948

`n*(3*n+5)*(9*n²+15*n-10)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196513

/-- `n*(3*n+5)*(9*n²+15*n-10)/4` -/
def P9529469040951413948.Spec : Prop :=
  ∀ n, P9529469040951413948.a n = (A196513 n : ℚ)

end A196513

/-! ## A196513.P4157356854998232598

`∑[(A130824(n)-n)*A085001(n)]`
-/

namespace A196513.P4157356854998232598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130824 n - (n : ℤ)) * A085001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196513.P4157356854998232598

namespace A196513

/-- `∑[(A130824(n)-n)*A085001(n)]` -/
def P4157356854998232598.Spec : Prop :=
  ∀ n, P4157356854998232598.a n = A196513 n

end A196513

/-! ## A196513.P13457347428306981368

`A047915(A115067(n+1))-3*A143689(n+1)`
-/

namespace A196513.P13457347428306981368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 (A115067 (n + 1)).toNat - 3 * A143689 (n + 1)

end

end A196513.P13457347428306981368

namespace A196513

/-- `A047915(A115067(n+1))-3*A143689(n+1)` -/
def P13457347428306981368.Spec : Prop :=
  ∀ n, P13457347428306981368.a n = A196513 n

end A196513

/-! ## A196513.P11333288982221346182

`A047915(A115067(n+1))-Δ[n*A290768(n+1)]`
-/

namespace A196513.P11333288982221346182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 (A115067 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A196513.P11333288982221346182

namespace A196513

/-- `A047915(A115067(n+1))-Δ[n*A290768(n+1)]` -/
def P11333288982221346182.Spec : Prop :=
  ∀ n, P11333288982221346182.a n = A196513 n

end A196513

/-! ## A196513.P4511179292499885883

`A047915(A115067(n+1))-3*(A000326(n+1)+1)`
-/

namespace A196513.P4511179292499885883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 (A115067 (n + 1)).toNat - 3 * (A000326 (n + 1) + 1)

end

end A196513.P4511179292499885883

namespace A196513

/-- `A047915(A115067(n+1))-3*(A000326(n+1)+1)` -/
def P4511179292499885883.Spec : Prop :=
  ∀ n, P4511179292499885883.a n = A196513 n

end A196513

/-! ## A196513.P6019456184286168927

`A047915(A115067(n+1))-3*(A005449(n+1)-n)`
-/

namespace A196513.P6019456184286168927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 (A115067 (n + 1)).toNat - 3 * (A005449 (n + 1) - (n : ℤ))

end

end A196513.P6019456184286168927

namespace A196513

/-- `A047915(A115067(n+1))-3*(A005449(n+1)-n)` -/
def P6019456184286168927.Spec : Prop :=
  ∀ n, P6019456184286168927.a n = A196513 n

end A196513

/-! ## A196513.P13164837996467178492

`A047915(A115067(n+1))-3*(A005448(n+1)+n+1)`
-/

namespace A196513.P13164837996467178492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 (A115067 (n + 1)).toNat - 3 * (A005448 (n + 1) + (n + 1 : ℤ))

end

end A196513.P13164837996467178492

namespace A196513

/-- `A047915(A115067(n+1))-3*(A005448(n+1)+n+1)` -/
def P13164837996467178492.Spec : Prop :=
  ∀ n, P13164837996467178492.a n = A196513 n

end A196513

/-! ## A196513.P12026080068888712479

`A047915(A115067(n+1))-3*(n²+A000217(n+2)-1)`
-/

namespace A196513.P12026080068888712479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047915 (A115067 (n + 1)).toNat - 3 * ((n ^ 2 : ℤ) + (A000217 (n + 2) - 1))

end

end A196513.P12026080068888712479

namespace A196513

/-- `A047915(A115067(n+1))-3*(n²+A000217(n+2)-1)` -/
def P12026080068888712479.Spec : Prop :=
  ∀ n, P12026080068888712479.a n = A196513 n

end A196513

/-! ## A196513.P291103480383555779

`A002939(A115067(n+1))-A028552(A115067(n+1))`
-/

namespace A196513.P291103480383555779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (A115067 (n + 1)).toNat - A028552 (A115067 (n + 1)).toNat

end

end A196513.P291103480383555779

namespace A196513

/-- `A002939(A115067(n+1))-A028552(A115067(n+1))` -/
def P291103480383555779.Spec : Prop :=
  ∀ n, P291103480383555779.a n = A196513 n

end A196513

/-! ## A196513.P17505536395053579959

`A247018(A144390(n+1))-A008486(A144390(n+1))`
-/

namespace A196513.P17505536395053579959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247018 (A144390 (n + 1)).toNat - A008486 (A144390 (n + 1)).toNat

end

end A196513.P17505536395053579959

namespace A196513

/-- `A247018(A144390(n+1))-A008486(A144390(n+1))` -/
def P17505536395053579959.Spec : Prop :=
  ∀ n, P17505536395053579959.a n = A196513 n

end A196513

/-!
# A196514: Partial sums of A100381.

The programs for A196514, the canonical program `A196514.P10306210964865599694` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196514 has offset 0).

The definition of A196514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196514.P10306210964865599694

`(n²-n+2)*2^(n+1)-4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196514

/-- `(n²-n+2)*2^(n+1)-4` -/
def P10306210964865599694.Spec : Prop :=
  ∀ n, P10306210964865599694.a n = A196514 n

theorem P10306210964865599694.correct : P10306210964865599694.Spec := by
  intro n
  simp only [A196514]

end A196514

/-! ## A196514.P8418526914512175904

`4*∑[ogf(x/(1-6x+12x^2-8x^3))]`
-/

namespace A196514.P8418526914512175904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 12, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196514.P8418526914512175904

namespace A196514

/-- `4*∑[ogf(x/(1-6x+12x^2-8x^3))]` -/
def P8418526914512175904.Spec : Prop :=
  ∀ n, P8418526914512175904.a n = A196514 n

end A196514

/-! ## A196514.P8216347181646558971

`4*((C(n, 2)+1)*2^n-1)`
-/

namespace A196514.P8216347181646558971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((Nat.choose n 2 + 1) * 2 ^ n : ℤ) - 1)

end

end A196514.P8216347181646558971

namespace A196514

/-- `4*((C(n, 2)+1)*2^n-1)` -/
def P8216347181646558971.Spec : Prop :=
  ∀ n, P8216347181646558971.a n = A196514 n

theorem P8216347181646558971.correct : P8216347181646558971.Spec := by
  intro n
  simp only [A196514, Nat.add_sub_cancel, A196514.P8216347181646558971.a, A196514.P10306210964865599694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196514

/-! ## A196514.P4701790467317016174

`∑[A100381(n+1)]`
-/

namespace A196514.P4701790467317016174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P4701790467317016174

namespace A196514

/-- `∑[A100381(n+1)]` -/
def P4701790467317016174.Spec : Prop :=
  ∀ n, P4701790467317016174.a n = A196514 n

end A196514

/-! ## A196514.P15465300351392069214

`∑[4*A001788(n)]`
-/

namespace A196514.P15465300351392069214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P15465300351392069214

namespace A196514

/-- `∑[4*A001788(n)]` -/
def P15465300351392069214.Spec : Prop :=
  ∀ n, P15465300351392069214.a n = A196514 n

end A196514

/-! ## A196514.P9470211029306068929

`4*(A052481(n)-1)`
-/

namespace A196514.P9470211029306068929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A052481 n - 1)

end

end A196514.P9470211029306068929

namespace A196514

/-- `4*(A052481(n)-1)` -/
def P9470211029306068929.Spec : Prop :=
  ∀ n, P9470211029306068929.a n = A196514 n

theorem P9470211029306068929.correct : P9470211029306068929.Spec := by
  intro n
  simp only [A196514, Nat.add_sub_cancel, A196514.P9470211029306068929.a, A196514.P10306210964865599694.a, A052481, A052481.P12009171480250880183.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196514

/-! ## A196514.P716475712716736347

`∑[2*A001815(n+1)]`
-/

namespace A196514.P716475712716736347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P716475712716736347

namespace A196514

/-- `∑[2*A001815(n+1)]` -/
def P716475712716736347.Spec : Prop :=
  ∀ n, P716475712716736347.a n = A196514 n

end A196514

/-! ## A196514.P12262047136448007672

`∑[A330592(2*(n+1))]`
-/

namespace A196514.P12262047136448007672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330592 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P12262047136448007672

namespace A196514

/-- `∑[A330592(2*(n+1))]` -/
def P12262047136448007672.Spec : Prop :=
  ∀ n, P12262047136448007672.a n = A196514 n

end A196514

/-! ## A196514.P8889906853524374386

`∑[A128796(n+1)/2]`
-/

namespace A196514.P8889906853524374386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128796 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P8889906853524374386

namespace A196514

/-- `∑[A128796(n+1)/2]` -/
def P8889906853524374386.Spec : Prop :=
  ∀ n, P8889906853524374386.a n = (A196514 n : ℚ)

end A196514

/-! ## A196514.P1211161397678997249

`∑[n*A001787(n+1)]`
-/

namespace A196514.P1211161397678997249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P1211161397678997249

namespace A196514

/-- `∑[n*A001787(n+1)]` -/
def P1211161397678997249.Spec : Prop :=
  ∀ n, P1211161397678997249.a n = A196514 n

end A196514

/-! ## A196514.P6799138601861829950

`∑[(n+1)*A036289(n)]`
-/

namespace A196514.P6799138601861829950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P6799138601861829950

namespace A196514

/-- `∑[(n+1)*A036289(n)]` -/
def P6799138601861829950.Spec : Prop :=
  ∀ n, P6799138601861829950.a n = A196514 n

end A196514

/-! ## A196514.P6704812837209734277

`2*∑[∑[n]*A000079(n)]`
-/

namespace A196514.P6704812837209734277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196514.P6704812837209734277

namespace A196514

/-- `2*∑[∑[n]*A000079(n)]` -/
def P6704812837209734277.Spec : Prop :=
  ∀ n, P6704812837209734277.a n = A196514 n

end A196514

/-! ## A196514.P136056965845164239

`4*∑[∑[n]*A011782(n)]`
-/

namespace A196514.P136056965845164239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196514.P136056965845164239

namespace A196514

/-- `4*∑[∑[n]*A011782(n)]` -/
def P136056965845164239.Spec : Prop :=
  ∀ n, P136056965845164239.a n = A196514 n

end A196514

/-! ## A196514.P8383966447403449872

`∑[(n+1)*A097064(n+1)]`
-/

namespace A196514.P8383966447403449872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196514.P8383966447403449872

namespace A196514

/-- `∑[(n+1)*A097064(n+1)]` -/
def P8383966447403449872.Spec : Prop :=
  ∀ n, P8383966447403449872.a n = A196514 n

end A196514

/-! ## A196514.P5233102893361329182

`2*∑[∑[n]*Δ[A000225(n)]]`
-/

namespace A196514.P5233102893361329182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196514.P5233102893361329182

namespace A196514

/-- `2*∑[∑[n]*Δ[A000225(n)]]` -/
def P5233102893361329182.Spec : Prop :=
  ∀ n, P5233102893361329182.a n = A196514 n

end A196514

/-! ## A196514.P385541808840046407

`2*(A036799(n)+a(n-1))` with `a(0)=0`
-/

namespace A196514.P385541808840046407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (A036799 n + a (n - 1))

end

end A196514.P385541808840046407

namespace A196514

/-- `2*(A036799(n)+a(n-1))` -/
def P385541808840046407.Spec : Prop :=
  ∀ n, P385541808840046407.a n = A196514 n

theorem P385541808840046407.correct : P385541808840046407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196514, Nat.add_sub_cancel, A196514.P385541808840046407.a, A196514.P10306210964865599694.a, A036799, A036799.P11890976520549442909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196514, Nat.add_sub_cancel, A196514.P385541808840046407.a, A196514.P10306210964865599694.a, A036799, A036799.P11890976520549442909.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196514

/-! ## A196514.P16068938276170769098

`2*(A036800(n)-a(n-1))` with `a(0)=0`
-/

namespace A196514.P16068938276170769098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (A036800 n - a (n - 1))

end

end A196514.P16068938276170769098

namespace A196514

/-- `2*(A036800(n)-a(n-1))` -/
def P16068938276170769098.Spec : Prop :=
  ∀ n, P16068938276170769098.a n = A196514 n

theorem P16068938276170769098.correct : P16068938276170769098.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196514, Nat.add_sub_cancel, A196514.P16068938276170769098.a, A196514.P10306210964865599694.a, A036800, A036800.P2795999232829827059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196514, Nat.add_sub_cancel, A196514.P16068938276170769098.a, A196514.P10306210964865599694.a, A036800, A036800.P2795999232829827059.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196514

/-! ## A196514.P684031517583706464

`4*∑[∑[n]*A007283(n)/6]`
-/

namespace A196514.P684031517583706464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A007283 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196514.P684031517583706464

namespace A196514

/-- `4*∑[∑[n]*A007283(n)/6]` -/
def P684031517583706464.Spec : Prop :=
  ∀ n, P684031517583706464.a n = (A196514 n : ℚ)

end A196514

/-! ## A196514.P13591995577906556678

`4*∑[(n+1)*A139756(n+1)/2]`
-/

namespace A196514.P13591995577906556678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A139756 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196514.P13591995577906556678

namespace A196514

/-- `4*∑[(n+1)*A139756(n+1)/2]` -/
def P13591995577906556678.Spec : Prop :=
  ∀ n, P13591995577906556678.a n = (A196514 n : ℚ)

end A196514

/-! ## A196514.P15624140983671219736

`2*(A036826(n)+A000337(n))`
-/

namespace A196514.P15624140983671219736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036826 n + A000337 n)

end

end A196514.P15624140983671219736

namespace A196514

/-- `2*(A036826(n)+A000337(n))` -/
def P15624140983671219736.Spec : Prop :=
  ∀ n, P15624140983671219736.a n = A196514 n

theorem P15624140983671219736.correct : P15624140983671219736.Spec := by
  intro n
  simp only [A196514, Nat.add_sub_cancel, A196514.P15624140983671219736.a, A196514.P10306210964865599694.a, A000337, A000337.P10298485350018343423.a, A036826, A036826.P77442619776099478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196514

/-!
# A196523: G.f. A(x) satisfies A(x) = x + x*A(A(A(A(x)))).

The programs for A196523, there is no canonical definition to state claims against.
-/

/-! ## A196523.P6881124122309138780

`A396993(∑[n+2])`
-/

namespace A196523.P6881124122309138780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196523.P6881124122309138780

/-! ## A196523.P752658106621194818

`A006949(A005923(n)-∑[A005442(n)])`
-/

namespace A196523.P752658106621194818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A005923 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196523.P752658106621194818

/-!
# A196524: a(n) = phi(n)*tau(n^2).

The programs for A196524, the canonical program `A196524.P2546210231834918335` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196524 has offset 1).

The definition of A196524 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196524.P17782809021198449445

`A048691(n+1)*A000010(n+1)`
-/

namespace A196524.P17782809021198449445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) * A000010 (n + 1)

end

end A196524.P17782809021198449445

namespace A196524

/-- `A048691(n+1)*A000010(n+1)` -/
def P17782809021198449445.Spec : Prop :=
  ∀ n, P17782809021198449445.a n = A196524 (n + 1)

theorem P17782809021198449445.correct : P17782809021198449445.Spec := by
  intro n
  simp only [A196524, Nat.add_sub_cancel, A196524.P17782809021198449445.a, A196524.P2546210231834918335.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A048691, A048691.P3815437841091875311.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196524

/-! ## A196524.P5385064316762084938

`A000005((n+1)²)*A000010(n+1)`
-/

namespace A196524.P5385064316762084938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2) * A000010 (n + 1)

end

end A196524.P5385064316762084938

namespace A196524

/-- `A000005((n+1)²)*A000010(n+1)` -/
def P5385064316762084938.Spec : Prop :=
  ∀ n, P5385064316762084938.a n = A196524 (n + 1)

theorem P5385064316762084938.correct : P5385064316762084938.Spec := by
  intro n
  simp only [A196524, Nat.add_sub_cancel, A196524.P5385064316762084938.a, A196524.P2546210231834918335.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A196524

/-! ## A196524.P2546210231834918335

`A000010(n+1)*A000005((n+1)²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A196524

/-- `A000010(n+1)*A000005((n+1)²)` -/
def P2546210231834918335.Spec : Prop :=
  ∀ n, P2546210231834918335.a n = A196524 (n + 1)

theorem P2546210231834918335.correct : P2546210231834918335.Spec := by
  intro n
  simp only [A196524, Nat.add_sub_cancel]

end A196524

/-! ## A196524.P8708729332871150971

`Δ[A002088(n)]*A048691(n+1)`
-/

namespace A196524.P8708729332871150971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048691 (n + 1)

end

end A196524.P8708729332871150971

namespace A196524

/-- `Δ[A002088(n)]*A048691(n+1)` -/
def P8708729332871150971.Spec : Prop :=
  ∀ n, P8708729332871150971.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P5606164395162038627

`Δ[A005728(n)]*A048691(n+1)`
-/

namespace A196524.P5606164395162038627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048691 (n + 1)

end

end A196524.P5606164395162038627

namespace A196524

/-- `Δ[A005728(n)]*A048691(n+1)` -/
def P5606164395162038627.Spec : Prop :=
  ∀ n, P5606164395162038627.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P16758620308447794289

`∑{d}[n+1, A008683(#)*A062380((n+1)/#)]`
-/

namespace A196524.P16758620308447794289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A062380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A196524.P16758620308447794289

namespace A196524

/-- `∑{d}[n+1, A008683(#)*A062380((n+1)/#)]` -/
def P16758620308447794289.Spec : Prop :=
  ∀ n, P16758620308447794289.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P12357417622560568552

`∑{d}[n+1, A000010(#)*A333557((n+1)/#)]`
-/

namespace A196524.P12357417622560568552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A333557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A196524.P12357417622560568552

namespace A196524

/-- `∑{d}[n+1, A000010(#)*A333557((n+1)/#)]` -/
def P12357417622560568552.Spec : Prop :=
  ∀ n, P12357417622560568552.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P2774193973114458536

`(A002088(n+1)-A002088(n))*A048691(n+1)`
-/

namespace A196524.P2774193973114458536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A048691 (n + 1)

end

end A196524.P2774193973114458536

namespace A196524

/-- `(A002088(n+1)-A002088(n))*A048691(n+1)` -/
def P2774193973114458536.Spec : Prop :=
  ∀ n, P2774193973114458536.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P18012256830453937163

`(A055205(n+1)+A000005(n+1))*A000010(n+1)`
-/

namespace A196524.P18012256830453937163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055205 (n + 1) + A000005 (n + 1)) * A000010 (n + 1)

end

end A196524.P18012256830453937163

namespace A196524

/-- `(A055205(n+1)+A000005(n+1))*A000010(n+1)` -/
def P18012256830453937163.Spec : Prop :=
  ∀ n, P18012256830453937163.a n = A196524 (n + 1)

theorem P18012256830453937163.correct : P18012256830453937163.Spec := by
  intro n
  simp only [A196524, Nat.add_sub_cancel, A196524.P18012256830453937163.a, A196524.P2546210231834918335.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A055205, A055205.P13391514614413086589.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048691, A048691.P3815437841091875311.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196524

/-! ## A196524.P14019854132021708511

`(A063647(n+1)+A018892(n+1))*A000010(n+1)`
-/

namespace A196524.P14019854132021708511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063647 (n + 1) + A018892 (n + 1)) * A000010 (n + 1)

end

end A196524.P14019854132021708511

namespace A196524

/-- `(A063647(n+1)+A018892(n+1))*A000010(n+1)` -/
def P14019854132021708511.Spec : Prop :=
  ∀ n, P14019854132021708511.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P17993041516772651198

`(A086222(n+1)-A086165(n+1))*A000010(n+1)`
-/

namespace A196524.P17993041516772651198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086222 (n + 1) - A086165 (n + 1)) * A000010 (n + 1)

end

end A196524.P17993041516772651198

namespace A196524

/-- `(A086222(n+1)-A086165(n+1))*A000010(n+1)` -/
def P17993041516772651198.Spec : Prop :=
  ∀ n, P17993041516772651198.a n = A196524 (n + 1)

theorem P17993041516772651198.correct : P17993041516772651198.Spec := by
  intro n
  simp only [A196524, Nat.add_sub_cancel, A196524.P17993041516772651198.a, A196524.P2546210231834918335.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A086165, A086165.P5862930239187378690.a, A086222, A086222.P1188365077820885668.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048691, A048691.P3815437841091875311.a, A070919, A070919.P12544336825611404965.f1, A070919.P12544336825611404965.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A003215, A003215.P5851317289441473820.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A196524

/-! ## A196524.P7719227009455824428

`A048691(n+1)/A002088(n+1)*A143231(n+1)`
-/

namespace A196524.P7719227009455824428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) : ℚ) / (A002088 (n + 1) : ℚ) * (A143231 (n + 1) : ℚ)

end

end A196524.P7719227009455824428

namespace A196524

/-- `A048691(n+1)/A002088(n+1)*A143231(n+1)` -/
def P7719227009455824428.Spec : Prop :=
  ∀ n, P7719227009455824428.a n = (A196524 (n + 1) : ℚ)

end A196524

/-! ## A196524.P8306606585284654223

`A048691(n+1)/A035116(n+1)*A110601(n+1)`
-/

namespace A196524.P8306606585284654223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) : ℚ) / (A035116 (n + 1) : ℚ) * (A110601 (n + 1) : ℚ)

end

end A196524.P8306606585284654223

namespace A196524

/-- `A048691(n+1)/A035116(n+1)*A110601(n+1)` -/
def P8306606585284654223.Spec : Prop :=
  ∀ n, P8306606585284654223.a n = (A196524 (n + 1) : ℚ)

end A196524

/-! ## A196524.P9322995128873970884

`A048691(n+1)/A110601(n+1)*A062355(n+1)²`
-/

namespace A196524.P9322995128873970884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) : ℚ) / (A110601 (n + 1) : ℚ) * (A062355 (n + 1) ^ 2 : ℚ)

end

end A196524.P9322995128873970884

namespace A196524

/-- `A048691(n+1)/A110601(n+1)*A062355(n+1)²` -/
def P9322995128873970884.Spec : Prop :=
  ∀ n, P9322995128873970884.a n = (A196524 (n + 1) : ℚ)

end A196524

/-! ## A196524.P12016687542493297426

`A062355((n+1)²)/(n+1)`
-/

namespace A196524.P12016687542493297426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A196524.P12016687542493297426

namespace A196524

/-- `A062355((n+1)²)/(n+1)` -/
def P12016687542493297426.Spec : Prop :=
  ∀ n, P12016687542493297426.a n = (A196524 (n + 1) : ℚ)

end A196524

/-! ## A196524.P12097678958499764821

`A000010(n+1)*A212181((n+1)²)`
-/

namespace A196524.P12097678958499764821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A212181 ((n + 1) ^ 2)

end

end A196524.P12097678958499764821

namespace A196524

/-- `A000010(n+1)*A212181((n+1)²)` -/
def P12097678958499764821.Spec : Prop :=
  ∀ n, P12097678958499764821.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P10444398480983335938

`A000010(n+1)*A329484((n+1)²)`
-/

namespace A196524.P10444398480983335938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A329484 ((n + 1) ^ 2)

end

end A196524.P10444398480983335938

namespace A196524

/-- `A000010(n+1)*A329484((n+1)²)` -/
def P10444398480983335938.Spec : Prop :=
  ∀ n, P10444398480983335938.a n = A196524 (n + 1)

end A196524

/-! ## A196524.P9401260279315718072

`A000010(n+1)*A357669((n+1)²)`
-/

namespace A196524.P9401260279315718072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A357669 ((n + 1) ^ 2)

end

end A196524.P9401260279315718072

namespace A196524

/-- `A000010(n+1)*A357669((n+1)²)` -/
def P9401260279315718072.Spec : Prop :=
  ∀ n, P9401260279315718072.a n = A196524 (n + 1)

end A196524

/-!
# A196527: Greatest common divisor of sums of first n prime numbers and first n composite numbers.

The programs for A196527, the canonical program `A196527.P9836277949146458407` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196527 has offset 1).

The definition of A196527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196527.P13279683024154750925

`gcd(A007504(n+1), A053767(n+1))`
-/

namespace A196527.P13279683024154750925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 (n + 1)) (A053767 (n + 1))

end

end A196527.P13279683024154750925

namespace A196527

/-- `gcd(A007504(n+1), A053767(n+1))` -/
def P13279683024154750925.Spec : Prop :=
  ∀ n, (P13279683024154750925.a n : ℤ) = A196527 (n + 1)

end A196527

/-! ## A196527.P9836277949146458407

`gcd(∑[A000040(n+1)], A072476(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A196527

/-- `gcd(∑[A000040(n+1)], A072476(n+1))` -/
def P9836277949146458407.Spec : Prop :=
  ∀ n, (P9836277949146458407.a n : ℤ) = A196527 (n + 1)

theorem P9836277949146458407.correct : P9836277949146458407.Spec := by
  intro n
  simp only [A196527, Nat.add_sub_cancel]

end A196527

/-! ## A196527.P4523888550984769151

`gcd(A237589(n+1)+1, A053767(A000027(n+1)))`
-/

namespace A196527.P4523888550984769151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237589 (n + 1) + 1) (A053767 (A000027 (n + 1)).toNat)

end

end A196527.P4523888550984769151

namespace A196527

/-- `gcd(A237589(n+1)+1, A053767(A000027(n+1)))` -/
def P4523888550984769151.Spec : Prop :=
  ∀ n, (P4523888550984769151.a n : ℤ) = A196527 (n + 1)

end A196527

/-! ## A196527.P12593717115956652689

`gcd(A036439(n+2)-2, ∑[A002808(n+1)])`
-/

namespace A196527.P12593717115956652689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036439 (n + 2) - 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196527.P12593717115956652689

namespace A196527

/-- `gcd(A036439(n+2)-2, ∑[A002808(n+1)])` -/
def P12593717115956652689.Spec : Prop :=
  ∀ n, (P12593717115956652689.a n : ℤ) = A196527 (n + 1)

end A196527

/-! ## A196527.P897889847182754053

`gcd(∑[A018252(n+2)], A160793(2*(n+1)))`
-/

namespace A196527.P897889847182754053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A160793 (2 * (n + 1)))

end

end A196527.P897889847182754053

namespace A196527

/-- `gcd(∑[A018252(n+2)], A160793(2*(n+1)))` -/
def P897889847182754053.Spec : Prop :=
  ∀ n, (P897889847182754053.a n : ℤ) = A196527 (n + 1)

end A196527

/-!
# A196529: Half of greatest common divisor of products of first n prime numbers and first n composite numbers.

The programs for A196529, the canonical program `A196529.P3022403055042895541` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196529 has offset 1).

The definition of A196529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196529.P5811387831334397861

`A300951(A002808(n+1))/2`
-/

namespace A196529.P5811387831334397861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (A002808 (n + 1)).toNat : ℚ) / 2

end

end A196529.P5811387831334397861

namespace A196529

/-- `A300951(A002808(n+1))/2` -/
def P5811387831334397861.Spec : Prop :=
  ∀ n, P5811387831334397861.a n = (A196529 (n + 1) : ℚ)

end A196529

/-! ## A196529.P6212421563353517026

`A300951(A018252(n+2))/2`
-/

namespace A196529.P6212421563353517026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (A018252 (n + 2)).toNat : ℚ) / 2

end

end A196529.P6212421563353517026

namespace A196529

/-- `A300951(A018252(n+2))/2` -/
def P6212421563353517026.Spec : Prop :=
  ∀ n, P6212421563353517026.a n = (A196529 (n + 1) : ℚ)

end A196529

/-! ## A196529.P8686717810568355070

`A300951(A060462(n+3))/2`
-/

namespace A196529.P8686717810568355070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (A060462 (n + 3)).toNat : ℚ) / 2

end

end A196529.P8686717810568355070

namespace A196529

/-- `A300951(A060462(n+3))/2` -/
def P8686717810568355070.Spec : Prop :=
  ∀ n, P8686717810568355070.a n = (A196529 (n + 1) : ℚ)

end A196529

/-! ## A196529.P15212824124730079596

`A300951(A141468(n+3))/2`
-/

namespace A196529.P15212824124730079596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (A141468 (n + 3)).toNat : ℚ) / 2

end

end A196529.P15212824124730079596

namespace A196529

/-- `A300951(A141468(n+3))/2` -/
def P15212824124730079596.Spec : Prop :=
  ∀ n, P15212824124730079596.a n = (A196529 (n + 1) : ℚ)

end A196529

/-! ## A196529.P3022403055042895541

`lcm(a(n-1), A074399(A052369(n+1)))` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A196529

/-- `lcm(a(n-1), A074399(A052369(n+1)))` -/
def P3022403055042895541.Spec : Prop :=
  ∀ n, (P3022403055042895541.a n : ℤ) = A196529 (n + 1)

theorem P3022403055042895541.correct : P3022403055042895541.Spec := by
  intro n
  simp only [A196529, Nat.add_sub_cancel]

end A196529

/-!
# A196530: Decimal expansion of log(2+sqrt(3))/sqrt(3).

The programs for A196530, there is no canonical definition to state claims against.
-/

/-! ## A196530.P3288151367433332263

`A259830(n+1)`
-/

namespace A196530.P3288151367433332263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259830 (n + 1 + 1)

end

end A196530.P3288151367433332263

/-!
# A196531: E.g.f. satisfies: A(x) = Sum_{n>=0} exp(A(x)^n - 1)*A(x)^n*x^n/n!.

The programs for A196531, there is no canonical definition to state claims against.
-/

/-! ## A196531.P15442812820785604064

`A276568((2*n+1)^(n-1))`
-/

namespace A196531.P15442812820785604064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276568 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A196531.P15442812820785604064

/-!
# A196532: a(n) = (n+1)!*(H(n)+H(n+1)), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

The programs for A196532, there is no canonical definition to state claims against.
-/

/-! ## A196532.P9433555106512376949

`A052517(n+2)-n!`
-/

namespace A196532.P9433555106512376949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 2) - (Nat.factorial n : ℤ)

end

end A196532.P9433555106512376949

/-! ## A196532.P354052807942263175

`A052517(n+2)-A000142(n)`
-/

namespace A196532.P354052807942263175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 2) - A000142 n

end

end A196532.P354052807942263175

/-! ## A196532.P4664061720650133325

`A052517(n+2)-∏[A028310(n)]`
-/

namespace A196532.P4664061720650133325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052517 (n + 2) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A196532.P4664061720650133325

/-! ## A196532.P8007663252542620086

`A052881(n+1)+A000254(n+1)`
-/

namespace A196532.P8007663252542620086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 (n + 1) + A000254 (n + 1)

end

end A196532.P8007663252542620086

/-! ## A196532.P15895120524876022961

`A104150(n+1)+2*A052881(n+1)`
-/

namespace A196532.P15895120524876022961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) + 2 * A052881 (n + 1)

end

end A196532.P15895120524876022961

/-! ## A196532.P6460765089948395419

`2*A000254(n+1)-A104150(n+1)`
-/

namespace A196532.P6460765089948395419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000254 (n + 1) - A104150 (n + 1)

end

end A196532.P6460765089948395419

/-! ## A196532.P292237909730483521

`2*A000254(n+1)-A081123(2*n)`
-/

namespace A196532.P292237909730483521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000254 (n + 1) - A081123 (2 * n)

end

end A196532.P292237909730483521

/-! ## A196532.P18219007140227385213

`A000254(n+1)+(n+1)*A000254(n)`
-/

namespace A196532.P18219007140227385213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) + (n + 1 : ℤ) * A000254 n

end

end A196532.P18219007140227385213

/-!
# A196534: Number of different ways to select disjoint nonempty subsets from {1..n} with equal element sum.

The programs for A196534, there is no canonical definition to state claims against.
-/

/-! ## A196534.P1552086640802540113

`A079631(A289804(n))`
-/

namespace A196534.P1552086640802540113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079631 (A289804 n).toNat

end

end A196534.P1552086640802540113

/-! ## A196534.P11107661421984304444

`A346132(A000124(n))+A127985(n)`
-/

namespace A196534.P11107661421984304444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A000124 n).toNat + A127985 n

end

end A196534.P11107661421984304444

/-! ## A196534.P17159511227434940015

`∑[A161205(A086616(n))]`
-/

namespace A196534.P17159511227434940015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A086616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196534.P17159511227434940015

/-!
# A196536: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors less than or equal to itself.

The programs for A196536, there is no canonical definition to state claims against.
-/

/-! ## A196536.P3857687709621172281

`A196544(∑[4*n]+1)`
-/

namespace A196536.P3857687709621172281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196536.P3857687709621172281

/-! ## A196536.P187402191375735995

`A196544((n+1)²+n²)+char[8*(n+1)]`
-/

namespace A196536.P187402191375735995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 ((n + 1) ^ 2 + n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196536.P187402191375735995

/-! ## A196536.P5269532958746400563

`A196544((n+1)²+n²)/A290622(n)`
-/

namespace A196536.P5269532958746400563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196544 ((n + 1) ^ 2 + n ^ 2) : ℚ) / (A290622 n : ℚ)

end

end A196536.P5269532958746400563

/-!
# A196537: Number of nX1 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196537, the canonical program `A196537.P15866537588512720878` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196537 has offset 1).

The definition of A196537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196537.P12435091911320978575

`ogf((-1-2x+2x^2+x^3)/(-1+x+x^2+3x^3+x^4))`
-/

namespace A196537.P12435091911320978575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, -1] [1, -1, -1, -3, -1] n

end

end A196537.P12435091911320978575

namespace A196537

/-- `ogf((-1-2x+2x^2+x^3)/(-1+x+x^2+3x^3+x^4))` -/
def P12435091911320978575.Spec : Prop :=
  ∀ n, P12435091911320978575.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P15866537588512720878

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196537

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P15866537588512720878.Spec : Prop :=
  ∀ n, (P15866537588512720878.a n : ℤ) = A196537 (n + 1)

theorem P15866537588512720878.correct : P15866537588512720878.Spec := by
  intro n
  simp only [A196537, Nat.add_sub_cancel]

end A196537

/-! ## A196537.P5620781817972695573

`Δ[A232162(n)]+Δ[A232165(n)]`
-/

namespace A196537.P5620781817972695573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A196537.P5620781817972695573

namespace A196537

/-- `Δ[A232162(n)]+Δ[A232165(n)]` -/
def P5620781817972695573.Spec : Prop :=
  ∀ n, P5620781817972695573.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P2691500982126427007

`A232165(n+1)+A232164(n)-A232162(n)`
-/

namespace A196537.P2691500982126427007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (n + 1) + (A232164 n - A232162 n)

end

end A196537.P2691500982126427007

namespace A196537

/-- `A232165(n+1)+A232164(n)-A232162(n)` -/
def P2691500982126427007.Spec : Prop :=
  ∀ n, P2691500982126427007.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P6509210681935606519

`Δ[A232165(n)+A232162(n)]`
-/

namespace A196537.P6509210681935606519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 n + A232162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196537.P6509210681935606519

namespace A196537

/-- `Δ[A232165(n)+A232162(n)]` -/
def P6509210681935606519.Spec : Prop :=
  ∀ n, P6509210681935606519.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P11118126565665852467

`A243094(n+1)-A214663(n+1)`
-/

namespace A196537.P11118126565665852467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (n + 1) - A214663 (n + 1)

end

end A196537.P11118126565665852467

namespace A196537

/-- `A243094(n+1)-A214663(n+1)` -/
def P11118126565665852467.Spec : Prop :=
  ∀ n, P11118126565665852467.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P8349336178930285667

`A243094(n+1)-A232164(n+2)`
-/

namespace A196537.P8349336178930285667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (n + 1) - A232164 (n + 2)

end

end A196537.P8349336178930285667

namespace A196537

/-- `A243094(n+1)-A232164(n+2)` -/
def P8349336178930285667.Spec : Prop :=
  ∀ n, P8349336178930285667.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P15799461309963096120

`Δ[Δ[ogf(-1/(-1+x+x^2+3x^3+x^4))]]`
-/

namespace A196537.P15799461309963096120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, -3, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196537.P15799461309963096120

namespace A196537

/-- `Δ[Δ[ogf(-1/(-1+x+x^2+3x^3+x^4))]]` -/
def P15799461309963096120.Spec : Prop :=
  ∀ n, P15799461309963096120.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P4421840125853110524

`Δ[Δ[A214663(n)]]`
-/

namespace A196537.P4421840125853110524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196537.P4421840125853110524

namespace A196537

/-- `Δ[Δ[A214663(n)]]` -/
def P4421840125853110524.Spec : Prop :=
  ∀ n, P4421840125853110524.a n = A196537 (n + 1)

end A196537

/-! ## A196537.P16251723383717458592

`Δ[Δ[A232164(n+1)]]`
-/

namespace A196537.P16251723383717458592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196537.P16251723383717458592

namespace A196537

/-- `Δ[Δ[A232164(n+1)]]` -/
def P16251723383717458592.Spec : Prop :=
  ∀ n, P16251723383717458592.a n = A196537 (n + 1)

end A196537

/-!
# A196538: Number of nX2 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196538, there is no canonical definition to state claims against.
-/

/-! ## A196538.P7453281432525386901

`A196544(∑[n+1]+2)`
-/

namespace A196538.P7453281432525386901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196538.P7453281432525386901

/-! ## A196538.P6539802736008044832

`record[root(A196544(n+2), A142992(n))]`
-/

namespace A196538.P6539802736008044832
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A196544 (n + 2) : ℝ) ^ (1 / (A142992 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196538.P6539802736008044832

/-! ## A196538.P11664544107891986817

`record[A196544(A133263(val(n+1, 2)+1))]`
-/

namespace A196538.P11664544107891986817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196538.P11664544107891986817

/-! ## A196538.P13106597796962125196

`record[root(A196544(n+2), A215297(n+1))]`
-/

namespace A196538.P13106597796962125196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A196544 (n + 2) : ℝ) ^ (1 / (A215297 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196538.P13106597796962125196

/-! ## A196538.P17751833868276580426

`record[gcd(A048993(n+1), A196544(n+3))]`
-/

namespace A196538.P17751833868276580426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 1)) (A196544 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196538.P17751833868276580426

/-!
# A196539: Number of nX3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196539, there is no canonical definition to state claims against.
-/

/-! ## A196539.P3002242664427328431

`A196544(∑[n+2]+4)`
-/

namespace A196539.P3002242664427328431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196539.P3002242664427328431

/-! ## A196539.P13818734924810309554

`record[gcd(A048993(n+1), A196544(n+4))]`
-/

namespace A196539.P13818734924810309554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 1)) (A196544 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196539.P13818734924810309554

/-! ## A196539.P13408447227695051975

`lcm(A138474(n), A196544(A167614(n+1)))`
-/

namespace A196539.P13408447227695051975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138474 n) (A196544 (A167614 (n + 1)).toNat)

end

end A196539.P13408447227695051975

/-! ## A196539.P1914850282950440565

`A196544(A167614(n+1))%A196540(n+1)`
-/

namespace A196539.P1914850282950440565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196544 (A167614 (n + 1)).toNat) (A196540 (n + 1))

end

end A196539.P1914850282950440565

/-! ## A196539.P1492006812026063339

`A196544(A034856(n+2))+A000007(n+1)`
-/

namespace A196539.P1492006812026063339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A196539.P1492006812026063339

/-!
# A196540: Number of n X 4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196540, there is no canonical definition to state claims against.
-/

/-! ## A196540.P16506694318540840064

`A196544(A141214(n)+7)`
-/

namespace A196540.P16506694318540840064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A141214 n + 7).toNat

end

end A196540.P16506694318540840064

/-! ## A196540.P8158908024487431896

`A196544(A052905(n)+9)`
-/

namespace A196540.P8158908024487431896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A052905 n + 9).toNat

end

end A196540.P8158908024487431896

/-! ## A196540.P14083996900017592537

`A196544(eq[5, A066657(n)])`
-/

namespace A196540.P14083996900017592537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196540.P14083996900017592537

/-! ## A196540.P1748340358195128412

`A196544(A167614(n+2)+1)`
-/

namespace A196540.P1748340358195128412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A167614 (n + 2) + 1).toNat

end

end A196540.P1748340358195128412

/-! ## A196540.P16307713475948953491

`A196544(eq[5, A131818(n+1)])`
-/

namespace A196540.P16307713475948953491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196540.P16307713475948953491

/-!
# A196541: Number of n X 5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196541, there is no canonical definition to state claims against.
-/

/-! ## A196541.P6311690515194517182

`A196544(A155212(n)+13)`
-/

namespace A196541.P6311690515194517182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A155212 n + 13).toNat

end

end A196541.P6311690515194517182

/-! ## A196541.P12830499621415527911

`A196544(A056000(n)+15)`
-/

namespace A196541.P12830499621415527911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A056000 n + 15).toNat

end

end A196541.P12830499621415527911

/-! ## A196541.P11638149720142733192

`A196544(eq[7, A066657(n)])`
-/

namespace A196541.P11638149720142733192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196541.P11638149720142733192

/-! ## A196541.P2041223649706832419

`A196544(A000217(n+4)+5)`
-/

namespace A196541.P2041223649706832419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A000217 (n + 4) + 5).toNat

end

end A196541.P2041223649706832419

/-! ## A196541.P2800781075820667615

`A196544(eq[6, A131818(n+1)])`
-/

namespace A196541.P2800781075820667615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196541.P2800781075820667615

/-!
# A196542: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196542, there is no canonical definition to state claims against.
-/

/-! ## A196542.P15397786893248383608

`A196544(eq[7, A131818(n+1)])`
-/

namespace A196542.P15397786893248383608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196542.P15397786893248383608

/-! ## A196542.P13352988488853117072

`A196544(A000096(n+5)-(n-1))`
-/

namespace A196542.P13352988488853117072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A196542.P13352988488853117072

/-! ## A196542.P11217670239490588821

`A196544(A374007(n+1))`
-/

namespace A196542.P11217670239490588821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A374007 (n + 1)).toNat

end

end A196542.P11217670239490588821

/-! ## A196542.P5203587499755841027

`A196544(eq[5, A193592(n)])`
-/

namespace A196542.P5203587499755841027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196542.P5203587499755841027

/-!
# A196543: Number of n X 7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than or equal to itself.

The programs for A196543, there is no canonical definition to state claims against.
-/

/-! ## A196543.P860969176450383800

`A196544(A374008(n+1))`
-/

namespace A196543.P860969176450383800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A374008 (n + 1)).toNat

end

end A196543.P860969176450383800

/-! ## A196543.P1913600573465996358

`A196544(eq[6, A193592(n)])`
-/

namespace A196543.P1913600573465996358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196543.P1913600573465996358

/-! ## A196543.P10156015621458154441

`A196544(A166136(n+5)+1)`
-/

namespace A196543.P10156015621458154441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196544 (A166136 (n + 5) + 1).toNat

end

end A196543.P10156015621458154441

/-!
# A196545: Number of weakly ordered plane trees with n leaves.

The programs for A196545, there is no canonical definition to state claims against.
-/

/-! ## A196545.P6409607183517398936

`A301364(∑[n+1])`
-/

namespace A196545.P6409607183517398936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196545.P6409607183517398936

/-! ## A196545.P2942828298917087227

`abs(A301364(A000217(n+1))-1)+1`
-/

namespace A196545.P2942828298917087227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A301364 (A000217 (n + 1)).toNat - 1| + 1

end

end A196545.P2942828298917087227

/-! ## A196545.P4680562300851630013

`A301364(A000217(n+1))^A178334(n)`
-/

namespace A196545.P4680562300851630013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301364 (A000217 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A196545.P4680562300851630013

/-! ## A196545.P14596548218807192547

`A301364(A000217(n+1))%A041392(n)²`
-/

namespace A196545.P14596548218807192547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301364 (A000217 (n + 1)).toNat) (A041392 n ^ 2)

end

end A196545.P14596548218807192547

/-! ## A196545.P5054066685789148595

`A301364(A000217(n+1))+A000007(n+1)`
-/

namespace A196545.P5054066685789148595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301364 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A196545.P5054066685789148595

/-! ## A196545.P3751240087648780966

`lcm(A061347(n+1), A301364(A000217(n+1)))`
-/

namespace A196545.P3751240087648780966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061347 (n + 1)) (A301364 (A000217 (n + 1)).toNat)

end

end A196545.P3751240087648780966

/-! ## A196545.P11599621794624272394

`(A028263(n)%2)!*A301364(A000217(n+1))`
-/

namespace A196545.P11599621794624272394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A028263 n) 2).toNat : ℤ) * A301364 (A000217 (n + 1)).toNat

end

end A196545.P11599621794624272394

/-! ## A196545.P2440083014591488844

`A301364(A000217(n+1))^A007318(A000096(n))`
-/

namespace A196545.P2440083014591488844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301364 (A000217 (n + 1)).toNat : ℚ) ^ (A007318 (A000096 n).toNat : ℤ)

end

end A196545.P2440083014591488844

/-! ## A196545.P8452099355928259836

`A301364(A000217(n+1))+A008683(A001248(n+1))`
-/

namespace A196545.P8452099355928259836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301364 (A000217 (n + 1)).toNat + A008683 (A001248 (n + 1)).toNat

end

end A196545.P8452099355928259836

/-! ## A196545.P3802473555437999063

`A301364(A000217(n+1))^A008683(A001748(n+1))`
-/

namespace A196545.P3802473555437999063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301364 (A000217 (n + 1)).toNat : ℚ) ^ (A008683 (A001748 (n + 1)).toNat : ℤ)

end

end A196545.P3802473555437999063

/-!
# A196546: Numbers n such that the sum of the distinct residues of x^n (mod n), x=0..n-1, is divisible by n.

The programs for A196546, there is no canonical definition to state claims against.
-/

/-! ## A196546.P13880116714217168188

`eq[0, A196777(n+1)]+1`
-/

namespace A196546.P13880116714217168188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A196546.P13880116714217168188

/-! ## A196546.P8725349116480534785

`lt[A196777(abs(1-n)+1), 1]`
-/

namespace A196546.P8725349116480534785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196546.P8725349116480534785

/-! ## A196546.P4277094935668676052

`record[n+2-A196777(n+2)]`
-/

namespace A196546.P4277094935668676052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A196777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196546.P4277094935668676052

/-! ## A196546.P4236232548626795594

`record[gcd(n+1, A195812(n+1))]`
-/

namespace A196546.P4236232548626795594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A195812 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196546.P4236232548626795594

/-! ## A196546.P661838243947625427

`eq[0, A196777(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A196546.P661838243947625427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A196777 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196546.P661838243947625427

/-! ## A196546.P13942078786738508024

`∪[A196547(n+1), A061345(n)]`
-/

namespace A196546.P13942078786738508024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196546.P13942078786738508024

/-! ## A196546.P13298172813138928786

`∪[A196547(n+1), A109860(n)]`
-/

namespace A196546.P13298172813138928786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196546.P13298172813138928786

/-! ## A196546.P5642763324565078427

`lt[A196777(n+1), A010153(n)]+1`
-/

namespace A196546.P5642763324565078427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A196546.P5642763324565078427

/-! ## A196546.P451337217834041296

`lt[A196777(n+1), A054977(n)]+1`
-/

namespace A196546.P451337217834041296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A196546.P451337217834041296

/-!
# A196547: Nonprime numbers m such that the sum of the distinct residues of x^m (mod m) is divisible by m, x=0..m-1.

The programs for A196547, there is no canonical definition to state claims against.
-/

/-! ## A196547.P13260582055737106038

`eq[A061397(n+1), A196777(n+1)]+1`
-/

namespace A196547.P13260582055737106038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A196547.P13260582055737106038

/-! ## A196547.P13556577033742043611

`eq[A010051(n+1)/2, A196777(n+1)]+1`
-/

namespace A196547.P13556577033742043611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A196547.P13556577033742043611

/-! ## A196547.P2160543664801184250

`filter[A196546(n+1), A005171(#)]`
-/

namespace A196547.P2160543664801184250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A196547.P2160543664801184250

/-! ## A196547.P15579009654265914532

`∩[A018252(n+1), A196546(n+1)]`
-/

namespace A196547.P15579009654265914532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196547.P15579009654265914532

/-! ## A196547.P7886570538273917836

`∩[A056653(n+1), A196546(n+1)]`
-/

namespace A196547.P7886570538273917836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196547.P7886570538273917836

/-!
# A196555: O.g.f.: Sum_{n>=0} 2*(n+2)^(n-1) * x^n / Product_{k=1..n} (1+k*x).

The programs for A196555, there is no canonical definition to state claims against.
-/

/-! ## A196555.P8309609305572570634

`A078923(A000309(n))+∏{e}[n+1, #+1]`
-/

namespace A196555.P8309609305572570634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078923 (A000309 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A196555.P8309609305572570634

/-! ## A196555.P10501480192066344104

`A000026(A068875(n)+A052876(n))`
-/

namespace A196555.P10501480192066344104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A068875 n + A052876 n).toNat

end

end A196555.P10501480192066344104

/-!
# A196556: O.g.f.: Sum_{n>=0} 3*(n+3)^(n-1) * x^n / Product_{k=1..n} (1+k*x).

The programs for A196556, there is no canonical definition to state claims against.
-/

/-! ## A196556.P8298948051372873641

`A273662(A090352(n))+A090352(n)`
-/

namespace A196556.P8298948051372873641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A090352 n).toNat + A090352 n

end

end A196556.P8298948051372873641

/-!
# A196557: O.g.f.: Sum_{n>=0} 4*(n+4)^(n-1) * x^n / Product_{k=1..n} (1+k*x).

The programs for A196557, there is no canonical definition to state claims against.
-/

/-! ## A196557.P80082645012408731

`A311153(A056541(n)+A002265(n))`
-/

namespace A196557.P80082645012408731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 (A056541 n + A002265 n).toNat

end

end A196557.P80082645012408731

/-! ## A196557.P8973657262950115326

`A311153(A061358(n)+A056541(n))`
-/

namespace A196557.P8973657262950115326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 (A061358 n + A056541 n).toNat

end

end A196557.P8973657262950115326

/-!
# A196559: G.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3 * x^k]^2 * x^n/n ).

The programs for A196559, there is no canonical definition to state claims against.
-/

/-! ## A196559.P14241989784453486840

`A269362(A361278(n)+A193489(n+2))`
-/

namespace A196559.P14241989784453486840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269362 (A361278 n + A193489 (n + 2)).toNat

end

end A196559.P14241989784453486840

/-! ## A196559.P16593741681375100325

`A219901(A001523(n))+A036497(n)`
-/

namespace A196559.P16593741681375100325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219901 (A001523 n).toNat + A036497 n

end

end A196559.P16593741681375100325

/-!
# A196560: G.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^4 * x^k]^2 * x^n/n ).

The programs for A196560, there is no canonical definition to state claims against.
-/

/-! ## A196560.P8076882530447987324

`A037471(A125222(n))`
-/

namespace A196560.P8076882530447987324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A125222 n).toNat

end

end A196560.P8076882530447987324

/-! ## A196560.P16145931920116236992

`A068962(ceil(A345913(n+4)^(n-1))+1)`
-/

namespace A196560.P16145931920116236992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (⌈(A345913 (n + 4) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1).toNat

end

end A196560.P16145931920116236992

/-!
# A196561: E.g.f. satisfies: A(x) = 1 + Sum{n>=1} x^n * A(n*x)^(1/n) / n!.

The programs for A196561, there is no canonical definition to state claims against.
-/

/-! ## A196561.P13278001895895869800

`A299476(A000088(n))`
-/

namespace A196561.P13278001895895869800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 (A000088 n).toNat

end

end A196561.P13278001895895869800

/-! ## A196561.P17292789438237840935

`A299476(∑[A002494(n)])`
-/

namespace A196561.P17292789438237840935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196561.P17292789438237840935

/-!
# A196563: Number of even digits in decimal representation of n.

The programs for A196563, the canonical program `A196563.P12192156625480906411` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196563 has offset 0).

The definition of A196563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196563.P12192156625480906411

`a(floor(n/10))+a(n%10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=0, a(8)=1, a(9)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196563

/-- `a(floor(n/10))+a(n%10)` -/
def P12192156625480906411.Spec : Prop :=
  ∀ n, (P12192156625480906411.a n : ℤ) = A196563 n

theorem P12192156625480906411.correct : P12192156625480906411.Spec := by
  intro n
  simp only [A196563]

end A196563

/-!
# A196564: Number of odd digits in decimal representation of n.

The programs for A196564, the canonical program `A196564.P8945567313368503187` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196564 has offset 0).

The definition of A196564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196564.P8945567313368503187

`a(floor(n/10))+a(n%10)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=1, a(8)=0, a(9)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196564

/-- `a(floor(n/10))+a(n%10)` -/
def P8945567313368503187.Spec : Prop :=
  ∀ n, (P8945567313368503187.a n : ℤ) = A196564 n

theorem P8945567313368503187.correct : P8945567313368503187.Spec := by
  intro n
  simp only [A196564]

end A196564

/-! ## A196564.P16055095983326657943

`A055642(n)-A196563(n)`
-/

namespace A196564.P16055095983326657943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A196563 n

end

end A196564.P16055095983326657943

namespace A196564

/-- `A055642(n)-A196563(n)` -/
def P16055095983326657943.Spec : Prop :=
  ∀ n, P16055095983326657943.a n = A196564 n

theorem P16055095983326657943.correct : P16055095983326657943.Spec := by
  intro n
  simp only [A196564, Nat.add_sub_cancel, A196564.P16055095983326657943.a, A196564.P8945567313368503187.a, A055642, A055642.P2478179801723442865.a, A196563, A196563.P12192156625480906411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196564

/-! ## A196564.P8844000954702412454

`∑{digits}[n, #%2]`
-/

namespace A196564.P8844000954702412454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum

end

end A196564.P8844000954702412454

namespace A196564

/-- `∑{digits}[n, #%2]` -/
def P8844000954702412454.Spec : Prop :=
  ∀ n, (P8844000954702412454.a n : ℤ) = A196564 n

end A196564

/-! ## A196564.P16524330562571634131

`∑{digits}[n, and(1, #)]`
-/

namespace A196564.P16524330562571634131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 x).sum

end

end A196564.P16524330562571634131

namespace A196564

/-- `∑{digits}[n, and(1, #)]` -/
def P16524330562571634131.Spec : Prop :=
  ∀ n, (P16524330562571634131.a n : ℤ) = A196564 n

end A196564

/-! ## A196564.P5148096548003611161

`∑{digits}[n, 2-gcd(2, #)]`
-/

namespace A196564.P5148096548003611161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 - (Nat.gcd 2 x : ℤ)).sum

end

end A196564.P5148096548003611161

namespace A196564

/-- `∑{digits}[n, 2-gcd(2, #)]` -/
def P5148096548003611161.Spec : Prop :=
  ∀ n, P5148096548003611161.a n = A196564 n

end A196564

/-! ## A196564.P4806411307760633024

`∑{digits}[n, val(#²+1, 2)]`
-/

namespace A196564.P4806411307760633024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x ^ 2 + 1) 2).sum

end

end A196564.P4806411307760633024

namespace A196564

/-- `∑{digits}[n, val(#²+1, 2)]` -/
def P4806411307760633024.Spec : Prop :=
  ∀ n, (P4806411307760633024.a n : ℤ) = A196564 n

end A196564

/-! ## A196564.P9132333139295064381

`val(∏{digits}[n, #²+1], 2)`
-/

namespace A196564.P9132333139295064381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2 + 1).prod 2

end

end A196564.P9132333139295064381

namespace A196564

/-- `val(∏{digits}[n, #²+1], 2)` -/
def P9132333139295064381.Spec : Prop :=
  ∀ n, (P9132333139295064381.a n : ℤ) = A196564 n

end A196564

/-! ## A196564.P17713173407646992596

`∑{digits}[n, or(#, -2)+2]`
-/

namespace A196564.P17713173407646992596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lor (x : ℤ) (-2) + 2).sum

end

end A196564.P17713173407646992596

namespace A196564

/-- `∑{digits}[n, or(#, -2)+2]` -/
def P17713173407646992596.Spec : Prop :=
  ∀ n, P17713173407646992596.a n = A196564 n

end A196564

/-! ## A196564.P17311563612534286660

`∑{digits}[5*n, floor(#/5)]`
-/

namespace A196564.P17311563612534286660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 5⌋).sum

end

end A196564.P17311563612534286660

namespace A196564

/-- `∑{digits}[5*n, floor(#/5)]` -/
def P17311563612534286660.Spec : Prop :=
  ∀ n, P17311563612534286660.a n = A196564 n

end A196564

/-! ## A196564.P10916427750357389118

`dr(A103181(n))`
-/

namespace A196564.P10916427750357389118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A103181 n)

end

end A196564.P10916427750357389118

namespace A196564

/-- `dr(A103181(n))` -/
def P10916427750357389118.Spec : Prop :=
  ∀ n, (P10916427750357389118.a n : ℤ) = A196564 n

end A196564

/-! ## A196564.P3523185839601614661

`A171797(n)%5`
-/

namespace A196564.P3523185839601614661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171797 n) 5

end

end A196564.P3523185839601614661

namespace A196564

/-- `A171797(n)%5` -/
def P3523185839601614661.Spec : Prop :=
  ∀ n, P3523185839601614661.a n = A196564 n

end A196564

/-! ## A196564.P2912117979798032287

`A308003(n)%5`
-/

namespace A196564.P2912117979798032287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308003 n) 5

end

end A196564.P2912117979798032287

namespace A196564

/-- `A308003(n)%5` -/
def P2912117979798032287.Spec : Prop :=
  ∀ n, P2912117979798032287.a n = A196564 n

end A196564

/-! ## A196564.P7625886424407857222

`log2(∏{digits}[n, A000034(#)])`
-/

namespace A196564.P7625886424407857222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000034 x).prod : ℤ) : ℝ)

end

end A196564.P7625886424407857222

namespace A196564

/-- `log2(∏{digits}[n, A000034(#)])` -/
def P7625886424407857222.Spec : Prop :=
  ∀ n, P7625886424407857222.a n = (A196564 n : ℝ)

end A196564

/-! ## A196564.P8023312333118051004

`A010874(A171797(n))`
-/

namespace A196564.P8023312333118051004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A171797 n).toNat

end

end A196564.P8023312333118051004

namespace A196564

/-- `A010874(A171797(n))` -/
def P8023312333118051004.Spec : Prop :=
  ∀ n, P8023312333118051004.a n = A196564 n

end A196564

/-! ## A196564.P15500220962382653607

`A010879(A308003(n))`
-/

namespace A196564.P15500220962382653607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A308003 n).toNat

end

end A196564.P15500220962382653607

namespace A196564

/-- `A010879(A308003(n))` -/
def P15500220962382653607.Spec : Prop :=
  ∀ n, P15500220962382653607.a n = A196564 n

end A196564

/-! ## A196564.P3261908771515316340

`A193238(2*A065031(n))`
-/

namespace A196564.P3261908771515316340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (2 * A065031 n).toNat

end

end A196564.P3261908771515316340

namespace A196564

/-- `A193238(2*A065031(n))` -/
def P3261908771515316340.Spec : Prop :=
  ∀ n, P3261908771515316340.a n = A196564 n

end A196564

/-! ## A196564.P13292488896123421389

`and(A010705(n), A055013(n))`
-/

namespace A196564.P13292488896123421389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010705 n) (A055013 n)

end

end A196564.P13292488896123421389

namespace A196564

/-- `and(A010705(n), A055013(n))` -/
def P13292488896123421389.Spec : Prop :=
  ∀ n, P13292488896123421389.a n = A196564 n

end A196564

/-! ## A196564.P14829753997268647145

`and(A010705(n), A055015(n))`
-/

namespace A196564.P14829753997268647145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010705 n) (A055015 n)

end

end A196564.P14829753997268647145

namespace A196564

/-- `and(A010705(n), A055015(n))` -/
def P14829753997268647145.Spec : Prop :=
  ∀ n, P14829753997268647145.a n = A196564 n

end A196564

/-! ## A196564.P13883707560881413626

`A001222(∏{digits}[n, A000034(#)])`
-/

namespace A196564.P13883707560881413626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000034 x).prod.toNat

end

end A196564.P13883707560881413626

namespace A196564

/-- `A001222(∏{digits}[n, A000034(#)])` -/
def P13883707560881413626.Spec : Prop :=
  ∀ n, P13883707560881413626.a n = A196564 n

end A196564

/-! ## A196564.P5517169108866816092

`A054899(A054899(A308005(n)))`
-/

namespace A196564.P5517169108866816092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A054899 (A308005 n).toNat).toNat

end

end A196564.P5517169108866816092

namespace A196564

/-- `A054899(A054899(A308005(n)))` -/
def P5517169108866816092.Spec : Prop :=
  ∀ n, P5517169108866816092.a n = A196564 n

end A196564

/-!
# A196568: Binomial coefficients of the form C(k, 3) that are products of two other binomial coefficients of the form C(k, 3).

The programs for A196568, there is no canonical definition to state claims against.
-/

/-! ## A196568.P1827336453973117406

`A364151(A364154(n+1)+A353865(2*n))`
-/

namespace A196568.P1827336453973117406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364151 (A364154 (n + 1) + A353865 (2 * n)).toNat

end

end A196568.P1827336453973117406

/-! ## A196568.P16889616572215823690

`A364151(A364154(n+1)+A055642(3*n+2))`
-/

namespace A196568.P16889616572215823690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364151 (A364154 (n + 1) + A055642 (3 * n + 2)).toNat

end

end A196568.P16889616572215823690

/-!
# A196570: LAN party numbers.

The programs for A196570, there is no canonical definition to state claims against.
-/

/-! ## A196570.P5110522746683825284

`2*A317544(a(n-1))` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A196570.P5110522746683825284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 6] fun n a =>
  2 * A317544 (a (n - 1)).toNat

end

end A196570.P5110522746683825284

/-! ## A196570.P7045076488857310837

`A213364(A164362(n+1))-2`
-/

namespace A196570.P7045076488857310837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213364 (A164362 (n + 1)).toNat - 2

end

end A196570.P7045076488857310837

/-!
# A196572: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196572, there is no canonical definition to state claims against.
-/

/-! ## A196572.P13568169711926260687

`A196578(∑[4*n]+1)`
-/

namespace A196572.P13568169711926260687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196572.P13568169711926260687

/-! ## A196572.P14560382948533268012

`A196578(A001844(n))+A025438(n)`
-/

namespace A196572.P14560382948533268012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A001844 n).toNat + A025438 n

end

end A196572.P14560382948533268012

/-! ## A196572.P13625188558122651077

`A196578(A001844(n))*A278657(n)`
-/

namespace A196572.P13625188558122651077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A001844 n).toNat * A278657 n

end

end A196572.P13625188558122651077

/-! ## A196572.P13347019813009703516

`A007318(C(n, 2))*A196578(A001844(n))`
-/

namespace A196572.P13347019813009703516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A196578 (A001844 n).toNat

end

end A196572.P13347019813009703516

/-!
# A196573: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196573, the canonical program `A196573.P15863220542726771775` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196573 has offset 1).

The definition of A196573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196573.P15863220542726771775

`2*a(n-1)+2*a(n-2)+3*a(n-3)+5*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=16, a(3)=37, a(4)=117, a(5)=372`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196573

/-- `2*a(n-1)+2*a(n-2)+3*a(n-3)+5*a(n-4)-a(n-6)` -/
def P15863220542726771775.Spec : Prop :=
  ∀ n, P15863220542726771775.a n = A196573 (n + 1)

theorem P15863220542726771775.correct : P15863220542726771775.Spec := by
  intro n
  simp only [A196573, Nat.add_sub_cancel]

end A196573

/-! ## A196573.P16087223473425445355

`A196578(∑[n+2]+4)`
-/

namespace A196573.P16087223473425445355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196573.P16087223473425445355

namespace A196573

/-- `A196578(∑[n+2]+4)` -/
def P16087223473425445355.Spec : Prop :=
  ∀ n, P16087223473425445355.a n = A196573 (n + 1)

end A196573

/-! ## A196573.P4661471639480934862

`or(char[3], A196578(A167614(n+1)))`
-/

namespace A196573.P4661471639480934862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196578 (A167614 (n + 1)).toNat)

end

end A196573.P4661471639480934862

namespace A196573

/-- `or(char[3], A196578(A167614(n+1)))` -/
def P4661471639480934862.Spec : Prop :=
  ∀ n, P4661471639480934862.a n = A196573 (n + 1)

end A196573

/-! ## A196573.P10042701341872725369

`A196578(A167614(n+1))%A199308(n)`
-/

namespace A196573.P10042701341872725369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196578 (A167614 (n + 1)).toNat) (A199308 n)

end

end A196573.P10042701341872725369

namespace A196573

/-- `A196578(A167614(n+1))%A199308(n)` -/
def P10042701341872725369.Spec : Prop :=
  ∀ n, P10042701341872725369.a n = A196573 (n + 1)

end A196573

/-! ## A196573.P10147777290117550409

`A196578(A167614(n+1))+A000007(n+1)`
-/

namespace A196573.P10147777290117550409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A196573.P10147777290117550409

namespace A196573

/-- `A196578(A167614(n+1))+A000007(n+1)` -/
def P10147777290117550409.Spec : Prop :=
  ∀ n, P10147777290117550409.a n = A196573 (n + 1)

end A196573

/-!
# A196574: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196574, there is no canonical definition to state claims against.
-/

/-! ## A196574.P15634878980680282014

`A196578(A374004(n+1))`
-/

namespace A196574.P15634878980680282014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A374004 (n + 1)).toNat

end

end A196574.P15634878980680282014

/-! ## A196574.P15289559820627622845

`A196578(A145018(n+4))`
-/

namespace A196574.P15289559820627622845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A145018 (n + 4)).toNat

end

end A196574.P15289559820627622845

/-! ## A196574.P15438609499899043014

`A196578(A052905(n)+9)`
-/

namespace A196574.P15438609499899043014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A052905 n + 9).toNat

end

end A196574.P15438609499899043014

/-! ## A196574.P676869782538102229

`A196578(A055999(n)+10)`
-/

namespace A196574.P676869782538102229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A055999 n + 10).toNat

end

end A196574.P676869782538102229

/-! ## A196574.P510369341649919787

`A196578(A167614(n+2)+1)`
-/

namespace A196574.P510369341649919787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A167614 (n + 2) + 1).toNat

end

end A196574.P510369341649919787

/-!
# A196575: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196575, there is no canonical definition to state claims against.
-/

/-! ## A196575.P17452514434581712754

`A196578(A374005(n+1))`
-/

namespace A196575.P17452514434581712754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A374005 (n + 1)).toNat

end

end A196575.P17452514434581712754

/-! ## A196575.P5708188167949563046

`A196578(Δ[A264443(n)])`
-/

namespace A196575.P5708188167949563046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (f1 (n + 1) - f1 n).toNat

end

end A196575.P5708188167949563046

/-! ## A196575.P6104703940436651834

`A196578(A056115(n)+11)`
-/

namespace A196575.P6104703940436651834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A056115 n + 11).toNat

end

end A196575.P6104703940436651834

/-! ## A196575.P16091837369902668111

`A196578(eq[4, A193592(n)])`
-/

namespace A196575.P16091837369902668111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196575.P16091837369902668111

/-! ## A196575.P966711407010003102

`A196578(Δ[A023545(n+1)])`
-/

namespace A196575.P966711407010003102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (f1 (n + 1) - f1 n).toNat

end

end A196575.P966711407010003102

/-!
# A196576: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196576, there is no canonical definition to state claims against.
-/

/-! ## A196576.P5884156252666836729

`A196578(A374007(n+1))`
-/

namespace A196576.P5884156252666836729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A374007 (n + 1)).toNat

end

end A196576.P5884156252666836729

/-! ## A196576.P9869351935833337421

`A196578(A166136(n+4))`
-/

namespace A196576.P9869351935833337421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A166136 (n + 4)).toNat

end

end A196576.P9869351935833337421

/-! ## A196576.P15062535779555301347

`A196578(A052905(n+3))`
-/

namespace A196576.P15062535779555301347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A052905 (n + 3)).toNat

end

end A196576.P15062535779555301347

/-! ## A196576.P8634236808441164184

`A196578(eq[5, A193592(n)])`
-/

namespace A196576.P8634236808441164184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196576.P8634236808441164184

/-! ## A196576.P12163447872806042850

`A196578(A046691(n+4)-1)`
-/

namespace A196576.P12163447872806042850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A046691 (n + 4) - 1).toNat

end

end A196576.P12163447872806042850

/-!
# A196577: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196577, there is no canonical definition to state claims against.
-/

/-! ## A196577.P6320179938981902882

`A196578(A374008(n+1))`
-/

namespace A196577.P6320179938981902882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A374008 (n + 1)).toNat

end

end A196577.P6320179938981902882

/-! ## A196577.P11967162270277401022

`A196578(A166136(n+5)+1)`
-/

namespace A196577.P11967162270277401022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A166136 (n + 5) + 1).toNat

end

end A196577.P11967162270277401022

/-! ## A196577.P2156382544066668726

`A196578(A055998(n+4)+10)`
-/

namespace A196577.P2156382544066668726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A055998 (n + 4) + 10).toNat

end

end A196577.P2156382544066668726

/-! ## A196577.P14946310001175997991

`A196578(eq[8, A131818(n+1)])`
-/

namespace A196577.P14946310001175997991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196577.P14946310001175997991

/-! ## A196577.P8016372915889317625

`A196578(A055999(n+4))`
-/

namespace A196577.P8016372915889317625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196578 (A055999 (n + 4)).toNat

end

end A196577.P8016372915889317625

/-!
# A196578: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,2,3,0,4 for x=0,1,2,3,4.

The programs for A196578, there is no canonical definition to state claims against.
-/

/-! ## A196578.P10865329414396861193

`A212619(A196601(n+1))+A196601(n+1)`
-/

namespace A196578.P10865329414396861193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A196601 (n + 1)).toNat + A196601 (n + 1)

end

end A196578.P10865329414396861193

/-! ## A196578.P10614276165194093366

`A212619(A196646(n+1))+A196646(n+1)`
-/

namespace A196578.P10614276165194093366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A196646 (n + 1)).toNat + A196646 (n + 1)

end

end A196578.P10614276165194093366

/-! ## A196578.P4256942742445321589

`or(A196601(n+1), A295890(A230184(n+1)))`
-/

namespace A196578.P4256942742445321589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196601 (n + 1)) (A295890 (A230184 (n + 1)).toNat)

end

end A196578.P4256942742445321589

/-! ## A196578.P1633130866782175500

`A196601(n+1)-A010815(A303590(3*n+4))`
-/

namespace A196578.P1633130866782175500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (n + 1) - A010815 (A303590 (3 * n + 4)).toNat

end

end A196578.P1633130866782175500

/-! ## A196578.P3622940084916100922

`or(A196601(n+1), A284490(A196601(2*n+1)))`
-/

namespace A196578.P3622940084916100922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196601 (n + 1)) (A284490 (A196601 (2 * n + 1)).toNat)

end

end A196578.P3622940084916100922

/-!
# A196583: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196583, there is no canonical definition to state claims against.
-/

/-! ## A196583.P14348523610129524118

`A196590(∑[4*n]+1)`
-/

namespace A196583.P14348523610129524118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196583.P14348523610129524118

/-! ## A196583.P17262277594405834603

`record[A196590(A330613(n+1))]`
-/

namespace A196583.P17262277594405834603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196583.P17262277594405834603

/-! ## A196583.P17332960738027427094

`or(char[1], A196590(A001844(n)))`
-/

namespace A196583.P17332960738027427094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196590 (A001844 n).toNat)

end

end A196583.P17332960738027427094

/-! ## A196583.P7136881949516783024

`record[A003982(n)*A196590(n+1)]`
-/

namespace A196583.P7136881949516783024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196583.P7136881949516783024

/-!
# A196584: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196584, there is no canonical definition to state claims against.
-/

/-! ## A196584.P9677780034308649312

`A196802(∑[n+1]+2)`
-/

namespace A196584.P9677780034308649312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196584.P9677780034308649312

/-! ## A196584.P17383455395040991147

`A196590(∑[n+1]+2)`
-/

namespace A196584.P17383455395040991147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196584.P17383455395040991147

/-! ## A196584.P8427578417682690679

`A197047(∑[n+1]+2)`
-/

namespace A196584.P8427578417682690679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196584.P8427578417682690679

/-! ## A196584.P14635905355430615450

`record[A196802(∑[A152271(n)])]`
-/

namespace A196584.P14635905355430615450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196584.P14635905355430615450

/-! ## A196584.P8237936282912612588

`record[gcd(A185663(n), A196802(n+1))]`
-/

namespace A196584.P8237936282912612588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185663 n) (A196802 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196584.P8237936282912612588

/-!
# A196585: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196585, there is no canonical definition to state claims against.
-/

/-! ## A196585.P9556518880831430272

`A196590(∑[n+2]+4)`
-/

namespace A196585.P9556518880831430272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196585.P9556518880831430272

/-! ## A196585.P7784912718439542165

`lcm(2, A196590(A167614(n+1)))`
-/

namespace A196585.P7784912718439542165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A196590 (A167614 (n + 1)).toNat)

end

end A196585.P7784912718439542165

/-! ## A196585.P10482041225595882885

`A196590(A167614(n+1))+A178798(n)`
-/

namespace A196585.P10482041225595882885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A167614 (n + 1)).toNat + A178798 n

end

end A196585.P10482041225595882885

/-! ## A196585.P10882688585062901017

`A196590(A167614(n+1))+A185044(n)`
-/

namespace A196585.P10882688585062901017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A167614 (n + 1)).toNat + A185044 n

end

end A196585.P10882688585062901017

/-! ## A196585.P15540984162586061933

`gcd(A000038(n), A196590(A167614(n+1)))`
-/

namespace A196585.P15540984162586061933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196590 (A167614 (n + 1)).toNat)

end

end A196585.P15540984162586061933

/-!
# A196586: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196586, there is no canonical definition to state claims against.
-/

/-! ## A196586.P14204581695816191594

`A196590(A374004(n+1))`
-/

namespace A196586.P14204581695816191594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A374004 (n + 1)).toNat

end

end A196586.P14204581695816191594

/-! ## A196586.P10645304482580789993

`A196590(A052905(n)+9)`
-/

namespace A196586.P10645304482580789993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A052905 n + 9).toNat

end

end A196586.P10645304482580789993

/-! ## A196586.P15139921317628650897

`A196590(A055999(n)+10)`
-/

namespace A196586.P15139921317628650897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A055999 n + 10).toNat

end

end A196586.P15139921317628650897

/-! ## A196586.P6178986020345066686

`A196590(A167614(n+2)+1)`
-/

namespace A196586.P6178986020345066686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A167614 (n + 2) + 1).toNat

end

end A196586.P6178986020345066686

/-! ## A196586.P15025490120942794219

`A196590(A166136(n+2)-2)`
-/

namespace A196586.P15025490120942794219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A166136 (n + 2) - 2).toNat

end

end A196586.P15025490120942794219

/-!
# A196587: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196587, there is no canonical definition to state claims against.
-/

/-! ## A196587.P16829773937337892068

`A196590(A374005(n+1))`
-/

namespace A196587.P16829773937337892068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A374005 (n + 1)).toNat

end

end A196587.P16829773937337892068

/-! ## A196587.P1443717382192728075

`A196590(A155212(n)+13)`
-/

namespace A196587.P1443717382192728075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A155212 n + 13).toNat

end

end A196587.P1443717382192728075

/-! ## A196587.P17949002508420516172

`A196590(A056000(n)+15)`
-/

namespace A196587.P17949002508420516172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A056000 n + 15).toNat

end

end A196587.P17949002508420516172

/-! ## A196587.P6327152726773456712

`A196590(eq[7, A066657(n)])`
-/

namespace A196587.P6327152726773456712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196587.P6327152726773456712

/-! ## A196587.P636277855539672917

`A196590(Δ[A264443(n)])`
-/

namespace A196587.P636277855539672917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (f1 (n + 1) - f1 n).toNat

end

end A196587.P636277855539672917

/-!
# A196588: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196588, there is no canonical definition to state claims against.
-/

/-! ## A196588.P294700264674202135

`A196590(A374007(n+1))`
-/

namespace A196588.P294700264674202135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A374007 (n + 1)).toNat

end

end A196588.P294700264674202135

/-! ## A196588.P18097571559222911764

`A196590(eq[7, A131818(n+1)])`
-/

namespace A196588.P18097571559222911764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196588.P18097571559222911764

/-! ## A196588.P5114217733007194492

`A196590(eq[3, A219347(n)])`
-/

namespace A196588.P5114217733007194492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196588.P5114217733007194492

/-! ## A196588.P6690211833614240715

`A196590(eq[5, A193592(n)])`
-/

namespace A196588.P6690211833614240715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196588.P6690211833614240715

/-! ## A196588.P5449985547803648109

`A196590(A046691(n+4)-1)`
-/

namespace A196588.P5449985547803648109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A046691 (n + 4) - 1).toNat

end

end A196588.P5449985547803648109

/-!
# A196589: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196589, there is no canonical definition to state claims against.
-/

/-! ## A196589.P8540998592473029401

`A196590(A374008(n+1))`
-/

namespace A196589.P8540998592473029401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A374008 (n + 1)).toNat

end

end A196589.P8540998592473029401

/-! ## A196589.P422600860307475577

`A196590(A166136(n+5)+1)`
-/

namespace A196589.P422600860307475577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A166136 (n + 5) + 1).toNat

end

end A196589.P422600860307475577

/-! ## A196589.P14884630468426766480

`A196590(A027379(n+4)+10)`
-/

namespace A196589.P14884630468426766480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (A027379 (n + 4) + 10).toNat

end

end A196589.P14884630468426766480

/-! ## A196589.P18229894093184068572

`A196590(eq[4, A219347(n)])`
-/

namespace A196589.P18229894093184068572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196589.P18229894093184068572

/-! ## A196589.P18088724051598751470

`A196590(eq[6, A193592(n)])`
-/

namespace A196589.P18088724051598751470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196589.P18088724051598751470

/-!
# A196590: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,0,1,4 for x=0,1,2,3,4.

The programs for A196590, there is no canonical definition to state claims against.
-/

/-! ## A196590.P4140710771399358917

`A028310(A196802(n+1))`
-/

namespace A196590.P4140710771399358917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A196802 (n + 1)).toNat

end

end A196590.P4140710771399358917

/-! ## A196590.P12289974477430744928

`A075054(A197047(n+1))`
-/

namespace A196590.P12289974477430744928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A197047 (n + 1)).toNat

end

end A196590.P12289974477430744928

/-! ## A196590.P15883529949208261695

`A196802(A281873(n+1))`
-/

namespace A196590.P15883529949208261695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A281873 (n + 1)).toNat

end

end A196590.P15883529949208261695

/-! ## A196590.P14803116566806588456

`A023443(A196802(n+1)+1)`
-/

namespace A196590.P14803116566806588456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A196802 (n + 1) + 1).toNat

end

end A196590.P14803116566806588456

/-! ## A196590.P15385422371428033475

`A023444(A196802(n+1)+2)`
-/

namespace A196590.P15385422371428033475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A196802 (n + 1) + 2).toNat

end

end A196590.P15385422371428033475

/-!
# A196593: Number of fixed tree-like convex polyominoes.

The programs for A196593, the canonical program `A196593.P4413336287587790740` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196593 has offset 1).

The definition of A196593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196593.P4413336287587790740

`2^(n+3)-((n+1)^3-(n+1)²+10*(n+1)+4)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196593

/-- `2^(n+3)-((n+1)^3-(n+1)²+10*(n+1)+4)/2` -/
def P4413336287587790740.Spec : Prop :=
  ∀ n, P4413336287587790740.a n = (A196593 (n + 1) : ℚ)

end A196593

/-! ## A196593.P14958004235451331553

`∑[∑[∑[A283592(n)]]-n²]`
-/

namespace A196593.P14958004235451331553
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196593.P14958004235451331553

namespace A196593

/-- `∑[∑[∑[A283592(n)]]-n²]` -/
def P14958004235451331553.Spec : Prop :=
  ∀ n, P14958004235451331553.a n = A196593 (n + 1)

end A196593

/-!
# A196595: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196595, there is no canonical definition to state claims against.
-/

/-! ## A196595.P6271427887339596584

`A196601(∑[4*n]+1)`
-/

namespace A196595.P6271427887339596584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196595.P6271427887339596584

/-! ## A196595.P18329378036048590865

`A196601(A001844(n))+A185238(n)`
-/

namespace A196595.P18329378036048590865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A001844 n).toNat + A185238 n

end

end A196595.P18329378036048590865

/-! ## A196595.P6353767778352938520

`gcd(A000038(n), A196601(A001844(n)))`
-/

namespace A196595.P6353767778352938520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196601 (A001844 n).toNat)

end

end A196595.P6353767778352938520

/-! ## A196595.P1748321365496550337

`or(A000007(n), A196601(A001844(n)))`
-/

namespace A196595.P1748321365496550337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196601 (A001844 n).toNat)

end

end A196595.P1748321365496550337

/-! ## A196595.P9615895187860313477

`A335453(n+1)+A196601(A001844(n))`
-/

namespace A196595.P9615895187860313477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (n + 1) + A196601 (A001844 n).toNat

end

end A196595.P9615895187860313477

/-!
# A196596: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196596, the canonical program `A196596.P17832141080269462725` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196596 has offset 1).

The definition of A196596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196596.P17832141080269462725

`2*a(n-1)+2*a(n-2)+3*a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=16, a(3)=37, a(4)=116`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A196596

/-- `2*a(n-1)+2*a(n-2)+3*a(n-3)+a(n-4)-a(n-5)` -/
def P17832141080269462725.Spec : Prop :=
  ∀ n, P17832141080269462725.a n = A196596 (n + 1)

theorem P17832141080269462725.correct : P17832141080269462725.Spec := by
  intro n
  simp only [A196596, Nat.add_sub_cancel]

end A196596

/-! ## A196596.P11600941467541754052

`A196601(∑[n+2]+4)`
-/

namespace A196596.P11600941467541754052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196596.P11600941467541754052

namespace A196596

/-- `A196601(∑[n+2]+4)` -/
def P11600941467541754052.Spec : Prop :=
  ∀ n, P11600941467541754052.a n = A196596 (n + 1)

end A196596

/-! ## A196596.P632007373565873878

`A196646(∑[n+2]+4)`
-/

namespace A196596.P632007373565873878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196596.P632007373565873878

namespace A196596

/-- `A196646(∑[n+2]+4)` -/
def P632007373565873878.Spec : Prop :=
  ∀ n, P632007373565873878.a n = A196596 (n + 1)

end A196596

/-! ## A196596.P8188225477430097428

`A196646(A167614(n+1))^A178334(n)`
-/

namespace A196596.P8188225477430097428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196646 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A196596.P8188225477430097428

namespace A196596

/-- `A196646(A167614(n+1))^A178334(n)` -/
def P8188225477430097428.Spec : Prop :=
  ∀ n, P8188225477430097428.a n = (A196596 (n + 1) : ℚ)

end A196596

/-! ## A196596.P17123847186765038153

`A196601(A167614(n+1))%A004171(n)`
-/

namespace A196596.P17123847186765038153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196601 (A167614 (n + 1)).toNat) (A004171 n)

end

end A196596.P17123847186765038153

namespace A196596

/-- `A196601(A167614(n+1))%A004171(n)` -/
def P17123847186765038153.Spec : Prop :=
  ∀ n, P17123847186765038153.a n = A196596 (n + 1)

end A196596

/-!
# A196597: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196597, there is no canonical definition to state claims against.
-/

/-! ## A196597.P3349932361366950476

`A196601(A374004(n+1))`
-/

namespace A196597.P3349932361366950476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A374004 (n + 1)).toNat

end

end A196597.P3349932361366950476

/-! ## A196597.P16332170733015656951

`A196646(A141214(n)+7)`
-/

namespace A196597.P16332170733015656951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A141214 n + 7).toNat

end

end A196597.P16332170733015656951

/-! ## A196597.P1418305254113975118

`A196601(A052905(n)+9)`
-/

namespace A196597.P1418305254113975118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A052905 n + 9).toNat

end

end A196597.P1418305254113975118

/-! ## A196597.P7014559511740768011

`A196646(A052905(n)+9)`
-/

namespace A196597.P7014559511740768011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A052905 n + 9).toNat

end

end A196597.P7014559511740768011

/-! ## A196597.P10010554329652718151

`A196646(A055999(n)+10)`
-/

namespace A196597.P10010554329652718151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A055999 n + 10).toNat

end

end A196597.P10010554329652718151

/-!
# A196598: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196598, there is no canonical definition to state claims against.
-/

/-! ## A196598.P6087712078421644030

`A196601(A374005(n+1))`
-/

namespace A196598.P6087712078421644030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A374005 (n + 1)).toNat

end

end A196598.P6087712078421644030

/-! ## A196598.P8985445567822324656

`A196601(A167499(n+3))`
-/

namespace A196598.P8985445567822324656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A167499 (n + 3)).toNat

end

end A196598.P8985445567822324656

/-! ## A196598.P10226259015685717319

`A196601(A000124(n+5)-(n+1))`
-/

namespace A196598.P10226259015685717319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A196598.P10226259015685717319

/-! ## A196598.P14371877371586736200

`gcd(A000038(n), A196601(A056000(n)+15))`
-/

namespace A196598.P14371877371586736200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196601 (A056000 n + 15).toNat)

end

end A196598.P14371877371586736200

/-! ## A196598.P5637743436444611060

`A196601(A046691(n+3))`
-/

namespace A196598.P5637743436444611060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A046691 (n + 3)).toNat

end

end A196598.P5637743436444611060

/-!
# A196599: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196599, there is no canonical definition to state claims against.
-/

/-! ## A196599.P10221604872926177087

`A196601(A374007(n+1))`
-/

namespace A196599.P10221604872926177087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A374007 (n + 1)).toNat

end

end A196599.P10221604872926177087

/-! ## A196599.P1706018678749453052

`A196601(A000124(n+5)+5)`
-/

namespace A196599.P1706018678749453052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A000124 (n + 5) + 5).toNat

end

end A196599.P1706018678749453052

/-! ## A196599.P12596024482212516389

`A196601(A000217(n+5)+6)`
-/

namespace A196599.P12596024482212516389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A000217 (n + 5) + 6).toNat

end

end A196599.P12596024482212516389

/-! ## A196599.P3102376870964017372

`A196601(A141214(n+4)-A004277(n+2))`
-/

namespace A196599.P3102376870964017372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A141214 (n + 4) - A004277 (n + 2)).toNat

end

end A196599.P3102376870964017372

/-! ## A196599.P17864282437922671263

`A196601(A052905(n+3))`
-/

namespace A196599.P17864282437922671263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A052905 (n + 3)).toNat

end

end A196599.P17864282437922671263

