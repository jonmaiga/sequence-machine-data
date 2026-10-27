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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A164000: Main diagonal of array in A163280.

The programs for A164000, there is no canonical definition to state claims against.
-/

/-! ## A164000.P13914613284839174169

`(n+1)*∑[A334216(n²+1)]`
-/

namespace A164000.P13914613284839174169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164000.P13914613284839174169

/-! ## A164000.P4770710909305645824

`(n+1)*A108852(A004080(n))`
-/

namespace A164000.P4770710909305645824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108852 (A004080 n).toNat

end

end A164000.P4770710909305645824

/-! ## A164000.P6784158496325470764

`(n+1)*A048766(A160170(3*n+2))`
-/

namespace A164000.P6784158496325470764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048766 (A160170 (3 * n + 2)).toNat

end

end A164000.P6784158496325470764

/-! ## A164000.P4315548819082790126

`(n+1)*∑[A331048((n+1)²)]`
-/

namespace A164000.P4315548819082790126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331048 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164000.P4315548819082790126

/-! ## A164000.P2720157098699959198

`(n+1)*A105564(A072353(2*n+1))`
-/

namespace A164000.P2720157098699959198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A105564 (A072353 (2 * n + 1)).toNat

end

end A164000.P2720157098699959198

/-!
# A164001: Spiral of triangles around a hexagon.

The programs for A164001, the canonical program `A164001.P3609606338369027636` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164001 has offset 1).

The definition of A164001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164001.P3609606338369027636

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164001

/-- `a(n-2)+a(n-3)` -/
def P3609606338369027636.Spec : Prop :=
  ∀ n, (P3609606338369027636.a n : ℤ) = A164001 (n + 1)

theorem P3609606338369027636.correct : P3609606338369027636.Spec := by
  intro n
  simp only [A164001, Nat.add_sub_cancel]

end A164001

/-! ## A164001.P8865756762757557409

`ogf((1+2x+2x^2+x^3)/(1-x^2-x^3))`
-/

namespace A164001.P8865756762757557409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, 0, -1, -1] n

end

end A164001.P8865756762757557409

namespace A164001

/-- `ogf((1+2x+2x^2+x^3)/(1-x^2-x^3))` -/
def P8865756762757557409.Spec : Prop :=
  ∀ n, P8865756762757557409.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P14347166209658971512

`record[abs(a(n-2))-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A164001.P14347166209658971512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  |f1 (n - 2)| - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P14347166209658971512

namespace A164001

/-- `record[abs(a(n-2))-a(n-3)]` -/
def P14347166209658971512.Spec : Prop :=
  ∀ n, P14347166209658971512.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P5125488586796282331

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A164001.P5125488586796282331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A164001.P5125488586796282331

namespace A164001

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P5125488586796282331.Spec : Prop :=
  ∀ n, P5125488586796282331.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P15466798291195968686

`record[A000931(n)]`
-/

namespace A164001.P15466798291195968686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P15466798291195968686

namespace A164001

/-- `record[A000931(n)]` -/
def P15466798291195968686.Spec : Prop :=
  ∀ n, P15466798291195968686.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P3058687607758790991

`record[A078027(n)]`
-/

namespace A164001.P3058687607758790991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P3058687607758790991

namespace A164001

/-- `record[A078027(n)]` -/
def P3058687607758790991.Spec : Prop :=
  ∀ n, P3058687607758790991.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P7405100506835300097

`record[A182097(n)]`
-/

namespace A164001.P7405100506835300097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P7405100506835300097

namespace A164001

/-- `record[A182097(n)]` -/
def P7405100506835300097.Spec : Prop :=
  ∀ n, P7405100506835300097.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P8518759819886002389

`record[abs(A124745(n))]`
-/

namespace A164001.P8518759819886002389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P8518759819886002389

namespace A164001

/-- `record[abs(A124745(n))]` -/
def P8518759819886002389.Spec : Prop :=
  ∀ n, P8518759819886002389.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P12005084044417621118

`record[abs(A133034(n))]`
-/

namespace A164001.P12005084044417621118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133034 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P12005084044417621118

namespace A164001

/-- `record[abs(A133034(n))]` -/
def P12005084044417621118.Spec : Prop :=
  ∀ n, P12005084044417621118.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P4931122352096603772

`record[A052954(n)-1]`
-/

namespace A164001.P4931122352096603772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P4931122352096603772

namespace A164001

/-- `record[A052954(n)-1]` -/
def P4931122352096603772.Spec : Prop :=
  ∀ n, P4931122352096603772.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P8399119504949381350

`record[A114775(n+2)]`
-/

namespace A164001.P8399119504949381350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P8399119504949381350

namespace A164001

/-- `record[A114775(n+2)]` -/
def P8399119504949381350.Spec : Prop :=
  ∀ n, P8399119504949381350.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P5504800114928367195

`record[A127682(n+2)]`
-/

namespace A164001.P5504800114928367195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P5504800114928367195

namespace A164001

/-- `record[A127682(n+2)]` -/
def P5504800114928367195.Spec : Prop :=
  ∀ n, P5504800114928367195.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P7443371453505597811

`record[A133034(n+2)]`
-/

namespace A164001.P7443371453505597811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P7443371453505597811

namespace A164001

/-- `record[A133034(n+2)]` -/
def P7443371453505597811.Spec : Prop :=
  ∀ n, P7443371453505597811.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P16120079218721298249

`record[A228361(abs(2-n))]`
-/

namespace A164001.P16120079218721298249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164001.P16120079218721298249

namespace A164001

/-- `record[A228361(abs(2-n))]` -/
def P16120079218721298249.Spec : Prop :=
  ∀ n, P16120079218721298249.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P17571498544699482068

`∑[A182097(char[1]+n)]`
-/

namespace A164001.P17571498544699482068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164001.P17571498544699482068

namespace A164001

/-- `∑[A182097(char[1]+n)]` -/
def P17571498544699482068.Spec : Prop :=
  ∀ n, P17571498544699482068.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P16743439131314319693

`A134816(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A164001.P16743439131314319693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A134816 (n - 1) + a (n - 1)

end

end A164001.P16743439131314319693

namespace A164001

/-- `A134816(n-1)+a(n-1)` -/
def P16743439131314319693.Spec : Prop :=
  ∀ n, P16743439131314319693.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P1844987495032582378

`A000931(n+3)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A164001.P1844987495032582378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000931 (n + 3) + a (n - 1)

end

end A164001.P1844987495032582378

namespace A164001

/-- `A000931(n+3)+a(n-1)` -/
def P1844987495032582378.Spec : Prop :=
  ∀ n, P1844987495032582378.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P3414267494325227854

`A134816(A009005(n+1))`
-/

namespace A164001.P3414267494325227854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A009005 (n + 1)).toNat

end

end A164001.P3414267494325227854

namespace A164001

/-- `A134816(A009005(n+1))` -/
def P3414267494325227854.Spec : Prop :=
  ∀ n, P3414267494325227854.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P3744797706441092448

`A134816(A074764(n+1))`
-/

namespace A164001.P3744797706441092448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A074764 (n + 1)).toNat

end

end A164001.P3744797706441092448

namespace A164001

/-- `A134816(A074764(n+1))` -/
def P3744797706441092448.Spec : Prop :=
  ∀ n, P3744797706441092448.a n = A164001 (n + 1)

end A164001

/-! ## A164001.P2535476916718544997

`A078027(A263772(n+1))`
-/

namespace A164001.P2535476916718544997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A263772 (n + 1)).toNat

end

end A164001.P2535476916718544997

namespace A164001

/-- `A078027(A263772(n+1))` -/
def P2535476916718544997.Spec : Prop :=
  ∀ n, P2535476916718544997.a n = A164001 (n + 1)

end A164001

/-!
# A164002: Triangle read by rows in which each row contains a finite triangle as shown below.

The programs for A164002, there is no canonical definition to state claims against.
-/

/-! ## A164002.P7331049968074782447

`A043562(record[A004185(A007090(n))])`
-/

namespace A164002.P7331049968074782447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A007090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A164002.P7331049968074782447

/-! ## A164002.P6602446187167815305

`A249973(A321591(n))`
-/

namespace A164002.P6602446187167815305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249973 (A321591 n).toNat

end

end A164002.P6602446187167815305

/-! ## A164002.P6976868463672519136

`A322423(A321591(n)²)`
-/

namespace A164002.P6976868463672519136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322423 (A321591 n ^ 2).toNat

end

end A164002.P6976868463672519136

/-! ## A164002.P3369089912040097158

`A163671(A046816(n)^A055778(n))`
-/

namespace A164002.P3369089912040097158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163671 (SequenceMachineLib.roundAway ((A046816 n : ℚ) ^ (A055778 n : ℤ))).toNat

end

end A164002.P3369089912040097158

/-! ## A164002.P6981557350795756326

`A001221(A000230(n)*A046816(n))`
-/

namespace A164002.P6981557350795756326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000230 n * A046816 n).toNat

end

end A164002.P6981557350795756326

/-!
# A164004: Zero together with row 4 of the array in A163280.

The programs for A164004, the canonical program `A164004.P14712625775824097309` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164004 has offset 0).

The definition of A164004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164004.P3579458112710471118

`char[1]+n*(n+3)`
-/

namespace A164004.P3579458112710471118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n * (n + 3)

end

end A164004.P3579458112710471118

namespace A164004

/-- `char[1]+n*(n+3)` -/
def P3579458112710471118.Spec : Prop :=
  ∀ n, (P3579458112710471118.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P4041190961122680696

`n*floor(5-atan(n)+n)`
-/

namespace A164004.P4041190961122680696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊5 - Real.arctan (n : ℝ) + (n : ℝ)⌋

end

end A164004.P4041190961122680696

namespace A164004

/-- `n*floor(5-atan(n)+n)` -/
def P4041190961122680696.Spec : Prop :=
  ∀ n, P4041190961122680696.a n = A164004 n

end A164004

/-! ## A164004.P16751509024423311955

`n*round(acot(n)+3+n)`
-/

namespace A164004.P16751509024423311955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + 3 + (n : ℝ))

end

end A164004.P16751509024423311955

namespace A164004

/-- `n*round(acot(n)+3+n)` -/
def P16751509024423311955.Spec : Prop :=
  ∀ n, P16751509024423311955.a n = A164004 n

end A164004

/-! ## A164004.P14712625775824097309

`n*(C(2, n)!+n+2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164004

/-- `n*(C(2, n)!+n+2)` -/
def P14712625775824097309.Spec : Prop :=
  ∀ n, (P14712625775824097309.a n : ℤ) = A164004 n

theorem P14712625775824097309.correct : P14712625775824097309.Spec := by
  intro n
  simp only [A164004]

end A164004

/-! ## A164004.P12465731488609440227

`n*or(n+3, C(5, n²))`
-/

namespace A164004.P12465731488609440227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor (n + 3) (Nat.choose 5 (n ^ 2))

end

end A164004.P12465731488609440227

namespace A164004

/-- `n*or(n+3, C(5, n²))` -/
def P12465731488609440227.Spec : Prop :=
  ∀ n, (P12465731488609440227.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P5232173680885924617

`n*(C(n, n²)+n+3)`
-/

namespace A164004.P5232173680885924617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose n (n ^ 2) + (n + 3))

end

end A164004.P5232173680885924617

namespace A164004

/-- `n*(C(n, n²)+n+3)` -/
def P5232173680885924617.Spec : Prop :=
  ∀ n, (P5232173680885924617.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P7573440030582388429

`∑[a(n-1)+2]` with `a(0)=0, a(1)=5, a(2)=5, a(3)=8`
-/

namespace A164004.P7573440030582388429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 5, 8] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164004.P7573440030582388429

namespace A164004

/-- `∑[a(n-1)+2]` -/
def P7573440030582388429.Spec : Prop :=
  ∀ n, (P7573440030582388429.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P15616107389504023971

`n*(C(2, n+1)+n+3)`
-/

namespace A164004.P15616107389504023971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose 2 (n + 1) + n + 3)

end

end A164004.P15616107389504023971

namespace A164004

/-- `n*(C(2, n+1)+n+3)` -/
def P15616107389504023971.Spec : Prop :=
  ∀ n, (P15616107389504023971.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P17163023545009359853

`n*ceil(acot(n-1)+n+2)`
-/

namespace A164004.P17163023545009359853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) + (n + 2 : ℝ)⌉

end

end A164004.P17163023545009359853

namespace A164004

/-- `n*ceil(acot(n-1)+n+2)` -/
def P17163023545009359853.Spec : Prop :=
  ∀ n, P17163023545009359853.a n = A164004 n

end A164004

/-! ## A164004.P17177083178335258113

`n*floor(acot(n-1)+n+3)`
-/

namespace A164004.P17177083178335258113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) + (n + 3 : ℝ)⌋

end

end A164004.P17177083178335258113

namespace A164004

/-- `n*floor(acot(n-1)+n+3)` -/
def P17177083178335258113.Spec : Prop :=
  ∀ n, P17177083178335258113.a n = A164004 n

end A164004

/-! ## A164004.P3416179169428313128

`ogf((5x-5x^2+3x^3-x^4)/(1-3x+3x^2-x^3))`
-/

namespace A164004.P3416179169428313128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -5, 3, -1] [1, -3, 3, -1] n

end

end A164004.P3416179169428313128

namespace A164004

/-- `ogf((5x-5x^2+3x^3-x^4)/(1-3x+3x^2-x^3))` -/
def P3416179169428313128.Spec : Prop :=
  ∀ n, P3416179169428313128.a n = A164004 n

end A164004

/-! ## A164004.P15417063208453613664

`record[a(n-1)+2*n]` with `a(0)=0, a(1)=5, a(2)=4`
-/

namespace A164004.P15417063208453613664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 4] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164004.P15417063208453613664

namespace A164004

/-- `record[a(n-1)+2*n]` -/
def P15417063208453613664.Spec : Prop :=
  ∀ n, (P15417063208453613664.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P14066909426168389943

`n*(3%a(n-1)+n)` with `a(0)=0, a(1)=5`
-/

namespace A164004.P14066909426168389943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  n * (3 % a (n - 1) + n)

end

end A164004.P14066909426168389943

namespace A164004

/-- `n*(3%a(n-1)+n)` -/
def P14066909426168389943.Spec : Prop :=
  ∀ n, (P14066909426168389943.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P7818174984887496061

`n*or(n+3, floor(2/(n+1)))`
-/

namespace A164004.P7818174984887496061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n + 3 : ℤ) ⌊2 / (n + 1 : ℚ)⌋

end

end A164004.P7818174984887496061

namespace A164004

/-- `n*or(n+3, floor(2/(n+1)))` -/
def P7818174984887496061.Spec : Prop :=
  ∀ n, P7818174984887496061.a n = A164004 n

end A164004

/-! ## A164004.P10593288500602851541

`n*xor(n+3, floor(2/(n+1)))`
-/

namespace A164004.P10593288500602851541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (n + 3 : ℤ) ⌊2 / (n + 1 : ℚ)⌋

end

end A164004.P10593288500602851541

namespace A164004

/-- `n*xor(n+3, floor(2/(n+1)))` -/
def P10593288500602851541.Spec : Prop :=
  ∀ n, P10593288500602851541.a n = A164004 n

end A164004

/-! ## A164004.P14075287496642324562

`(n+3)*floor(a(n-1)/n)` with `a(0)=0, a(1)=5`
-/

namespace A164004.P14075287496642324562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  (n + 3 : ℤ) * ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋

end

end A164004.P14075287496642324562

namespace A164004

/-- `(n+3)*floor(a(n-1)/n)` -/
def P14075287496642324562.Spec : Prop :=
  ∀ n, P14075287496642324562.a n = A164004 n

end A164004

/-! ## A164004.P11506721831108671005

`n*(val((n+1)², n+3)+n+3)`
-/

namespace A164004.P11506721831108671005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.valuation ((n + 1) ^ 2) (n + 3) + (n + 3))

end

end A164004.P11506721831108671005

namespace A164004

/-- `n*(val((n+1)², n+3)+n+3)` -/
def P11506721831108671005.Spec : Prop :=
  ∀ n, (P11506721831108671005.a n : ℤ) = A164004 n

end A164004

/-! ## A164004.P8909961726182526960

`(n+3)*ceil(a(n-1)/(n+1))` with `a(0)=0, a(1)=5`
-/

namespace A164004.P8909961726182526960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  (n + 3 : ℤ) * ⌈(a (n - 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A164004.P8909961726182526960

namespace A164004

/-- `(n+3)*ceil(a(n-1)/(n+1))` -/
def P8909961726182526960.Spec : Prop :=
  ∀ n, P8909961726182526960.a n = A164004 n

end A164004

/-! ## A164004.P18363161879354726743

`floor((n+1)²+a(n-1)/(n+1))` with `a(0)=0, a(1)=5`
-/

namespace A164004.P18363161879354726743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) + (a (n - 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A164004.P18363161879354726743

namespace A164004

/-- `floor((n+1)²+a(n-1)/(n+1))` -/
def P18363161879354726743.Spec : Prop :=
  ∀ n, P18363161879354726743.a n = A164004 n

end A164004

/-! ## A164004.P17056208988823932395

`floor((a(n-1)+(n+1)^3)/(n+1))` with `a(0)=0, a(1)=5`
-/

namespace A164004.P17056208988823932395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  ⌊(a (n - 1) + ((n + 1) ^ 3 : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A164004.P17056208988823932395

namespace A164004

/-- `floor((a(n-1)+(n+1)^3)/(n+1))` -/
def P17056208988823932395.Spec : Prop :=
  ∀ n, P17056208988823932395.a n = A164004 n

end A164004

/-!
# A164005: Zero together with row 5 of the array in A163280.

The programs for A164005, the canonical program `A164005.P8330147509045571845` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164005 has offset 0).

The definition of A164005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164005.P8330147509045571845

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=7, a(2)=14, a(3)=21, a(4)=32, a(5)=45`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164005

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8330147509045571845.Spec : Prop :=
  ∀ n, P8330147509045571845.a n = A164005 n

theorem P8330147509045571845.correct : P8330147509045571845.Spec := by
  intro n
  simp only [A164005]

end A164005

/-! ## A164005.P13427720202303197988

`n*(C(2, n)+3+n)+n`
-/

namespace A164005.P13427720202303197988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose 2 n + 3 + n) + n

end

end A164005.P13427720202303197988

namespace A164005

/-- `n*(C(2, n)+3+n)+n` -/
def P13427720202303197988.Spec : Prop :=
  ∀ n, (P13427720202303197988.a n : ℤ) = A164005 n

end A164005

/-! ## A164005.P3901555029647365867

`n*ceil(3*root(3, n+1)+n)`
-/

namespace A164005.P3901555029647365867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈3 * (3 : ℝ) ^ (1 / (n + 1 : ℝ)) + (n : ℝ)⌉

end

end A164005.P3901555029647365867

namespace A164005

/-- `n*ceil(3*root(3, n+1)+n)` -/
def P3901555029647365867.Spec : Prop :=
  ∀ n, P3901555029647365867.a n = A164005 n

end A164005

/-! ## A164005.P11310556609061527534

`n*(ceil(2*exp(acot(n)))+n)+n`
-/

namespace A164005.P11310556609061527534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (⌈2 * Real.exp (SequenceMachineLib.acot (n : ℝ))⌉ + (n : ℤ)) + (n : ℤ)

end

end A164005.P11310556609061527534

namespace A164005

/-- `n*(ceil(2*exp(acot(n)))+n)+n` -/
def P11310556609061527534.Spec : Prop :=
  ∀ n, P11310556609061527534.a n = A164005 n

end A164005

/-! ## A164005.P11133900823582596954

`(n+2)*(n+2)-(2%(2*n-3)+2)`
-/

namespace A164005.P11133900823582596954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 2) : ℤ) - (Int.tmod 2 ((2 * n : ℤ) - 3) + 2)

end

end A164005.P11133900823582596954

namespace A164005

/-- `(n+2)*(n+2)-(2%(2*n-3)+2)` -/
def P11133900823582596954.Spec : Prop :=
  ∀ n, P11133900823582596954.a n = A164005 n

end A164005

/-! ## A164005.P15400547616708175432

`A001405(C(3, n))+A014209(n)+n`
-/

namespace A164005.P15400547616708175432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (Nat.choose 3 n) + (A014209 n + (n : ℤ))

end

end A164005.P15400547616708175432

namespace A164005

/-- `A001405(C(3, n))+A014209(n)+n` -/
def P15400547616708175432.Spec : Prop :=
  ∀ n, P15400547616708175432.a n = A164005 n

end A164005

/-! ## A164005.P17196474758919713431

`floor(A028872(n+2)-A028872(n+2)/A272870(n))`
-/

namespace A164005.P17196474758919713431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028872 (n + 2) : ℚ) - (A028872 (n + 2) : ℚ) / (A272870 n : ℚ)⌋

end

end A164005.P17196474758919713431

namespace A164005

/-- `floor(A028872(n+2)-A028872(n+2)/A272870(n))` -/
def P17196474758919713431.Spec : Prop :=
  ∀ n, P17196474758919713431.a n = A164005 n

end A164005

/-! ## A164005.P11779312516929767868

`A100451(n+2)`
-/

namespace A164005.P11779312516929767868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100451 (n + 2)

end

end A164005.P11779312516929767868

namespace A164005

/-- `A100451(n+2)` -/
def P11779312516929767868.Spec : Prop :=
  ∀ n, P11779312516929767868.a n = A164005 n

end A164005

/-! ## A164005.P11723580039218151744

`A028552(n)+n*A014963(A132411(n+1))`
-/

namespace A164005.P11723580039218151744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + (n : ℤ) * A014963 (A132411 (n + 1)).toNat

end

end A164005.P11723580039218151744

namespace A164005

/-- `A028552(n)+n*A014963(A132411(n+1))` -/
def P11723580039218151744.Spec : Prop :=
  ∀ n, P11723580039218151744.a n = A164005 n

end A164005

/-!
# A164006: Zero together with row 6 of the array in A163280.

The programs for A164006, the canonical program `A164006.P17716046517648791315` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164006 has offset 0).

The definition of A164006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164006.P17716046517648791315

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=11, a(2)=22, a(3)=27, a(4)=44, a(5)=50, a(6)=66, a(7)=84`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164006

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17716046517648791315.Spec : Prop :=
  ∀ n, P17716046517648791315.a n = A164006 n

theorem P17716046517648791315.correct : P17716046517648791315.Spec := by
  intro n
  simp only [A164006]

end A164006

/-!
# A164007: Zero together with row 7 of the array in A163280.

The programs for A164007, the canonical program `A164007.P3282462366128802505` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164007 has offset 0).

The definition of A164007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164007.P3282462366128802505

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=13, a(2)=26, a(3)=33, a(4)=52, a(5)=55, a(6)=78, a(7)=91, a(8)=112, a(9)=135`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164007

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3282462366128802505.Spec : Prop :=
  ∀ n, P3282462366128802505.a n = A164007 n

theorem P3282462366128802505.correct : P3282462366128802505.Spec := by
  intro n
  simp only [A164007]

end A164007

/-!
# A164008: Zero together with row 8 of the array in A163280.

The programs for A164008, there is no canonical definition to state claims against.
-/

/-! ## A164008.P6501062077436443672

`n*A305945(6^∑{e}[n+1, #])`
-/

namespace A164008.P6501062077436443672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A305945 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A164008.P6501062077436443672

/-! ## A164008.P17428515356480027672

`n*A195534(gcd(n!*∑[1/n!], n!))`
-/

namespace A164008.P17428515356480027672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195534 (Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (Nat.factorial n : ℤ))

end

end A164008.P17428515356480027672

/-! ## A164008.P13150654731304367043

`n*A195534(A093101(n))`
-/

namespace A164008.P13150654731304367043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195534 (A093101 n).toNat

end

end A164008.P13150654731304367043

/-!
# A164009: Zero together with row 9 of the array in A163280.

The programs for A164009, there is no canonical definition to state claims against.
-/

/-! ## A164009.P4508766069239457568

`n*A128160(A083722(n+1))`
-/

namespace A164009.P4508766069239457568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128160 (A083722 (n + 1)).toNat

end

end A164009.P4508766069239457568

/-!
# A164010: Zero together with row 10 of the array in A163280.

The programs for A164010, there is no canonical definition to state claims against.
-/

/-! ## A164010.P4062736445027737330

`n*A128365(A293514(n+1))`
-/

namespace A164010.P4062736445027737330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128365 (A293514 (n + 1)).toNat

end

end A164010.P4062736445027737330

/-! ## A164010.P11172447913015705703

`n*A128365(A293524(n+1))`
-/

namespace A164010.P11172447913015705703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128365 (A293524 (n + 1)).toNat

end

end A164010.P11172447913015705703

/-!
# A164011: Zero together with row 11 of the array in A163280.

The programs for A164011, there is no canonical definition to state claims against.
-/

/-! ## A164011.P12234811466600039032

`n*A063905(A039724(n+1))`
-/

namespace A164011.P12234811466600039032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063905 (A039724 (n + 1)).toNat

end

end A164011.P12234811466600039032

/-!
# A164012: Zero together with row 12 of the array in A163280.

The programs for A164012, there is no canonical definition to state claims against.
-/

/-! ## A164012.P3699323446600453458

`n*A131762(n^(n+1))`
-/

namespace A164012.P3699323446600453458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131762 (n ^ (n + 1))

end

end A164012.P3699323446600453458

/-!
# A164013: 3 times centered triangular numbers: a(n) = 9*n*(n+1)/2 + 3.

The programs for A164013, the canonical program `A164013.P13452208721261249083` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164013 has offset 0).

The definition of A164013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(n+1)/2+3` (program `A164013.P15854841478935482739`, by `A164013.P15854841478935482739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164013.P2771331898619135311

`9*C(n+1, 2)+3`
-/

namespace A164013.P2771331898619135311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 1) 2 + 3

end

end A164013.P2771331898619135311

namespace A164013

/-- `9*C(n+1, 2)+3` -/
def P2771331898619135311.Spec : Prop :=
  ∀ n, (P2771331898619135311.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P13452208721261249083

`a(n-1)+9*n` with `a(0)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164013

/-- `a(n-1)+9*n` -/
def P13452208721261249083.Spec : Prop :=
  ∀ n, (P13452208721261249083.a n : ℤ) = A164013 n

theorem P13452208721261249083.correct : P13452208721261249083.Spec := by
  intro n
  simp only [A164013]

end A164013

/-! ## A164013.P15854841478935482739

`9*n*(n+1)/2+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164013.P15854841478935482739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n * (n + 1) : ℚ) / 2 + 3

end

end A164013.P15854841478935482739

namespace A164013

/-- `9*n*(n+1)/2+3` -/
def P15854841478935482739.Spec : Prop :=
  ∀ n, P15854841478935482739.a n = (A164013 n : ℚ)

theorem P15854841478935482739.correct : P15854841478935482739.Spec := by
  intro n
  induction n with
  | zero => simp [A164013, A164013.P15854841478935482739.a, A164013.P13452208721261249083.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A164013, Nat.add_sub_cancel, A164013.P15854841478935482739.a, A164013.P13452208721261249083.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A164013

/-! ## A164013.P17769911223451394995

`∑[3*floor(3/acot(n))]`
-/

namespace A164013.P17769911223451394995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P17769911223451394995

namespace A164013

/-- `∑[3*floor(3/acot(n))]` -/
def P17769911223451394995.Spec : Prop :=
  ∀ n, P17769911223451394995.a n = A164013 n

end A164013

/-! ## A164013.P17009767166431291523

`∑[a(n-1)+9]` with `a(0)=3, a(1)=9`
-/

namespace A164013.P17009767166431291523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P17009767166431291523

namespace A164013

/-- `∑[a(n-1)+9]` -/
def P17009767166431291523.Spec : Prop :=
  ∀ n, (P17009767166431291523.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P18025893517163392180

`lcm(3, ∑[n+1]+n²)`
-/

namespace A164013.P18025893517163392180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A164013.P18025893517163392180

namespace A164013

/-- `lcm(3, ∑[n+1]+n²)` -/
def P18025893517163392180.Spec : Prop :=
  ∀ n, (P18025893517163392180.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P13288147630539716883

`3*abs(xor(∑[3*n], -1))`
-/

namespace A164013.P13288147630539716883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)|

end

end A164013.P13288147630539716883

namespace A164013

/-- `3*abs(xor(∑[3*n], -1))` -/
def P13288147630539716883.Spec : Prop :=
  ∀ n, P13288147630539716883.a n = A164013 n

end A164013

/-! ## A164013.P14533073144766830814

`∑[ogf((3+3x+3x^2)/(1-2x+x^2))]`
-/

namespace A164013.P14533073144766830814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P14533073144766830814

namespace A164013

/-- `∑[ogf((3+3x+3x^2)/(1-2x+x^2))]` -/
def P14533073144766830814.Spec : Prop :=
  ∀ n, P14533073144766830814.a n = A164013 n

end A164013

/-! ## A164013.P1344079220946427276

`ogf((3+3x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A164013.P1344079220946427276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 3] [1, -3, 3, -1] n

end

end A164013.P1344079220946427276

namespace A164013

/-- `ogf((3+3x+3x^2)/(1-3x+3x^2-x^3))` -/
def P1344079220946427276.Spec : Prop :=
  ∀ n, P1344079220946427276.a n = A164013 n

end A164013

/-! ## A164013.P7082125398841730995

`∑[9*n%a(n-1)]` with `a(0)=3`
-/

namespace A164013.P7082125398841730995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  9 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P7082125398841730995

namespace A164013

/-- `∑[9*n%a(n-1)]` -/
def P7082125398841730995.Spec : Prop :=
  ∀ n, (P7082125398841730995.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P1881122332526769720

`∑[n*dr(a(n-1)²)]` with `a(0)=3`
-/

namespace A164013.P1881122332526769720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * SequenceMachineLib.digitalRoot (f1 (n - 1) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P1881122332526769720

namespace A164013

/-- `∑[n*dr(a(n-1)²)]` -/
def P1881122332526769720.Spec : Prop :=
  ∀ n, (P1881122332526769720.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P4993801331865472108

`∑[n*a(n²%n)²]` with `a(0)=3`
-/

namespace A164013.P4993801331865472108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * f1 (n ^ 2 % n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P4993801331865472108

namespace A164013

/-- `∑[n*a(n²%n)²]` -/
def P4993801331865472108.Spec : Prop :=
  ∀ n, (P4993801331865472108.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P14566094233101339603

`∑[n*gcd(3, a(n-1))²]` with `a(0)=3`
-/

namespace A164013.P14566094233101339603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * Nat.gcd 3 (f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P14566094233101339603

namespace A164013

/-- `∑[n*gcd(3, a(n-1))²]` -/
def P14566094233101339603.Spec : Prop :=
  ∀ n, (P14566094233101339603.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P2422448998706523625

`∑[n*dr(3*a(n-1))]` with `a(0)=3`
-/

namespace A164013.P2422448998706523625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * SequenceMachineLib.digitalRoot (3 * f1 (n - 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P2422448998706523625

namespace A164013

/-- `∑[n*dr(3*a(n-1))]` -/
def P2422448998706523625.Spec : Prop :=
  ∀ n, (P2422448998706523625.a n : ℤ) = A164013 n

end A164013

/-! ## A164013.P16364404603814021972

`∑[abs(3*(floor(acot(n))-3*n))]`
-/

namespace A164013.P16364404603814021972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (⌊SequenceMachineLib.acot (n : ℝ)⌋ - (3 * n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P16364404603814021972

namespace A164013

/-- `∑[abs(3*(floor(acot(n))-3*n))]` -/
def P16364404603814021972.Spec : Prop :=
  ∀ n, P16364404603814021972.a n = A164013 n

end A164013

/-! ## A164013.P12046291852324394364

`3*(1-∑[a(n-1)-3])` with `a(0)=0`
-/

namespace A164013.P12046291852324394364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164013.P12046291852324394364

namespace A164013

/-- `3*(1-∑[a(n-1)-3])` -/
def P12046291852324394364.Spec : Prop :=
  ∀ n, P12046291852324394364.a n = A164013 n

end A164013

/-! ## A164013.P16964407101660055372

`∑[3*A008486(n)]`
-/

namespace A164013.P16964407101660055372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164013.P16964407101660055372

namespace A164013

/-- `∑[3*A008486(n)]` -/
def P16964407101660055372.Spec : Prop :=
  ∀ n, P16964407101660055372.a n = A164013 n

end A164013

/-! ## A164013.P15434772938062795556

`3*A005448(n+1)`
-/

namespace A164013.P15434772938062795556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005448 (n + 1)

end

end A164013.P15434772938062795556

namespace A164013

/-- `3*A005448(n+1)` -/
def P15434772938062795556.Spec : Prop :=
  ∀ n, P15434772938062795556.a n = A164013 n

end A164013

/-! ## A164013.P17406200624860236926

`3*(A045943(n)+1)`
-/

namespace A164013.P17406200624860236926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A045943 n + 1)

end

end A164013.P17406200624860236926

namespace A164013

/-- `3*(A045943(n)+1)` -/
def P17406200624860236926.Spec : Prop :=
  ∀ n, P17406200624860236926.a n = A164013 n

end A164013

/-! ## A164013.P10764391046908227754

`3*(A290768(n+1)-2)`
-/

namespace A164013.P10764391046908227754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A290768 (n + 1) - 2)

end

end A164013.P10764391046908227754

namespace A164013

/-- `3*(A290768(n+1)-2)` -/
def P10764391046908227754.Spec : Prop :=
  ∀ n, P10764391046908227754.a n = A164013 n

end A164013

/-!
# A164014: Numbers k for which the Hurwitz equation (x_1)^2 + (x_2)^2 + ... + (x_n)^2 = z * x_1 * x_2 * ... * x_k has solutions only for z = k.

The programs for A164014, there is no canonical definition to state claims against.
-/

/-! ## A164014.P10184108266928202210

`4*A057957(A032275(n+1))`
-/

namespace A164014.P10184108266928202210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A057957 (A032275 (n + 1)).toNat

end

end A164014.P10184108266928202210

/-! ## A164014.P5588230613934416954

`A119870(xor(n, A078160(n+1)))`
-/

namespace A164014.P5588230613934416954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119870 (Int.xor (n : ℤ) (A078160 (n + 1))).toNat

end

end A164014.P5588230613934416954

/-!
# A164015: 5 times centered pentagonal numbers: a(n) = 5*(5*n^2 + 5*n + 2)/2.

The programs for A164015, the canonical program `A164015.P3019782422880646431` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164015 has offset 0).

The definition of A164015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(5*n²+5*n+2)/2` (program `A164015.P12865757109410192513`, by `A164015.P12865757109410192513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164015.P3019782422880646431

`a(n-1)+25*n` with `a(0)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164015

/-- `a(n-1)+25*n` -/
def P3019782422880646431.Spec : Prop :=
  ∀ n, (P3019782422880646431.a n : ℤ) = A164015 n

theorem P3019782422880646431.correct : P3019782422880646431.Spec := by
  intro n
  simp only [A164015]

end A164015

/-! ## A164015.P4778520437225521814

`25*n*(n+1)/2+5`
-/

namespace A164015.P4778520437225521814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * n * (n + 1) : ℚ) / 2 + 5

end

end A164015.P4778520437225521814

namespace A164015

/-- `25*n*(n+1)/2+5` -/
def P4778520437225521814.Spec : Prop :=
  ∀ n, P4778520437225521814.a n = (A164015 n : ℚ)

theorem P4778520437225521814.correct : P4778520437225521814.Spec := by
  intro n
  induction n with
  | zero => simp [A164015, A164015.P4778520437225521814.a, A164015.P3019782422880646431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A164015, Nat.add_sub_cancel, A164015.P4778520437225521814.a, A164015.P3019782422880646431.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A164015

/-! ## A164015.P12865757109410192513

`5*(5*n²+5*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164015.P12865757109410192513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (5 * n ^ 2 + 5 * n + 2) : ℚ) / 2

end

end A164015.P12865757109410192513

namespace A164015

/-- `5*(5*n²+5*n+2)/2` -/
def P12865757109410192513.Spec : Prop :=
  ∀ n, P12865757109410192513.a n = (A164015 n : ℚ)

theorem P12865757109410192513.correct : P12865757109410192513.Spec := by
  intro n
  induction n with
  | zero => simp [A164015, A164015.P12865757109410192513.a, A164015.P3019782422880646431.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A164015, Nat.add_sub_cancel, A164015.P12865757109410192513.a, A164015.P3019782422880646431.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A164015

/-! ## A164015.P16986612617902771198

`5*A005891(n)`
-/

namespace A164015.P16986612617902771198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005891 n

end

end A164015.P16986612617902771198

namespace A164015

/-- `5*A005891(n)` -/
def P16986612617902771198.Spec : Prop :=
  ∀ n, P16986612617902771198.a n = A164015 n

end A164015

/-! ## A164015.P5548920592038185354

`∑[a(n-1)+25]` with `a(0)=5, a(1)=25`
-/

namespace A164015.P5548920592038185354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 25] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164015.P5548920592038185354

namespace A164015

/-- `∑[a(n-1)+25]` -/
def P5548920592038185354.Spec : Prop :=
  ∀ n, (P5548920592038185354.a n : ℤ) = A164015 n

end A164015

/-! ## A164015.P100964861702579118

`∑[n*a(n²%n)²]` with `a(0)=5`
-/

namespace A164015.P100964861702579118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  n * f1 (n ^ 2 % n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164015.P100964861702579118

namespace A164015

/-- `∑[n*a(n²%n)²]` -/
def P100964861702579118.Spec : Prop :=
  ∀ n, (P100964861702579118.a n : ℤ) = A164015 n

end A164015

/-! ## A164015.P18413838804238835327

`lcm(5, ∑[ogf((1+3x+x^2)/(1-2x+x^2))])`
-/

namespace A164015.P18413838804238835327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164015.P18413838804238835327

namespace A164015

/-- `lcm(5, ∑[ogf((1+3x+x^2)/(1-2x+x^2))])` -/
def P18413838804238835327.Spec : Prop :=
  ∀ n, (P18413838804238835327.a n : ℤ) = A164015 n

end A164015

/-! ## A164015.P615835687406528161

`5*(1-∑[a(n-1)-5])` with `a(0)=0`
-/

namespace A164015.P615835687406528161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164015.P615835687406528161

namespace A164015

/-- `5*(1-∑[a(n-1)-5])` -/
def P615835687406528161.Spec : Prop :=
  ∀ n, P615835687406528161.a n = A164015 n

end A164015

/-! ## A164015.P4803872704102313524

`∑[5*A008706(n)]`
-/

namespace A164015.P4803872704102313524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164015.P4803872704102313524

namespace A164015

/-- `∑[5*A008706(n)]` -/
def P4803872704102313524.Spec : Prop :=
  ∀ n, P4803872704102313524.a n = A164015 n

end A164015

/-! ## A164015.P8520172529973229505

`5*(A028895(n)+1)`
-/

namespace A164015.P8520172529973229505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A028895 n + 1)

end

end A164015.P8520172529973229505

namespace A164015

/-- `5*(A028895(n)+1)` -/
def P8520172529973229505.Spec : Prop :=
  ∀ n, P8520172529973229505.a n = A164015 n

end A164015

/-! ## A164015.P6594564452461804402

`5*(A134238(n+1)+n)`
-/

namespace A164015.P6594564452461804402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A134238 (n + 1) + (n : ℤ))

end

end A164015.P6594564452461804402

namespace A164015

/-- `5*(A134238(n+1)+n)` -/
def P6594564452461804402.Spec : Prop :=
  ∀ n, P6594564452461804402.a n = A164015 n

end A164015

/-! ## A164015.P16154280036847252754

`5/(n+1)*A006564(n+1)`
-/

namespace A164015.P16154280036847252754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (n + 1 : ℚ) * (A006564 (n + 1) : ℚ)

end

end A164015.P16154280036847252754

namespace A164015

/-- `5/(n+1)*A006564(n+1)` -/
def P16154280036847252754.Spec : Prop :=
  ∀ n, P16154280036847252754.a n = (A164015 n : ℚ)

end A164015

/-! ## A164015.P14785022342941948330

`Δ[5*A004068(n)]`
-/

namespace A164015.P14785022342941948330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164015.P14785022342941948330

namespace A164015

/-- `Δ[5*A004068(n)]` -/
def P14785022342941948330.Spec : Prop :=
  ∀ n, P14785022342941948330.a n = A164015 n

end A164015

/-! ## A164015.P15795422375842594083

`5*A087099(2*n+1)`
-/

namespace A164015.P15795422375842594083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A087099 (2 * n + 1)

end

end A164015.P15795422375842594083

namespace A164015

/-- `5*A087099(2*n+1)` -/
def P15795422375842594083.Spec : Prop :=
  ∀ n, P15795422375842594083.a n = A164015 n

end A164015

/-! ## A164015.P15555685135715755515

`5*A111712(2*n+1)`
-/

namespace A164015.P15555685135715755515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A111712 (2 * n + 1)

end

end A164015.P15555685135715755515

namespace A164015

/-- `5*A111712(2*n+1)` -/
def P15555685135715755515.Spec : Prop :=
  ∀ n, P15555685135715755515.a n = A164015 n

end A164015

/-! ## A164015.P232996816919184420

`5*A330133(2*n+1)`
-/

namespace A164015.P232996816919184420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A330133 (2 * n + 1)

end

end A164015.P232996816919184420

namespace A164015

/-- `5*A330133(2*n+1)` -/
def P232996816919184420.Spec : Prop :=
  ∀ n, P232996816919184420.a n = A164015 n

end A164015

/-! ## A164015.P16082178702051769435

`A089071(A016897(n))`
-/

namespace A164015.P16082178702051769435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (A016897 n).toNat

end

end A164015.P16082178702051769435

namespace A164015

/-- `A089071(A016897(n))` -/
def P16082178702051769435.Spec : Prop :=
  ∀ n, P16082178702051769435.a n = A164015 n

end A164015

/-! ## A164015.P7961312798176404809

`A133263(A016873(n))`
-/

namespace A164015.P7961312798176404809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A016873 n).toNat

end

end A164015.P7961312798176404809

namespace A164015

/-- `A133263(A016873(n))` -/
def P7961312798176404809.Spec : Prop :=
  ∀ n, P7961312798176404809.a n = A164015 n

end A164015

/-! ## A164015.P15823185957072893574

`A238531(A016885(n))`
-/

namespace A164015.P15823185957072893574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (A016885 n).toNat

end

end A164015.P15823185957072893574

namespace A164015

/-- `A238531(A016885(n))` -/
def P15823185957072893574.Spec : Prop :=
  ∀ n, P15823185957072893574.a n = A164015 n

end A164015

/-! ## A164015.P14530724737092096465

`A089071(A144396(2*n+1)+n+1)`
-/

namespace A164015.P14530724737092096465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (A144396 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A164015.P14530724737092096465

namespace A164015

/-- `A089071(A144396(2*n+1)+n+1)` -/
def P14530724737092096465.Spec : Prop :=
  ∀ n, P14530724737092096465.a n = A164015 n

end A164015

/-!
# A164016: 6 times centered hexagonal numbers: a(n) = 18*n*(n+1) + 6.

The programs for A164016, the canonical program `A164016.P9958735219434589405` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164016 has offset 0).

The definition of A164016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n*(n+1)+6` (program `A164016.P9958735219434589405`, by `A164016.P9958735219434589405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164016.P9958735219434589405

`18*n*(n+1)+6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164016

/-- `18*n*(n+1)+6` -/
def P9958735219434589405.Spec : Prop :=
  ∀ n, (P9958735219434589405.a n : ℤ) = A164016 n

theorem P9958735219434589405.correct : P9958735219434589405.Spec := by
  intro n
  simp only [A164016]

end A164016

/-! ## A164016.P9026898905545782498

`A003215(n)*6`
-/

namespace A164016.P9026898905545782498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * 6

end

end A164016.P9026898905545782498

namespace A164016

/-- `A003215(n)*6` -/
def P9026898905545782498.Spec : Prop :=
  ∀ n, P9026898905545782498.a n = A164016 n

theorem P9026898905545782498.correct : P9026898905545782498.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P9026898905545782498.a, A164016.P9958735219434589405.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P7167302815188236778

`lcm(6, Δ[n^3])`
-/

namespace A164016.P7167302815188236778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A164016.P7167302815188236778

namespace A164016

/-- `lcm(6, Δ[n^3])` -/
def P7167302815188236778.Spec : Prop :=
  ∀ n, (P7167302815188236778.a n : ℤ) = A164016 n

end A164016

/-! ## A164016.P9210007288033673130

`6*or(1, ∑[6*n])`
-/

namespace A164016.P9210007288033673130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164016.P9210007288033673130

namespace A164016

/-- `6*or(1, ∑[6*n])` -/
def P9210007288033673130.Spec : Prop :=
  ∀ n, (P9210007288033673130.a n : ℤ) = A164016 n

end A164016

/-! ## A164016.P9829725890698500469

`6*xor(1, ∑[6*n])`
-/

namespace A164016.P9829725890698500469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164016.P9829725890698500469

namespace A164016

/-- `6*xor(1, ∑[6*n])` -/
def P9829725890698500469.Spec : Prop :=
  ∀ n, (P9829725890698500469.a n : ℤ) = A164016 n

end A164016

/-! ## A164016.P11402676108058250402

`∑[a(n-1)+36]` with `a(0)=6, a(1)=36`
-/

namespace A164016.P11402676108058250402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 36] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164016.P11402676108058250402

namespace A164016

/-- `∑[a(n-1)+36]` -/
def P11402676108058250402.Spec : Prop :=
  ∀ n, (P11402676108058250402.a n : ℤ) = A164016 n

end A164016

/-! ## A164016.P17931198985850811002

`∑[ogf((6+24x+6x^2)/(1-2x+x^2))]`
-/

namespace A164016.P17931198985850811002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164016.P17931198985850811002

namespace A164016

/-- `∑[ogf((6+24x+6x^2)/(1-2x+x^2))]` -/
def P17931198985850811002.Spec : Prop :=
  ∀ n, P17931198985850811002.a n = A164016 n

end A164016

/-! ## A164016.P13078272005721807836

`6*∑[floor(2/acot(3*n))]`
-/

namespace A164016.P13078272005721807836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164016.P13078272005721807836

namespace A164016

/-- `6*∑[floor(2/acot(3*n))]` -/
def P13078272005721807836.Spec : Prop :=
  ∀ n, P13078272005721807836.a n = A164016 n

end A164016

/-! ## A164016.P14494657164117149680

`∑[n*gcd(6, a(n-1))²]` with `a(0)=6`
-/

namespace A164016.P14494657164117149680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  n * Nat.gcd 6 (f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164016.P14494657164117149680

namespace A164016

/-- `∑[n*gcd(6, a(n-1))²]` -/
def P14494657164117149680.Spec : Prop :=
  ∀ n, (P14494657164117149680.a n : ℤ) = A164016 n

end A164016

/-! ## A164016.P12346496299408409484

`6*(1-∑[a(n-1)-6])` with `a(0)=0`
-/

namespace A164016.P12346496299408409484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164016.P12346496299408409484

namespace A164016

/-- `6*(1-∑[a(n-1)-6])` -/
def P12346496299408409484.Spec : Prop :=
  ∀ n, P12346496299408409484.a n = A164016 n

end A164016

/-! ## A164016.P6974679323639385468

`Δ[2*A117642(n)]`
-/

namespace A164016.P6974679323639385468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164016.P6974679323639385468

namespace A164016

/-- `Δ[2*A117642(n)]` -/
def P6974679323639385468.Spec : Prop :=
  ∀ n, P6974679323639385468.a n = A164016 n

theorem P6974679323639385468.correct : P6974679323639385468.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P6974679323639385468.f1, A164016.P6974679323639385468.a, A164016.P9958735219434589405.a, A117642, A117642.P2206942344561243653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P4967644445960807476

`Δ[3*A033431(n)]`
-/

namespace A164016.P4967644445960807476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164016.P4967644445960807476

namespace A164016

/-- `Δ[3*A033431(n)]` -/
def P4967644445960807476.Spec : Prop :=
  ∀ n, P4967644445960807476.a n = A164016 n

theorem P4967644445960807476.correct : P4967644445960807476.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P4967644445960807476.f1, A164016.P4967644445960807476.a, A164016.P9958735219434589405.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P6328196854360917776

`2*(A001504(n)+1)`
-/

namespace A164016.P6328196854360917776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001504 n + 1)

end

end A164016.P6328196854360917776

namespace A164016

/-- `2*(A001504(n)+1)` -/
def P6328196854360917776.Spec : Prop :=
  ∀ n, P6328196854360917776.a n = A164016 n

theorem P6328196854360917776.correct : P6328196854360917776.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P6328196854360917776.a, A164016.P9958735219434589405.a, A001504, A001504.P13639601878872911563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P12743834324365427762

`3*(A049598(n)+2)`
-/

namespace A164016.P12743834324365427762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A049598 n + 2)

end

end A164016.P12743834324365427762

namespace A164016

/-- `3*(A049598(n)+2)` -/
def P12743834324365427762.Spec : Prop :=
  ∀ n, P12743834324365427762.a n = A164016 n

theorem P12743834324365427762.correct : P12743834324365427762.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P12743834324365427762.a, A164016.P9958735219434589405.a, A049598, A049598.P15670095646145140517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P15554721498076510374

`2*(A163758(n)+3)`
-/

namespace A164016.P15554721498076510374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163758 n + 3)

end

end A164016.P15554721498076510374

namespace A164016

/-- `2*(A163758(n)+3)` -/
def P15554721498076510374.Spec : Prop :=
  ∀ n, P15554721498076510374.a n = A164016 n

theorem P15554721498076510374.correct : P15554721498076510374.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P15554721498076510374.a, A164016.P9958735219434589405.a, A163758, A163758.P16330388119460632135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P7897912426298918441

`(A016946(n)+3)/2`
-/

namespace A164016.P7897912426298918441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016946 n + 3 : ℚ) / 2

end

end A164016.P7897912426298918441

namespace A164016

/-- `(A016946(n)+3)/2` -/
def P7897912426298918441.Spec : Prop :=
  ∀ n, P7897912426298918441.a n = (A164016 n : ℚ)

theorem P7897912426298918441.correct : P7897912426298918441.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P7897912426298918441.a, A164016.P9958735219434589405.a, A016946, A016946.P16494615086453922637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P15532965858615566900

`3*(A003154(n+1)+1)`
-/

namespace A164016.P15532965858615566900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A003154 (n + 1) + 1)

end

end A164016.P15532965858615566900

namespace A164016

/-- `3*(A003154(n+1)+1)` -/
def P15532965858615566900.Spec : Prop :=
  ∀ n, P15532965858615566900.a n = A164016 n

theorem P15532965858615566900.correct : P15532965858615566900.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P15532965858615566900.a, A164016.P9958735219434589405.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A164016

/-! ## A164016.P4513598748016070963

`2*(A069131(n+1)+2)`
-/

namespace A164016.P4513598748016070963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069131 (n + 1) + 2)

end

end A164016.P4513598748016070963

namespace A164016

/-- `2*(A069131(n+1)+2)` -/
def P4513598748016070963.Spec : Prop :=
  ∀ n, P4513598748016070963.a n = A164016 n

end A164016

/-! ## A164016.P13927910247921289786

`A304381(n+1)%A304834(n+1)`
-/

namespace A164016.P13927910247921289786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304381 (n + 1)) (A304834 (n + 1))

end

end A164016.P13927910247921289786

namespace A164016

/-- `A304381(n+1)%A304834(n+1)` -/
def P13927910247921289786.Spec : Prop :=
  ∀ n, P13927910247921289786.a n = A164016 n

end A164016

/-! ## A164016.P11421720043928250777

`Δ[n*Δ[(n-1)*C(2*n, 2)]]`
-/

namespace A164016.P11421720043928250777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (2 * n) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164016.P11421720043928250777

namespace A164016

/-- `Δ[n*Δ[(n-1)*C(2*n, 2)]]` -/
def P11421720043928250777.Spec : Prop :=
  ∀ n, P11421720043928250777.a n = A164016 n

theorem P11421720043928250777.correct : P11421720043928250777.Spec := by
  intro n
  simp only [A164016, Nat.add_sub_cancel, A164016.P11421720043928250777.f2, A164016.P11421720043928250777.f1, A164016.P11421720043928250777.a, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A164016

/-!
# A164018: The index values of the smallest and the largest n-digit Fibonacci numbers.

The programs for A164018, there is no canonical definition to state claims against.
-/

/-! ## A164018.P169503478640242051

`∪[A072353(n+1), A072354(n+1)%A072330(n+1)]`
-/

namespace A164018.P169503478640242051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072354 (n + 1)) (A072330 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164018.P169503478640242051

/-! ## A164018.P3426342806145579228

`∪[A072354(n+1), A072353(n+1)]%A072367(n+1)`
-/

namespace A164018.P3426342806145579228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A072367 (n + 1))

end

end A164018.P3426342806145579228

/-! ## A164018.P2985978436856007676

`∪[A072354(n+1), A072353(n+1)]%A097115(n)`
-/

namespace A164018.P2985978436856007676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072353 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A097115 n)

end

end A164018.P2985978436856007676

/-! ## A164018.P8338049709489348734

`A131138(A274406(n+1)%A293863(2*n+1))`
-/

namespace A164018.P8338049709489348734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (Int.tmod (A274406 (n + 1)) (A293863 (2 * n + 1))).toNat

end

end A164018.P8338049709489348734

/-!
# A164019: Irregular table read by rows: row n contains the primes between n and 2n.

The programs for A164019, the canonical program `A164019.P16138657707960688564` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164019 has offset 2).

The definition of A164019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164019.P16138657707960688564

`p?[(1-floor(sqrt(n))²+n)*floor(2*sqrt(n))%2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164019

/-- `p?[(1-floor(sqrt(n))²+n)*floor(2*sqrt(n))%2]` -/
def P16138657707960688564.Spec : Prop :=
  ∀ n, P16138657707960688564.a n = A164019 (n + 2)

theorem P16138657707960688564.correct : P16138657707960688564.Spec := by
  intro n
  simp only [A164019, Nat.add_sub_cancel]

end A164019

/-! ## A164019.P11649717682844480156

`p?[(1-floor(sqrt(n))²+n)*(ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1)]`
-/

namespace A164019.P11649717682844480156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) * (⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164019.P11649717682844480156

namespace A164019

/-- `p?[(1-floor(sqrt(n))²+n)*(ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1)]` -/
def P11649717682844480156.Spec : Prop :=
  ∀ n, P11649717682844480156.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P8301856537477665420

`or(1, p?[A094727(n+1)+2])`
-/

namespace A164019.P8301856537477665420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164019.P8301856537477665420

namespace A164019

/-- `or(1, p?[A094727(n+1)+2])` -/
def P8301856537477665420.Spec : Prop :=
  ∀ n, P8301856537477665420.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P2851329083969098616

`lcm((-1)^n, p?[A108872(n+1)+1])`
-/

namespace A164019.P2851329083969098616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164019.P2851329083969098616

namespace A164019

/-- `lcm((-1)^n, p?[A108872(n+1)+1])` -/
def P2851329083969098616.Spec : Prop :=
  ∀ n, (P2851329083969098616.a n : ℤ) = A164019 (n + 2)

end A164019

/-! ## A164019.P8820004680264289326

`or(1, p?[A108872(n+2)])`
-/

namespace A164019.P8820004680264289326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A164019.P8820004680264289326

namespace A164019

/-- `or(1, p?[A108872(n+2)])` -/
def P8820004680264289326.Spec : Prop :=
  ∀ n, P8820004680264289326.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P8641137559631254778

`filter[A108872(n+1), A080545(#)]`
-/

namespace A164019.P8641137559631254778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A164019.P8641137559631254778

namespace A164019

/-- `filter[A108872(n+1), A080545(#)]` -/
def P8641137559631254778.Spec : Prop :=
  ∀ n, P8641137559631254778.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P15842924170494093839

`filter[A353612(n+1), A000035(#)]`
-/

namespace A164019.P15842924170494093839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A164019.P15842924170494093839

namespace A164019

/-- `filter[A353612(n+1), A000035(#)]` -/
def P15842924170494093839.Spec : Prop :=
  ∀ n, P15842924170494093839.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P7530178881385648094

`filter[A108872(n+1), A257531(#)]`
-/

namespace A164019.P7530178881385648094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A164019.P7530178881385648094

namespace A164019

/-- `filter[A108872(n+1), A257531(#)]` -/
def P7530178881385648094.Spec : Prop :=
  ∀ n, P7530178881385648094.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P3001937995593674892

`filter[A353612(n+1), A115971(#)]`
-/

namespace A164019.P3001937995593674892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A164019.P3001937995593674892

namespace A164019

/-- `filter[A353612(n+1), A115971(#)]` -/
def P3001937995593674892.Spec : Prop :=
  ∀ n, P3001937995593674892.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P3573997116096826495

`A000027(p?[Δ[A245300(n)]])`
-/

namespace A164019.P3573997116096826495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164019.P3573997116096826495

namespace A164019

/-- `A000027(p?[Δ[A245300(n)]])` -/
def P3573997116096826495.Spec : Prop :=
  ∀ n, P3573997116096826495.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P2181692401512620594

`A000265(p?[Δ[A245300(n)]])`
-/

namespace A164019.P2181692401512620594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164019.P2181692401512620594

namespace A164019

/-- `A000265(p?[Δ[A245300(n)]])` -/
def P2181692401512620594.Spec : Prop :=
  ∀ n, P2181692401512620594.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P16513761249902866401

`filter[A131896(n+1), A010051(#)]`
-/

namespace A164019.P16513761249902866401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A164019.P16513761249902866401

namespace A164019

/-- `filter[A131896(n+1), A010051(#)]` -/
def P16513761249902866401.Spec : Prop :=
  ∀ n, P16513761249902866401.a n = A164019 (n + 2)

end A164019

/-! ## A164019.P6628609044874592889

`filter[A131896(n+1), A257531(#)]`
-/

namespace A164019.P6628609044874592889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A164019.P6628609044874592889

namespace A164019

/-- `filter[A131896(n+1), A257531(#)]` -/
def P6628609044874592889.Spec : Prop :=
  ∀ n, P6628609044874592889.a n = A164019 (n + 2)

end A164019

/-!
# A164020: Denominators of Bernoulli numbers interleaved with even numbers.

The programs for A164020, the canonical program `A164020.P17938913421504694089` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164020 has offset 0).

The definition of A164020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164020.P12048135437667429206

`A176289(n)+lcm(2, n)-n`
-/

namespace A164020.P12048135437667429206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + (Nat.lcm 2 n : ℤ) - (n : ℤ)

end

end A164020.P12048135437667429206

namespace A164020

/-- `A176289(n)+lcm(2, n)-n` -/
def P12048135437667429206.Spec : Prop :=
  ∀ n, P12048135437667429206.a n = A164020 n

end A164020

/-! ## A164020.P17938913421504694089

`A141056(n)*A152271(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A164020

/-- `A141056(n)*A152271(n)` -/
def P17938913421504694089.Spec : Prop :=
  ∀ n, P17938913421504694089.a n = A164020 n

theorem P17938913421504694089.correct : P17938913421504694089.Spec := by
  intro n
  simp only [A164020]

end A164020

/-! ## A164020.P1736200478461204915

`A176289(n)+n*A000035(n)`
-/

namespace A164020.P1736200478461204915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + (n : ℤ) * A000035 n

end

end A164020.P1736200478461204915

namespace A164020

/-- `A176289(n)+n*A000035(n)` -/
def P1736200478461204915.Spec : Prop :=
  ∀ n, P1736200478461204915.a n = A164020 n

end A164020

/-! ## A164020.P2710963210690370396

`A176289(n)+Δ[A004526(n)²]`
-/

namespace A164020.P2710963210690370396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + (f1 (n + 1) - f1 n)

end

end A164020.P2710963210690370396

namespace A164020

/-- `A176289(n)+Δ[A004526(n)²]` -/
def P2710963210690370396.Spec : Prop :=
  ∀ n, P2710963210690370396.a n = A164020 n

end A164020

/-! ## A164020.P1981010409744854460

`A027642(n)+n*A027642(n)%2`
-/

namespace A164020.P1981010409744854460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n + (n : ℤ) * Int.tmod (A027642 n) 2

end

end A164020.P1981010409744854460

namespace A164020

/-- `A027642(n)+n*A027642(n)%2` -/
def P1981010409744854460.Spec : Prop :=
  ∀ n, P1981010409744854460.a n = A164020 n

end A164020

/-! ## A164020.P5796774111001151834

`gcd(n+1, A004526(n+1))*A141056(n)`
-/

namespace A164020.P5796774111001151834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A004526 (n + 1)) : ℤ) * A141056 n

end

end A164020.P5796774111001151834

namespace A164020

/-- `gcd(n+1, A004526(n+1))*A141056(n)` -/
def P5796774111001151834.Spec : Prop :=
  ∀ n, P5796774111001151834.a n = A164020 n

end A164020

/-! ## A164020.P658907883280964337

`A003602(A266303(n))*A141056(n)`
-/

namespace A164020.P658907883280964337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A266303 n).toNat * A141056 n

end

end A164020.P658907883280964337

namespace A164020

/-- `A003602(A266303(n))*A141056(n)` -/
def P658907883280964337.Spec : Prop :=
  ∀ n, P658907883280964337.a n = A164020 n

end A164020

/-! ## A164020.P10438551070775458022

`A059029(n)+A106458(A059029(n))-n`
-/

namespace A164020.P10438551070775458022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n + (A106458 (A059029 n).toNat - (n : ℤ))

end

end A164020.P10438551070775458022

namespace A164020

/-- `A059029(n)+A106458(A059029(n))-n` -/
def P10438551070775458022.Spec : Prop :=
  ∀ n, P10438551070775458022.a n = A164020 n

end A164020

/-! ## A164020.P7129353738088171654

`A064680(n)+A176289(n)-A026741(n)`
-/

namespace A164020.P7129353738088171654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + (A176289 n - A026741 n)

end

end A164020.P7129353738088171654

namespace A164020

/-- `A064680(n)+A176289(n)-A026741(n)` -/
def P7129353738088171654.Spec : Prop :=
  ∀ n, P7129353738088171654.a n = A164020 n

end A164020

/-! ## A164020.P7501700939845074207

`A027642(A237420(n))+n-A237420(n)`
-/

namespace A164020.P7501700939845074207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A237420 n).toNat + ((n : ℤ) - A237420 n)

end

end A164020.P7501700939845074207

namespace A164020

/-- `A027642(A237420(n))+n-A237420(n)` -/
def P7501700939845074207.Spec : Prop :=
  ∀ n, P7501700939845074207.a n = A164020 n

end A164020

/-! ## A164020.P16357763110285926776

`A176289(n)+n*A000292(Δ[A004526(n)])`
-/

namespace A164020.P16357763110285926776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176289 n + (n : ℤ) * A000292 (f1 (n + 1) - f1 n).toNat

end

end A164020.P16357763110285926776

namespace A164020

/-- `A176289(n)+n*A000292(Δ[A004526(n)])` -/
def P16357763110285926776.Spec : Prop :=
  ∀ n, P16357763110285926776.a n = A164020 n

end A164020

/-! ## A164020.P9958088729220572634

`A002790(n)/A165299(n)`
-/

namespace A164020.P9958088729220572634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002790 n : ℚ) / (A165299 n : ℚ)

end

end A164020.P9958088729220572634

namespace A164020

/-- `A002790(n)/A165299(n)` -/
def P9958088729220572634.Spec : Prop :=
  ∀ n, P9958088729220572634.a n = (A164020 n : ℚ)

end A164020

/-! ## A164020.P5585850925013073149

`A007318(A134519(n+1))*A141056(n)`
-/

namespace A164020.P5585850925013073149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A134519 (n + 1)).toNat * A141056 n

end

end A164020.P5585850925013073149

namespace A164020

/-- `A007318(A134519(n+1))*A141056(n)` -/
def P5585850925013073149.Spec : Prop :=
  ∀ n, P5585850925013073149.a n = A164020 n

end A164020

/-! ## A164020.P4565152614618457366

`A051715(A266259(n))`
-/

namespace A164020.P4565152614618457366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (A266259 n).toNat

end

end A164020.P4565152614618457366

namespace A164020

/-- `A051715(A266259(n))` -/
def P4565152614618457366.Spec : Prop :=
  ∀ n, P4565152614618457366.a n = A164020 n

end A164020

/-! ## A164020.P12753119913645867213

`A051715(A266304(n))`
-/

namespace A164020.P12753119913645867213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (A266304 n).toNat

end

end A164020.P12753119913645867213

namespace A164020

/-- `A051715(A266304(n))` -/
def P12753119913645867213.Spec : Prop :=
  ∀ n, P12753119913645867213.a n = A164020 n

end A164020

/-!
# A164021: a(n) = 12*a(n-1) - 34*a(n-2) for n > 1; a(0) = 3, a(1) = 22.

The programs for A164021, the canonical program `A164021.P6148564710947138836` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164021 has offset 0).

The definition of A164021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-34*a(n-2)` (program `A164021.P6148564710947138836`, by `A164021.P6148564710947138836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164021.P6148564710947138836

`12*a(n-1)-34*a(n-2)` with `a(0)=3, a(1)=22`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164021

/-- `12*a(n-1)-34*a(n-2)` -/
def P6148564710947138836.Spec : Prop :=
  ∀ n, P6148564710947138836.a n = A164021 n

theorem P6148564710947138836.correct : P6148564710947138836.Spec := by
  intro n
  simp only [A164021]

end A164021

/-! ## A164021.P13482409023329670519

`((3+2*sqrt(2))*(6+sqrt(2))^n+(3-2*sqrt(2))*(6-sqrt(2))^n)/2`
-/

namespace A164021.P13482409023329670519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) * (6 + Real.sqrt (2 : ℝ)) ^ n + (3 - 2 * Real.sqrt (2 : ℝ)) * (6 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164021.P13482409023329670519

namespace A164021

/-- `((3+2*sqrt(2))*(6+sqrt(2))^n+(3-2*sqrt(2))*(6-sqrt(2))^n)/2` -/
def P13482409023329670519.Spec : Prop :=
  ∀ n, P13482409023329670519.a n = (A164021 n : ℝ)

theorem P13482409023329670519.correct : P13482409023329670519.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164021, Nat.add_sub_cancel, A164021.P13482409023329670519.a, A164021.P6148564710947138836.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164021, Nat.add_sub_cancel, A164021.P13482409023329670519.a, A164021.P6148564710947138836.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164021

/-! ## A164021.P1814561130193926713

`A163444(n)+2*A163458(n)`
-/

namespace A164021.P1814561130193926713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163444 n + 2 * A163458 n

end

end A164021.P1814561130193926713

namespace A164021

/-- `A163444(n)+2*A163458(n)` -/
def P1814561130193926713.Spec : Prop :=
  ∀ n, P1814561130193926713.a n = A164021 n

end A164021

/-! ## A164021.P16424342382300243698

`A081183(n)+3*A163458(n)`
-/

namespace A164021.P16424342382300243698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081183 n + 3 * A163458 n

end

end A164021.P16424342382300243698

namespace A164021

/-- `A081183(n)+3*A163458(n)` -/
def P16424342382300243698.Spec : Prop :=
  ∀ n, P16424342382300243698.a n = A164021 n

end A164021

/-! ## A164021.P16125699754372578160

`A164110(n)-2*A163458(n)`
-/

namespace A164021.P16125699754372578160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164110 n - 2 * A163458 n

end

end A164021.P16125699754372578160

namespace A164021

/-- `A164110(n)-2*A163458(n)` -/
def P16125699754372578160.Spec : Prop :=
  ∀ n, P16125699754372578160.a n = A164021 n

end A164021

/-! ## A164021.P3786789397244811649

`4*A163444(n)-A163412(n)`
-/

namespace A164021.P3786789397244811649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163444 n - A163412 n

end

end A164021.P3786789397244811649

namespace A164021

/-- `4*A163444(n)-A163412(n)` -/
def P3786789397244811649.Spec : Prop :=
  ∀ n, P3786789397244811649.a n = A164021 n

end A164021

/-! ## A164021.P9112904597603693679

`A163458(n+1)-4*A163458(n)`
-/

namespace A164021.P9112904597603693679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 (n + 1) - 4 * A163458 n

end

end A164021.P9112904597603693679

namespace A164021

/-- `A163458(n+1)-4*A163458(n)` -/
def P9112904597603693679.Spec : Prop :=
  ∀ n, P9112904597603693679.a n = A164021 n

end A164021

/-!
# A164022: a(n) = the smallest prime that, when written in binary, starts with the substring of n in binary.

The programs for A164022, there is no canonical definition to state claims against.
-/

/-! ## A164022.P3535625752593015285

`A262365(∑[n]+1)`
-/

namespace A164022.P3535625752593015285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262365 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A164022.P3535625752593015285

/-! ## A164022.P7571389886621007390

`A000027(A262365((n+1)*n/2+1))`
-/

namespace A164022.P7571389886621007390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A262365 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2) + 1)).toNat).toNat

end

end A164022.P7571389886621007390

/-! ## A164022.P6229112631325876373

`A014963(A262365(A000217(n)+1))`
-/

namespace A164022.P6229112631325876373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A262365 (A000217 n + 1).toNat).toNat

end

end A164022.P6229112631325876373

/-! ## A164022.P180874752027433396

`A262365(A000124(n))%A001513(n)`
-/

namespace A164022.P180874752027433396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262365 (A000124 n).toNat) (A001513 n)

end

end A164022.P180874752027433396

/-! ## A164022.P17266813705394522467

`A262365(A000217(n)+1)%A000040(3*n+2)`
-/

namespace A164022.P17266813705394522467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262365 (A000217 n + 1).toNat) (A000040 (3 * n + 2))

end

end A164022.P17266813705394522467

/-! ## A164022.P4099093101730272653

`A001222(A080167(n+1))*A262365(A000124(n))`
-/

namespace A164022.P4099093101730272653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080167 (n + 1)).toNat * A262365 (A000124 n).toNat

end

end A164022.P4099093101730272653

/-! ## A164022.P8164234869066589728

`p?[A262365(n+1)-n*A122542(n)]`
-/

namespace A164022.P8164234869066589728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262365 (n + 1) - (n : ℤ) * A122542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164022.P8164234869066589728

/-!
# A164023: Smallest of largest parts in partitions of n into exactly three primes.

The programs for A164023, there is no canonical definition to state claims against.
-/

/-! ## A164023.P14619362712041053799

`p?[A007306(A007306(A106624(n)))]`
-/

namespace A164023.P14619362712041053799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A007306 (A106624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164023.P14619362712041053799

/-! ## A164023.P15751498382234555932

`A005145(A001227(record[A045965(n+1)]))`
-/

namespace A164023.P15751498382234555932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A001227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A164023.P15751498382234555932

/-! ## A164023.P11437801484919836665

`A294926(A211681(n+1))+A217871(n)`
-/

namespace A164023.P11437801484919836665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294926 (A211681 (n + 1)).toNat + A217871 n

end

end A164023.P11437801484919836665

/-!
# A164024: Largest of smallest parts in partitions of n into exactly three primes.

The programs for A164024, there is no canonical definition to state claims against.
-/

/-! ## A164024.P8515691672412439329

`gcd(A070777(A059366(n)), A075180(n))+1`
-/

namespace A164024.P8515691672412439329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070777 (A059366 n).toNat) (A075180 n) + 1

end

end A164024.P8515691672412439329

/-! ## A164024.P12146974799205728993

`A053669(A304973(n)+A000040(n+5))`
-/

namespace A164024.P12146974799205728993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A304973 n + A000040 (n + 5)).toNat

end

end A164024.P12146974799205728993

/-! ## A164024.P5329207985230345870

`A289849(A357487(n+2)+1)+1`
-/

namespace A164024.P5329207985230345870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (A357487 (n + 2) + 1).toNat + 1

end

end A164024.P5329207985230345870

/-! ## A164024.P5456259981119980713

`A086161(p?[A006530(A222804(n))])`
-/

namespace A164024.P5456259981119980713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A222804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164024.P5456259981119980713

/-! ## A164024.P9657373316717120270

`A335458(C(A160102(n+1), A196563(n+3)))`
-/

namespace A164024.P9657373316717120270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (Nat.choose (A160102 (n + 1)).toNat (A196563 (n + 3)).toNat)

end

end A164024.P9657373316717120270

/-!
# A164028: The n-th composite minus 3.

The programs for A164028, the canonical program `A164028.P16722215845011041546` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164028 has offset 1).

The definition of A164028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164028.P16722215845011041546

`A002808(n+1)-3`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A164028

/-- `A002808(n+1)-3` -/
def P16722215845011041546.Spec : Prop :=
  ∀ n, P16722215845011041546.a n = A164028 (n + 1)

theorem P16722215845011041546.correct : P16722215845011041546.Spec := by
  intro n
  simp only [A164028, Nat.add_sub_cancel]

end A164028

/-! ## A164028.P14024465251326017463

`Δ[A053767(n)]-3`
-/

namespace A164028.P14024465251326017463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A164028.P14024465251326017463

namespace A164028

/-- `Δ[A053767(n)]-3` -/
def P14024465251326017463.Spec : Prop :=
  ∀ n, P14024465251326017463.a n = A164028 (n + 1)

end A164028

/-! ## A164028.P15267598638549634512

`comp[A086801(n+1)]`
-/

namespace A164028.P15267598638549634512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164028.P15267598638549634512

namespace A164028

/-- `comp[A086801(n+1)]` -/
def P15267598638549634512.Spec : Prop :=
  ∀ n, (P15267598638549634512.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P13104692220097712587

`comp[A154115(n+1)]`
-/

namespace A164028.P13104692220097712587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164028.P13104692220097712587

namespace A164028

/-- `comp[A154115(n+1)]` -/
def P13104692220097712587.Spec : Prop :=
  ∀ n, (P13104692220097712587.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P7647747593272240031

`comp[A060264(n)-3]`
-/

namespace A164028.P7647747593272240031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164028.P7647747593272240031

namespace A164028

/-- `comp[A060264(n)-3]` -/
def P7647747593272240031.Spec : Prop :=
  ∀ n, (P7647747593272240031.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P1882307163766779870

`comp[A151800(n)-3]`
-/

namespace A164028.P1882307163766779870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164028.P1882307163766779870

namespace A164028

/-- `comp[A151800(n)-3]` -/
def P1882307163766779870.Spec : Prop :=
  ∀ n, (P1882307163766779870.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P1366984844397955294

`A072668(n+1)-2`
-/

namespace A164028.P1366984844397955294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - 2

end

end A164028.P1366984844397955294

namespace A164028

/-- `A072668(n+1)-2` -/
def P1366984844397955294.Spec : Prop :=
  ∀ n, P1366984844397955294.a n = A164028 (n + 1)

theorem P1366984844397955294.correct : P1366984844397955294.Spec := by
  intro n
  simp only [A164028, Nat.add_sub_cancel, A164028.P1366984844397955294.a, A164028.P16722215845011041546.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A072668, A072668.P5648318357023435289.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164028

/-! ## A164028.P18338998198509795154

`A018252(n+2)-3`
-/

namespace A164028.P18338998198509795154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 3

end

end A164028.P18338998198509795154

namespace A164028

/-- `A018252(n+2)-3` -/
def P18338998198509795154.Spec : Prop :=
  ∀ n, P18338998198509795154.a n = A164028 (n + 1)

end A164028

/-! ## A164028.P9936108727705186518

`A079696(n+1)-4`
-/

namespace A164028.P9936108727705186518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - 4

end

end A164028.P9936108727705186518

namespace A164028

/-- `A079696(n+1)-4` -/
def P9936108727705186518.Spec : Prop :=
  ∀ n, P9936108727705186518.a n = A164028 (n + 1)

theorem P9936108727705186518.correct : P9936108727705186518.Spec := by
  intro n
  simp only [A164028, Nat.add_sub_cancel, A164028.P9936108727705186518.a, A164028.P16722215845011041546.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A079696, A079696.P2621453534582977077.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164028

/-! ## A164028.P8700370789220769466

`A141468(n+3)-3`
-/

namespace A164028.P8700370789220769466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - 3

end

end A164028.P8700370789220769466

namespace A164028

/-- `A141468(n+3)-3` -/
def P8700370789220769466.Spec : Prop :=
  ∀ n, P8700370789220769466.a n = A164028 (n + 1)

end A164028

/-! ## A164028.P1320966542635826759

`eq[0, A096500(n+2)]`
-/

namespace A164028.P1320966542635826759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P1320966542635826759

namespace A164028

/-- `eq[0, A096500(n+2)]` -/
def P1320966542635826759.Spec : Prop :=
  ∀ n, (P1320966542635826759.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P471706885395330810

`eq[0, A109578(n+2)]`
-/

namespace A164028.P471706885395330810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P471706885395330810

namespace A164028

/-- `eq[0, A109578(n+2)]` -/
def P471706885395330810.Spec : Prop :=
  ∀ n, (P471706885395330810.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P1547103853992115464

`eq[0, A278500(n+2)]`
-/

namespace A164028.P1547103853992115464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278500 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P1547103853992115464

namespace A164028

/-- `eq[0, A278500(n+2)]` -/
def P1547103853992115464.Spec : Prop :=
  ∀ n, (P1547103853992115464.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P8550859395514355915

`eq[0, A010051(n+3)]`
-/

namespace A164028.P8550859395514355915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P8550859395514355915

namespace A164028

/-- `eq[0, A010051(n+3)]` -/
def P8550859395514355915.Spec : Prop :=
  ∀ n, (P8550859395514355915.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P18020799767483084116

`eq[0, A029832(n+3)]`
-/

namespace A164028.P18020799767483084116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P18020799767483084116

namespace A164028

/-- `eq[0, A029832(n+3)]` -/
def P18020799767483084116.Spec : Prop :=
  ∀ n, (P18020799767483084116.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P14547410123716841095

`eq[0, A029833(n+3)]`
-/

namespace A164028.P14547410123716841095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P14547410123716841095

namespace A164028

/-- `eq[0, A029833(n+3)]` -/
def P14547410123716841095.Spec : Prop :=
  ∀ n, (P14547410123716841095.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P4490282979686893446

`eq[0, A029834(n+3)]`
-/

namespace A164028.P4490282979686893446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164028.P4490282979686893446

namespace A164028

/-- `eq[0, A029834(n+3)]` -/
def P4490282979686893446.Spec : Prop :=
  ∀ n, (P4490282979686893446.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P7616486822097771424

`lt[0, A072680(n+3)]`
-/

namespace A164028.P7616486822097771424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164028.P7616486822097771424

namespace A164028

/-- `lt[0, A072680(n+3)]` -/
def P7616486822097771424.Spec : Prop :=
  ∀ n, (P7616486822097771424.a n : ℤ) = A164028 (n + 1)

end A164028

/-! ## A164028.P5688872976231247273

`lt[1, A001222(n+3)]`
-/

namespace A164028.P5688872976231247273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164028.P5688872976231247273

namespace A164028

/-- `lt[1, A001222(n+3)]` -/
def P5688872976231247273.Spec : Prop :=
  ∀ n, (P5688872976231247273.a n : ℤ) = A164028 (n + 1)

end A164028

/-!
# A164029: a(n) = nonprime(n) + (-1)^(nonprime(n)).

The programs for A164029, the canonical program `A164029.P8853241427937616947` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164029 has offset 1).

The definition of A164029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164029.P8853241427937616947

`A141468(n+1)+(-1)^A141468(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A164029

/-- `A141468(n+1)+(-1)^A141468(n+1)` -/
def P8853241427937616947.Spec : Prop :=
  ∀ n, P8853241427937616947.a n = (A164029 (n + 1) : ℚ)

end A164029

/-! ## A164029.P16627841101919923501

`xor(1, comp[A134204(n)])`
-/

namespace A164029.P16627841101919923501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P16627841101919923501

namespace A164029

/-- `xor(1, comp[A134204(n)])` -/
def P16627841101919923501.Spec : Prop :=
  ∀ n, (P16627841101919923501.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P5767363545563111734

`xor(1, comp[A151800(n)])`
-/

namespace A164029.P5767363545563111734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P5767363545563111734

namespace A164029

/-- `xor(1, comp[A151800(n)])` -/
def P5767363545563111734.Spec : Prop :=
  ∀ n, (P5767363545563111734.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P3712767921061470890

`xor(1, A141468(n+1))`
-/

namespace A164029.P3712767921061470890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A141468 (n + 1))

end

end A164029.P3712767921061470890

namespace A164029

/-- `xor(1, A141468(n+1))` -/
def P3712767921061470890.Spec : Prop :=
  ∀ n, P3712767921061470890.a n = A164029 (n + 1)

end A164029

/-! ## A164029.P13867442750048482223

`xor(1, comp[Δ[A007504(n)]])`
-/

namespace A164029.P13867442750048482223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P13867442750048482223

namespace A164029

/-- `xor(1, comp[Δ[A007504(n)]])` -/
def P13867442750048482223.Spec : Prop :=
  ∀ n, (P13867442750048482223.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P2993639205757361305

`xor(1, comp[A000040(n+1)])`
-/

namespace A164029.P2993639205757361305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P2993639205757361305

namespace A164029

/-- `xor(1, comp[A000040(n+1)])` -/
def P2993639205757361305.Spec : Prop :=
  ∀ n, (P2993639205757361305.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P3697070749300853983

`xor(1, comp[A060308(n+1)])`
-/

namespace A164029.P3697070749300853983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P3697070749300853983

namespace A164029

/-- `xor(1, comp[A060308(n+1)])` -/
def P3697070749300853983.Spec : Prop :=
  ∀ n, (P3697070749300853983.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P13584311840302872284

`xor(1, comp[A068863(n+1)])`
-/

namespace A164029.P13584311840302872284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P13584311840302872284

namespace A164029

/-- `xor(1, comp[A068863(n+1)])` -/
def P13584311840302872284.Spec : Prop :=
  ∀ n, (P13584311840302872284.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P8390348939155047649

`xor(1, comp[A006530(n+2)])`
-/

namespace A164029.P8390348939155047649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P8390348939155047649

namespace A164029

/-- `xor(1, comp[A006530(n+2)])` -/
def P8390348939155047649.Spec : Prop :=
  ∀ n, (P8390348939155047649.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P7037934508464614198

`xor(1, comp[A008578(n+2)])`
-/

namespace A164029.P7037934508464614198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P7037934508464614198

namespace A164029

/-- `xor(1, comp[A008578(n+2)])` -/
def P7037934508464614198.Spec : Prop :=
  ∀ n, (P7037934508464614198.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P12390769760234220877

`xor(1, comp[A020639(n+2)])`
-/

namespace A164029.P12390769760234220877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P12390769760234220877

namespace A164029

/-- `xor(1, comp[A020639(n+2)])` -/
def P12390769760234220877.Spec : Prop :=
  ∀ n, (P12390769760234220877.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P7429362363910671988

`xor(1, comp[A182986(n+2)])`
-/

namespace A164029.P7429362363910671988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P7429362363910671988

namespace A164029

/-- `xor(1, comp[A182986(n+2)])` -/
def P7429362363910671988.Spec : Prop :=
  ∀ n, (P7429362363910671988.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P12165632276438202696

`A176100(n+1)-A163975(n+1)`
-/

namespace A164029.P12165632276438202696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) - A163975 (n + 1)

end

end A164029.P12165632276438202696

namespace A164029

/-- `A176100(n+1)-A163975(n+1)` -/
def P12165632276438202696.Spec : Prop :=
  ∀ n, P12165632276438202696.a n = A164029 (n + 1)

end A164029

/-! ## A164029.P6239198639534088915

`A000040(n+1)+A141468(n+1)-A163976(n+1)`
-/

namespace A164029.P6239198639534088915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A141468 (n + 1) - A163976 (n + 1))

end

end A164029.P6239198639534088915

namespace A164029

/-- `A000040(n+1)+A141468(n+1)-A163976(n+1)` -/
def P6239198639534088915.Spec : Prop :=
  ∀ n, P6239198639534088915.a n = A164029 (n + 1)

end A164029

/-! ## A164029.P8305414530035643963

`A141468(n+1)+A141468(n+1)-A163975(n+1)`
-/

namespace A164029.P8305414530035643963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (A141468 (n + 1) - A163975 (n + 1))

end

end A164029.P8305414530035643963

namespace A164029

/-- `A141468(n+1)+A141468(n+1)-A163975(n+1)` -/
def P8305414530035643963.Spec : Prop :=
  ∀ n, P8305414530035643963.a n = A164029 (n + 1)

end A164029

/-! ## A164029.P9386313216752508805

`xor(1, comp[A088732(n)])`
-/

namespace A164029.P9386313216752508805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P9386313216752508805

namespace A164029

/-- `xor(1, comp[A088732(n)])` -/
def P9386313216752508805.Spec : Prop :=
  ∀ n, (P9386313216752508805.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P12417817376418688663

`xor(1, eq[0, A055671(n)])`
-/

namespace A164029.P12417817376418688663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164029.P12417817376418688663

namespace A164029

/-- `xor(1, eq[0, A055671(n)])` -/
def P12417817376418688663.Spec : Prop :=
  ∀ n, (P12417817376418688663.a n : ℤ) = A164029 (n + 1)

end A164029

/-! ## A164029.P18053410755331860364

`A004442(A141468(n+1))`
-/

namespace A164029.P18053410755331860364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A141468 (n + 1)).toNat

end

end A164029.P18053410755331860364

namespace A164029

/-- `A004442(A141468(n+1))` -/
def P18053410755331860364.Spec : Prop :=
  ∀ n, P18053410755331860364.a n = A164029 (n + 1)

end A164029

/-! ## A164029.P1326994039443051381

`xor(1, comp[A302445(n+2)])`
-/

namespace A164029.P1326994039443051381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302445 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A164029.P1326994039443051381

namespace A164029

/-- `xor(1, comp[A302445(n+2)])` -/
def P1326994039443051381.Spec : Prop :=
  ∀ n, (P1326994039443051381.a n : ℤ) = A164029 (n + 1)

end A164029

/-!
# A164031: a(n) = ((2+3*sqrt(2))*(5+sqrt(2))^n+(2-3*sqrt(2))*(5-sqrt(2))^n)/4.

The programs for A164031, the canonical program `A164031.P2951985782430388968` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164031 has offset 0).

The definition of A164031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((2+3*sqrt(2))*(5+sqrt(2))^n+(2-3*sqrt(2))*(5-sqrt(2))^n)/4` (program `A164031.P5332443955090318210`, by `A164031.P5332443955090318210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164031.P2951985782430388968

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164031

/-- `10*a(n-1)-23*a(n-2)` -/
def P2951985782430388968.Spec : Prop :=
  ∀ n, P2951985782430388968.a n = A164031 n

theorem P2951985782430388968.correct : P2951985782430388968.Spec := by
  intro n
  simp only [A164031]

end A164031

/-! ## A164031.P5332443955090318210

`((2+3*sqrt(2))*(5+sqrt(2))^n+(2-3*sqrt(2))*(5-sqrt(2))^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164031.P5332443955090318210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + 3 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (2 - 3 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A164031.P5332443955090318210

namespace A164031

/-- `((2+3*sqrt(2))*(5+sqrt(2))^n+(2-3*sqrt(2))*(5-sqrt(2))^n)/4` -/
def P5332443955090318210.Spec : Prop :=
  ∀ n, P5332443955090318210.a n = (A164031 n : ℝ)

theorem P5332443955090318210.correct : P5332443955090318210.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164031, Nat.add_sub_cancel, A164031.P5332443955090318210.a, A164031.P2951985782430388968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164031, Nat.add_sub_cancel, A164031.P5332443955090318210.a, A164031.P2951985782430388968.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164031

/-! ## A164031.P4554770731489171021

`ogf((1-2x)/(1-10x+23x^2))`
-/

namespace A164031.P4554770731489171021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -10, 23] n

end

end A164031.P4554770731489171021

namespace A164031

/-- `ogf((1-2x)/(1-10x+23x^2))` -/
def P4554770731489171021.Spec : Prop :=
  ∀ n, P4554770731489171021.a n = A164031 n

end A164031

/-! ## A164031.P7096829465998833960

`A163346(n)+A081182(n)`
-/

namespace A164031.P7096829465998833960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + A081182 n

end

end A164031.P7096829465998833960

namespace A164031

/-- `A163346(n)+A081182(n)` -/
def P7096829465998833960.Spec : Prop :=
  ∀ n, P7096829465998833960.a n = A164031 n

end A164031

/-! ## A164031.P17380480671258568929

`A163349(n)-A081182(n)`
-/

namespace A164031.P17380480671258568929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n - A081182 n

end

end A164031.P17380480671258568929

namespace A164031

/-- `A163349(n)-A081182(n)` -/
def P17380480671258568929.Spec : Prop :=
  ∀ n, P17380480671258568929.a n = A164031 n

end A164031

/-! ## A164031.P17773659485480310068

`A161734(n)+2*A081182(n)`
-/

namespace A164031.P17773659485480310068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 n + 2 * A081182 n

end

end A164031.P17773659485480310068

namespace A164031

/-- `A161734(n)+2*A081182(n)` -/
def P17773659485480310068.Spec : Prop :=
  ∀ n, P17773659485480310068.a n = A164031 n

end A164031

/-! ## A164031.P17343724943863935567

`2*A163346(n)-A161734(n)`
-/

namespace A164031.P17343724943863935567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163346 n - A161734 n

end

end A164031.P17343724943863935567

namespace A164031

/-- `2*A163346(n)-A161734(n)` -/
def P17343724943863935567.Spec : Prop :=
  ∀ n, P17343724943863935567.a n = A164031 n

end A164031

/-! ## A164031.P145443832389040172

`A163616(n)-3*A081182(n)`
-/

namespace A164031.P145443832389040172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163616 n - 3 * A081182 n

end

end A164031.P145443832389040172

namespace A164031

/-- `A163616(n)-3*A081182(n)` -/
def P145443832389040172.Spec : Prop :=
  ∀ n, P145443832389040172.a n = A164031 n

end A164031

/-! ## A164031.P6750257934011247902

`A081182(n+1)-2*A081182(n)`
-/

namespace A164031.P6750257934011247902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 (n + 1) - 2 * A081182 n

end

end A164031.P6750257934011247902

namespace A164031

/-- `A081182(n+1)-2*A081182(n)` -/
def P6750257934011247902.Spec : Prop :=
  ∀ n, P6750257934011247902.a n = A164031 n

end A164031

/-!
# A164032: Number of "ON" cells in a certain 2-dimensional cellular automaton.

The programs for A164032, the canonical program `A164032.P7603579370672600650` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164032 has offset 1).

The definition of A164032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164032.P7603579370672600650

`4*a(and(n, n-2))` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164032

/-- `4*a(and(n, n-2))` -/
def P7603579370672600650.Spec : Prop :=
  ∀ n, (P7603579370672600650.a n : ℤ) = A164032 (n + 1)

theorem P7603579370672600650.correct : P7603579370672600650.Spec := by
  intro n
  simp only [A164032, Nat.add_sub_cancel]

end A164032

/-! ## A164032.P10286032323852211200

`4*a(n-2^floor(log2(n)))` with `a(0)=1, a(1)=9`
-/

namespace A164032.P10286032323852211200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  4 * a (n - 2 ^ Nat.log 2 n)

end

end A164032.P10286032323852211200

namespace A164032

/-- `4*a(n-2^floor(log2(n)))` -/
def P10286032323852211200.Spec : Prop :=
  ∀ n, (P10286032323852211200.a n : ℤ) = A164032 (n + 1)

end A164032

/-! ## A164032.P4958530673790025127

`A071044(n)²`
-/

namespace A164032.P4958530673790025127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n ^ 2

end

end A164032.P4958530673790025127

namespace A164032

/-- `A071044(n)²` -/
def P4958530673790025127.Spec : Prop :=
  ∀ n, P4958530673790025127.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P4902733919356119101

`(Δ[n²]-A071043(n))²`
-/

namespace A164032.P4902733919356119101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071043 n) ^ 2

end

end A164032.P4902733919356119101

namespace A164032

/-- `(Δ[n²]-A071043(n))²` -/
def P4902733919356119101.Spec : Prop :=
  ∀ n, P4902733919356119101.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P10251679784309883997

`A071044(2*n-n)^2`
-/

namespace A164032.P10251679784309883997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (2 * n - n) ^ 2

end

end A164032.P10251679784309883997

namespace A164032

/-- `A071044(2*n-n)^2` -/
def P10251679784309883997.Spec : Prop :=
  ∀ n, P10251679784309883997.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P4669557965149382827

`(3^(n%2)*A060632(n))²`
-/

namespace A164032.P4669557965149382827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n % 2) : ℤ) * A060632 n) ^ 2

end

end A164032.P4669557965149382827

namespace A164032

/-- `(3^(n%2)*A060632(n))²` -/
def P4669557965149382827.Spec : Prop :=
  ∀ n, P4669557965149382827.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P13551409678861400270

`(A060632(n)-A117973(n))²`
-/

namespace A164032.P13551409678861400270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060632 n - A117973 n) ^ 2

end

end A164032.P13551409678861400270

namespace A164032

/-- `(A060632(n)-A117973(n))²` -/
def P13551409678861400270.Spec : Prop :=
  ∀ n, P13551409678861400270.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P5457965475686274355

`(A064405(n)-A309255(n))²`
-/

namespace A164032.P5457965475686274355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064405 n - A309255 n) ^ 2

end

end A164032.P5457965475686274355

namespace A164032

/-- `(A064405(n)-A309255(n))²` -/
def P5457965475686274355.Spec : Prop :=
  ∀ n, P5457965475686274355.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P3375211482985431066

`(A010684(n)*A060632(n))²`
-/

namespace A164032.P3375211482985431066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010684 n * A060632 n) ^ 2

end

end A164032.P3375211482985431066

namespace A164032

/-- `(A010684(n)*A060632(n))²` -/
def P3375211482985431066.Spec : Prop :=
  ∀ n, P3375211482985431066.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P14519818368363127040

`A060632(n)²*A010690(n)`
-/

namespace A164032.P14519818368363127040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n ^ 2 * A010690 n

end

end A164032.P14519818368363127040

namespace A164032

/-- `A060632(n)²*A010690(n)` -/
def P14519818368363127040.Spec : Prop :=
  ∀ n, P14519818368363127040.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P18099661302715130453

`(A160713(n)/A176059(n))²`
-/

namespace A164032.P18099661302715130453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160713 n : ℚ) / (A176059 n : ℚ)) ^ 2

end

end A164032.P18099661302715130453

namespace A164032

/-- `(A160713(n)/A176059(n))²` -/
def P18099661302715130453.Spec : Prop :=
  ∀ n, P18099661302715130453.a n = (A164032 (n + 1) : ℚ)

end A164032

/-! ## A164032.P13768199419434898237

`(A256257(n)/A226294(n))²`
-/

namespace A164032.P13768199419434898237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A256257 n : ℚ) / (A226294 n : ℚ)) ^ 2

end

end A164032.P13768199419434898237

namespace A164032

/-- `(A256257(n)/A226294(n))²` -/
def P13768199419434898237.Spec : Prop :=
  ∀ n, P13768199419434898237.a n = (A164032 (n + 1) : ℚ)

end A164032

/-! ## A164032.P1591572679672396296

`or(A001316(n), A060632(n))²`
-/

namespace A164032.P1591572679672396296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001316 n) (A060632 n) ^ 2

end

end A164032.P1591572679672396296

namespace A164032

/-- `or(A001316(n), A060632(n))²` -/
def P1591572679672396296.Spec : Prop :=
  ∀ n, P1591572679672396296.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P9476712612583507350

`(A160745(n+1)/A176040(n))²`
-/

namespace A164032.P9476712612583507350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160745 (n + 1) : ℚ) / (A176040 n : ℚ)) ^ 2

end

end A164032.P9476712612583507350

namespace A164032

/-- `(A160745(n+1)/A176040(n))²` -/
def P9476712612583507350.Spec : Prop :=
  ∀ n, P9476712612583507350.a n = (A164032 (n + 1) : ℚ)

end A164032

/-! ## A164032.P6442942902337783759

`and(A151787(n+1), A160745(n+1))²`
-/

namespace A164032.P6442942902337783759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151787 (n + 1)) (A160745 (n + 1)) ^ 2

end

end A164032.P6442942902337783759

namespace A164032

/-- `and(A151787(n+1), A160745(n+1))²` -/
def P6442942902337783759.Spec : Prop :=
  ∀ n, P6442942902337783759.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P18183665650053675519

`and(A151787(n+1), A361145(n+1))²`
-/

namespace A164032.P18183665650053675519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151787 (n + 1)) (A361145 (n + 1)) ^ 2

end

end A164032.P18183665650053675519

namespace A164032

/-- `and(A151787(n+1), A361145(n+1))²` -/
def P18183665650053675519.Spec : Prop :=
  ∀ n, P18183665650053675519.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P7806216974743660200

`and(A160745(n+1), A361145(n+1))²`
-/

namespace A164032.P7806216974743660200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160745 (n + 1)) (A361145 (n + 1)) ^ 2

end

end A164032.P7806216974743660200

namespace A164032

/-- `and(A160745(n+1), A361145(n+1))²` -/
def P7806216974743660200.Spec : Prop :=
  ∀ n, P7806216974743660200.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P17313063167065471964

`(A105321(2*n+1)/A010693(n+1))²`
-/

namespace A164032.P17313063167065471964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A105321 (2 * n + 1) : ℚ) / (A010693 (n + 1) : ℚ)) ^ 2

end

end A164032.P17313063167065471964

namespace A164032

/-- `(A105321(2*n+1)/A010693(n+1))²` -/
def P17313063167065471964.Spec : Prop :=
  ∀ n, P17313063167065471964.a n = (A164032 (n + 1) : ℚ)

end A164032

/-! ## A164032.P13427403366430281745

`A006047(A186776(n+1))²`
-/

namespace A164032.P13427403366430281745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A186776 (n + 1)).toNat ^ 2

end

end A164032.P13427403366430281745

namespace A164032

/-- `A006047(A186776(n+1))²` -/
def P13427403366430281745.Spec : Prop :=
  ∀ n, P13427403366430281745.a n = A164032 (n + 1)

end A164032

/-! ## A164032.P14567956282977272288

`A059261(A269695(n))²`
-/

namespace A164032.P14567956282977272288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A269695 n).toNat ^ 2

end

end A164032.P14567956282977272288

namespace A164032

/-- `A059261(A269695(n))²` -/
def P14567956282977272288.Spec : Prop :=
  ∀ n, P14567956282977272288.a n = A164032 (n + 1)

end A164032

/-!
# A164033: a(n) = ((4+3*sqrt(2))*(3+sqrt(2))^n + (4-3*sqrt(2))*(3-sqrt(2))^n)/4.

The programs for A164033, the canonical program `A164033.P16803040542595088710` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164033 has offset 0).

The definition of A164033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((4+3*sqrt(2))*(3+sqrt(2))^n+(4-3*sqrt(2))*(3-sqrt(2))^n)/4` (program `A164033.P7083749626740345657`, by `A164033.P7083749626740345657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164033.P16803040542595088710

`6*a(n-1)-7*a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164033

/-- `6*a(n-1)-7*a(n-2)` -/
def P16803040542595088710.Spec : Prop :=
  ∀ n, P16803040542595088710.a n = A164033 n

theorem P16803040542595088710.correct : P16803040542595088710.Spec := by
  intro n
  simp only [A164033]

end A164033

/-! ## A164033.P7083749626740345657

`((4+3*sqrt(2))*(3+sqrt(2))^n+(4-3*sqrt(2))*(3-sqrt(2))^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164033.P7083749626740345657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + 3 * Real.sqrt (2 : ℝ)) * (3 + Real.sqrt (2 : ℝ)) ^ n + (4 - 3 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A164033.P7083749626740345657

namespace A164033

/-- `((4+3*sqrt(2))*(3+sqrt(2))^n+(4-3*sqrt(2))*(3-sqrt(2))^n)/4` -/
def P7083749626740345657.Spec : Prop :=
  ∀ n, P7083749626740345657.a n = (A164033 n : ℝ)

theorem P7083749626740345657.correct : P7083749626740345657.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164033, Nat.add_sub_cancel, A164033.P7083749626740345657.a, A164033.P16803040542595088710.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164033, Nat.add_sub_cancel, A164033.P7083749626740345657.a, A164033.P16803040542595088710.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164033

/-! ## A164033.P17429640751027561258

`ogf((2-3x)/(1-6x+7x^2))`
-/

namespace A164033.P17429640751027561258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -6, 7] n

end

end A164033.P17429640751027561258

namespace A164033

/-- `ogf((2-3x)/(1-6x+7x^2))` -/
def P17429640751027561258.Spec : Prop :=
  ∀ n, P17429640751027561258.a n = A164033 n

end A164033

/-! ## A164033.P13435741004385929645

`A102285(n)+A086351(n)`
-/

namespace A164033.P13435741004385929645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + A086351 n

end

end A164033.P13435741004385929645

namespace A164033

/-- `A102285(n)+A086351(n)` -/
def P13435741004385929645.Spec : Prop :=
  ∀ n, P13435741004385929645.a n = A164033 n

end A164033

/-! ## A164033.P11948793391308499831

`A163606(n)-A086351(n)`
-/

namespace A164033.P11948793391308499831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n - A086351 n

end

end A164033.P11948793391308499831

namespace A164033

/-- `A163606(n)-A086351(n)` -/
def P11948793391308499831.Spec : Prop :=
  ∀ n, P11948793391308499831.a n = A164033 n

end A164033

/-! ## A164033.P17955620960704290448

`A081179(n)+Δ[A083878(n)]`
-/

namespace A164033.P17955620960704290448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + (f1 (n + 1) - f1 n)

end

end A164033.P17955620960704290448

namespace A164033

/-- `A081179(n)+Δ[A083878(n)]` -/
def P17955620960704290448.Spec : Prop :=
  ∀ n, P17955620960704290448.a n = A164033 n

end A164033

/-! ## A164033.P732311933352624026

`A081179(n)+A034999(n+1)`
-/

namespace A164033.P732311933352624026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + A034999 (n + 1)

end

end A164033.P732311933352624026

namespace A164033

/-- `A081179(n)+A034999(n+1)` -/
def P732311933352624026.Spec : Prop :=
  ∀ n, P732311933352624026.a n = A164033 n

end A164033

/-! ## A164033.P2434878477585598208

`A083878(n)+A081179(n+1)`
-/

namespace A164033.P2434878477585598208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + A081179 (n + 1)

end

end A164033.P2434878477585598208

namespace A164033

/-- `A083878(n)+A081179(n+1)` -/
def P2434878477585598208.Spec : Prop :=
  ∀ n, P2434878477585598208.a n = A164033 n

end A164033

/-! ## A164033.P12616671334130850527

`A081179(n)+2*A086351(n)`
-/

namespace A164033.P12616671334130850527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + 2 * A086351 n

end

end A164033.P12616671334130850527

namespace A164033

/-- `A081179(n)+2*A086351(n)` -/
def P12616671334130850527.Spec : Prop :=
  ∀ n, P12616671334130850527.a n = A164033 n

end A164033

/-! ## A164033.P1444629911226726235

`2*A102285(n)-A081179(n)`
-/

namespace A164033.P1444629911226726235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102285 n - A081179 n

end

end A164033.P1444629911226726235

namespace A164033

/-- `2*A102285(n)-A081179(n)` -/
def P1444629911226726235.Spec : Prop :=
  ∀ n, P1444629911226726235.a n = A164033 n

end A164033

/-! ## A164033.P13223998131744789270

`A086351(n+1)-A034999(n+1)`
-/

namespace A164033.P13223998131744789270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - A034999 (n + 1)

end

end A164033.P13223998131744789270

namespace A164033

/-- `A086351(n+1)-A034999(n+1)` -/
def P13223998131744789270.Spec : Prop :=
  ∀ n, P13223998131744789270.a n = A164033 n

end A164033

/-! ## A164033.P14062560458535420679

`A086351(n+1)-2*A086351(n)`
-/

namespace A164033.P14062560458535420679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - 2 * A086351 n

end

end A164033.P14062560458535420679

namespace A164033

/-- `A086351(n+1)-2*A086351(n)` -/
def P14062560458535420679.Spec : Prop :=
  ∀ n, P14062560458535420679.a n = A164033 n

end A164033

/-! ## A164033.P4866428638519745501

`A081179(n)+A163606(n)-A102285(n)`
-/

namespace A164033.P4866428638519745501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + (A163606 n - A102285 n)

end

end A164033.P4866428638519745501

namespace A164033

/-- `A081179(n)+A163606(n)-A102285(n)` -/
def P4866428638519745501.Spec : Prop :=
  ∀ n, P4866428638519745501.a n = A164033 n

end A164033

/-! ## A164033.P8541384491568712211

`Δ[A163348(n)-A163614(n)/2]`
-/

namespace A164033.P8541384491568712211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163348 n : ℚ) - (A163614 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164033.P8541384491568712211

namespace A164033

/-- `Δ[A163348(n)-A163614(n)/2]` -/
def P8541384491568712211.Spec : Prop :=
  ∀ n, P8541384491568712211.a n = (A164033 n : ℚ)

end A164033

/-!
# A164034: a(n) = ((4+3*sqrt(2))*(4+sqrt(2))^n + (4-3*sqrt(2))*(4-sqrt(2))^n)/4.

The programs for A164034, the canonical program `A164034.P12590372083620005269` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164034 has offset 0).

The definition of A164034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((4+3*sqrt(2))*(4+sqrt(2))^n+(4-3*sqrt(2))*(4-sqrt(2))^n)/4` (program `A164034.P18131794464892541031`, by `A164034.P18131794464892541031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164034.P12590372083620005269

`8*a(n-1)-14*a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164034

/-- `8*a(n-1)-14*a(n-2)` -/
def P12590372083620005269.Spec : Prop :=
  ∀ n, P12590372083620005269.a n = A164034 n

theorem P12590372083620005269.correct : P12590372083620005269.Spec := by
  intro n
  simp only [A164034]

end A164034

/-! ## A164034.P18131794464892541031

`((4+3*sqrt(2))*(4+sqrt(2))^n+(4-3*sqrt(2))*(4-sqrt(2))^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164034.P18131794464892541031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + 3 * Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (4 - 3 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A164034.P18131794464892541031

namespace A164034

/-- `((4+3*sqrt(2))*(4+sqrt(2))^n+(4-3*sqrt(2))*(4-sqrt(2))^n)/4` -/
def P18131794464892541031.Spec : Prop :=
  ∀ n, P18131794464892541031.a n = (A164034 n : ℝ)

theorem P18131794464892541031.correct : P18131794464892541031.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164034, Nat.add_sub_cancel, A164034.P18131794464892541031.a, A164034.P12590372083620005269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164034, Nat.add_sub_cancel, A164034.P18131794464892541031.a, A164034.P12590372083620005269.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164034

/-! ## A164034.P5123957181222962182

`ogf((2-5x)/(1-8x+14x^2))`
-/

namespace A164034.P5123957181222962182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -8, 14] n

end

end A164034.P5123957181222962182

namespace A164034

/-- `ogf((2-5x)/(1-8x+14x^2))` -/
def P5123957181222962182.Spec : Prop :=
  ∀ n, P5123957181222962182.a n = A164034 n

end A164034

/-! ## A164034.P14715143278915206693

`A163350(n)+A161731(n)`
-/

namespace A164034.P14715143278915206693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + A161731 n

end

end A164034.P14715143278915206693

namespace A164034

/-- `A163350(n)+A161731(n)` -/
def P14715143278915206693.Spec : Prop :=
  ∀ n, P14715143278915206693.a n = A164034 n

end A164034

/-! ## A164034.P15503515977477158277

`A163604(n)-A161731(n)`
-/

namespace A164034.P15503515977477158277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163604 n - A161731 n

end

end A164034.P15503515977477158277

namespace A164034

/-- `A163604(n)-A161731(n)` -/
def P15503515977477158277.Spec : Prop :=
  ∀ n, P15503515977477158277.a n = A164034 n

end A164034

/-! ## A164034.P6589797525082822402

`A081180(n)+2*A161731(n)`
-/

namespace A164034.P6589797525082822402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 n + 2 * A161731 n

end

end A164034.P6589797525082822402

namespace A164034

/-- `A081180(n)+2*A161731(n)` -/
def P6589797525082822402.Spec : Prop :=
  ∀ n, P6589797525082822402.a n = A164034 n

end A164034

/-! ## A164034.P9938624493074942976

`2*A163350(n)-A081180(n)`
-/

namespace A164034.P9938624493074942976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163350 n - A081180 n

end

end A164034.P9938624493074942976

namespace A164034

/-- `2*A163350(n)-A081180(n)` -/
def P9938624493074942976.Spec : Prop :=
  ∀ n, P9938624493074942976.a n = A164034 n

end A164034

/-! ## A164034.P1925556423806259194

`3*A163350(n)-A164072(n)`
-/

namespace A164034.P1925556423806259194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163350 n - A164072 n

end

end A164034.P1925556423806259194

namespace A164034

/-- `3*A163350(n)-A164072(n)` -/
def P1925556423806259194.Spec : Prop :=
  ∀ n, P1925556423806259194.a n = A164034 n

end A164034

/-!
# A164035: a(n) = ((4+3*sqrt(2))*(5+sqrt(2))^n + (4-3*sqrt(2))*(5-sqrt(2))^n)/4.

The programs for A164035, the canonical program `A164035.P9036332813467205424` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164035 has offset 0).

The definition of A164035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((4+3*sqrt(2))*(5+sqrt(2))^n+(4-3*sqrt(2))*(5-sqrt(2))^n)/4` (program `A164035.P16133941227442916314`, by `A164035.P16133941227442916314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164035.P9036332813467205424

`10*a(n-1)-23*a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164035

/-- `10*a(n-1)-23*a(n-2)` -/
def P9036332813467205424.Spec : Prop :=
  ∀ n, P9036332813467205424.a n = A164035 n

theorem P9036332813467205424.correct : P9036332813467205424.Spec := by
  intro n
  simp only [A164035]

end A164035

/-! ## A164035.P16133941227442916314

`((4+3*sqrt(2))*(5+sqrt(2))^n+(4-3*sqrt(2))*(5-sqrt(2))^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164035.P16133941227442916314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + 3 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (4 - 3 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A164035.P16133941227442916314

namespace A164035

/-- `((4+3*sqrt(2))*(5+sqrt(2))^n+(4-3*sqrt(2))*(5-sqrt(2))^n)/4` -/
def P16133941227442916314.Spec : Prop :=
  ∀ n, P16133941227442916314.a n = (A164035 n : ℝ)

theorem P16133941227442916314.correct : P16133941227442916314.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164035, Nat.add_sub_cancel, A164035.P16133941227442916314.a, A164035.P9036332813467205424.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164035, Nat.add_sub_cancel, A164035.P16133941227442916314.a, A164035.P9036332813467205424.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164035

/-! ## A164035.P17395398901976070811

`ogf((2-7x)/(1-10x+23x^2))`
-/

namespace A164035.P17395398901976070811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -10, 23] n

end

end A164035.P17395398901976070811

namespace A164035

/-- `ogf((2-7x)/(1-10x+23x^2))` -/
def P17395398901976070811.Spec : Prop :=
  ∀ n, P17395398901976070811.a n = A164035 n

end A164035

/-! ## A164035.P2833953457602698465

`A163346(n)+A161734(n)`
-/

namespace A164035.P2833953457602698465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + A161734 n

end

end A164035.P2833953457602698465

namespace A164035

/-- `A163346(n)+A161734(n)` -/
def P2833953457602698465.Spec : Prop :=
  ∀ n, P2833953457602698465.a n = A164035 n

end A164035

/-! ## A164035.P4965938095219623617

`A163605(n)-A161734(n)`
-/

namespace A164035.P4965938095219623617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - A161734 n

end

end A164035.P4965938095219623617

namespace A164035

/-- `A163605(n)-A161734(n)` -/
def P4965938095219623617.Spec : Prop :=
  ∀ n, P4965938095219623617.a n = A164035 n

end A164035

/-! ## A164035.P7861326732310969554

`A164536(n)-A081182(n+1)`
-/

namespace A164035.P7861326732310969554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164536 n - A081182 (n + 1)

end

end A164035.P7861326732310969554

namespace A164035

/-- `A164536(n)-A081182(n+1)` -/
def P7861326732310969554.Spec : Prop :=
  ∀ n, P7861326732310969554.a n = A164035 n

end A164035

/-! ## A164035.P13520606154434104408

`A081182(n)+2*A161734(n)`
-/

namespace A164035.P13520606154434104408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + 2 * A161734 n

end

end A164035.P13520606154434104408

namespace A164035

/-- `A081182(n)+2*A161734(n)` -/
def P13520606154434104408.Spec : Prop :=
  ∀ n, P13520606154434104408.a n = A164035 n

end A164035

/-! ## A164035.P14390580407729333597

`2*A163346(n)-A081182(n)`
-/

namespace A164035.P14390580407729333597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163346 n - A081182 n

end

end A164035.P14390580407729333597

namespace A164035

/-- `2*A163346(n)-A081182(n)` -/
def P14390580407729333597.Spec : Prop :=
  ∀ n, P14390580407729333597.a n = A164035 n

end A164035

/-! ## A164035.P16620499590607973608

`3*A164031(n)-A163616(n)`
-/

namespace A164035.P16620499590607973608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164031 n - A163616 n

end

end A164035.P16620499590607973608

namespace A164035

/-- `3*A164031(n)-A163616(n)` -/
def P16620499590607973608.Spec : Prop :=
  ∀ n, P16620499590607973608.a n = A164035 n

end A164035

/-! ## A164035.P8892435981654099826

`A161947(n+1)%A161940(n)`
-/

namespace A164035.P8892435981654099826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161947 (n + 1)) (A161940 n)

end

end A164035.P8892435981654099826

namespace A164035

/-- `A161947(n+1)%A161940(n)` -/
def P8892435981654099826.Spec : Prop :=
  ∀ n, P8892435981654099826.a n = A164035 n

end A164035

/-! ## A164035.P9413356785859231100

`Δ[A164538(n)/14]`
-/

namespace A164035.P9413356785859231100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164538 n : ℚ) / 14

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164035.P9413356785859231100

namespace A164035

/-- `Δ[A164538(n)/14]` -/
def P9413356785859231100.Spec : Prop :=
  ∀ n, P9413356785859231100.a n = (A164035 n : ℚ)

end A164035

/-!
# A164037: Expansion of (5-9*x)/(1-6*x+7*x^2).

The programs for A164037, the canonical program `A164037.P11886895226651760235` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164037 has offset 0).

The definition of A164037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-9x)/(1-6x+7x^2))` (program `A164037.P11886895226651760235`, by `A164037.P11886895226651760235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164037.P11886895226651760235

`ogf((5-9x)/(1-6x+7x^2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164037

/-- `ogf((5-9x)/(1-6x+7x^2))` -/
def P11886895226651760235.Spec : Prop :=
  ∀ n, P11886895226651760235.a n = A164037 n

theorem P11886895226651760235.correct : P11886895226651760235.Spec := by
  intro n
  simp only [A164037]

end A164037

/-! ## A164037.P16515520663378320621

`6*a(n-1)-7*a(n-2)` with `a(0)=5, a(1)=21`
-/

namespace A164037.P16515520663378320621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 21] fun n a =>
  6 * a (n - 1) - 7 * a (n - 2)

end

end A164037.P16515520663378320621

namespace A164037

/-- `6*a(n-1)-7*a(n-2)` -/
def P16515520663378320621.Spec : Prop :=
  ∀ n, P16515520663378320621.a n = A164037 n

end A164037

/-! ## A164037.P13057697158459026143

`A086351(n+1)+A086351(n)`
-/

namespace A164037.P13057697158459026143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) + A086351 n

end

end A164037.P13057697158459026143

namespace A164037

/-- `A086351(n+1)+A086351(n)` -/
def P13057697158459026143.Spec : Prop :=
  ∀ n, P13057697158459026143.a n = A164037 n

end A164037

/-! ## A164037.P13965547702897291990

`A163609(n)+2*A081179(n)`
-/

namespace A164037.P13965547702897291990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163609 n + 2 * A081179 n

end

end A164037.P13965547702897291990

namespace A164037

/-- `A163609(n)+2*A081179(n)` -/
def P13965547702897291990.Spec : Prop :=
  ∀ n, P13965547702897291990.a n = A164037 n

end A164037

/-! ## A164037.P6255898225273861401

`A163606(n)+A164033(n)-A081179(n)`
-/

namespace A164037.P6255898225273861401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n + (A164033 n - A081179 n)

end

end A164037.P6255898225273861401

namespace A164037

/-- `A163606(n)+A164033(n)-A081179(n)` -/
def P6255898225273861401.Spec : Prop :=
  ∀ n, P6255898225273861401.a n = A164037 n

end A164037

/-! ## A164037.P13123792712388146195

`A163606(n)+A163606(n)-A102285(n)`
-/

namespace A164037.P13123792712388146195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n + (A163606 n - A102285 n)

end

end A164037.P13123792712388146195

namespace A164037

/-- `A163606(n)+A163606(n)-A102285(n)` -/
def P13123792712388146195.Spec : Prop :=
  ∀ n, P13123792712388146195.a n = A164037 n

end A164037

/-! ## A164037.P3120214991412537496

`((5+3*sqrt(2))*(sqrt(2)+3)^n+(5-3*sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A164037.P3120214991412537496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 3 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (5 - 3 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164037.P3120214991412537496

namespace A164037

/-- `((5+3*sqrt(2))*(sqrt(2)+3)^n+(5-3*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P3120214991412537496.Spec : Prop :=
  ∀ n, P3120214991412537496.a n = (A164037 n : ℝ)

end A164037

/-! ## A164037.P15573808494474031150

`Δ[A161944(n)]`
-/

namespace A164037.P15573808494474031150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164037.P15573808494474031150

namespace A164037

/-- `Δ[A161944(n)]` -/
def P15573808494474031150.Spec : Prop :=
  ∀ n, P15573808494474031150.a n = A164037 n

end A164037

/-! ## A164037.P2226797898963995678

`Δ[A163348(n)]-A163348(n)`
-/

namespace A164037.P2226797898963995678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163348 n

end

end A164037.P2226797898963995678

namespace A164037

/-- `Δ[A163348(n)]-A163348(n)` -/
def P2226797898963995678.Spec : Prop :=
  ∀ n, P2226797898963995678.a n = A164037 n

end A164037

/-! ## A164037.P13259152475400546037

`A161944(n+1)-A161944(n)`
-/

namespace A164037.P13259152475400546037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161944 (n + 1) - A161944 n

end

end A164037.P13259152475400546037

namespace A164037

/-- `A161944(n+1)-A161944(n)` -/
def P13259152475400546037.Spec : Prop :=
  ∀ n, P13259152475400546037.a n = A164037 n

end A164037

/-! ## A164037.P12456834530832944444

`2*A163606(n)-A102285(n)`
-/

namespace A164037.P12456834530832944444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163606 n - A102285 n

end

end A164037.P12456834530832944444

namespace A164037

/-- `2*A163606(n)-A102285(n)` -/
def P12456834530832944444.Spec : Prop :=
  ∀ n, P12456834530832944444.a n = A164037 n

end A164037

/-! ## A164037.P11461794734164446231

`6*A102285(n)-A163614(n)`
-/

namespace A164037.P11461794734164446231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A102285 n - A163614 n

end

end A164037.P11461794734164446231

namespace A164037

/-- `6*A102285(n)-A163614(n)` -/
def P11461794734164446231.Spec : Prop :=
  ∀ n, P11461794734164446231.a n = A164037 n

end A164037

/-! ## A164037.P4612832133534568120

`A083878(n)+Δ[Δ[A081179(n)]]`
-/

namespace A164037.P4612832133534568120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + (f1 (n + 1) - f1 n)

end

end A164037.P4612832133534568120

namespace A164037

/-- `A083878(n)+Δ[Δ[A081179(n)]]` -/
def P4612832133534568120.Spec : Prop :=
  ∀ n, P4612832133534568120.a n = A164037 n

end A164037

/-! ## A164037.P7281381595997617430

`A102285(n+1)-2*A081179(n)`
-/

namespace A164037.P7281381595997617430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 (n + 1) - 2 * A081179 n

end

end A164037.P7281381595997617430

namespace A164037

/-- `A102285(n+1)-2*A081179(n)` -/
def P7281381595997617430.Spec : Prop :=
  ∀ n, P7281381595997617430.a n = A164037 n

end A164037

/-! ## A164037.P8360481458333054337

`A163348(n+1)-2*A163348(n)`
-/

namespace A164037.P8360481458333054337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 (n + 1) - 2 * A163348 n

end

end A164037.P8360481458333054337

namespace A164037

/-- `A163348(n+1)-2*A163348(n)` -/
def P8360481458333054337.Spec : Prop :=
  ∀ n, P8360481458333054337.a n = A164037 n

end A164037

/-!
# A164038: Expansion of (5-19*x)/(1-10*x+23*x^2).

The programs for A164038, the canonical program `A164038.P14058139703454652454` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164038 has offset 0).

The definition of A164038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-19x)/(1-10x+23x^2))` (program `A164038.P14058139703454652454`, by `A164038.P14058139703454652454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164038.P14058139703454652454

`ogf((5-19x)/(1-10x+23x^2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164038

/-- `ogf((5-19x)/(1-10x+23x^2))` -/
def P14058139703454652454.Spec : Prop :=
  ∀ n, P14058139703454652454.a n = A164038 n

theorem P14058139703454652454.correct : P14058139703454652454.Spec := by
  intro n
  simp only [A164038]

end A164038

/-! ## A164038.P15081871096152991833

`10*a(n-1)-23*a(n-2)` with `a(0)=5, a(1)=31`
-/

namespace A164038.P15081871096152991833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 31] fun n a =>
  10 * a (n - 1) - 23 * a (n - 2)

end

end A164038.P15081871096152991833

namespace A164038

/-- `10*a(n-1)-23*a(n-2)` -/
def P15081871096152991833.Spec : Prop :=
  ∀ n, P15081871096152991833.a n = A164038 n

end A164038

/-! ## A164038.P5405369876408995098

`((5+3*sqrt(2))*(5+sqrt(2))^n+(5-3*sqrt(2))*(5-sqrt(2))^n)/2`
-/

namespace A164038.P5405369876408995098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 3 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (5 - 3 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164038.P5405369876408995098

namespace A164038

/-- `((5+3*sqrt(2))*(5+sqrt(2))^n+(5-3*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P5405369876408995098.Spec : Prop :=
  ∀ n, P5405369876408995098.a n = (A164038 n : ℝ)

end A164038

/-! ## A164038.P16071158122712350678

`A163611(n)+2*A081182(n)`
-/

namespace A164038.P16071158122712350678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163611 n + 2 * A081182 n

end

end A164038.P16071158122712350678

namespace A164038

/-- `A163611(n)+2*A081182(n)` -/
def P16071158122712350678.Spec : Prop :=
  ∀ n, P16071158122712350678.a n = A164038 n

end A164038

/-! ## A164038.P17991446490214072543

`A163605(n)+2*A161734(n)`
-/

namespace A164038.P17991446490214072543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n + 2 * A161734 n

end

end A164038.P17991446490214072543

namespace A164038

/-- `A163605(n)+2*A161734(n)` -/
def P17991446490214072543.Spec : Prop :=
  ∀ n, P17991446490214072543.a n = A164038 n

end A164038

/-! ## A164038.P16874765061329916906

`A164035(n)+3*A161734(n)`
-/

namespace A164038.P16874765061329916906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n + 3 * A161734 n

end

end A164038.P16874765061329916906

namespace A164038

/-- `A164035(n)+3*A161734(n)` -/
def P16874765061329916906.Spec : Prop :=
  ∀ n, P16874765061329916906.a n = A164038 n

end A164038

/-! ## A164038.P13179090850040651838

`A163346(n)+4*A161734(n)`
-/

namespace A164038.P13179090850040651838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + 4 * A161734 n

end

end A164038.P13179090850040651838

namespace A164038

/-- `A163346(n)+4*A161734(n)` -/
def P13179090850040651838.Spec : Prop :=
  ∀ n, P13179090850040651838.a n = A164038 n

end A164038

/-! ## A164038.P14154966102646376575

`A081182(n)+5*A161734(n)`
-/

namespace A164038.P14154966102646376575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + 5 * A161734 n

end

end A164038.P14154966102646376575

namespace A164038

/-- `A081182(n)+5*A161734(n)` -/
def P14154966102646376575.Spec : Prop :=
  ∀ n, P14154966102646376575.a n = A164038 n

end A164038

/-! ## A164038.P248814391341647450

`A163605(n)+A164035(n)-A081182(n)`
-/

namespace A164038.P248814391341647450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n + (A164035 n - A081182 n)

end

end A164038.P248814391341647450

namespace A164038

/-- `A163605(n)+A164035(n)-A081182(n)` -/
def P248814391341647450.Spec : Prop :=
  ∀ n, P248814391341647450.a n = A164038 n

end A164038

/-! ## A164038.P12555321425728310865

`A163605(n)+A163605(n)-A163346(n)`
-/

namespace A164038.P12555321425728310865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n + (A163605 n - A163346 n)

end

end A164038.P12555321425728310865

namespace A164038

/-- `A163605(n)+A163605(n)-A163346(n)` -/
def P12555321425728310865.Spec : Prop :=
  ∀ n, P12555321425728310865.a n = A164038 n

end A164038

/-! ## A164038.P11355941160004319191

`Δ[A161734(n)]`
-/

namespace A164038.P11355941160004319191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164038.P11355941160004319191

namespace A164038

/-- `Δ[A161734(n)]` -/
def P11355941160004319191.Spec : Prop :=
  ∀ n, P11355941160004319191.a n = A164038 n

end A164038

/-! ## A164038.P5233461527487444444

`Δ[A163346(n)-A081182(n)]`
-/

namespace A164038.P5233461527487444444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n - A081182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164038.P5233461527487444444

namespace A164038

/-- `Δ[A163346(n)-A081182(n)]` -/
def P5233461527487444444.Spec : Prop :=
  ∀ n, P5233461527487444444.a n = A164038 n

end A164038

/-! ## A164038.P11203269113330904536

`Δ[A161940(n)-A161947(n)]`
-/

namespace A164038.P11203269113330904536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161940 n - A161947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164038.P11203269113330904536

namespace A164038

/-- `Δ[A161940(n)-A161947(n)]` -/
def P11203269113330904536.Spec : Prop :=
  ∀ n, P11203269113330904536.a n = A164038 n

end A164038

/-! ## A164038.P659649768377478811

`Δ[A163346(n)]-A163349(n)`
-/

namespace A164038.P659649768377478811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163349 n

end

end A164038.P659649768377478811

namespace A164038

/-- `Δ[A163346(n)]-A163349(n)` -/
def P659649768377478811.Spec : Prop :=
  ∀ n, P659649768377478811.a n = A164038 n

end A164038

/-! ## A164038.P2609023529608146465

`A161734(n+1)-A161734(n)`
-/

namespace A164038.P2609023529608146465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 (n + 1) - A161734 n

end

end A164038.P2609023529608146465

namespace A164038

/-- `A161734(n+1)-A161734(n)` -/
def P2609023529608146465.Spec : Prop :=
  ∀ n, P2609023529608146465.a n = A164038 n

end A164038

/-! ## A164038.P4109216939947584448

`2*A163605(n)-A163346(n)`
-/

namespace A164038.P4109216939947584448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163605 n - A163346 n

end

end A164038.P4109216939947584448

namespace A164038

/-- `2*A163605(n)-A163346(n)` -/
def P4109216939947584448.Spec : Prop :=
  ∀ n, P4109216939947584448.a n = A164038 n

end A164038

/-!
# A164039: a(n+1) = 3*a(n) - n.

The programs for A164039, the canonical program `A164039.P1648318894588228818` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164039 has offset 0).

The definition of A164039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164039.P1648318894588228818

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164039

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P1648318894588228818.Spec : Prop :=
  ∀ n, P1648318894588228818.a n = A164039 n

theorem P1648318894588228818.correct : P1648318894588228818.Spec := by
  intro n
  simp only [A164039]

end A164039

/-! ## A164039.P17486121473130463590

`(3^n+2*n+3)/4`
-/

namespace A164039.P17486121473130463590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n + 2 * n + 3 : ℚ) / 4

end

end A164039.P17486121473130463590

namespace A164039

/-- `(3^n+2*n+3)/4` -/
def P17486121473130463590.Spec : Prop :=
  ∀ n, P17486121473130463590.a n = (A164039 n : ℚ)

theorem P17486121473130463590.correct : P17486121473130463590.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A164039, Nat.add_sub_cancel, A164039.P17486121473130463590.a, A164039.P1648318894588228818.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A164039, Nat.add_sub_cancel, A164039.P17486121473130463590.a, A164039.P1648318894588228818.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164039

/-! ## A164039.P10444090219360176847

`3*a(n-1)-n` with `a(0)=1`
-/

namespace A164039.P10444090219360176847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (n : ℤ)

end

end A164039.P10444090219360176847

namespace A164039

/-- `3*a(n-1)-n` -/
def P10444090219360176847.Spec : Prop :=
  ∀ n, P10444090219360176847.a n = A164039 n

end A164039

/-! ## A164039.P15099996404000266366

`∑[ogf((1-3x+x^2)/(1-4x+3x^2))]`
-/

namespace A164039.P15099996404000266366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164039.P15099996404000266366

namespace A164039

/-- `∑[ogf((1-3x+x^2)/(1-4x+3x^2))]` -/
def P15099996404000266366.Spec : Prop :=
  ∀ n, P15099996404000266366.a n = A164039 n

end A164039

/-! ## A164039.P17116205947194354621

`ogf((1-3x+x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A164039.P17116205947194354621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -5, 7, -3] n

end

end A164039.P17116205947194354621

namespace A164039

/-- `ogf((1-3x+x^2)/(1-5x+7x^2-3x^3))` -/
def P17116205947194354621.Spec : Prop :=
  ∀ n, P17116205947194354621.a n = A164039 n

end A164039

/-! ## A164039.P4018431404024998678

`∑[lcm(3, a(n-1))-1]` with `a(0)=1, a(1)=1`
-/

namespace A164039.P4018431404024998678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 3 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164039.P4018431404024998678

namespace A164039

/-- `∑[lcm(3, a(n-1))-1]` -/
def P4018431404024998678.Spec : Prop :=
  ∀ n, P4018431404024998678.a n = A164039 n

end A164039

/-! ## A164039.P13247604365395757016

`a(n-1)/cot(atan(3))-n` with `a(0)=1`
-/

namespace A164039.P13247604365395757016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - (n : ℝ)

end

end A164039.P13247604365395757016

namespace A164039

/-- `a(n-1)/cot(atan(3))-n` -/
def P13247604365395757016.Spec : Prop :=
  ∀ n, P13247604365395757016.a n = (A164039 n : ℝ)

end A164039

/-! ## A164039.P69516287067172882

`a(n-1)/sqrt(1/9)-n` with `a(0)=1`
-/

namespace A164039.P69516287067172882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) - (n : ℝ)

end

end A164039.P69516287067172882

namespace A164039

/-- `a(n-1)/sqrt(1/9)-n` -/
def P69516287067172882.Spec : Prop :=
  ∀ n, P69516287067172882.a n = (A164039 n : ℝ)

end A164039

/-! ## A164039.P15136737958946637472

`3^(n-1)+1-a(n-1)+n` with `a(0)=1`
-/

namespace A164039.P15136737958946637472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (1 - a (n - 1)) + (n : ℚ)

end

end A164039.P15136737958946637472

namespace A164039

/-- `3^(n-1)+1-a(n-1)+n` -/
def P15136737958946637472.Spec : Prop :=
  ∀ n, P15136737958946637472.a n = (A164039 n : ℚ)

end A164039

/-! ## A164039.P2586004617922224558

`a(n-1)+a(n-1)+a(n-1)-n` with `a(0)=1`
-/

namespace A164039.P2586004617922224558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (n : ℤ)))

end

end A164039.P2586004617922224558

namespace A164039

/-- `a(n-1)+a(n-1)+a(n-1)-n` -/
def P2586004617922224558.Spec : Prop :=
  ∀ n, P2586004617922224558.a n = A164039 n

end A164039

/-! ## A164039.P8829588464691480359

`a(n-1)-(n-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A164039.P8829588464691480359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 1) - a (n - 1))

end

end A164039.P8829588464691480359

namespace A164039

/-- `a(n-1)-(n-a(n-1)-a(n-1))` -/
def P8829588464691480359.Spec : Prop :=
  ∀ n, P8829588464691480359.a n = A164039 n

end A164039

/-! ## A164039.P7103763719839657387

`∑[A124302(n)]`
-/

namespace A164039.P7103763719839657387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164039.P7103763719839657387

namespace A164039

/-- `∑[A124302(n)]` -/
def P7103763719839657387.Spec : Prop :=
  ∀ n, P7103763719839657387.a n = A164039 n

end A164039

/-! ## A164039.P9208843981583441003

`A111277(n)+n`
-/

namespace A164039.P9208843981583441003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 n + (n : ℤ)

end

end A164039.P9208843981583441003

namespace A164039

/-- `A111277(n)+n` -/
def P9208843981583441003.Spec : Prop :=
  ∀ n, P9208843981583441003.a n = A164039 n

end A164039

/-! ## A164039.P1152138287946664290

`ceil(A233656(n)/2)`
-/

namespace A164039.P1152138287946664290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233656 n : ℚ) / 2⌉

end

end A164039.P1152138287946664290

namespace A164039

/-- `ceil(A233656(n)/2)` -/
def P1152138287946664290.Spec : Prop :=
  ∀ n, P1152138287946664290.a n = A164039 n

end A164039

/-! ## A164039.P12892476465903396746

`∑[abs(A123183(n+1))]`
-/

namespace A164039.P12892476465903396746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123183 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164039.P12892476465903396746

namespace A164039

/-- `∑[abs(A123183(n+1))]` -/
def P12892476465903396746.Spec : Prop :=
  ∀ n, P12892476465903396746.a n = A164039 n

end A164039

/-! ## A164039.P8732124625093888321

`ceil((A007051(n)+n)/2)`
-/

namespace A164039.P8732124625093888321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007051 n + (n : ℤ) : ℚ) / 2⌉

end

end A164039.P8732124625093888321

namespace A164039

/-- `ceil((A007051(n)+n)/2)` -/
def P8732124625093888321.Spec : Prop :=
  ∀ n, P8732124625093888321.a n = A164039 n

end A164039

/-! ## A164039.P1215364763891496323

`ceil((A103425(n)+n)/2)`
-/

namespace A164039.P1215364763891496323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103425 n + (n : ℤ) : ℚ) / 2⌉

end

end A164039.P1215364763891496323

namespace A164039

/-- `ceil((A103425(n)+n)/2)` -/
def P1215364763891496323.Spec : Prop :=
  ∀ n, P1215364763891496323.a n = A164039 n

end A164039

/-! ## A164039.P12056560768543992674

`ceil(A122983(n)+n/2)`
-/

namespace A164039.P12056560768543992674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122983 n : ℚ) + (n : ℚ) / 2⌉

end

end A164039.P12056560768543992674

namespace A164039

/-- `ceil(A122983(n)+n/2)` -/
def P12056560768543992674.Spec : Prop :=
  ∀ n, P12056560768543992674.a n = A164039 n

end A164039

/-! ## A164039.P15092771034015310842

`∑[A000392(n)]+2^n`
-/

namespace A164039.P15092771034015310842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A164039.P15092771034015310842

namespace A164039

/-- `∑[A000392(n)]+2^n` -/
def P15092771034015310842.Spec : Prop :=
  ∀ n, P15092771034015310842.a n = A164039 n

end A164039

/-! ## A164039.P7062494177947987660

`∑[∑[abs(A141413(n))]]+1`
-/

namespace A164039.P7062494177947987660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141413 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164039.P7062494177947987660

namespace A164039

/-- `∑[∑[abs(A141413(n))]]+1` -/
def P7062494177947987660.Spec : Prop :=
  ∀ n, P7062494177947987660.a n = A164039 n

end A164039

/-!
# A164041: Primes of the form 2*p^2 + 4*p + 1, where p is also prime.

The programs for A164041, the canonical program `A164041.P12661298805710206916` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164041 has offset 1).

The definition of A164041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164042, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164041.P12661298805710206916

`2*A164042(n+1)²+4*A164042(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A164041

/-- `2*A164042(n+1)²+4*A164042(n+1)+1` -/
def P12661298805710206916.Spec : Prop :=
  ∀ n, P12661298805710206916.a n = A164041 (n + 1)

theorem P12661298805710206916.correct : P12661298805710206916.Spec := by
  intro n
  simp only [A164041, Nat.add_sub_cancel]

end A164041

/-! ## A164041.P11211372903293044016

`∩[A066436(n+1), A382097(n+1)]`
-/

namespace A164041.P11211372903293044016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164041.P11211372903293044016

namespace A164041

/-- `∩[A066436(n+1), A382097(n+1)]` -/
def P11211372903293044016.Spec : Prop :=
  ∀ n, (P11211372903293044016.a n : ℤ) = A164041 (n + 1)

end A164041

/-! ## A164041.P12673467144247730674

`∩[A256917(n+1), A382097(n+1)]`
-/

namespace A164041.P12673467144247730674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164041.P12673467144247730674

namespace A164041

/-- `∩[A256917(n+1), A382097(n+1)]` -/
def P12673467144247730674.Spec : Prop :=
  ∀ n, (P12673467144247730674.a n : ℤ) = A164041 (n + 1)

end A164041

/-! ## A164041.P9224738360176954869

`A056220(A164042(n+1)+1)`
-/

namespace A164041.P9224738360176954869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A164042 (n + 1) + 1).toNat

end

end A164041.P9224738360176954869

namespace A164041

/-- `A056220(A164042(n+1)+1)` -/
def P9224738360176954869.Spec : Prop :=
  ∀ n, P9224738360176954869.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P11254725742276913417

`A056220(p?[A066049(n+1)-1]+1)`
-/

namespace A164041.P11254725742276913417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A164041.P11254725742276913417

namespace A164041

/-- `A056220(p?[A066049(n+1)-1]+1)` -/
def P11254725742276913417.Spec : Prop :=
  ∀ n, P11254725742276913417.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P4882189341544038533

`A056220(p?[floor(A066436(n+1)/A090697(n+1))]+1)`
-/

namespace A164041.P4882189341544038533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066436 (n + 1) : ℚ) / (A090697 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A164041.P4882189341544038533

namespace A164041

/-- `A056220(p?[floor(A066436(n+1)/A090697(n+1))]+1)` -/
def P4882189341544038533.Spec : Prop :=
  ∀ n, P4882189341544038533.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P12313977275313965325

`A054000(p?[A066436(n+1)%A066049(n+1)]+1)+1`
-/

namespace A164041.P12313977275313965325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066436 (n + 1)) (A066049 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat + 1

end

end A164041.P12313977275313965325

namespace A164041

/-- `A054000(p?[A066436(n+1)%A066049(n+1)]+1)+1` -/
def P12313977275313965325.Spec : Prop :=
  ∀ n, P12313977275313965325.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P15152522845515839383

`record[A059772(A089241(n+1))]`
-/

namespace A164041.P15152522845515839383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A089241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P15152522845515839383

namespace A164041

/-- `record[A059772(A089241(n+1))]` -/
def P15152522845515839383.Spec : Prop :=
  ∀ n, P15152522845515839383.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P13450477422918427521

`record[A059772(A072055(n+1)+1)]`
-/

namespace A164041.P13450477422918427521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A072055 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P13450477422918427521

namespace A164041

/-- `record[A059772(A072055(n+1)+1)]` -/
def P13450477422918427521.Spec : Prop :=
  ∀ n, P13450477422918427521.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P15135235866702525028

`record[A164314(A100484(n+1)+2)]`
-/

namespace A164041.P15135235866702525028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A100484 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P15135235866702525028

namespace A164041

/-- `record[A164314(A100484(n+1)+2)]` -/
def P15135235866702525028.Spec : Prop :=
  ∀ n, P15135235866702525028.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P15964616225367001300

`record[A059772(2*A008864(n+1))]`
-/

namespace A164041.P15964616225367001300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (2 * A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P15964616225367001300

namespace A164041

/-- `record[A059772(2*A008864(n+1))]` -/
def P15964616225367001300.Spec : Prop :=
  ∀ n, P15964616225367001300.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P14223415449535279609

`record[A164314(2*(A000040(n+1)+1))]`
-/

namespace A164041.P14223415449535279609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (2 * (A000040 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P14223415449535279609

namespace A164041

/-- `record[A164314(2*(A000040(n+1)+1))]` -/
def P14223415449535279609.Spec : Prop :=
  ∀ n, P14223415449535279609.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P12448120807174019940

`record[A164314(A089241(A117910(n)))]`
-/

namespace A164041.P12448120807174019940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A089241 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P12448120807174019940

namespace A164041

/-- `record[A164314(A089241(A117910(n)))]` -/
def P12448120807174019940.Spec : Prop :=
  ∀ n, P12448120807174019940.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P9415599201207117302

`record[A059772(A005843(A008864(n+1)))]`
-/

namespace A164041.P9415599201207117302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059772 (A005843 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P9415599201207117302

namespace A164041

/-- `record[A059772(A005843(A008864(n+1)))]` -/
def P9415599201207117302.Spec : Prop :=
  ∀ n, P9415599201207117302.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P3263638484263496384

`record[A164314(A004278(A113935(n+1)))]`
-/

namespace A164041.P3263638484263496384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A004278 (A113935 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P3263638484263496384

namespace A164041

/-- `record[A164314(A004278(A113935(n+1)))]` -/
def P3263638484263496384.Spec : Prop :=
  ∀ n, P3263638484263496384.a n = A164041 (n + 1)

end A164041

/-! ## A164041.P3875642339912351235

`record[A164314(A097362(A100484(n+1)))]`
-/

namespace A164041.P3875642339912351235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (A097362 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164041.P3875642339912351235

namespace A164041

/-- `record[A164314(A097362(A100484(n+1)))]` -/
def P3875642339912351235.Spec : Prop :=
  ∀ n, P3875642339912351235.a n = A164041 (n + 1)

end A164041

/-!
# A164042: Primes p such that 2*p^2+4*p+1 is also prime.

The programs for A164042, the canonical program `A164042.P10806656503751704319` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164042 has offset 1).

The definition of A164042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164042.P2300938748300319778

`floor(sqrt(A164041(n+1)/2))`
-/

namespace A164042.P2300938748300319778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A164041 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A164042.P2300938748300319778

namespace A164042

/-- `floor(sqrt(A164041(n+1)/2))` -/
def P2300938748300319778.Spec : Prop :=
  ∀ n, P2300938748300319778.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P10806656503751704319

`p?[2*A143827(n+1)-A057427(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A164042

/-- `p?[2*A143827(n+1)-A057427(n)]` -/
def P10806656503751704319.Spec : Prop :=
  ∀ n, P10806656503751704319.a n = A164042 (n + 1)

theorem P10806656503751704319.correct : P10806656503751704319.Spec := by
  intro n
  simp only [A164042, Nat.add_sub_cancel]

end A164042

/-! ## A164042.P13409652907682266810

`p?[A066049(n+1)-1]`
-/

namespace A164042.P13409652907682266810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P13409652907682266810

namespace A164042

/-- `p?[A066049(n+1)-1]` -/
def P13409652907682266810.Spec : Prop :=
  ∀ n, P13409652907682266810.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P8074827416479315754

`p?[A066436(n+1)%A066049(n+1)]`
-/

namespace A164042.P8074827416479315754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066436 (n + 1)) (A066049 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P8074827416479315754

namespace A164042

/-- `p?[A066436(n+1)%A066049(n+1)]` -/
def P8074827416479315754.Spec : Prop :=
  ∀ n, P8074827416479315754.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P13649911070342118449

`∩[A000040(n+1), A066049(n+1)-1]`
-/

namespace A164042.P13649911070342118449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164042.P13649911070342118449

namespace A164042

/-- `∩[A000040(n+1), A066049(n+1)-1]` -/
def P13649911070342118449.Spec : Prop :=
  ∀ n, (P13649911070342118449.a n : ℤ) = A164042 (n + 1)

end A164042

/-! ## A164042.P13396434496598505307

`∩[A066049(n+1)-1, A182986(n+1)]`
-/

namespace A164042.P13396434496598505307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164042.P13396434496598505307

namespace A164042

/-- `∩[A066049(n+1)-1, A182986(n+1)]` -/
def P13396434496598505307.Spec : Prop :=
  ∀ n, (P13396434496598505307.a n : ℤ) = A164042 (n + 1)

end A164042

/-! ## A164042.P940823038688709776

`∩[A008578(n+2), A066049(n+2)-1]`
-/

namespace A164042.P940823038688709776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164042.P940823038688709776

namespace A164042

/-- `∩[A008578(n+2), A066049(n+2)-1]` -/
def P940823038688709776.Spec : Prop :=
  ∀ n, (P940823038688709776.a n : ℤ) = A164042 (n + 1)

end A164042

/-! ## A164042.P5322918058564355302

`∩[A066049(n+2)-1, A158611(n+2)]`
-/

namespace A164042.P5322918058564355302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164042.P5322918058564355302

namespace A164042

/-- `∩[A066049(n+2)-1, A158611(n+2)]` -/
def P5322918058564355302.Spec : Prop :=
  ∀ n, (P5322918058564355302.a n : ℤ) = A164042 (n + 1)

end A164042

/-! ## A164042.P4700041462119440982

`p?[floor(A066436(n+1)/A090697(n+1))]`
-/

namespace A164042.P4700041462119440982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066436 (n + 1) : ℚ) / (A090697 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P4700041462119440982

namespace A164042

/-- `p?[floor(A066436(n+1)/A090697(n+1))]` -/
def P4700041462119440982.Spec : Prop :=
  ∀ n, P4700041462119440982.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P16204387699521187377

`record[A006530(A090697(n+1)-2)]`
-/

namespace A164042.P16204387699521187377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090697 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164042.P16204387699521187377

namespace A164042

/-- `record[A006530(A090697(n+1)-2)]` -/
def P16204387699521187377.Spec : Prop :=
  ∀ n, P16204387699521187377.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P12196045141649277539

`record[A006530(A110558(n+1)-4)]`
-/

namespace A164042.P12196045141649277539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110558 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164042.P12196045141649277539

namespace A164042

/-- `record[A006530(A110558(n+1)-4)]` -/
def P12196045141649277539.Spec : Prop :=
  ∀ n, P12196045141649277539.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P9214892850828932648

`p?[A057637(A066049(n+1))]`
-/

namespace A164042.P9214892850828932648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A066049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P9214892850828932648

namespace A164042

/-- `p?[A057637(A066049(n+1))]` -/
def P9214892850828932648.Spec : Prop :=
  ∀ n, P9214892850828932648.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P15633538518811238181

`p?[A143051(A066049(n+2))]`
-/

namespace A164042.P15633538518811238181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A066049 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P15633538518811238181

namespace A164042

/-- `p?[A143051(A066049(n+2))]` -/
def P15633538518811238181.Spec : Prop :=
  ∀ n, P15633538518811238181.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P15247400705924550313

`p?[A246425(A090697(n+1)-3)]`
-/

namespace A164042.P15247400705924550313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A090697 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P15247400705924550313

namespace A164042

/-- `p?[A246425(A090697(n+1)-3)]` -/
def P15247400705924550313.Spec : Prop :=
  ∀ n, P15247400705924550313.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P12563790730347848318

`p?[A160697(n+1)-1]`
-/

namespace A164042.P12563790730347848318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160697 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P12563790730347848318

namespace A164042

/-- `p?[A160697(n+1)-1]` -/
def P12563790730347848318.Spec : Prop :=
  ∀ n, P12563790730347848318.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P18226459864116825298

`p?[A004525(A090697(n+1)-2)]`
-/

namespace A164042.P18226459864116825298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A090697 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P18226459864116825298

namespace A164042

/-- `p?[A004525(A090697(n+1)-2)]` -/
def P18226459864116825298.Spec : Prop :=
  ∀ n, P18226459864116825298.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P7186318653274778397

`p?[A026741(A090697(n+1)-2)]`
-/

namespace A164042.P7186318653274778397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A090697 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P7186318653274778397

namespace A164042

/-- `p?[A026741(A090697(n+1)-2)]` -/
def P7186318653274778397.Spec : Prop :=
  ∀ n, P7186318653274778397.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P2074337540180793269

`p?[A000463(A090697(n+1)-3)]`
-/

namespace A164042.P2074337540180793269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A090697 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P2074337540180793269

namespace A164042

/-- `p?[A000463(A090697(n+1)-3)]` -/
def P2074337540180793269.Spec : Prop :=
  ∀ n, P2074337540180793269.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P5209267836095426738

`p?[A008619(A090697(n+1)-3)]`
-/

namespace A164042.P5209267836095426738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A090697 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164042.P5209267836095426738

namespace A164042

/-- `p?[A008619(A090697(n+1)-3)]` -/
def P5209267836095426738.Spec : Prop :=
  ∀ n, P5209267836095426738.a n = A164042 (n + 1)

end A164042

/-! ## A164042.P1068114916970659069

`eq[A053204(n), A359438(n+1)]`
-/

namespace A164042.P1068114916970659069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164042.P1068114916970659069

namespace A164042

/-- `eq[A053204(n), A359438(n+1)]` -/
def P1068114916970659069.Spec : Prop :=
  ∀ n, (P1068114916970659069.a n : ℤ) = A164042 (n + 1)

end A164042

/-!
# A164044: a(n+1) = 4*a(n) - n.

The programs for A164044, the canonical program `A164044.P1040865053773046633` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164044 has offset 0).

The definition of A164044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164044.P1040865053773046633

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164044

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P1040865053773046633.Spec : Prop :=
  ∀ n, P1040865053773046633.a n = A164044 n

theorem P1040865053773046633.correct : P1040865053773046633.Spec := by
  intro n
  simp only [A164044]

end A164044

/-! ## A164044.P15301558691982097552

`(5*4^n+3*n+4)/9`
-/

namespace A164044.P15301558691982097552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 4 ^ n + 3 * n + 4 : ℚ) / 9

end

end A164044.P15301558691982097552

namespace A164044

/-- `(5*4^n+3*n+4)/9` -/
def P15301558691982097552.Spec : Prop :=
  ∀ n, P15301558691982097552.a n = (A164044 n : ℚ)

theorem P15301558691982097552.correct : P15301558691982097552.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A164044, Nat.add_sub_cancel, A164044.P15301558691982097552.a, A164044.P1040865053773046633.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A164044, Nat.add_sub_cancel, A164044.P15301558691982097552.a, A164044.P1040865053773046633.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164044

/-! ## A164044.P2068635863947358427

`4*a(n-1)-n` with `a(0)=1`
-/

namespace A164044.P2068635863947358427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (n : ℤ)

end

end A164044.P2068635863947358427

namespace A164044

/-- `4*a(n-1)-n` -/
def P2068635863947358427.Spec : Prop :=
  ∀ n, P2068635863947358427.a n = A164044 n

end A164044

/-! ## A164044.P10474083893497009123

`∑[ogf((1-3x+x^2)/(1-5x+4x^2))]`
-/

namespace A164044.P10474083893497009123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164044.P10474083893497009123

namespace A164044

/-- `∑[ogf((1-3x+x^2)/(1-5x+4x^2))]` -/
def P10474083893497009123.Spec : Prop :=
  ∀ n, P10474083893497009123.a n = A164044 n

end A164044

/-! ## A164044.P6243957905137835486

`ogf((1-3x+x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A164044.P6243957905137835486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -6, 9, -4] n

end

end A164044.P6243957905137835486

namespace A164044

/-- `ogf((1-3x+x^2)/(1-6x+9x^2-4x^3))` -/
def P6243957905137835486.Spec : Prop :=
  ∀ n, P6243957905137835486.a n = A164044 n

end A164044

/-! ## A164044.P725268190310068480

`a(n-1)/(1/2)²-n` with `a(0)=1`
-/

namespace A164044.P725268190310068480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - (n : ℚ)

end

end A164044.P725268190310068480

namespace A164044

/-- `a(n-1)/(1/2)²-n` -/
def P725268190310068480.Spec : Prop :=
  ∀ n, P725268190310068480.a n = (A164044 n : ℚ)

end A164044

/-! ## A164044.P7580827240825976899

`floor(a(n-1)/(1-3/4)-n)` with `a(0)=1`
-/

namespace A164044.P7580827240825976899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4) - (n : ℚ)⌋

end

end A164044.P7580827240825976899

namespace A164044

/-- `floor(a(n-1)/(1-3/4)-n)` -/
def P7580827240825976899.Spec : Prop :=
  ∀ n, P7580827240825976899.a n = A164044 n

end A164044

/-! ## A164044.P13819017739370607884

`∑[record[1-a(n-1)-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A164044.P13819017739370607884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  1 - f2 (n - 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164044.P13819017739370607884

namespace A164044

/-- `∑[record[1-a(n-1)-a(n-1)]]` -/
def P13819017739370607884.Spec : Prop :=
  ∀ n, P13819017739370607884.a n = A164044 n

end A164044

/-! ## A164044.P6200673770674072635

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-n` with `a(0)=1`
-/

namespace A164044.P6200673770674072635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - (n : ℤ))))

end

end A164044.P6200673770674072635

namespace A164044

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-n` -/
def P6200673770674072635.Spec : Prop :=
  ∀ n, P6200673770674072635.a n = A164044 n

end A164044

/-! ## A164044.P14573176599601293520

`a(n-1)-(n-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A164044.P14573176599601293520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A164044.P14573176599601293520

namespace A164044

/-- `a(n-1)-(n-a(n-1)-a(n-1)-a(n-1))` -/
def P14573176599601293520.Spec : Prop :=
  ∀ n, P14573176599601293520.a n = A164044 n

end A164044

/-! ## A164044.P14479932828679710590

`A172416(2*n)`
-/

namespace A164044.P14479932828679710590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 (2 * n)

end

end A164044.P14479932828679710590

namespace A164044

/-- `A172416(2*n)` -/
def P14479932828679710590.Spec : Prop :=
  ∀ n, P14479932828679710590.a n = A164044 n

end A164044

/-! ## A164044.P9515595005347368755

`∑[A305750(2*n)]`
-/

namespace A164044.P9515595005347368755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164044.P9515595005347368755

namespace A164044

/-- `∑[A305750(2*n)]` -/
def P9515595005347368755.Spec : Prop :=
  ∀ n, P9515595005347368755.a n = A164044 n

end A164044

/-! ## A164044.P9404961785396325234

`A141291(n)+1+n`
-/

namespace A164044.P9404961785396325234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141291 n + 1 + (n : ℤ)

end

end A164044.P9404961785396325234

namespace A164044

/-- `A141291(n)+1+n` -/
def P9404961785396325234.Spec : Prop :=
  ∀ n, P9404961785396325234.a n = A164044 n

end A164044

/-! ## A164044.P2971154218233991992

`A068018(Δ[n²])-n`
-/

namespace A164044.P2971154218233991992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A164044.P2971154218233991992

namespace A164044

/-- `A068018(Δ[n²])-n` -/
def P2971154218233991992.Spec : Prop :=
  ∀ n, P2971154218233991992.a n = A164044 n

end A164044

/-! ## A164044.P13249963872273914209

`A172285(2*n)+n+1`
-/

namespace A164044.P13249963872273914209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 (2 * n) + (n + 1 : ℤ)

end

end A164044.P13249963872273914209

namespace A164044

/-- `A172285(2*n)+n+1` -/
def P13249963872273914209.Spec : Prop :=
  ∀ n, P13249963872273914209.a n = A164044 n

end A164044

/-! ## A164044.P17977270849548652965

`∑[ceil(A084214(2*n)/2)]`
-/

namespace A164044.P17977270849548652965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084214 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164044.P17977270849548652965

namespace A164044

/-- `∑[ceil(A084214(2*n)/2)]` -/
def P17977270849548652965.Spec : Prop :=
  ∀ n, P17977270849548652965.a n = A164044 n

end A164044

/-! ## A164044.P13281672789228115582

`A350717(n)+A002450(n)`
-/

namespace A164044.P13281672789228115582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350717 n + A002450 n

end

end A164044.P13281672789228115582

namespace A164044

/-- `A350717(n)+A002450(n)` -/
def P13281672789228115582.Spec : Prop :=
  ∀ n, P13281672789228115582.a n = A164044 n

end A164044

/-! ## A164044.P16728324204595253050

`A160156(n)-A002450(n)`
-/

namespace A164044.P16728324204595253050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160156 n - A002450 n

end

end A164044.P16728324204595253050

namespace A164044

/-- `A160156(n)-A002450(n)` -/
def P16728324204595253050.Spec : Prop :=
  ∀ n, P16728324204595253050.a n = A164044 n

end A164044

/-! ## A164044.P12350543878028143883

`A172447(n)-A141291(n)`
-/

namespace A164044.P12350543878028143883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172447 n - A141291 n

end

end A164044.P12350543878028143883

namespace A164044

/-- `A172447(n)-A141291(n)` -/
def P12350543878028143883.Spec : Prop :=
  ∀ n, P12350543878028143883.a n = A164044 n

end A164044

/-! ## A164044.P4532035046016303781

`A350717(n)+A001045(2*n)`
-/

namespace A164044.P4532035046016303781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350717 n + A001045 (2 * n)

end

end A164044.P4532035046016303781

namespace A164044

/-- `A350717(n)+A001045(2*n)` -/
def P4532035046016303781.Spec : Prop :=
  ∀ n, P4532035046016303781.a n = A164044 n

end A164044

/-!
# A164045: a(n+1) = 5*a(n) - n.

The programs for A164045, the canonical program `A164045.P11102348131894820480` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164045 has offset 0).

The definition of A164045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164045.P11102348131894820480

`7*a(n-1)-11*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=4, a(2)=18`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164045

/-- `7*a(n-1)-11*a(n-2)+5*a(n-3)` -/
def P11102348131894820480.Spec : Prop :=
  ∀ n, P11102348131894820480.a n = A164045 n

theorem P11102348131894820480.correct : P11102348131894820480.Spec := by
  intro n
  simp only [A164045]

end A164045

/-! ## A164045.P5077845808445341052

`(11*5^n+4*n+5)/16`
-/

namespace A164045.P5077845808445341052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 5 ^ n + 4 * n + 5 : ℚ) / 16

end

end A164045.P5077845808445341052

namespace A164045

/-- `(11*5^n+4*n+5)/16` -/
def P5077845808445341052.Spec : Prop :=
  ∀ n, P5077845808445341052.a n = (A164045 n : ℚ)

theorem P5077845808445341052.correct : P5077845808445341052.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A164045, Nat.add_sub_cancel, A164045.P5077845808445341052.a, A164045.P11102348131894820480.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A164045, Nat.add_sub_cancel, A164045.P5077845808445341052.a, A164045.P11102348131894820480.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164045

/-! ## A164045.P8978616792099351709

`5*a(n-1)-n` with `a(0)=1`
-/

namespace A164045.P8978616792099351709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (n : ℤ)

end

end A164045.P8978616792099351709

namespace A164045

/-- `5*a(n-1)-n` -/
def P8978616792099351709.Spec : Prop :=
  ∀ n, P8978616792099351709.a n = A164045 n

end A164045

/-! ## A164045.P13328256339221115428

`∑[ogf((1-3x+x^2)/(1-6x+5x^2))]`
-/

namespace A164045.P13328256339221115428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164045.P13328256339221115428

namespace A164045

/-- `∑[ogf((1-3x+x^2)/(1-6x+5x^2))]` -/
def P13328256339221115428.Spec : Prop :=
  ∀ n, P13328256339221115428.a n = A164045 n

end A164045

/-! ## A164045.P692991816757433245

`∑[lcm(5, a(n-1))-1]` with `a(0)=1, a(1)=3`
-/

namespace A164045.P692991816757433245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164045.P692991816757433245

namespace A164045

/-- `∑[lcm(5, a(n-1))-1]` -/
def P692991816757433245.Spec : Prop :=
  ∀ n, P692991816757433245.a n = A164045 n

end A164045

/-! ## A164045.P17122325009537875477

`a(n-1)/(1-4/5)-n` with `a(0)=1`
-/

namespace A164045.P17122325009537875477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - (n : ℚ)

end

end A164045.P17122325009537875477

namespace A164045

/-- `a(n-1)/(1-4/5)-n` -/
def P17122325009537875477.Spec : Prop :=
  ∀ n, P17122325009537875477.a n = (A164045 n : ℚ)

end A164045

/-! ## A164045.P14623672835758672169

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-n` with `a(0)=1`
-/

namespace A164045.P14623672835758672169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - (n : ℤ)))))

end

end A164045.P14623672835758672169

namespace A164045

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-n` -/
def P14623672835758672169.Spec : Prop :=
  ∀ n, P14623672835758672169.a n = A164045 n

end A164045

/-! ## A164045.P5844613951505062204

`a(n-1)-(n-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A164045.P5844613951505062204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A164045.P5844613951505062204

namespace A164045

/-- `a(n-1)-(n-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P5844613951505062204.Spec : Prop :=
  ∀ n, P5844613951505062204.a n = A164045 n

end A164045

/-! ## A164045.P14384269012864030224

`∑[A005054(n)-A003463(n)]`
-/

namespace A164045.P14384269012864030224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164045.P14384269012864030224

namespace A164045

/-- `∑[A005054(n)-A003463(n)]` -/
def P14384269012864030224.Spec : Prop :=
  ∀ n, P14384269012864030224.a n = A164045 n

end A164045

/-! ## A164045.P1037242574723866661

`A198766(n)%∑[A198769(n)]`
-/

namespace A164045.P1037242574723866661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198766 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164045.P1037242574723866661

namespace A164045

/-- `A198766(n)%∑[A198769(n)]` -/
def P1037242574723866661.Spec : Prop :=
  ∀ n, P1037242574723866661.a n = A164045 n

end A164045

/-!
# A164046: A001445 written in base 2.

The programs for A164046, the canonical program `A164046.P10135874413232948754` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164046 has offset 1).

The definition of A164046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164046.P10135874413232948754

`A007088(A001445(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A164046

/-- `A007088(A001445(n+2))` -/
def P10135874413232948754.Spec : Prop :=
  ∀ n, P10135874413232948754.a n = A164046 (n + 1)

theorem P10135874413232948754.correct : P10135874413232948754.Spec := by
  intro n
  simp only [A164046, Nat.add_sub_cancel]

end A164046

/-! ## A164046.P1978699665182972344

`A038444(∑[or(1, n)])`
-/

namespace A164046.P1978699665182972344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164046.P1978699665182972344

namespace A164046

/-- `A038444(∑[or(1, n)])` -/
def P1978699665182972344.Spec : Prop :=
  ∀ n, P1978699665182972344.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P16580075982204632799

`A038444(∑[A109613(n)])`
-/

namespace A164046.P16580075982204632799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164046.P16580075982204632799

namespace A164046

/-- `A038444(∑[A109613(n)])` -/
def P16580075982204632799.Spec : Prop :=
  ∀ n, P16580075982204632799.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P12837887038013247003

`A038444(A000982(n+1))`
-/

namespace A164046.P12837887038013247003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (A000982 (n + 1)).toNat

end

end A164046.P12837887038013247003

namespace A164046

/-- `A038444(A000982(n+1))` -/
def P12837887038013247003.Spec : Prop :=
  ∀ n, P12837887038013247003.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P9109540991819147485

`A052216(A080476(n+2))`
-/

namespace A164046.P9109540991819147485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A080476 (n + 2)).toNat

end

end A164046.P9109540991819147485

namespace A164046

/-- `A052216(A080476(n+2))` -/
def P9109540991819147485.Spec : Prop :=
  ∀ n, P9109540991819147485.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P17857364810734039079

`A356520(A074148(n+2))`
-/

namespace A164046.P17857364810734039079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (A074148 (n + 2)).toNat

end

end A164046.P17857364810734039079

namespace A164046

/-- `A356520(A074148(n+2))` -/
def P17857364810734039079.Spec : Prop :=
  ∀ n, P17857364810734039079.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P10913949279593609153

`A052216(∑[2*A008619(n)])`
-/

namespace A164046.P10913949279593609153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164046.P10913949279593609153

namespace A164046

/-- `A052216(∑[2*A008619(n)])` -/
def P10913949279593609153.Spec : Prop :=
  ∀ n, P10913949279593609153.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P6862029036578015233

`A038444(A008619(n²)+n)`
-/

namespace A164046.P6862029036578015233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038444 (A008619 (n ^ 2) + (n : ℤ)).toNat

end

end A164046.P6862029036578015233

namespace A164046

/-- `A038444(A008619(n²)+n)` -/
def P6862029036578015233.Spec : Prop :=
  ∀ n, P6862029036578015233.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P17606907500563527562

`A052216(A047838(n+2)+1)`
-/

namespace A164046.P17606907500563527562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A047838 (n + 2) + 1).toNat

end

end A164046.P17606907500563527562

namespace A164046

/-- `A052216(A047838(n+2)+1)` -/
def P17606907500563527562.Spec : Prop :=
  ∀ n, P17606907500563527562.a n = A164046 (n + 1)

end A164046

/-! ## A164046.P7369614746994557357

`A286507(2*(n+1))+A286507(n)`
-/

namespace A164046.P7369614746994557357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (2 * (n + 1)) + A286507 n

end

end A164046.P7369614746994557357

namespace A164046

/-- `A286507(2*(n+1))+A286507(n)` -/
def P7369614746994557357.Spec : Prop :=
  ∀ n, P7369614746994557357.a n = A164046 (n + 1)

end A164046

/-!
# A164048: The number of numerical sets with odd Frobenius number and no small atoms.

The programs for A164048, there is no canonical definition to state claims against.
-/

/-! ## A164048.P3517995905825894968

`A158291(Δ[n²])`
-/

namespace A164048.P3517995905825894968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A164048.P3517995905825894968

/-! ## A164048.P1521005178314769336

`A158291(2*(n+1))/2`
-/

namespace A164048.P1521005178314769336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158291 (2 * (n + 1)) : ℚ) / 2

end

end A164048.P1521005178314769336

/-! ## A164048.P4479897607133485428

`record[A158291(gcd(n+1, ∑[n]))]`
-/

namespace A164048.P4479897607133485428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158291 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164048.P4479897607133485428

/-! ## A164048.P18383044695866404094

`root(A158291(2*n+1), 2)²`
-/

namespace A164048.P18383044695866404094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A158291 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A164048.P18383044695866404094

/-!
# A164051: a(n) = 2^(2n) + 2^(n-1).

The programs for A164051, the canonical program `A164051.P9632869609283854118` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164051 has offset 1).

The definition of A164051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*(n+1))+2^n` (program `A164051.P9632869609283854118`, by `A164051.P9632869609283854118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164051.P9632869609283854118

`2^(2*(n+1))+2^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164051

/-- `2^(2*(n+1))+2^n` -/
def P9632869609283854118.Spec : Prop :=
  ∀ n, (P9632869609283854118.a n : ℤ) = A164051 (n + 1)

theorem P9632869609283854118.correct : P9632869609283854118.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel]

end A164051

/-! ## A164051.P5587162970567111294

`A001445(2*(n+1)+1)`
-/

namespace A164051.P5587162970567111294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001445 (2 * (n + 1) + 1)

end

end A164051.P5587162970567111294

namespace A164051

/-- `A001445(2*(n+1)+1)` -/
def P5587162970567111294.Spec : Prop :=
  ∀ n, P5587162970567111294.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P4343281487671817475

`ogf((5-12x)/(1-6x+8x^2))`
-/

namespace A164051.P4343281487671817475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -12] [1, -6, 8] n

end

end A164051.P4343281487671817475

namespace A164051

/-- `ogf((5-12x)/(1-6x+8x^2))` -/
def P4343281487671817475.Spec : Prop :=
  ∀ n, P4343281487671817475.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P11930070178253619216

`or(4*4^n, 2^n)`
-/

namespace A164051.P11930070178253619216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * 4 ^ n) (2 ^ n)

end

end A164051.P11930070178253619216

namespace A164051

/-- `or(4*4^n, 2^n)` -/
def P11930070178253619216.Spec : Prop :=
  ∀ n, (P11930070178253619216.a n : ℤ) = A164051 (n + 1)

end A164051

/-! ## A164051.P6482688093067074472

`xor(4*4^n, 2^n)`
-/

namespace A164051.P6482688093067074472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 * 4 ^ n) (2 ^ n)

end

end A164051.P6482688093067074472

namespace A164051

/-- `xor(4*4^n, 2^n)` -/
def P6482688093067074472.Spec : Prop :=
  ∀ n, (P6482688093067074472.a n : ℤ) = A164051 (n + 1)

end A164051

/-! ## A164051.P7408884373764995576

`floor(4*a(n-1)-2^n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A164051.P7408884373764995576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) - (2 ^ n : ℤ)

end

end A164051.P7408884373764995576

namespace A164051

/-- `floor(4*a(n-1)-2^n)` -/
def P7408884373764995576.Spec : Prop :=
  ∀ n, P7408884373764995576.a n = A164051 (n + 1)

theorem P7408884373764995576.correct : P7408884373764995576.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164051, Nat.add_sub_cancel, A164051.P7408884373764995576.a, A164051.P9632869609283854118.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164051, Nat.add_sub_cancel, A164051.P7408884373764995576.a, A164051.P9632869609283854118.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164051

/-! ## A164051.P6652657471855879906

`4*(a(n-1)-2^(n-2))` with `a(0)=5`
-/

namespace A164051.P6652657471855879906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  4 * (a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A164051.P6652657471855879906

namespace A164051

/-- `4*(a(n-1)-2^(n-2))` -/
def P6652657471855879906.Spec : Prop :=
  ∀ n, P6652657471855879906.a n = (A164051 (n + 1) : ℚ)

theorem P6652657471855879906.correct : P6652657471855879906.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164051, Nat.add_sub_cancel, A164051.P6652657471855879906.a, A164051.P9632869609283854118.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164051, Nat.add_sub_cancel, A164051.P6652657471855879906.a, A164051.P9632869609283854118.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A164051

/-! ## A164051.P5470924828696420902

`2^n*A020737(n)`
-/

namespace A164051.P5470924828696420902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020737 n

end

end A164051.P5470924828696420902

namespace A164051

/-- `2^n*A020737(n)` -/
def P5470924828696420902.Spec : Prop :=
  ∀ n, P5470924828696420902.a n = A164051 (n + 1)

theorem P5470924828696420902.correct : P5470924828696420902.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel, A164051.P5470924828696420902.a, A164051.P9632869609283854118.a, A020737, A020737.P8756672290686718691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164051

/-! ## A164051.P16915673867205191976

`2^n*A048578(n+1)`
-/

namespace A164051.P16915673867205191976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048578 (n + 1)

end

end A164051.P16915673867205191976

namespace A164051

/-- `2^n*A048578(n+1)` -/
def P16915673867205191976.Spec : Prop :=
  ∀ n, P16915673867205191976.a n = A164051 (n + 1)

theorem P16915673867205191976.correct : P16915673867205191976.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel, A164051.P16915673867205191976.a, A164051.P9632869609283854118.a, A048578, A048578.P13686089786535013419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164051

/-! ## A164051.P15504546263269151481

`2^n*A000051(n+2)`
-/

namespace A164051.P15504546263269151481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000051 (n + 2)

end

end A164051.P15504546263269151481

namespace A164051

/-- `2^n*A000051(n+2)` -/
def P15504546263269151481.Spec : Prop :=
  ∀ n, P15504546263269151481.a n = A164051 (n + 1)

theorem P15504546263269151481.correct : P15504546263269151481.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel, A164051.P15504546263269151481.a, A164051.P9632869609283854118.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164051

/-! ## A164051.P9328957744708009598

`2^n*A083318(n+2)`
-/

namespace A164051.P9328957744708009598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A083318 (n + 2)

end

end A164051.P9328957744708009598

namespace A164051

/-- `2^n*A083318(n+2)` -/
def P9328957744708009598.Spec : Prop :=
  ∀ n, P9328957744708009598.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P1455412626557992338

`2^n*A094373(n+3)`
-/

namespace A164051.P1455412626557992338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A094373 (n + 3)

end

end A164051.P1455412626557992338

namespace A164051

/-- `2^n*A094373(n+3)` -/
def P1455412626557992338.Spec : Prop :=
  ∀ n, P1455412626557992338.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P4131558566241332642

`2^n*A127904(n+3)`
-/

namespace A164051.P4131558566241332642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A127904 (n + 3)

end

end A164051.P4131558566241332642

namespace A164051

/-- `2^n*A127904(n+3)` -/
def P4131558566241332642.Spec : Prop :=
  ∀ n, P4131558566241332642.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P17247543997581026432

`2^n*A143096(n+3)`
-/

namespace A164051.P17247543997581026432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A143096 (n + 3)

end

end A164051.P17247543997581026432

namespace A164051

/-- `2^n*A143096(n+3)` -/
def P17247543997581026432.Spec : Prop :=
  ∀ n, P17247543997581026432.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P4531306435021803102

`lcm(A000079(n), A020737(n))`
-/

namespace A164051.P4531306435021803102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A020737 n)

end

end A164051.P4531306435021803102

namespace A164051

/-- `lcm(A000079(n), A020737(n))` -/
def P4531306435021803102.Spec : Prop :=
  ∀ n, (P4531306435021803102.a n : ℤ) = A164051 (n + 1)

end A164051

/-! ## A164051.P1095238099252740527

`(A020707(n)+1)*A000079(n)`
-/

namespace A164051.P1095238099252740527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020707 n + 1) * A000079 n

end

end A164051.P1095238099252740527

namespace A164051

/-- `(A020707(n)+1)*A000079(n)` -/
def P1095238099252740527.Spec : Prop :=
  ∀ n, P1095238099252740527.a n = A164051 (n + 1)

theorem P1095238099252740527.correct : P1095238099252740527.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel, A164051.P1095238099252740527.a, A164051.P9632869609283854118.a, A000079, A000079.P10855139691139572931.a, A020707, A020707.P16024998955381595964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164051

/-! ## A164051.P1442211584037662567

`A000051(n+2)*A000079(n)`
-/

namespace A164051.P1442211584037662567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 2) * A000079 n

end

end A164051.P1442211584037662567

namespace A164051

/-- `A000051(n+2)*A000079(n)` -/
def P1442211584037662567.Spec : Prop :=
  ∀ n, P1442211584037662567.a n = A164051 (n + 1)

theorem P1442211584037662567.correct : P1442211584037662567.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel, A164051.P1442211584037662567.a, A164051.P9632869609283854118.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164051

/-! ## A164051.P3317490221377855784

`record[A135530(n)²-Δ[A135530(n)]]`
-/

namespace A164051.P3317490221377855784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n ^ 2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164051.P3317490221377855784

namespace A164051

/-- `record[A135530(n)²-Δ[A135530(n)]]` -/
def P3317490221377855784.Spec : Prop :=
  ∀ n, P3317490221377855784.a n = A164051 (n + 1)

end A164051

/-! ## A164051.P12387715451897237356

`(A000079(n+2)+1)*A000079(n)`
-/

namespace A164051.P12387715451897237356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 2) + 1) * A000079 n

end

end A164051.P12387715451897237356

namespace A164051

/-- `(A000079(n+2)+1)*A000079(n)` -/
def P12387715451897237356.Spec : Prop :=
  ∀ n, P12387715451897237356.a n = A164051 (n + 1)

theorem P12387715451897237356.correct : P12387715451897237356.Spec := by
  intro n
  simp only [A164051, Nat.add_sub_cancel, A164051.P12387715451897237356.a, A164051.P9632869609283854118.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164051

/-!
# A164053: Partial sums of A162255.

The programs for A164053, the canonical program `A164053.P14199584990981179671` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164053 has offset 1).

The definition of A164053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164053.P14199584990981179671

`2*a(n-2)+5` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164053

/-- `2*a(n-2)+5` -/
def P14199584990981179671.Spec : Prop :=
  ∀ n, (P14199584990981179671.a n : ℤ) = A164053 (n + 1)

theorem P14199584990981179671.correct : P14199584990981179671.Spec := by
  intro n
  simp only [A164053, Nat.add_sub_cancel]

end A164053

/-! ## A164053.P6108395420942337038

`(13-3*(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-5`
-/

namespace A164053.P6108395420942337038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 - 3 * (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2 - 5

end

end A164053.P6108395420942337038

namespace A164053

/-- `(13-3*(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-5` -/
def P6108395420942337038.Spec : Prop :=
  ∀ n, P6108395420942337038.a n = (A164053 (n + 1) : ℝ)

end A164053

/-! ## A164053.P12841461068369621955

`∑[ogf((3+2x)/(1-2x^2))]`
-/

namespace A164053.P12841461068369621955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P12841461068369621955

namespace A164053

/-- `∑[ogf((3+2x)/(1-2x^2))]` -/
def P12841461068369621955.Spec : Prop :=
  ∀ n, P12841461068369621955.a n = A164053 (n + 1)

end A164053

/-! ## A164053.P13836309785346631481

`ogf((3+2x)/(1-x-2x^2+2x^3))`
-/

namespace A164053.P13836309785346631481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -1, -2, 2] n

end

end A164053.P13836309785346631481

namespace A164053

/-- `ogf((3+2x)/(1-x-2x^2+2x^3))` -/
def P13836309785346631481.Spec : Prop :=
  ∀ n, P13836309785346631481.a n = A164053 (n + 1)

end A164053

/-! ## A164053.P14588115016274356271

`∑[2*a(n-2)]` with `a(0)=3, a(1)=2`
-/

namespace A164053.P14588115016274356271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P14588115016274356271

namespace A164053

/-- `∑[2*a(n-2)]` -/
def P14588115016274356271.Spec : Prop :=
  ∀ n, (P14588115016274356271.a n : ℤ) = A164053 (n + 1)

end A164053

/-! ## A164053.P12931436684886643495

`∑[∏[2/a(n-1)]]` with `a(0)=3`
-/

namespace A164053.P12931436684886643495
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f2 =>
  2 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P12931436684886643495

namespace A164053

/-- `∑[∏[2/a(n-1)]]` -/
def P12931436684886643495.Spec : Prop :=
  ∀ n, P12931436684886643495.a n = (A164053 (n + 1) : ℚ)

end A164053

/-! ## A164053.P4546313132750275348

`∑[a(n-2)+a(n-2)]` with `a(0)=3, a(1)=2`
-/

namespace A164053.P4546313132750275348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P4546313132750275348

namespace A164053

/-- `∑[a(n-2)+a(n-2)]` -/
def P4546313132750275348.Spec : Prop :=
  ∀ n, (P4546313132750275348.a n : ℤ) = A164053 (n + 1)

end A164053

/-! ## A164053.P9854533090999328947

`∑[a(n-2)/(1-1/2)]` with `a(0)=3, a(1)=2`
-/

namespace A164053.P9854533090999328947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 2) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P9854533090999328947

namespace A164053

/-- `∑[a(n-2)/(1-1/2)]` -/
def P9854533090999328947.Spec : Prop :=
  ∀ n, P9854533090999328947.a n = (A164053 (n + 1) : ℚ)

end A164053

/-! ## A164053.P7689276097086214311

`∑[A162255(n+1)]`
-/

namespace A164053.P7689276097086214311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P7689276097086214311

namespace A164053

/-- `∑[A162255(n+1)]` -/
def P7689276097086214311.Spec : Prop :=
  ∀ n, P7689276097086214311.a n = A164053 (n + 1)

end A164053

/-! ## A164053.P8035818620335050035

`∑[A074323(n+2)]`
-/

namespace A164053.P8035818620335050035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P8035818620335050035

namespace A164053

/-- `∑[A074323(n+2)]` -/
def P8035818620335050035.Spec : Prop :=
  ∀ n, P8035818620335050035.a n = A164053 (n + 1)

end A164053

/-! ## A164053.P11891372745639018788

`∑[A164073(n+2)]`
-/

namespace A164053.P11891372745639018788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P11891372745639018788

namespace A164053

/-- `∑[A164073(n+2)]` -/
def P11891372745639018788.Spec : Prop :=
  ∀ n, P11891372745639018788.a n = A164053 (n + 1)

end A164053

/-! ## A164053.P10612010103713002452

`∑[A134693(n+1)/3]`
-/

namespace A164053.P10612010103713002452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134693 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P10612010103713002452

namespace A164053

/-- `∑[A134693(n+1)/3]` -/
def P10612010103713002452.Spec : Prop :=
  ∀ n, P10612010103713002452.a n = (A164053 (n + 1) : ℚ)

end A164053

/-! ## A164053.P7004457431660644063

`∑[∑[A137206(n+1)]+1]`
-/

namespace A164053.P7004457431660644063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P7004457431660644063

namespace A164053

/-- `∑[∑[A137206(n+1)]+1]` -/
def P7004457431660644063.Spec : Prop :=
  ∀ n, P7004457431660644063.a n = A164053 (n + 1)

end A164053

/-! ## A164053.P197162162563218967

`∑[A052955(A004442(n))+1]`
-/

namespace A164053.P197162162563218967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004442 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164053.P197162162563218967

namespace A164053

/-- `∑[A052955(A004442(n))+1]` -/
def P197162162563218967.Spec : Prop :=
  ∀ n, P197162162563218967.a n = A164053 (n + 1)

end A164053

/-!
# A164054: The index values of the smallest and the largest n-digit primes.

The programs for A164054, there is no canonical definition to state claims against.
-/

/-! ## A164054.P4562676902815260669

`A006880(ceil(n/2))+log2(gcd(2, n))`
-/

namespace A164054.P4562676902815260669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006880 ⌈(n : ℚ) / 2⌉.toNat : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A164054.P4562676902815260669

/-! ## A164054.P1577909519597608404

`A006880(∑[and(1, n)])+char[2*n]`
-/

namespace A164054.P1577909519597608404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164054.P1577909519597608404

/-! ## A164054.P16692533997414554570

`A006880(∑[n%2])+∑[(-1)^n]`
-/

namespace A164054.P16692533997414554570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A164054.P16692533997414554570

/-! ## A164054.P2469752263952632797

`A059841(n)+A006880(ceil(n/2))`
-/

namespace A164054.P2469752263952632797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A006880 ⌈(n : ℚ) / 2⌉.toNat

end

end A164054.P2469752263952632797

/-! ## A164054.P15935924070269000512

`A006880(A110654(n))+char[2*n]`
-/

namespace A164054.P15935924070269000512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A110654 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A164054.P15935924070269000512

/-!
# A164055: Triangular numbers that are one plus a perfect square.

The programs for A164055, the canonical program `A164055.P10691815728550520358` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164055 has offset 1).

The definition of A164055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164055.P10691815728550520358

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=325`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164055

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P10691815728550520358.Spec : Prop :=
  ∀ n, P10691815728550520358.a n = A164055 (n + 1)

theorem P10691815728550520358.correct : P10691815728550520358.Spec := by
  intro n
  simp only [A164055, Nat.add_sub_cancel]

end A164055

/-! ## A164055.P15372426888620218493

`9*A001110(n)+1`
-/

namespace A164055.P15372426888620218493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001110 n + 1

end

end A164055.P15372426888620218493

namespace A164055

/-- `9*A001110(n)+1` -/
def P15372426888620218493.Spec : Prop :=
  ∀ n, P15372426888620218493.a n = A164055 (n + 1)

end A164055

/-! ## A164055.P11434405735944678530

`A106328(n+1)²+1`
-/

namespace A164055.P11434405735944678530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) ^ 2 + 1

end

end A164055.P11434405735944678530

namespace A164055

/-- `A106328(n+1)²+1` -/
def P11434405735944678530.Spec : Prop :=
  ∀ n, P11434405735944678530.a n = A164055 (n + 1)

end A164055

/-! ## A164055.P16053094722740985003

`(A106329(n+1)-1)*(A106329(n+1)+1)/8`
-/

namespace A164055.P16053094722740985003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A106329 (n + 1) - 1) * (A106329 (n + 1) + 1) : ℚ) / 8

end

end A164055.P16053094722740985003

namespace A164055

/-- `(A106329(n+1)-1)*(A106329(n+1)+1)/8` -/
def P16053094722740985003.Spec : Prop :=
  ∀ n, P16053094722740985003.a n = (A164055 (n + 1) : ℚ)

end A164055

/-! ## A164055.P18188366701386056037

`A164080(n+1)+1`
-/

namespace A164055.P18188366701386056037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164080 (n + 1) + 1

end

end A164055.P18188366701386056037

namespace A164055

/-- `A164080(n+1)+1` -/
def P18188366701386056037.Spec : Prop :=
  ∀ n, P18188366701386056037.a n = A164055 (n + 1)

end A164055

/-! ## A164055.P47087148747042624

`A182334(A033627(n+2))`
-/

namespace A164055.P47087148747042624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182334 (A033627 (n + 2)).toNat

end

end A164055.P47087148747042624

namespace A164055

/-- `A182334(A033627(n+2))` -/
def P47087148747042624.Spec : Prop :=
  ∀ n, P47087148747042624.a n = A164055 (n + 1)

end A164055

/-! ## A164055.P17554091630467663741

`A204504(2*(n+1))+A055792(n+1)`
-/

namespace A164055.P17554091630467663741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204504 (2 * (n + 1)) + A055792 (n + 1)

end

end A164055.P17554091630467663741

namespace A164055

/-- `A204504(2*(n+1))+A055792(n+1)` -/
def P17554091630467663741.Spec : Prop :=
  ∀ n, P17554091630467663741.a n = A164055 (n + 1)

end A164055

/-!
# A164056: Triangle of 2^n terms by rows, derived from A088696 as to length of continued fractions, lengths increase = 1, decrease = 0. A088696 can be generated using the following algorithm: Rows 0 and 1 begin 1; 1,2; then for all further rows, bring down current row then append to the right: (1 added to each term in current row). Row 2 (1, 2, 3, 2) then becomes: (1, 2, 3, 2, 3, 4, 3, 2).

The programs for A164056, the canonical program `A164056.P15299414648682255323` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164056 has offset 0).

The definition of A164056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164056.P6887017713476224553

`log2(gcd(2, A316385(n+1)))`
-/

namespace A164056.P6887017713476224553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A316385 (n + 1)) : ℝ)

end

end A164056.P6887017713476224553

namespace A164056

/-- `log2(gcd(2, A316385(n+1)))` -/
def P6887017713476224553.Spec : Prop :=
  ∀ n, P6887017713476224553.a n = (A164056 n : ℝ)

end A164056

/-! ## A164056.P17472755431077375597

`1-ceil(Δ[atan(A154436(n))])`
-/

namespace A164056.P17472755431077375597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A154436 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈f1 (n + 1) - f1 n⌉

end

end A164056.P17472755431077375597

namespace A164056

/-- `1-ceil(Δ[atan(A154436(n))])` -/
def P17472755431077375597.Spec : Prop :=
  ∀ n, P17472755431077375597.a n = A164056 n

end A164056

/-! ## A164056.P13715760680944499930

`1-A132223(2*n+1)%2`
-/

namespace A164056.P13715760680944499930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A132223 (2 * n + 1)) 2

end

end A164056.P13715760680944499930

namespace A164056

/-- `1-A132223(2*n+1)%2` -/
def P13715760680944499930.Spec : Prop :=
  ∀ n, P13715760680944499930.a n = A164056 n

end A164056

/-! ## A164056.P15299414648682255323

`ceil(Δ[1/A154436(2*n+1)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A164056

/-- `ceil(Δ[1/A154436(2*n+1)])` -/
def P15299414648682255323.Spec : Prop :=
  ∀ n, P15299414648682255323.a n = A164056 n

theorem P15299414648682255323.correct : P15299414648682255323.Spec := by
  intro n
  simp only [A164056]

end A164056

/-! ## A164056.P18379575279124352615

`char[abs(n-A135517(n))+n+1]`
-/

namespace A164056.P18379575279124352615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A135517 n| + (n : ℤ) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164056.P18379575279124352615

namespace A164056

/-- `char[abs(n-A135517(n))+n+1]` -/
def P18379575279124352615.Spec : Prop :=
  ∀ n, (P18379575279124352615.a n : ℤ) = A164056 n

end A164056

/-! ## A164056.P7098911360100297645

`char[2*(n+1)-A135517(n+1)+1]`
-/

namespace A164056.P7098911360100297645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A135517 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A164056.P7098911360100297645

namespace A164056

/-- `char[2*(n+1)-A135517(n+1)+1]` -/
def P7098911360100297645.Spec : Prop :=
  ∀ n, (P7098911360100297645.a n : ℤ) = A164056 n

end A164056

/-! ## A164056.P2929097202556485488

`A014707(A054429(n+1))`
-/

namespace A164056.P2929097202556485488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A054429 (n + 1)).toNat

end

end A164056.P2929097202556485488

namespace A164056

/-- `A014707(A054429(n+1))` -/
def P2929097202556485488.Spec : Prop :=
  ∀ n, P2929097202556485488.a n = A164056 n

end A164056

/-! ## A164056.P16442415132781845583

`A073089(A006257(n+1))`
-/

namespace A164056.P16442415132781845583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A006257 (n + 1)).toNat

end

end A164056.P16442415132781845583

namespace A164056

/-- `A073089(A006257(n+1))` -/
def P16442415132781845583.Spec : Prop :=
  ∀ n, P16442415132781845583.a n = A164056 n

end A164056

/-! ## A164056.P303483477349463704

`A082410(A062050(n+1))`
-/

namespace A164056.P303483477349463704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (A062050 (n + 1)).toNat

end

end A164056.P303483477349463704

namespace A164056

/-- `A082410(A062050(n+1))` -/
def P303483477349463704.Spec : Prop :=
  ∀ n, P303483477349463704.a n = A164056 n

end A164056

/-! ## A164056.P4929329545870304761

`A038189(A122155(n+1))`
-/

namespace A164056.P4929329545870304761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A122155 (n + 1)).toNat

end

end A164056.P4929329545870304761

namespace A164056

/-- `A038189(A122155(n+1))` -/
def P4929329545870304761.Spec : Prop :=
  ∀ n, P4929329545870304761.a n = A164056 n

end A164056

/-! ## A164056.P15037750033053175200

`A038189(A231550(n+1))`
-/

namespace A164056.P15037750033053175200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A231550 (n + 1)).toNat

end

end A164056.P15037750033053175200

namespace A164056

/-- `A038189(A231550(n+1))` -/
def P15037750033053175200.Spec : Prop :=
  ∀ n, P15037750033053175200.a n = A164056 n

end A164056

/-! ## A164056.P10657123127561180585

`A038189(A231551(n+1))`
-/

namespace A164056.P10657123127561180585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A231551 (n + 1)).toNat

end

end A164056.P10657123127561180585

namespace A164056

/-- `A038189(A231551(n+1))` -/
def P10657123127561180585.Spec : Prop :=
  ∀ n, P10657123127561180585.a n = A164056 n

end A164056

/-! ## A164056.P18446379094327126648

`A266719(A003602(n+1))`
-/

namespace A164056.P18446379094327126648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A003602 (n + 1)).toNat

end

end A164056.P18446379094327126648

namespace A164056

/-- `A266719(A003602(n+1))` -/
def P18446379094327126648.Spec : Prop :=
  ∀ n, P18446379094327126648.a n = A164056 n

end A164056

/-! ## A164056.P8933435063221902649

`A014707(A256258(n+1))`
-/

namespace A164056.P8933435063221902649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A256258 (n + 1)).toNat

end

end A164056.P8933435063221902649

namespace A164056

/-- `A014707(A256258(n+1))` -/
def P8933435063221902649.Spec : Prop :=
  ∀ n, P8933435063221902649.a n = A164056 n

end A164056

/-! ## A164056.P333697324280157432

`A266719(A025480(n)+1)`
-/

namespace A164056.P333697324280157432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A025480 n + 1).toNat

end

end A164056.P333697324280157432

namespace A164056

/-- `A266719(A025480(n)+1)` -/
def P333697324280157432.Spec : Prop :=
  ∀ n, P333697324280157432.a n = A164056 n

end A164056

/-! ## A164056.P11433973893891949948

`A079978(A252755(n+1))`
-/

namespace A164056.P11433973893891949948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A252755 (n + 1)).toNat

end

end A164056.P11433973893891949948

namespace A164056

/-- `A079978(A252755(n+1))` -/
def P11433973893891949948.Spec : Prop :=
  ∀ n, P11433973893891949948.a n = A164056 n

end A164056

/-! ## A164056.P6504188924985146420

`A079978(A269385(n+1))`
-/

namespace A164056.P6504188924985146420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A269385 (n + 1)).toNat

end

end A164056.P6504188924985146420

namespace A164056

/-- `A079978(A269385(n+1))` -/
def P6504188924985146420.Spec : Prop :=
  ∀ n, P6504188924985146420.a n = A164056 n

end A164056

/-! ## A164056.P3358646752038173927

`A059841(A316385(n+1))`
-/

namespace A164056.P3358646752038173927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A316385 (n + 1)).toNat

end

end A164056.P3358646752038173927

namespace A164056

/-- `A059841(A316385(n+1))` -/
def P3358646752038173927.Spec : Prop :=
  ∀ n, P3358646752038173927.a n = A164056 n

end A164056

/-! ## A164056.P15660711315333908219

`A059841(A323901(n+1))`
-/

namespace A164056.P15660711315333908219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A323901 (n + 1)).toNat

end

end A164056.P15660711315333908219

namespace A164056

/-- `A059841(A323901(n+1))` -/
def P15660711315333908219.Spec : Prop :=
  ∀ n, P15660711315333908219.a n = A164056 n

end A164056

/-! ## A164056.P10696114641554565599

`A073089(A320561(n+1))`
-/

namespace A164056.P10696114641554565599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A320561 (n + 1)).toNat

end

end A164056.P10696114641554565599

namespace A164056

/-- `A073089(A320561(n+1))` -/
def P10696114641554565599.Spec : Prop :=
  ∀ n, P10696114641554565599.a n = A164056 n

end A164056

/-!
# A164057: Complement to A164056, change A164056 bits (0->1; 1->0). Provides a coding template for Petoukhov matrices, relating to DNA codons.

The programs for A164057, there is no canonical definition to state claims against.
-/

/-! ## A164057.P3905602172411683026

`a(gcd(2*(n-1), floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A164057.P3905602172411683026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (Int.gcd (2 * ((n : ℤ) - 1)) ⌊(n : ℚ) / 2⌋)

end

end A164057.P3905602172411683026

/-! ## A164057.P11371514015791532500

`ceil(sin(((n+1)/2^val(n+1, 2))^atan(2)))`
-/

namespace A164057.P11371514015791532500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ) ^ (Real.arctan (2 : ℝ)))⌉

end

end A164057.P11371514015791532500

/-! ## A164057.P11502642828556526016

`char[(or(n, n+1)+1+n)%((n+1)*∏{p}[n+1, #])]`
-/

namespace A164057.P11502642828556526016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1 + n) % ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A164057.P11502642828556526016

/-! ## A164057.P6243223043699575180

`1-A164056(n)`
-/

namespace A164057.P6243223043699575180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A164056 n

end

end A164057.P6243223043699575180

/-! ## A164057.P6456926808189979842

`ceil(Δ[sqrt(A292264(n))])`
-/

namespace A164057.P6456926808189979842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A292264 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A164057.P6456926808189979842

/-!
# A164060: Prime p of the form a^b - c^d = p, where a, b, c, d are also primes.

The programs for A164060, there is no canonical definition to state claims against.
-/

/-! ## A164060.P1832775032471611649

`eq[A003415(n), A320770(A275332(n))]`
-/

namespace A164060.P1832775032471611649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320770 (A275332 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164060.P1832775032471611649

/-! ## A164060.P12444205440276735932

`A000040(lt[A290554(n+4), A091072(n+1)])`
-/

namespace A164060.P12444205440276735932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290554 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A164060.P12444205440276735932

/-!
# A164061: Prime p1 of the form a^b - c^d = p1, where a, b, c, d are primes and a + b + c + d = p2, where p2 (A164062) is also prime.

The programs for A164061, there is no canonical definition to state claims against.
-/

/-! ## A164061.P9341574928797172701

`A248981(A027305(n)%A008578(3*n+4))`
-/

namespace A164061.P9341574928797172701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248981 (Int.tmod (A027305 n) (A008578 (3 * n + 4))).toNat

end

end A164061.P9341574928797172701

/-! ## A164061.P6198734738814058944

`A248981(A027305(n))`
-/

namespace A164061.P6198734738814058944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248981 (A027305 n).toNat

end

end A164061.P6198734738814058944

/-!
# A164066: Number of partitions of n into Sophie Germain primes.

The programs for A164066, there is no canonical definition to state claims against.
-/

/-! ## A164066.P4567220563674339865

`A153881(A337023(n+1))+A053265(n+3)`
-/

namespace A164066.P4567220563674339865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A337023 (n + 1)).toNat + A053265 (n + 3)

end

end A164066.P4567220563674339865

/-! ## A164066.P5826600426023978288

`A141213(A053265(n+3))-4`
-/

namespace A164066.P5826600426023978288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A053265 (n + 3)).toNat - 4

end

end A164066.P5826600426023978288

/-! ## A164066.P9330234229635775558

`A057428(A079122(n+3))+A053265(n+3)`
-/

namespace A164066.P9330234229635775558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A079122 (n + 3)).toNat + A053265 (n + 3)

end

end A164066.P9330234229635775558

/-! ## A164066.P15048851151914694199

`A053265(n+3)-A057427(A195091(n+4))`
-/

namespace A164066.P15048851151914694199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053265 (n + 3) - A057427 (A195091 (n + 4)).toNat

end

end A164066.P15048851151914694199

/-! ## A164066.P11892914110520487801

`A272437(A053265(n+3)%A064358(2*n+5))`
-/

namespace A164066.P11892914110520487801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272437 (Int.tmod (A053265 (n + 3)) (A064358 (2 * n + 5))).toNat

end

end A164066.P11892914110520487801

/-!
# A164067: Number of partitions of n into distinct Sophie Germain primes.

The programs for A164067, there is no canonical definition to state claims against.
-/

/-! ## A164067.P12453716108923666794

`A180160(Δ[record[A066329(n)]])`
-/

namespace A164067.P12453716108923666794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (f1 (n + 1) - f1 n).toNat

end

end A164067.P12453716108923666794

/-! ## A164067.P18376202913072927652

`A353489(2*n)+A353489(A079607(n+1))`
-/

namespace A164067.P18376202913072927652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (2 * n) + A353489 (A079607 (n + 1)).toNat

end

end A164067.P18376202913072927652

/-! ## A164067.P8615039281832446892

`A003312(n+2)%A020639(A147790(n+8))`
-/

namespace A164067.P8615039281832446892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003312 (n + 2)) (A020639 (A147790 (n + 8)).toNat)

end

end A164067.P8615039281832446892

/-! ## A164067.P9156227530765250871

`A060953(A005100(n+1)*A055572(2*(n+1)))`
-/

namespace A164067.P9156227530765250871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A005100 (n + 1) * A055572 (2 * (n + 1))).toNat

end

end A164067.P9156227530765250871

/-! ## A164067.P10229751899075723134

`A246271(A247368(n)+A003242(n))`
-/

namespace A164067.P10229751899075723134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246271 (A247368 n + A003242 n).toNat

end

end A164067.P10229751899075723134

/-!
# A164072: a(n) = 8*a(n-1) - 14*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A164072, the canonical program `A164072.P16721455752048996142` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164072 has offset 0).

The definition of A164072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-14*a(n-2)` (program `A164072.P16721455752048996142`, by `A164072.P16721455752048996142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164072.P16721455752048996142

`8*a(n-1)-14*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164072

/-- `8*a(n-1)-14*a(n-2)` -/
def P16721455752048996142.Spec : Prop :=
  ∀ n, P16721455752048996142.a n = A164072 n

theorem P16721455752048996142.correct : P16721455752048996142.Spec := by
  intro n
  simp only [A164072]

end A164072

/-! ## A164072.P2645936485925216049

`((2+3*sqrt(2))*(4+sqrt(2))^n+(2-3*sqrt(2))*(4-sqrt(2))^n)/4`
-/

namespace A164072.P2645936485925216049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + 3 * Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (2 - 3 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 4

end

end A164072.P2645936485925216049

namespace A164072

/-- `((2+3*sqrt(2))*(4+sqrt(2))^n+(2-3*sqrt(2))*(4-sqrt(2))^n)/4` -/
def P2645936485925216049.Spec : Prop :=
  ∀ n, P2645936485925216049.a n = (A164072 n : ℝ)

theorem P2645936485925216049.correct : P2645936485925216049.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A164072, Nat.add_sub_cancel, A164072.P2645936485925216049.a, A164072.P16721455752048996142.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A164072, Nat.add_sub_cancel, A164072.P2645936485925216049.a, A164072.P16721455752048996142.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A164072

/-! ## A164072.P4205677775999244542

`ogf((1-x)/(1-8x+14x^2))`
-/

namespace A164072.P4205677775999244542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, 14] n

end

end A164072.P4205677775999244542

namespace A164072

/-- `ogf((1-x)/(1-8x+14x^2))` -/
def P4205677775999244542.Spec : Prop :=
  ∀ n, P4205677775999244542.a n = A164072 n

end A164072

/-! ## A164072.P5840947786462075132

`A163350(n)+A081180(n)`
-/

namespace A164072.P5840947786462075132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + A081180 n

end

end A164072.P5840947786462075132

namespace A164072

/-- `A163350(n)+A081180(n)` -/
def P5840947786462075132.Spec : Prop :=
  ∀ n, P5840947786462075132.a n = A164072 n

end A164072

/-! ## A164072.P897581623289838015

`A161731(n)+2*A081180(n)`
-/

namespace A164072.P897581623289838015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n + 2 * A081180 n

end

end A164072.P897581623289838015

namespace A164072

/-- `A161731(n)+2*A081180(n)` -/
def P897581623289838015.Spec : Prop :=
  ∀ n, P897581623289838015.a n = A164072 n

end A164072

/-! ## A164072.P11836276704368096485

`A163350(n)+A163350(n)-A161731(n)`
-/

namespace A164072.P11836276704368096485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + (A163350 n - A161731 n)

end

end A164072.P11836276704368096485

namespace A164072

/-- `A163350(n)+A163350(n)-A161731(n)` -/
def P11836276704368096485.Spec : Prop :=
  ∀ n, P11836276704368096485.a n = A164072 n

end A164072

/-! ## A164072.P3649183623485755656

`Δ[A081180(n)]`
-/

namespace A164072.P3649183623485755656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164072.P3649183623485755656

namespace A164072

/-- `Δ[A081180(n)]` -/
def P3649183623485755656.Spec : Prop :=
  ∀ n, P3649183623485755656.a n = A164072 n

end A164072

/-! ## A164072.P16670631852752230216

`A081180(n+1)-A081180(n)`
-/

namespace A164072.P16670631852752230216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) - A081180 n

end

end A164072.P16670631852752230216

namespace A164072

/-- `A081180(n+1)-A081180(n)` -/
def P16670631852752230216.Spec : Prop :=
  ∀ n, P16670631852752230216.a n = A164072 n

end A164072

/-! ## A164072.P1146362189784488265

`2*A163350(n)-A161731(n)`
-/

namespace A164072.P1146362189784488265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163350 n - A161731 n

end

end A164072.P1146362189784488265

namespace A164072

/-- `2*A163350(n)-A161731(n)` -/
def P1146362189784488265.Spec : Prop :=
  ∀ n, P1146362189784488265.a n = A164072 n

end A164072

/-!
# A164073: a(n) = 2*a(n-2) for n > 2; a(1) = 1, a(2) = 3.

The programs for A164073, the canonical program `A164073.P6166109323877883918` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164073 has offset 1).

The definition of A164073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A164073.P6166109323877883918`, by `A164073.P6166109323877883918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164073.P6166109323877883918

`2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164073

/-- `2*a(n-2)` -/
def P6166109323877883918.Spec : Prop :=
  ∀ n, (P6166109323877883918.a n : ℤ) = A164073 (n + 1)

theorem P6166109323877883918.correct : P6166109323877883918.Spec := by
  intro n
  simp only [A164073, Nat.add_sub_cancel]

end A164073

/-! ## A164073.P13544219772460471320

`A074323(n+1)`
-/

namespace A164073.P13544219772460471320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 1)

end

end A164073.P13544219772460471320

namespace A164073

/-- `A074323(n+1)` -/
def P13544219772460471320.Spec : Prop :=
  ∀ n, P13544219772460471320.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P9072484723713190165

`(5+(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/4`
-/

namespace A164073.P9072484723713190165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 4

end

end A164073.P9072484723713190165

namespace A164073

/-- `(5+(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/4` -/
def P9072484723713190165.Spec : Prop :=
  ∀ n, P9072484723713190165.a n = (A164073 (n + 1) : ℝ)

end A164073

/-! ## A164073.P1685088547189695820

`ogf((1+3x)/(1-2x^2))`
-/

namespace A164073.P1685088547189695820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -2] n

end

end A164073.P1685088547189695820

namespace A164073

/-- `ogf((1+3x)/(1-2x^2))` -/
def P1685088547189695820.Spec : Prop :=
  ∀ n, P1685088547189695820.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P16297493766043311279

`∏[2/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A164073.P16297493766043311279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164073.P16297493766043311279

namespace A164073

/-- `∏[2/a(n-1)]` -/
def P16297493766043311279.Spec : Prop :=
  ∀ n, P16297493766043311279.a n = (A164073 (n + 1) : ℚ)

end A164073

/-! ## A164073.P5178474039479544772

`2^(log2(a(n-2))+1)` with `a(0)=1, a(1)=3`
-/

namespace A164073.P5178474039479544772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 : ℝ) ^ (Real.logb 2 (a (n - 2)) + 1)

end

end A164073.P5178474039479544772

namespace A164073

/-- `2^(log2(a(n-2))+1)` -/
def P5178474039479544772.Spec : Prop :=
  ∀ n, P5178474039479544772.a n = (A164073 (n + 1) : ℝ)

end A164073

/-! ## A164073.P8504859547024082208

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A164073.P8504859547024082208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 2)

end

end A164073.P8504859547024082208

namespace A164073

/-- `a(n-2)+a(n-2)` -/
def P8504859547024082208.Spec : Prop :=
  ∀ n, (P8504859547024082208.a n : ℤ) = A164073 (n + 1)

theorem P8504859547024082208.correct : P8504859547024082208.Spec := by
  intro n
  simp only [A164073, Nat.add_sub_cancel, A164073.P8504859547024082208.a, A164073.P6166109323877883918.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164073

/-! ## A164073.P8250949542245003482

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A164073.P8250949542245003482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A164073.P8250949542245003482

namespace A164073

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P8250949542245003482.Spec : Prop :=
  ∀ n, P8250949542245003482.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P8206189098089691646

`abs(Δ[A135530(n)])`
-/

namespace A164073.P8206189098089691646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164073.P8206189098089691646

namespace A164073

/-- `abs(Δ[A135530(n)])` -/
def P8206189098089691646.Spec : Prop :=
  ∀ n, P8206189098089691646.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P12984790218100783896

`abs(Δ[A316742(n)])`
-/

namespace A164073.P12984790218100783896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164073.P12984790218100783896

namespace A164073

/-- `abs(Δ[A316742(n)])` -/
def P12984790218100783896.Spec : Prop :=
  ∀ n, P12984790218100783896.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P9447442067773990831

`∑[A137206(n)]+1`
-/

namespace A164073.P9447442067773990831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164073.P9447442067773990831

namespace A164073

/-- `∑[A137206(n)]+1` -/
def P9447442067773990831.Spec : Prop :=
  ∀ n, P9447442067773990831.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P94480758687824002

`abs(Δ[abs(A137206(n+1))])`
-/

namespace A164073.P94480758687824002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137206 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164073.P94480758687824002

namespace A164073

/-- `abs(Δ[abs(A137206(n+1))])` -/
def P94480758687824002.Spec : Prop :=
  ∀ n, P94480758687824002.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P6320639176230127515

`A029744(A014681(n)+1)`
-/

namespace A164073.P6320639176230127515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A014681 n + 1).toNat

end

end A164073.P6320639176230127515

namespace A164073

/-- `A029744(A014681(n)+1)` -/
def P6320639176230127515.Spec : Prop :=
  ∀ n, P6320639176230127515.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P864622608347007948

`A029744(A065190(n+1))`
-/

namespace A164073.P864622608347007948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A065190 (n + 1)).toNat

end

end A164073.P864622608347007948

namespace A164073

/-- `A029744(A065190(n+1))` -/
def P864622608347007948.Spec : Prop :=
  ∀ n, P864622608347007948.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P11246024377900195387

`A308709(A080412(n+1))`
-/

namespace A164073.P11246024377900195387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (A080412 (n + 1)).toNat

end

end A164073.P11246024377900195387

namespace A164073

/-- `A308709(A080412(n+1))` -/
def P11246024377900195387.Spec : Prop :=
  ∀ n, P11246024377900195387.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P15068424068076469176

`A135530(n)-A152166(n)`
-/

namespace A164073.P15068424068076469176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n - A152166 n

end

end A164073.P15068424068076469176

namespace A164073

/-- `A135530(n)-A152166(n)` -/
def P15068424068076469176.Spec : Prop :=
  ∀ n, P15068424068076469176.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P11885345594713257890

`A010684(n)*A016116(n)`
-/

namespace A164073.P11885345594713257890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A016116 n

end

end A164073.P11885345594713257890

namespace A164073

/-- `A010684(n)*A016116(n)` -/
def P11885345594713257890.Spec : Prop :=
  ∀ n, P11885345594713257890.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P6110929804055757425

`lcm(A071044(n), A320770(n))`
-/

namespace A164073.P6110929804055757425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071044 n) (A320770 n)

end

end A164073.P6110929804055757425

namespace A164073

/-- `lcm(A071044(n), A320770(n))` -/
def P6110929804055757425.Spec : Prop :=
  ∀ n, (P6110929804055757425.a n : ℤ) = A164073 (n + 1)

end A164073

/-! ## A164073.P13407015353479483607

`A077957(n+1)+A016116(n)`
-/

namespace A164073.P13407015353479483607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + A016116 n

end

end A164073.P13407015353479483607

namespace A164073

/-- `A077957(n+1)+A016116(n)` -/
def P13407015353479483607.Spec : Prop :=
  ∀ n, P13407015353479483607.a n = A164073 (n + 1)

end A164073

/-! ## A164073.P17967407077920883940

`A131575(n+2)+A016116(n)`
-/

namespace A164073.P17967407077920883940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 2) + A016116 n

end

end A164073.P17967407077920883940

namespace A164073

/-- `A131575(n+2)+A016116(n)` -/
def P17967407077920883940.Spec : Prop :=
  ∀ n, P17967407077920883940.a n = A164073 (n + 1)

end A164073

/-!
# A164074: Prime p of the form a^b + c^d = p, where a, b, c, d are also primes.

The programs for A164074, there is no canonical definition to state claims against.
-/

/-! ## A164074.P6661371037979280129

`A000040(eq[A046951(3*n+1), A111856(n+1)])`
-/

namespace A164074.P6661371037979280129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A164074.P6661371037979280129

/-!
# A164075: Prime p1 of the form a^b + c^d = p1, where a, b, c, d are primes and a + b + c + d = p2, where p2 (A164076) is also prime.

The programs for A164075, there is no canonical definition to state claims against.
-/

/-! ## A164075.P16970354482967813368

`filter[A164074(n+2), A307243(#)]`
-/

namespace A164075.P16970354482967813368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164074 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307243 (f1 j).toNat = 1) n)

end

end A164075.P16970354482967813368

/-!
# A164077: Prime p1 of the form a^b + c^d = p1, where a, b, c, d are primes and a + b + c + d = p2, where p2 (A164078) is prime and conc(abcd) = p3 (concatenation of a, b, c , d) is also prime (A164079).

The programs for A164077, there is no canonical definition to state claims against.
-/

/-! ## A164077.P14562538300706811798

`A164075(or(n, A136799(n+1)))`
-/

namespace A164077.P14562538300706811798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164075 (Int.lor (n : ℤ) (A136799 (n + 1))).toNat

end

end A164077.P14562538300706811798

/-!
# A164080: Perfect squares one less than a triangular number.

The programs for A164080, the canonical program `A164080.P17221288261448324461` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164080 has offset 1).

The definition of A164080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164080.P17221288261448324461

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=9, a(2)=324`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164080

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P17221288261448324461.Spec : Prop :=
  ∀ n, P17221288261448324461.a n = A164080 (n + 1)

theorem P17221288261448324461.correct : P17221288261448324461.Spec := by
  intro n
  simp only [A164080, Nat.add_sub_cancel]

end A164080

/-! ## A164080.P8432569045445370668

`9*A001110(n)`
-/

namespace A164080.P8432569045445370668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001110 n

end

end A164080.P8432569045445370668

namespace A164080

/-- `9*A001110(n)` -/
def P8432569045445370668.Spec : Prop :=
  ∀ n, P8432569045445370668.a n = A164080 (n + 1)

end A164080

/-! ## A164080.P117051665211512058

`A164055(n+1)-1`
-/

namespace A164080.P117051665211512058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164055 (n + 1) - 1

end

end A164080.P117051665211512058

namespace A164080

/-- `A164055(n+1)-1` -/
def P117051665211512058.Spec : Prop :=
  ∀ n, P117051665211512058.a n = A164080 (n + 1)

end A164080

/-! ## A164080.P12055951760169049605

`A072221(n)*(A072221(n)+1)/2-1`
-/

namespace A164080.P12055951760169049605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072221 n * (A072221 n + 1) : ℚ) / 2 - 1

end

end A164080.P12055951760169049605

namespace A164080

/-- `A072221(n)*(A072221(n)+1)/2-1` -/
def P12055951760169049605.Spec : Prop :=
  ∀ n, P12055951760169049605.a n = (A164080 (n + 1) : ℚ)

end A164080

/-! ## A164080.P9092391436225105465

`(3*∑[floor(a(n-1)/(3-sqrt(8)))])²` with `a(0)=0, a(1)=1`
-/

namespace A164080.P9092391436225105465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A164080.P9092391436225105465

namespace A164080

/-- `(3*∑[floor(a(n-1)/(3-sqrt(8)))])²` -/
def P9092391436225105465.Spec : Prop :=
  ∀ n, P9092391436225105465.a n = A164080 (n + 1)

end A164080

/-! ## A164080.P15641824362406031424

`A106328(n+1)²`
-/

namespace A164080.P15641824362406031424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) ^ 2

end

end A164080.P15641824362406031424

namespace A164080

/-- `A106328(n+1)²` -/
def P15641824362406031424.Spec : Prop :=
  ∀ n, P15641824362406031424.a n = A164080 (n + 1)

end A164080

/-! ## A164080.P17915324735365993484

`A108931(2*n)²`
-/

namespace A164080.P17915324735365993484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108931 (2 * n) ^ 2

end

end A164080.P17915324735365993484

namespace A164080

/-- `A108931(2*n)²` -/
def P17915324735365993484.Spec : Prop :=
  ∀ n, P17915324735365993484.a n = A164080 (n + 1)

end A164080

/-! ## A164080.P6373587654333381916

`(3*A001109(n))²`
-/

namespace A164080.P6373587654333381916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A001109 n) ^ 2

end

end A164080.P6373587654333381916

namespace A164080

/-- `(3*A001109(n))²` -/
def P6373587654333381916.Spec : Prop :=
  ∀ n, P6373587654333381916.a n = A164080 (n + 1)

end A164080

/-! ## A164080.P537086999321548664

`(A075848(n)/2)²`
-/

namespace A164080.P537086999321548664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075848 n : ℚ) / 2) ^ 2

end

end A164080.P537086999321548664

namespace A164080

/-- `(A075848(n)/2)²` -/
def P537086999321548664.Spec : Prop :=
  ∀ n, P537086999321548664.a n = (A164080 (n + 1) : ℚ)

end A164080

/-! ## A164080.P7156380494674126928

`A299921(3*n+1)`
-/

namespace A164080.P7156380494674126928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299921 (3 * n + 1)

end

end A164080.P7156380494674126928

namespace A164080

/-- `A299921(3*n+1)` -/
def P7156380494674126928.Spec : Prop :=
  ∀ n, P7156380494674126928.a n = A164080 (n + 1)

end A164080

/-!
# A164081: Floor of 2^(n-1) times the surface area of the unit sphere in 2n-dimensional space.

The programs for A164081, the canonical program `A164081.P833021711580545334` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164081 has offset 1).

The definition of A164081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164081.P833021711580545334

`floor((2*π)^(n+1)/n!)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164081

/-- `floor((2*π)^(n+1)/n!)` -/
def P833021711580545334.Spec : Prop :=
  ∀ n, P833021711580545334.a n = A164081 (n + 1)

theorem P833021711580545334.correct : P833021711580545334.Spec := by
  intro n
  simp only [A164081, Nat.add_sub_cancel]

end A164081

/-!
# A164082: Rounded value of 2^(n-1) times the surface area of the unit sphere in 2n-dimensional space.

The programs for A164082, the canonical program `A164082.P168841657737925136` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164082 has offset 1).

The definition of A164082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164082.P168841657737925136

`round((2*π)^(n+1)/n!)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164082

/-- `round((2*π)^(n+1)/n!)` -/
def P168841657737925136.Spec : Prop :=
  ∀ n, P168841657737925136.a n = A164082 (n + 1)

theorem P168841657737925136.correct : P168841657737925136.Spec := by
  intro n
  simp only [A164082, Nat.add_sub_cancel]

end A164082

/-!
# A164083: Ceiling of 2^(n-1) times the surface area of the unit sphere in 2n-dimensional space.

The programs for A164083, the canonical program `A164083.P15854622076078429763` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164083 has offset 1).

The definition of A164083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164083.P15854622076078429763

`ceil((2*π)^(n+1)/n!)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164083

/-- `ceil((2*π)^(n+1)/n!)` -/
def P15854622076078429763.Spec : Prop :=
  ∀ n, P15854622076078429763.a n = A164083 (n + 1)

theorem P15854622076078429763.correct : P15854622076078429763.Spec := by
  intro n
  simp only [A164083, Nat.add_sub_cancel]

end A164083

/-! ## A164083.P7257475529983094917

`A164081(n+1)+1`
-/

namespace A164083.P7257475529983094917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164081 (n + 1) + 1

end

end A164083.P7257475529983094917

namespace A164083

/-- `A164081(n+1)+1` -/
def P7257475529983094917.Spec : Prop :=
  ∀ n, P7257475529983094917.a n = A164083 (n + 1)

end A164083

/-! ## A164083.P9113416345771289926

`A164082(n+1)+A000161(A087299(n))`
-/

namespace A164083.P9113416345771289926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164082 (n + 1) + A000161 (A087299 n).toNat

end

end A164083.P9113416345771289926

namespace A164083

/-- `A164082(n+1)+A000161(A087299(n))` -/
def P9113416345771289926.Spec : Prop :=
  ∀ n, P9113416345771289926.a n = A164083 (n + 1)

end A164083

/-! ## A164083.P11405889712502131589

`A174897(A000088(n))+A164082(n+1)`
-/

namespace A164083.P11405889712502131589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 (A000088 n).toNat + A164082 (n + 1)

end

end A164083.P11405889712502131589

namespace A164083

/-- `A174897(A000088(n))+A164082(n+1)` -/
def P11405889712502131589.Spec : Prop :=
  ∀ n, P11405889712502131589.a n = A164083 (n + 1)

end A164083

/-! ## A164083.P9766800686737114480

`A164082(n+1)+A008966(A377825(n))`
-/

namespace A164083.P9766800686737114480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164082 (n + 1) + A008966 (A377825 n).toNat

end

end A164083.P9766800686737114480

namespace A164083

/-- `A164082(n+1)+A008966(A377825(n))` -/
def P9766800686737114480.Spec : Prop :=
  ∀ n, P9766800686737114480.a n = A164083 (n + 1)

end A164083

/-!
# A164086: Beatty sequence for 4*Pi/3 = 4.1887902... .

The programs for A164086, the canonical program `A164086.P3229215857082527686` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164086 has offset 1).

The definition of A164086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164086.P3229215857082527686

`floor(4*(n+1)*π/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164086

/-- `floor(4*(n+1)*π/3)` -/
def P3229215857082527686.Spec : Prop :=
  ∀ n, P3229215857082527686.a n = A164086 (n + 1)

theorem P3229215857082527686.correct : P3229215857082527686.Spec := by
  intro n
  simp only [A164086, Nat.add_sub_cancel]

end A164086

/-! ## A164086.P6858640932980001497

`record[A164088(n+1)]`
-/

namespace A164086.P6858640932980001497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164086.P6858640932980001497

namespace A164086

/-- `record[A164088(n+1)]` -/
def P6858640932980001497.Spec : Prop :=
  ∀ n, P6858640932980001497.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P6000567022564877394

`A164088(A164087(n+1))`
-/

namespace A164086.P6000567022564877394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 (A164087 (n + 1)).toNat

end

end A164086.P6000567022564877394

namespace A164086

/-- `A164088(A164087(n+1))` -/
def P6000567022564877394.Spec : Prop :=
  ∀ n, P6000567022564877394.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P7813327455363230928

`A274399(4*(n+1))`
-/

namespace A164086.P7813327455363230928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (4 * (n + 1))

end

end A164086.P7813327455363230928

namespace A164086

/-- `A274399(4*(n+1))` -/
def P7813327455363230928.Spec : Prop :=
  ∀ n, P7813327455363230928.a n = A164086 (n + 1)

theorem P7813327455363230928.correct : P7813327455363230928.Spec := by
  intro n
  simp only [A164086, Nat.add_sub_cancel, A164086.P7813327455363230928.a, A164086.P3229215857082527686.a, A274399, A274399.P16597808757634837479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164086

/-! ## A164086.P13540087952857112218

`record[A274399(xor(3, n)+1)]`
-/

namespace A164086.P13540087952857112218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (Nat.xor 3 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164086.P13540087952857112218

namespace A164086

/-- `record[A274399(xor(3, n)+1)]` -/
def P13540087952857112218.Spec : Prop :=
  ∀ n, P13540087952857112218.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P7340068018267611503

`record[A274399(abs(xor(n, -4)))]`
-/

namespace A164086.P7340068018267611503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 |Int.xor (n : ℤ) (-4)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164086.P7340068018267611503

namespace A164086

/-- `record[A274399(abs(xor(n, -4)))]` -/
def P7340068018267611503.Spec : Prop :=
  ∀ n, P7340068018267611503.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P2175383925081492054

`A002264(A038130(2*(n+1)))`
-/

namespace A164086.P2175383925081492054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A038130 (2 * (n + 1))).toNat

end

end A164086.P2175383925081492054

namespace A164086

/-- `A002264(A038130(2*(n+1)))` -/
def P2175383925081492054.Spec : Prop :=
  ∀ n, P2175383925081492054.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P701276294175326862

`A002264(A022844(4*(n+1)))`
-/

namespace A164086.P701276294175326862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022844 (4 * (n + 1))).toNat

end

end A164086.P701276294175326862

namespace A164086

/-- `A002264(A022844(4*(n+1)))` -/
def P701276294175326862.Spec : Prop :=
  ∀ n, P701276294175326862.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P5646179919583959982

`A002264(A248521(Δ[(2*n+1)²]))`
-/

namespace A164086.P5646179919583959982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A248521 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A164086.P5646179919583959982

namespace A164086

/-- `A002264(A248521(Δ[(2*n+1)²]))` -/
def P5646179919583959982.Spec : Prop :=
  ∀ n, P5646179919583959982.a n = A164086 (n + 1)

end A164086

/-! ## A164086.P1989823015085246531

`A137804(2*(n+1))%A241501(A006530(n+1))`
-/

namespace A164086.P1989823015085246531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137804 (2 * (n + 1))) (A241501 (A006530 (n + 1)).toNat)

end

end A164086.P1989823015085246531

namespace A164086

/-- `A137804(2*(n+1))%A241501(A006530(n+1))` -/
def P1989823015085246531.Spec : Prop :=
  ∀ n, P1989823015085246531.a n = A164086 (n + 1)

end A164086

/-!
# A164087: Beatty sequence for 4*Pi/(4*Pi-3) = 1.3135986... .

The programs for A164087, the canonical program `A164087.P9209647092568716146` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164087 has offset 1).

The definition of A164087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164087.P9209647092568716146

`floor(4*(n+1)*π/(4*π-3))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164087

/-- `floor(4*(n+1)*π/(4*π-3))` -/
def P9209647092568716146.Spec : Prop :=
  ∀ n, P9209647092568716146.a n = A164087 (n + 1)

theorem P9209647092568716146.correct : P9209647092568716146.Spec := by
  intro n
  simp only [A164087, Nat.add_sub_cancel]

end A164087

/-! ## A164087.P8679727503119242426

`comp[floor(π*n*sinh(log(3)))]`
-/

namespace A164087.P8679727503119242426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ) * Real.sinh (Real.log (3 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A164087.P8679727503119242426

namespace A164087

/-- `comp[floor(π*n*sinh(log(3)))]` -/
def P8679727503119242426.Spec : Prop :=
  ∀ n, (P8679727503119242426.a n : ℤ) = A164087 (n + 1)

end A164087

/-! ## A164087.P9450486087016839575

`comp[A164086(n+1)-1]+1`
-/

namespace A164087.P9450486087016839575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164086 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164087.P9450486087016839575

namespace A164087

/-- `comp[A164086(n+1)-1]+1` -/
def P9450486087016839575.Spec : Prop :=
  ∀ n, (P9450486087016839575.a n : ℤ) = A164087 (n + 1)

end A164087

/-! ## A164087.P15527285697754446179

`record[(n+1)%A164088(n+1)]`
-/

namespace A164087.P15527285697754446179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A164088 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164087.P15527285697754446179

namespace A164087

/-- `record[(n+1)%A164088(n+1)]` -/
def P15527285697754446179.Spec : Prop :=
  ∀ n, P15527285697754446179.a n = A164087 (n + 1)

end A164087

/-! ## A164087.P4332575561037722779

`A164088(floor(4*π*(n+1)/3))`
-/

namespace A164087.P4332575561037722779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 ⌊4 * (Real.pi * (n + 1 : ℝ)) / 3⌋.toNat

end

end A164087.P4332575561037722779

namespace A164087

/-- `A164088(floor(4*π*(n+1)/3))` -/
def P4332575561037722779.Spec : Prop :=
  ∀ n, P4332575561037722779.a n = A164087 (n + 1)

end A164087

/-! ## A164087.P13572997951177232607

`A164088(A164086(n+1))%Δ[A007504(n)]`
-/

namespace A164087.P13572997951177232607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164088 (A164086 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A164087.P13572997951177232607

namespace A164087

/-- `A164088(A164086(n+1))%Δ[A007504(n)]` -/
def P13572997951177232607.Spec : Prop :=
  ∀ n, P13572997951177232607.a n = A164087 (n + 1)

end A164087

/-! ## A164087.P14341521017889791915

`A128442(A000096(n+5)+8)%(2*(n+1))`
-/

namespace A164087.P14341521017889791915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128442 (A000096 (n + 5) + 8).toNat) (2 * (n + 1) : ℤ)

end

end A164087.P14341521017889791915

namespace A164087

/-- `A128442(A000096(n+5)+8)%(2*(n+1))` -/
def P14341521017889791915.Spec : Prop :=
  ∀ n, P14341521017889791915.a n = A164087 (n + 1)

end A164087

/-!
# A164088: Self-inverse integer permutation induced by Beatty sequences for 4*Pi/3 and 4*Pi/(4*Pi-3).

The programs for A164088, there is no canonical definition to state claims against.
-/

/-! ## A164088.P12395762197779103596

`A109239(n+1)-A010052(A143418(n+3))`
-/

namespace A164088.P12395762197779103596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (n + 1) - A010052 (A143418 (n + 3)).toNat

end

end A164088.P12395762197779103596

/-! ## A164088.P18352223938714945136

`A109239(n+1)-A085974(A052552(n))`
-/

namespace A164088.P18352223938714945136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (n + 1) - A085974 (A052552 n).toNat

end

end A164088.P18352223938714945136

/-! ## A164088.P14498180074992780115

`A178798(A034839(n))+A109239(n+1)`
-/

namespace A164088.P14498180074992780115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A034839 n).toNat + A109239 (n + 1)

end

end A164088.P14498180074992780115

/-!
# A164089: For n >=4, a(n) = the numerical value of the substring of binary n containing all digits but the first and last. a(1) = a(2) = a(3) = 0.

The programs for A164089, the canonical program `A164089.P9313463081919844989` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164089 has offset 1).

The definition of A164089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164089.P9313463081919844989

`(n-a(n-1))%(a(n-1)-floor(n/2))` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164089

/-- `(n-a(n-1))%(a(n-1)-floor(n/2))` -/
def P9313463081919844989.Spec : Prop :=
  ∀ n, P9313463081919844989.a n = A164089 (n + 1)

theorem P9313463081919844989.correct : P9313463081919844989.Spec := by
  intro n
  simp only [A164089, Nat.add_sub_cancel]

end A164089

/-! ## A164089.P6803011148545607703

`floor(A053645(n+1)/2)`
-/

namespace A164089.P6803011148545607703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053645 (n + 1) : ℚ) / 2⌋

end

end A164089.P6803011148545607703

namespace A164089

/-- `floor(A053645(n+1)/2)` -/
def P6803011148545607703.Spec : Prop :=
  ∀ n, P6803011148545607703.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P1956661680472692405

`floor(A006257(n+1)/4)`
-/

namespace A164089.P1956661680472692405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 (n + 1) : ℚ) / 4⌋

end

end A164089.P1956661680472692405

namespace A164089

/-- `floor(A006257(n+1)/4)` -/
def P1956661680472692405.Spec : Prop :=
  ∀ n, P1956661680472692405.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P16832301365349544673

`A087734(n-a(n-1))` with `a(0)=0`
-/

namespace A164089.P16832301365349544673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087734 ((n : ℤ) - a (n - 1)).toNat

end

end A164089.P16832301365349544673

namespace A164089

/-- `A087734(n-a(n-1))` -/
def P16832301365349544673.Spec : Prop :=
  ∀ n, P16832301365349544673.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P10883791184210126096

`ceil(A062050(n+1)/2)-1`
-/

namespace A164089.P10883791184210126096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062050 (n + 1) : ℚ) / 2⌉ - 1

end

end A164089.P10883791184210126096

namespace A164089

/-- `ceil(A062050(n+1)/2)-1` -/
def P10883791184210126096.Spec : Prop :=
  ∀ n, P10883791184210126096.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P4137897324319563039

`floor((n-A092323(n+1))/2)`
-/

namespace A164089.P4137897324319563039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A092323 (n + 1) : ℚ) / 2⌋

end

end A164089.P4137897324319563039

namespace A164089

/-- `floor((n-A092323(n+1))/2)` -/
def P4137897324319563039.Spec : Prop :=
  ∀ n, P4137897324319563039.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P17948522290602119910

`floor(and(2*(n+1), A003817(n))/4)`
-/

namespace A164089.P17948522290602119910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (2 * (n + 1) : ℤ) (A003817 n) : ℚ) / 4⌋

end

end A164089.P17948522290602119910

namespace A164089

/-- `floor(and(2*(n+1), A003817(n))/4)` -/
def P17948522290602119910.Spec : Prop :=
  ∀ n, P17948522290602119910.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P11251450452811014809

`A053645(A065033(n))`
-/

namespace A164089.P11251450452811014809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A065033 n).toNat

end

end A164089.P11251450452811014809

namespace A164089

/-- `A053645(A065033(n))` -/
def P11251450452811014809.Spec : Prop :=
  ∀ n, P11251450452811014809.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P13472891193845485813

`A002265(A006257(n+1))`
-/

namespace A164089.P13472891193845485813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A006257 (n + 1)).toNat

end

end A164089.P13472891193845485813

namespace A164089

/-- `A002265(A006257(n+1))` -/
def P13472891193845485813.Spec : Prop :=
  ∀ n, P13472891193845485813.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P16313556292591479336

`A004526(A053645(n+1))`
-/

namespace A164089.P16313556292591479336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053645 (n + 1)).toNat

end

end A164089.P16313556292591479336

namespace A164089

/-- `A004526(A053645(n+1))` -/
def P16313556292591479336.Spec : Prop :=
  ∀ n, P16313556292591479336.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P4149901153373020399

`A038554(A292600(n+1))`
-/

namespace A164089.P4149901153373020399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A292600 (n + 1)).toNat

end

end A164089.P4149901153373020399

namespace A164089

/-- `A038554(A292600(n+1))` -/
def P4149901153373020399.Spec : Prop :=
  ∀ n, P4149901153373020399.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P9471029697376368541

`A002265(2*A053645(n+1))`
-/

namespace A164089.P9471029697376368541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A053645 (n + 1)).toNat

end

end A164089.P9471029697376368541

namespace A164089

/-- `A002265(2*A053645(n+1))` -/
def P9471029697376368541.Spec : Prop :=
  ∀ n, P9471029697376368541.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P4176459023699163115

`A004526(and(n+1, A086099(n)))`
-/

namespace A164089.P4176459023699163115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (n + 1 : ℤ) (A086099 n)).toNat

end

end A164089.P4176459023699163115

namespace A164089

/-- `A004526(and(n+1, A086099(n)))` -/
def P4176459023699163115.Spec : Prop :=
  ∀ n, P4176459023699163115.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P801970947587375121

`A110654(A053645(n+1)+1)-1`
-/

namespace A164089.P801970947587375121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053645 (n + 1) + 1).toNat - 1

end

end A164089.P801970947587375121

namespace A164089

/-- `A110654(A053645(n+1)+1)-1` -/
def P801970947587375121.Spec : Prop :=
  ∀ n, P801970947587375121.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P3664610025694106126

`A008619(A062050(n+1)+1)-2`
-/

namespace A164089.P3664610025694106126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A062050 (n + 1) + 1).toNat - 2

end

end A164089.P3664610025694106126

namespace A164089

/-- `A008619(A062050(n+1)+1)-2` -/
def P3664610025694106126.Spec : Prop :=
  ∀ n, P3664610025694106126.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P2186327446217492141

`A123108(A053645(n+1)+2)-1`
-/

namespace A164089.P2186327446217492141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A053645 (n + 1) + 2).toNat - 1

end

end A164089.P2186327446217492141

namespace A164089

/-- `A123108(A053645(n+1)+2)-1` -/
def P2186327446217492141.Spec : Prop :=
  ∀ n, P2186327446217492141.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P17046254814893214481

`A004526(n+1-A053644(n+1))`
-/

namespace A164089.P17046254814893214481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A053644 (n + 1)).toNat

end

end A164089.P17046254814893214481

namespace A164089

/-- `A004526(n+1-A053644(n+1))` -/
def P17046254814893214481.Spec : Prop :=
  ∀ n, P17046254814893214481.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P1052851776445319033

`xor(A003188(n+1), A063946(n+1))`
-/

namespace A164089.P1052851776445319033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (n + 1)) (A063946 (n + 1))

end

end A164089.P1052851776445319033

namespace A164089

/-- `xor(A003188(n+1), A063946(n+1))` -/
def P1052851776445319033.Spec : Prop :=
  ∀ n, P1052851776445319033.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P16859106901388013242

`A002265(2*abs(A003817(ceil(n/2))-n))`
-/

namespace A164089.P16859106901388013242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * |A003817 ⌈(n : ℚ) / 2⌉.toNat - (n : ℤ)|).toNat

end

end A164089.P16859106901388013242

namespace A164089

/-- `A002265(2*abs(A003817(ceil(n/2))-n))` -/
def P16859106901388013242.Spec : Prop :=
  ∀ n, P16859106901388013242.a n = A164089 (n + 1)

end A164089

/-! ## A164089.P609734719495880184

`A004526(A006257(n-A004526(n)))`
-/

namespace A164089.P609734719495880184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006257 ((n : ℤ) - A004526 n).toNat).toNat

end

end A164089.P609734719495880184

namespace A164089

/-- `A004526(A006257(n-A004526(n)))` -/
def P609734719495880184.Spec : Prop :=
  ∀ n, P609734719495880184.a n = A164089 (n + 1)

end A164089

/-!
# A164090: a(n) = 2*a(n-2) for n > 2; a(1) = 2, a(2) = 3.

The programs for A164090, the canonical program `A164090.P6257059095248151761` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164090 has offset 1).

The definition of A164090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A164090.P6257059095248151761`, by `A164090.P6257059095248151761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164090.P6257059095248151761

`2*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164090

/-- `2*a(n-2)` -/
def P6257059095248151761.Spec : Prop :=
  ∀ n, (P6257059095248151761.a n : ℤ) = A164090 (n + 1)

theorem P6257059095248151761.correct : P6257059095248151761.Spec := by
  intro n
  simp only [A164090, Nat.add_sub_cancel]

end A164090

/-! ## A164090.P7864942628097630532

`A052955(n)+1`
-/

namespace A164090.P7864942628097630532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + 1

end

end A164090.P7864942628097630532

namespace A164090

/-- `A052955(n)+1` -/
def P7864942628097630532.Spec : Prop :=
  ∀ n, P7864942628097630532.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P17862416602426715260

`A029744(n+2)`
-/

namespace A164090.P17862416602426715260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2)

end

end A164090.P17862416602426715260

namespace A164090

/-- `A029744(n+2)` -/
def P17862416602426715260.Spec : Prop :=
  ∀ n, P17862416602426715260.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P14525296171845293536

`(7-(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/4`
-/

namespace A164090.P14525296171845293536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 - (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 4

end

end A164090.P14525296171845293536

namespace A164090

/-- `(7-(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/4` -/
def P14525296171845293536.Spec : Prop :=
  ∀ n, P14525296171845293536.a n = (A164090 (n + 1) : ℝ)

end A164090

/-! ## A164090.P12189060161042855569

`A070875(n+1)-A070875(n)`
-/

namespace A164090.P12189060161042855569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (n + 1) - A070875 n

end

end A164090.P12189060161042855569

namespace A164090

/-- `A070875(n+1)-A070875(n)` -/
def P12189060161042855569.Spec : Prop :=
  ∀ n, P12189060161042855569.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P12418571383210418891

`ogf((2+3x)/(1-2x^2))`
-/

namespace A164090.P12418571383210418891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, 0, -2] n

end

end A164090.P12418571383210418891

namespace A164090

/-- `ogf((2+3x)/(1-2x^2))` -/
def P12418571383210418891.Spec : Prop :=
  ∀ n, P12418571383210418891.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P15747195291023031485

`2^(log2(a(n-2))+1)` with `a(0)=2, a(1)=3`
-/

namespace A164090.P15747195291023031485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3] fun n a =>
  (2 : ℝ) ^ (Real.logb 2 (a (n - 2)) + 1)

end

end A164090.P15747195291023031485

namespace A164090

/-- `2^(log2(a(n-2))+1)` -/
def P15747195291023031485.Spec : Prop :=
  ∀ n, P15747195291023031485.a n = (A164090 (n + 1) : ℝ)

end A164090

/-! ## A164090.P4496765328220263802

`a(n-2)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A164090.P4496765328220263802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (n - 2)

end

end A164090.P4496765328220263802

namespace A164090

/-- `a(n-2)+a(n-2)` -/
def P4496765328220263802.Spec : Prop :=
  ∀ n, (P4496765328220263802.a n : ℤ) = A164090 (n + 1)

theorem P4496765328220263802.correct : P4496765328220263802.Spec := by
  intro n
  simp only [A164090, Nat.add_sub_cancel, A164090.P4496765328220263802.a, A164090.P6257059095248151761.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164090

/-! ## A164090.P6573515228527230791

`∑[2^∑[a(n-2)²]]` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A164090.P6573515228527230791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164090.P6573515228527230791

namespace A164090

/-- `∑[2^∑[a(n-2)²]]` -/
def P6573515228527230791.Spec : Prop :=
  ∀ n, P6573515228527230791.a n = (A164090 (n + 1) : ℚ)

end A164090

/-! ## A164090.P13355592217169098886

`∑[2^∑[1-a(n-1)]]` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A164090.P13355592217169098886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164090.P13355592217169098886

namespace A164090

/-- `∑[2^∑[1-a(n-1)]]` -/
def P13355592217169098886.Spec : Prop :=
  ∀ n, P13355592217169098886.a n = (A164090 (n + 1) : ℚ)

end A164090

/-! ## A164090.P1679971445786601627

`(4-n%2)*2^floor((n-1)/2)`
-/

namespace A164090.P1679971445786601627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - ((n % 2 : ℕ) : ℤ) : ℚ) * (2 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ)

end

end A164090.P1679971445786601627

namespace A164090

/-- `(4-n%2)*2^floor((n-1)/2)` -/
def P1679971445786601627.Spec : Prop :=
  ∀ n, P1679971445786601627.a n = (A164090 (n + 1) : ℚ)

end A164090

/-! ## A164090.P8184573235241225232

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A164090.P8184573235241225232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A164090.P8184573235241225232

namespace A164090

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P8184573235241225232.Spec : Prop :=
  ∀ n, P8184573235241225232.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P12247933647420503753

`a(n-1)-(a(n-1)%a(n-2)-a(n-2))%a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A164090.P12247933647420503753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - Int.tmod (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 2)) (a (n - 1))

end

end A164090.P12247933647420503753

namespace A164090

/-- `a(n-1)-(a(n-1)%a(n-2)-a(n-2))%a(n-1)` -/
def P12247933647420503753.Spec : Prop :=
  ∀ n, P12247933647420503753.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P1427399239413366611

`A209721(n+1)-1`
-/

namespace A164090.P1427399239413366611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) - 1

end

end A164090.P1427399239413366611

namespace A164090

/-- `A209721(n+1)-1` -/
def P1427399239413366611.Spec : Prop :=
  ∀ n, P1427399239413366611.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P458152613857062272

`A209722(n+1)-2`
-/

namespace A164090.P458152613857062272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) - 2

end

end A164090.P458152613857062272

namespace A164090

/-- `A209722(n+1)-2` -/
def P458152613857062272.Spec : Prop :=
  ∀ n, P458152613857062272.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P7262775192401740615

`A209723(n+1)-4`
-/

namespace A164090.P7262775192401740615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) - 4

end

end A164090.P7262775192401740615

namespace A164090

/-- `A209723(n+1)-4` -/
def P7262775192401740615.Spec : Prop :=
  ∀ n, P7262775192401740615.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P5113832690151881527

`A209724(n+1)-6`
-/

namespace A164090.P5113832690151881527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) - 6

end

end A164090.P5113832690151881527

namespace A164090

/-- `A209724(n+1)-6` -/
def P5113832690151881527.Spec : Prop :=
  ∀ n, P5113832690151881527.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P8886150675725330130

`∑{d}[n+1, A056493(#)]`
-/

namespace A164090.P8886150675725330130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056493 d

end

end A164090.P8886150675725330130

namespace A164090

/-- `∑{d}[n+1, A056493(#)]` -/
def P8886150675725330130.Spec : Prop :=
  ∀ n, P8886150675725330130.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P13065589546177442092

`gcd(2, n)*A164073(n+1)`
-/

namespace A164090.P13065589546177442092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A164073 (n + 1)

end

end A164090.P13065589546177442092

namespace A164090

/-- `gcd(2, n)*A164073(n+1)` -/
def P13065589546177442092.Spec : Prop :=
  ∀ n, P13065589546177442092.a n = A164090 (n + 1)

end A164090

/-! ## A164090.P9190418435546074716

`A029750(A004271(n+2))`
-/

namespace A164090.P9190418435546074716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A004271 (n + 2)).toNat

end

end A164090.P9190418435546074716

namespace A164090

/-- `A029750(A004271(n+2))` -/
def P9190418435546074716.Spec : Prop :=
  ∀ n, P9190418435546074716.a n = A164090 (n + 1)

end A164090

/-!
# A164092: Triangle by 2^n term rows, codes used for generating Petoukhov matrices in a Gray code format.

The programs for A164092, there is no canonical definition to state claims against.
-/

/-! ## A164092.P8737538812326015203

`A320042(2^floor(log2(n+1))+n+1)+1`
-/

namespace A164092.P8737538812326015203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (2 ^ Nat.log 2 (n + 1) + (n + 1)) + 1

end

end A164092.P8737538812326015203

/-! ## A164092.P5417492364028172467

`A320042(A004756(n+1))`
-/

namespace A164092.P5417492364028172467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (A004756 (n + 1)).toNat

end

end A164092.P5417492364028172467

/-! ## A164092.P16311688658604651740

`A320042(A004758(n+1))`
-/

namespace A164092.P16311688658604651740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (A004758 (n + 1)).toNat

end

end A164092.P16311688658604651740

/-! ## A164092.P7335299313893177733

`A320042(A054429(n+1))`
-/

namespace A164092.P7335299313893177733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (A054429 (n + 1)).toNat

end

end A164092.P7335299313893177733

/-! ## A164092.P2053140378654380287

`A320042(A318934(n+2))`
-/

namespace A164092.P2053140378654380287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (A318934 (n + 2)).toNat

end

end A164092.P2053140378654380287

/-!
# A164093: a(n) = 9*4^n + 2.

The programs for A164093, the canonical program `A164093.P4546873687502798517` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164093 has offset 1).

The definition of A164093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*4^(n+1)+2` (program `A164093.P4546873687502798517`, by `A164093.P4546873687502798517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164093.P4546873687502798517

`9*4^(n+1)+2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164093

/-- `9*4^(n+1)+2` -/
def P4546873687502798517.Spec : Prop :=
  ∀ n, (P4546873687502798517.a n : ℤ) = A164093 (n + 1)

theorem P4546873687502798517.correct : P4546873687502798517.Spec := by
  intro n
  simp only [A164093, Nat.add_sub_cancel]

end A164093

/-! ## A164093.P17761594515841457415

`or(2, (6*2^n)²)`
-/

namespace A164093.P17761594515841457415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((6 * 2 ^ n) ^ 2)

end

end A164093.P17761594515841457415

namespace A164093

/-- `or(2, (6*2^n)²)` -/
def P17761594515841457415.Spec : Prop :=
  ∀ n, (P17761594515841457415.a n : ℤ) = A164093 (n + 1)

end A164093

/-! ## A164093.P4503160045504667630

`xor(2, (6*2^n)²)`
-/

namespace A164093.P4503160045504667630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((6 * 2 ^ n) ^ 2)

end

end A164093.P4503160045504667630

namespace A164093

/-- `xor(2, (6*2^n)²)` -/
def P4503160045504667630.Spec : Prop :=
  ∀ n, (P4503160045504667630.a n : ℤ) = A164093 (n + 1)

end A164093

/-! ## A164093.P11490557754674324854

`Δ[xor(12*4^n, 2*n)]`
-/

namespace A164093.P11490557754674324854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (12 * 4 ^ n) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164093.P11490557754674324854

namespace A164093

/-- `Δ[xor(12*4^n, 2*n)]` -/
def P11490557754674324854.Spec : Prop :=
  ∀ n, P11490557754674324854.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P17602169629156045623

`2*(2*a(n-1)-3)` with `a(0)=38`
-/

namespace A164093.P17602169629156045623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [38] fun n a =>
  2 * (2 * a (n - 1) - 3)

end

end A164093.P17602169629156045623

namespace A164093

/-- `2*(2*a(n-1)-3)` -/
def P17602169629156045623.Spec : Prop :=
  ∀ n, P17602169629156045623.a n = A164093 (n + 1)

theorem P17602169629156045623.correct : P17602169629156045623.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164093, Nat.add_sub_cancel, A164093.P17602169629156045623.a, A164093.P4546873687502798517.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164093, Nat.add_sub_cancel, A164093.P17602169629156045623.a, A164093.P4546873687502798517.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164093

/-! ## A164093.P12563453498756480327

`2*A083705(Δ[n²])`
-/

namespace A164093.P12563453498756480327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A164093.P12563453498756480327

namespace A164093

/-- `2*A083705(Δ[n²])` -/
def P12563453498756480327.Spec : Prop :=
  ∀ n, P12563453498756480327.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P16666880417274275374

`2*(Δ[A002023(n)]+1)`
-/

namespace A164093.P16666880417274275374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A164093.P16666880417274275374

namespace A164093

/-- `2*(Δ[A002023(n)]+1)` -/
def P16666880417274275374.Spec : Prop :=
  ∀ n, P16666880417274275374.a n = A164093 (n + 1)

theorem P16666880417274275374.correct : P16666880417274275374.Spec := by
  intro n
  simp only [A164093, Nat.add_sub_cancel, A164093.P16666880417274275374.f1, A164093.P16666880417274275374.a, A164093.P4546873687502798517.a, A002023, A002023.P733771793984427241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164093

/-! ## A164093.P6495278971308578968

`Δ[A275970(2*(n+1))]`
-/

namespace A164093.P6495278971308578968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275970 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164093.P6495278971308578968

namespace A164093

/-- `Δ[A275970(2*(n+1))]` -/
def P6495278971308578968.Spec : Prop :=
  ∀ n, P6495278971308578968.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P13084525213153986041

`2*(9*A081294(n+1)+1)`
-/

namespace A164093.P13084525213153986041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (9 * A081294 (n + 1) + 1)

end

end A164093.P13084525213153986041

namespace A164093

/-- `2*(9*A081294(n+1)+1)` -/
def P13084525213153986041.Spec : Prop :=
  ∀ n, P13084525213153986041.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P17310009107964223625

`2*(Δ[A033484(2*n+1)]+1)`
-/

namespace A164093.P17310009107964223625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A164093.P17310009107964223625

namespace A164093

/-- `2*(Δ[A033484(2*n+1)]+1)` -/
def P17310009107964223625.Spec : Prop :=
  ∀ n, P17310009107964223625.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P9827420133516337950

`Δ[12*A000079(n)²+2*n+1]`
-/

namespace A164093.P9827420133516337950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000079 n ^ 2 + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164093.P9827420133516337950

namespace A164093

/-- `Δ[12*A000079(n)²+2*n+1]` -/
def P9827420133516337950.Spec : Prop :=
  ∀ n, P9827420133516337950.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P12884927903280281332

`Δ[Δ[A000079(2*(n+1))]+2*n+1]`
-/

namespace A164093.P12884927903280281332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164093.P12884927903280281332

namespace A164093

/-- `Δ[Δ[A000079(2*(n+1))]+2*n+1]` -/
def P12884927903280281332.Spec : Prop :=
  ∀ n, P12884927903280281332.a n = A164093 (n + 1)

end A164093

/-! ## A164093.P12482104249391247695

`Δ[Δ[A058968(2*n+3)]-A058968(2*(n+2))]`
-/

namespace A164093.P12482104249391247695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058968 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A058968 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164093.P12482104249391247695

namespace A164093

/-- `Δ[Δ[A058968(2*n+3)]-A058968(2*(n+2))]` -/
def P12482104249391247695.Spec : Prop :=
  ∀ n, P12482104249391247695.a n = A164093 (n + 1)

end A164093

/-!
# A164094: a(n) = 3*2^n + 2.

The programs for A164094, the canonical program `A164094.P5637307154488565271` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164094 has offset 0).

The definition of A164094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+2` (program `A164094.P5637307154488565271`, by `A164094.P5637307154488565271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164094.P5637307154488565271

`3*2^n+2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164094

/-- `3*2^n+2` -/
def P5637307154488565271.Spec : Prop :=
  ∀ n, (P5637307154488565271.a n : ℤ) = A164094 n

theorem P5637307154488565271.correct : P5637307154488565271.Spec := by
  intro n
  simp only [A164094]

end A164094

/-! ## A164094.P14329381017036087911

`ogf((5-7x)/(1-3x+2x^2))`
-/

namespace A164094.P14329381017036087911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7] [1, -3, 2] n

end

end A164094.P14329381017036087911

namespace A164094

/-- `ogf((5-7x)/(1-3x+2x^2))` -/
def P14329381017036087911.Spec : Prop :=
  ∀ n, P14329381017036087911.a n = A164094 n

end A164094

/-! ## A164094.P15033684757006229090

`2*(a(n-1)-1)` with `a(0)=5`
-/

namespace A164094.P15033684757006229090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * (a (n - 1) - 1)

end

end A164094.P15033684757006229090

namespace A164094

/-- `2*(a(n-1)-1)` -/
def P15033684757006229090.Spec : Prop :=
  ∀ n, P15033684757006229090.a n = A164094 n

theorem P15033684757006229090.correct : P15033684757006229090.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P15033684757006229090.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P15033684757006229090.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P15802272080638946897

`lcm(2, 1-a(n-1))` with `a(0)=5, a(1)=8`
-/

namespace A164094.P15802272080638946897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n a =>
  Int.lcm 2 (1 - (a (n - 1) : ℤ))

end

end A164094.P15802272080638946897

namespace A164094

/-- `lcm(2, 1-a(n-1))` -/
def P15802272080638946897.Spec : Prop :=
  ∀ n, (P15802272080638946897.a n : ℤ) = A164094 n

end A164094

/-! ## A164094.P8381619418036721200

`(1-a(n-1))/(1/2-1)` with `a(0)=5`
-/

namespace A164094.P8381619418036721200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (1 - a (n - 1)) / ((1 : ℚ) / 2 - 1)

end

end A164094.P8381619418036721200

namespace A164094

/-- `(1-a(n-1))/(1/2-1)` -/
def P8381619418036721200.Spec : Prop :=
  ∀ n, P8381619418036721200.a n = (A164094 n : ℚ)

theorem P8381619418036721200.correct : P8381619418036721200.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P8381619418036721200.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P8381619418036721200.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P15052584393520636296

`abs(a(n-1)+a(n-1)-2)` with `a(0)=5`
-/

namespace A164094.P15052584393520636296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |a (n - 1) + (a (n - 1) - 2)|

end

end A164094.P15052584393520636296

namespace A164094

/-- `abs(a(n-1)+a(n-1)-2)` -/
def P15052584393520636296.Spec : Prop :=
  ∀ n, P15052584393520636296.a n = A164094 n

end A164094

/-! ## A164094.P11112597836019579386

`abs(2-a(n-1)-a(n-1))` with `a(0)=5`
-/

namespace A164094.P11112597836019579386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |2 - a (n - 1) - a (n - 1)|

end

end A164094.P11112597836019579386

namespace A164094

/-- `abs(2-a(n-1)-a(n-1))` -/
def P11112597836019579386.Spec : Prop :=
  ∀ n, P11112597836019579386.a n = A164094 n

end A164094

/-! ## A164094.P11427220663432137035

`floor(a(n-1)+a(n-1)-2)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A164094.P11427220663432137035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A164094.P11427220663432137035

namespace A164094

/-- `floor(a(n-1)+a(n-1)-2)` -/
def P11427220663432137035.Spec : Prop :=
  ∀ n, P11427220663432137035.a n = A164094 n

theorem P11427220663432137035.correct : P11427220663432137035.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P11427220663432137035.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P11427220663432137035.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P11674991709573072765

`floor(a(n-1)-(2-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A164094.P11674991709573072765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A164094.P11674991709573072765

namespace A164094

/-- `floor(a(n-1)-(2-a(n-1)))` -/
def P11674991709573072765.Spec : Prop :=
  ∀ n, P11674991709573072765.a n = A164094 n

theorem P11674991709573072765.correct : P11674991709573072765.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P11674991709573072765.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P11674991709573072765.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P7676116522385979331

`ceil(a(n-1)+a(n-1)-2)` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A164094.P7676116522385979331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A164094.P7676116522385979331

namespace A164094

/-- `ceil(a(n-1)+a(n-1)-2)` -/
def P7676116522385979331.Spec : Prop :=
  ∀ n, P7676116522385979331.a n = A164094 n

theorem P7676116522385979331.correct : P7676116522385979331.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P7676116522385979331.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P7676116522385979331.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P7443378328460686652

`ceil(a(n-1)-(2-a(n-1)))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A164094.P7443378328460686652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A164094.P7443378328460686652

namespace A164094

/-- `ceil(a(n-1)-(2-a(n-1)))` -/
def P7443378328460686652.Spec : Prop :=
  ∀ n, P7443378328460686652.a n = A164094 n

theorem P7443378328460686652.correct : P7443378328460686652.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P7443378328460686652.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P7443378328460686652.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P6375554838735489076

`round(a(n-1)+a(n-1)-2)` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A164094.P6375554838735489076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A164094.P6375554838735489076

namespace A164094

/-- `round(a(n-1)+a(n-1)-2)` -/
def P6375554838735489076.Spec : Prop :=
  ∀ n, P6375554838735489076.a n = A164094 n

theorem P6375554838735489076.correct : P6375554838735489076.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P6375554838735489076.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P6375554838735489076.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P13126815765878808495

`round(a(n-1)-(2-a(n-1)))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A164094.P13126815765878808495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A164094.P13126815765878808495

namespace A164094

/-- `round(a(n-1)-(2-a(n-1)))` -/
def P13126815765878808495.Spec : Prop :=
  ∀ n, P13126815765878808495.a n = A164094 n

theorem P13126815765878808495.correct : P13126815765878808495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164094, Nat.add_sub_cancel, A164094.P13126815765878808495.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164094, Nat.add_sub_cancel, A164094.P13126815765878808495.a, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164094

/-! ## A164094.P2124825277458641713

`xor(1, a(n-1)+a(n-1)-1)` with `a(0)=5`
-/

namespace A164094.P2124825277458641713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor 1 (a (n - 1) + (a (n - 1) - 1))

end

end A164094.P2124825277458641713

namespace A164094

/-- `xor(1, a(n-1)+a(n-1)-1)` -/
def P2124825277458641713.Spec : Prop :=
  ∀ n, P2124825277458641713.a n = A164094 n

end A164094

/-! ## A164094.P1655125754274674782

`xor(1, a(n-1)-(1-a(n-1)))` with `a(0)=5`
-/

namespace A164094.P1655125754274674782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor 1 (a (n - 1) - (1 - a (n - 1)))

end

end A164094.P1655125754274674782

namespace A164094

/-- `xor(1, a(n-1)-(1-a(n-1)))` -/
def P1655125754274674782.Spec : Prop :=
  ∀ n, P1655125754274674782.a n = A164094 n

end A164094

/-! ## A164094.P11698928049623317146

`record[a(n-2)+a(n-2)-2]` with `a(0)=5, a(1)=0`
-/

namespace A164094.P11698928049623317146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164094.P11698928049623317146

namespace A164094

/-- `record[a(n-2)+a(n-2)-2]` -/
def P11698928049623317146.Spec : Prop :=
  ∀ n, P11698928049623317146.a n = A164094 n

end A164094

/-! ## A164094.P9117921887092933426

`record[a(n-2)-(2-a(n-2))]` with `a(0)=5, a(1)=0`
-/

namespace A164094.P9117921887092933426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 2) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164094.P9117921887092933426

namespace A164094

/-- `record[a(n-2)-(2-a(n-2))]` -/
def P9117921887092933426.Spec : Prop :=
  ∀ n, P9117921887092933426.a n = A164094 n

end A164094

/-! ## A164094.P12944741910328802141

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=5, a(1)=3, a(2)=6`
-/

namespace A164094.P12944741910328802141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 3, 6] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164094.P12944741910328802141

namespace A164094

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P12944741910328802141.Spec : Prop :=
  ∀ n, (P12944741910328802141.a n : ℤ) = A164094 n

end A164094

/-! ## A164094.P10873053436428822582

`A209722(2*(n+1))`
-/

namespace A164094.P10873053436428822582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (2 * (n + 1))

end

end A164094.P10873053436428822582

namespace A164094

/-- `A209722(2*(n+1))` -/
def P10873053436428822582.Spec : Prop :=
  ∀ n, P10873053436428822582.a n = A164094 n

end A164094

/-! ## A164094.P11361750342482292194

`Δ[A381790(n)]`
-/

namespace A164094.P11361750342482292194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164094.P11361750342482292194

namespace A164094

/-- `Δ[A381790(n)]` -/
def P11361750342482292194.Spec : Prop :=
  ∀ n, P11361750342482292194.a n = A164094 n

theorem P11361750342482292194.correct : P11361750342482292194.Spec := by
  intro n
  simp only [A164094, Nat.add_sub_cancel, A164094.P11361750342482292194.f1, A164094.P11361750342482292194.a, A164094.P5637307154488565271.a, A381790, A381790.P16872906337044102897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A164094

/-!
# A164095: a(n) = 2*a(n-2) for n > 2; a(1) = 5, a(2) = 6.

The programs for A164095, the canonical program `A164095.P7744539145058880923` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164095 has offset 1).

The definition of A164095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A164095.P7744539145058880923`, by `A164095.P7744539145058880923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164095.P7744539145058880923

`2*a(n-2)` with `a(0)=5, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164095

/-- `2*a(n-2)` -/
def P7744539145058880923.Spec : Prop :=
  ∀ n, (P7744539145058880923.a n : ℤ) = A164095 (n + 1)

theorem P7744539145058880923.correct : P7744539145058880923.Spec := by
  intro n
  simp only [A164095, Nat.add_sub_cancel]

end A164095

/-! ## A164095.P10764153233638682671

`(4-(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))`
-/

namespace A164095.P10764153233638682671
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 - (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ)

end

end A164095.P10764153233638682671

namespace A164095

/-- `(4-(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))` -/
def P10764153233638682671.Spec : Prop :=
  ∀ n, P10764153233638682671.a n = (A164095 (n + 1) : ℝ)

end A164095

/-! ## A164095.P2315316965272296501

`A070876(n+1)/3`
-/

namespace A164095.P2315316965272296501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070876 (n + 1) : ℚ) / 3

end

end A164095.P2315316965272296501

namespace A164095

/-- `A070876(n+1)/3` -/
def P2315316965272296501.Spec : Prop :=
  ∀ n, P2315316965272296501.a n = (A164095 (n + 1) : ℚ)

end A164095

/-! ## A164095.P15477735634569521892

`ogf((5+6x)/(1-2x^2))`
-/

namespace A164095.P15477735634569521892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6] [1, 0, -2] n

end

end A164095.P15477735634569521892

namespace A164095

/-- `ogf((5+6x)/(1-2x^2))` -/
def P15477735634569521892.Spec : Prop :=
  ∀ n, P15477735634569521892.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P13406131915092586710

`a(n-2)+a(n-2)` with `a(0)=5, a(1)=6`
-/

namespace A164095.P13406131915092586710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 2) + a (n - 2)

end

end A164095.P13406131915092586710

namespace A164095

/-- `a(n-2)+a(n-2)` -/
def P13406131915092586710.Spec : Prop :=
  ∀ n, (P13406131915092586710.a n : ℤ) = A164095 (n + 1)

theorem P13406131915092586710.correct : P13406131915092586710.Spec := by
  intro n
  simp only [A164095, Nat.add_sub_cancel, A164095.P13406131915092586710.a, A164095.P7744539145058880923.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164095

/-! ## A164095.P7604837595753065898

`a(n-2)/(1-1/2)` with `a(0)=5, a(1)=6`
-/

namespace A164095.P7604837595753065898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A164095.P7604837595753065898

namespace A164095

/-- `a(n-2)/(1-1/2)` -/
def P7604837595753065898.Spec : Prop :=
  ∀ n, P7604837595753065898.a n = (A164095 (n + 1) : ℚ)

end A164095

/-! ## A164095.P13057545719355103775

`∑[A135530(n)]+3`
-/

namespace A164095.P13057545719355103775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A164095.P13057545719355103775

namespace A164095

/-- `∑[A135530(n)]+3` -/
def P13057545719355103775.Spec : Prop :=
  ∀ n, P13057545719355103775.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P15838172551541409697

`A238549(n+1)+4`
-/

namespace A164095.P15838172551541409697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238549 (n + 1) + 4

end

end A164095.P15838172551541409697

namespace A164095

/-- `A238549(n+1)+4` -/
def P15838172551541409697.Spec : Prop :=
  ∀ n, P15838172551541409697.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P768768828126057139

`abs(Δ[A137206(n+2)])`
-/

namespace A164095.P768768828126057139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164095.P768768828126057139

namespace A164095

/-- `abs(Δ[A137206(n+2)])` -/
def P768768828126057139.Spec : Prop :=
  ∀ n, P768768828126057139.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P11344099082467226313

`∑[A316742(n)+1]+3`
-/

namespace A164095.P11344099082467226313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A164095.P11344099082467226313

namespace A164095

/-- `∑[A316742(n)+1]+3` -/
def P11344099082467226313.Spec : Prop :=
  ∀ n, P11344099082467226313.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P18025000715172572533

`∑[A076736(n+4)]+3`
-/

namespace A164095.P18025000715172572533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A164095.P18025000715172572533

namespace A164095

/-- `∑[A076736(n+4)]+3` -/
def P18025000715172572533.Spec : Prop :=
  ∀ n, P18025000715172572533.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P4221813996389755162

`A143095(n-1)+a(n-1)` with `a(0)=5`
-/

namespace A164095.P4221813996389755162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A143095 (n - 1) + a (n - 1)

end

end A164095.P4221813996389755162

namespace A164095

/-- `A143095(n-1)+a(n-1)` -/
def P4221813996389755162.Spec : Prop :=
  ∀ n, P4221813996389755162.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P12810899908941586181

`A029747(A049636(n+1))`
-/

namespace A164095.P12810899908941586181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A049636 (n + 1)).toNat

end

end A164095.P12810899908941586181

namespace A164095

/-- `A029747(A049636(n+1))` -/
def P12810899908941586181.Spec : Prop :=
  ∀ n, P12810899908941586181.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P906588635698111325

`A029747(A114119(n+2))`
-/

namespace A164095.P906588635698111325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A114119 (n + 2)).toNat

end

end A164095.P906588635698111325

namespace A164095

/-- `A029747(A114119(n+2))` -/
def P906588635698111325.Spec : Prop :=
  ∀ n, P906588635698111325.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P16579310110195268557

`lcm(A010717(n), A060546(n))`
-/

namespace A164095.P16579310110195268557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010717 n) (A060546 n)

end

end A164095.P16579310110195268557

namespace A164095

/-- `lcm(A010717(n), A060546(n))` -/
def P16579310110195268557.Spec : Prop :=
  ∀ n, (P16579310110195268557.a n : ℤ) = A164095 (n + 1)

end A164095

/-! ## A164095.P3164418256100105905

`xor(A010737(n), A316742(n))`
-/

namespace A164095.P3164418256100105905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010737 n) (A316742 n)

end

end A164095.P3164418256100105905

namespace A164095

/-- `xor(A010737(n), A316742(n))` -/
def P3164418256100105905.Spec : Prop :=
  ∀ n, P3164418256100105905.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P11077590034451094378

`A090989(n+1)+A077957(n)`
-/

namespace A164095.P11077590034451094378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + A077957 n

end

end A164095.P11077590034451094378

namespace A164095

/-- `A090989(n+1)+A077957(n)` -/
def P11077590034451094378.Spec : Prop :=
  ∀ n, P11077590034451094378.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P1417422963044316512

`A143095(n+1)+A143095(n)`
-/

namespace A164095.P1417422963044316512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (n + 1) + A143095 n

end

end A164095.P1417422963044316512

namespace A164095

/-- `A143095(n+1)+A143095(n)` -/
def P1417422963044316512.Spec : Prop :=
  ∀ n, P1417422963044316512.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P11687783162480051054

`A209721(n+2)+A052551(n)`
-/

namespace A164095.P11687783162480051054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 2) + A052551 n

end

end A164095.P11687783162480051054

namespace A164095

/-- `A209721(n+2)+A052551(n)` -/
def P11687783162480051054.Spec : Prop :=
  ∀ n, P11687783162480051054.a n = A164095 (n + 1)

end A164095

/-! ## A164095.P2066923988568851840

`A060546(n+3)+A060546(n)`
-/

namespace A164095.P2066923988568851840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 3) + A060546 n

end

end A164095.P2066923988568851840

namespace A164095

/-- `A060546(n+3)+A060546(n)` -/
def P2066923988568851840.Spec : Prop :=
  ∀ n, P2066923988568851840.a n = A164095 (n + 1)

end A164095

/-!
# A164096: Partial sums of A164095.

The programs for A164096, the canonical program `A164096.P3970760667454630530` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164096 has offset 1).

The definition of A164096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164096.P3970760667454630530

`2*a(n-2)+11` with `a(0)=5, a(1)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164096

/-- `2*a(n-2)+11` -/
def P3970760667454630530.Spec : Prop :=
  ∀ n, (P3970760667454630530.a n : ℤ) = A164096 (n + 1)

theorem P3970760667454630530.correct : P3970760667454630530.Spec := by
  intro n
  simp only [A164096, Nat.add_sub_cancel]

end A164096

/-! ## A164096.P12597713616359501795

`(27-5*(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-11`
-/

namespace A164096.P12597713616359501795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (27 - 5 * (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2 - 11

end

end A164096.P12597713616359501795

namespace A164096

/-- `(27-5*(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2-11` -/
def P12597713616359501795.Spec : Prop :=
  ∀ n, P12597713616359501795.a n = (A164096 (n + 1) : ℝ)

end A164096

/-! ## A164096.P8223458509323886307

`∑[ogf((5+6x)/(1-2x^2))]`
-/

namespace A164096.P8223458509323886307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P8223458509323886307

namespace A164096

/-- `∑[ogf((5+6x)/(1-2x^2))]` -/
def P8223458509323886307.Spec : Prop :=
  ∀ n, P8223458509323886307.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P9141751553123617360

`ogf((5+6x)/(1-x-2x^2+2x^3))`
-/

namespace A164096.P9141751553123617360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6] [1, -1, -2, 2] n

end

end A164096.P9141751553123617360

namespace A164096

/-- `ogf((5+6x)/(1-x-2x^2+2x^3))` -/
def P9141751553123617360.Spec : Prop :=
  ∀ n, P9141751553123617360.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P10482892651002621549

`∑[2*a(n-2)]` with `a(0)=5, a(1)=6`
-/

namespace A164096.P10482892651002621549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P10482892651002621549

namespace A164096

/-- `∑[2*a(n-2)]` -/
def P10482892651002621549.Spec : Prop :=
  ∀ n, (P10482892651002621549.a n : ℤ) = A164096 (n + 1)

end A164096

/-! ## A164096.P4049528935339746786

`∑[a(n-2)+a(n-2)]` with `a(0)=5, a(1)=6`
-/

namespace A164096.P4049528935339746786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P4049528935339746786

namespace A164096

/-- `∑[a(n-2)+a(n-2)]` -/
def P4049528935339746786.Spec : Prop :=
  ∀ n, (P4049528935339746786.a n : ℤ) = A164096 (n + 1)

end A164096

/-! ## A164096.P14075097150336460836

`∑[A164095(n+1)]`
-/

namespace A164096.P14075097150336460836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P14075097150336460836

namespace A164096

/-- `∑[A164095(n+1)]` -/
def P14075097150336460836.Spec : Prop :=
  ∀ n, P14075097150336460836.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P8316593536537286356

`∑[∑[A135530(n)]+3]`
-/

namespace A164096.P8316593536537286356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P8316593536537286356

namespace A164096

/-- `∑[∑[A135530(n)]+3]` -/
def P8316593536537286356.Spec : Prop :=
  ∀ n, P8316593536537286356.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P15900627663702923863

`∑[A238549(n+1)+4]`
-/

namespace A164096.P15900627663702923863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238549 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P15900627663702923863

namespace A164096

/-- `∑[A238549(n+1)+4]` -/
def P15900627663702923863.Spec : Prop :=
  ∀ n, P15900627663702923863.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P13297843289834912383

`∑[A070876(n+1)/3]`
-/

namespace A164096.P13297843289834912383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070876 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P13297843289834912383

namespace A164096

/-- `∑[A070876(n+1)/3]` -/
def P13297843289834912383.Spec : Prop :=
  ∀ n, P13297843289834912383.a n = (A164096 (n + 1) : ℚ)

end A164096

/-! ## A164096.P3396676394512941692

`∑[abs(Δ[A137206(n+2)])]`
-/

namespace A164096.P3396676394512941692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P3396676394512941692

namespace A164096

/-- `∑[abs(Δ[A137206(n+2)])]` -/
def P3396676394512941692.Spec : Prop :=
  ∀ n, P3396676394512941692.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P14579907534920269702

`∑[A029747(A049636(n+1))]`
-/

namespace A164096.P14579907534920269702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A049636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P14579907534920269702

namespace A164096

/-- `∑[A029747(A049636(n+1))]` -/
def P14579907534920269702.Spec : Prop :=
  ∀ n, P14579907534920269702.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P10596434493845819189

`∑[A143095(n+1)+A143095(n)]`
-/

namespace A164096.P10596434493845819189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (n + 1) + A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P10596434493845819189

namespace A164096

/-- `∑[A143095(n+1)+A143095(n)]` -/
def P10596434493845819189.Spec : Prop :=
  ∀ n, P10596434493845819189.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P3102133799283787343

`∑[A163978(n+1)+A131572(n+2)]`
-/

namespace A164096.P3102133799283787343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1) + A131572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P3102133799283787343

namespace A164096

/-- `∑[A163978(n+1)+A131572(n+2)]` -/
def P3102133799283787343.Spec : Prop :=
  ∀ n, P3102133799283787343.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P17093218562488448841

`∑[∑[2^n/a(n-1)]]` with `a(0)=5, a(1)=1`
-/

namespace A164096.P17093218562488448841
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5, 1] fun n f2 =>
  (2 ^ n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P17093218562488448841

namespace A164096

/-- `∑[∑[2^n/a(n-1)]]` -/
def P17093218562488448841.Spec : Prop :=
  ∀ n, P17093218562488448841.a n = (A164096 (n + 1) : ℚ)

end A164096

/-! ## A164096.P13114688747789815636

`∑[A018900(A117142(n+2))]`
-/

namespace A164096.P13114688747789815636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P13114688747789815636

namespace A164096

/-- `∑[A018900(A117142(n+2))]` -/
def P13114688747789815636.Spec : Prop :=
  ∀ n, P13114688747789815636.a n = A164096 (n + 1)

end A164096

/-! ## A164096.P17975898411006863722

`∑[A271709(A178218(n+2))]`
-/

namespace A164096.P17975898411006863722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 (A178218 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164096.P17975898411006863722

namespace A164096

/-- `∑[A271709(A178218(n+2))]` -/
def P17975898411006863722.Spec : Prop :=
  ∀ n, P17975898411006863722.a n = A164096 (n + 1)

end A164096

/-!
# A164097: Numbers k such that 6*k + 7 is a perfect square.

The programs for A164097, the canonical program `A164097.P448024515576551990` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164097 has offset 1).

The definition of A164097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164097.P448024515576551990

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=19, a(3)=27, a(4)=47`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A164097

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P448024515576551990.Spec : Prop :=
  ∀ n, P448024515576551990.a n = A164097 (n + 1)

theorem P448024515576551990.correct : P448024515576551990.Spec := by
  intro n
  simp only [A164097, Nat.add_sub_cancel]

end A164097

/-! ## A164097.P10496725499695496173

`3*(2*(n+1)-1+2*(n+1)²)/4-(-1)^(n+1)*(1+2*(n+1))/4`
-/

namespace A164097.P10496725499695496173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((2 * (n + 1) : ℤ) - 1 + (2 * (n + 1) ^ 2 : ℤ)) : ℚ) / 4 - ((-1) ^ (n + 1) * (1 + 2 * (n + 1) : ℤ) : ℚ) / 4

end

end A164097.P10496725499695496173

namespace A164097

/-- `3*(2*(n+1)-1+2*(n+1)²)/4-(-1)^(n+1)*(1+2*(n+1))/4` -/
def P10496725499695496173.Spec : Prop :=
  ∀ n, P10496725499695496173.a n = (A164097 (n + 1) : ℚ)

theorem P10496725499695496173.correct : P10496725499695496173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A164097, Nat.add_sub_cancel, A164097.P10496725499695496173.a, A164097.P448024515576551990.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A164097, Nat.add_sub_cancel, A164097.P10496725499695496173.a, A164097.P448024515576551990.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164097

/-! ## A164097.P9923654223134424026

`∑[(n+1)*∑[floor(a(n-2))]]` with `a(0)=3, a(1)=-1, a(2)=2, a(3)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A164097.P9923654223134424026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 2, -2] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164097.P9923654223134424026

namespace A164097

/-- `∑[(n+1)*∑[floor(a(n-2))]]` -/
def P9923654223134424026.Spec : Prop :=
  ∀ n, P9923654223134424026.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P6322959225479501716

`abs(Δ[n*Δ[A008795(n)]])`
-/

namespace A164097.P6322959225479501716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164097.P6322959225479501716

namespace A164097

/-- `abs(Δ[n*Δ[A008795(n)]])` -/
def P6322959225479501716.Spec : Prop :=
  ∀ n, P6322959225479501716.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P13692416344841705860

`Δ[A323724(n+1)+n²]`
-/

namespace A164097.P13692416344841705860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323724 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164097.P13692416344841705860

namespace A164097

/-- `Δ[A323724(n+1)+n²]` -/
def P13692416344841705860.Spec : Prop :=
  ∀ n, P13692416344841705860.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P7346351395431124703

`A069813(A007310(n+2))`
-/

namespace A164097.P7346351395431124703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A007310 (n + 2)).toNat

end

end A164097.P7346351395431124703

namespace A164097

/-- `A069813(A007310(n+2))` -/
def P7346351395431124703.Spec : Prop :=
  ∀ n, P7346351395431124703.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P5976540504668430410

`∩[2*n+1, ceil(2*n*(n+3)/3)]`
-/

namespace A164097.P5976540504668430410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) * ((n + 3 : ℚ) / 3)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164097.P5976540504668430410

namespace A164097

/-- `∩[2*n+1, ceil(2*n*(n+3)/3)]` -/
def P5976540504668430410.Spec : Prop :=
  ∀ n, (P5976540504668430410.a n : ℤ) = A164097 (n + 1)

end A164097

/-! ## A164097.P4822747226738918704

`A004767(A144065(n))`
-/

namespace A164097.P4822747226738918704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A144065 n).toNat

end

end A164097.P4822747226738918704

namespace A164097

/-- `A004767(A144065(n))` -/
def P4822747226738918704.Spec : Prop :=
  ∀ n, P4822747226738918704.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P8955134300018529725

`A131098(A319390(n+1))`
-/

namespace A164097.P8955134300018529725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A319390 (n + 1)).toNat

end

end A164097.P8955134300018529725

namespace A164097

/-- `A131098(A319390(n+1))` -/
def P8955134300018529725.Spec : Prop :=
  ∀ n, P8955134300018529725.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P3215626814298828136

`A033991(A001318(n+1))/A001318(n+1)`
-/

namespace A164097.P3215626814298828136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033991 (A001318 (n + 1)).toNat : ℚ) / (A001318 (n + 1) : ℚ)

end

end A164097.P3215626814298828136

namespace A164097

/-- `A033991(A001318(n+1))/A001318(n+1)` -/
def P3215626814298828136.Spec : Prop :=
  ∀ n, P3215626814298828136.a n = (A164097 (n + 1) : ℚ)

end A164097

/-! ## A164097.P12228476424274516022

`record[A332057(∑[n+2])]`
-/

namespace A164097.P12228476424274516022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332057 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164097.P12228476424274516022

namespace A164097

/-- `record[A332057(∑[n+2])]` -/
def P12228476424274516022.Spec : Prop :=
  ∀ n, P12228476424274516022.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P14439355632908626186

`A014601(A135370(n+1))`
-/

namespace A164097.P14439355632908626186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A135370 (n + 1)).toNat

end

end A164097.P14439355632908626186

namespace A164097

/-- `A014601(A135370(n+1))` -/
def P14439355632908626186.Spec : Prop :=
  ∀ n, P14439355632908626186.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P12296986527593694452

`A004273(A152749(n+1))`
-/

namespace A164097.P12296986527593694452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A152749 (n + 1)).toNat

end

end A164097.P12296986527593694452

namespace A164097

/-- `A004273(A152749(n+1))` -/
def P12296986527593694452.Spec : Prop :=
  ∀ n, P12296986527593694452.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P14552152762257844321

`A004273(A135370(n+1)+1)`
-/

namespace A164097.P14552152762257844321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A135370 (n + 1) + 1).toNat

end

end A164097.P14552152762257844321

namespace A164097

/-- `A004273(A135370(n+1)+1)` -/
def P14552152762257844321.Spec : Prop :=
  ∀ n, P14552152762257844321.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P4732162047802792586

`A060747(2*A001318(n+1))`
-/

namespace A164097.P4732162047802792586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (2 * A001318 (n + 1)).toNat

end

end A164097.P4732162047802792586

namespace A164097

/-- `A060747(2*A001318(n+1))` -/
def P4732162047802792586.Spec : Prop :=
  ∀ n, P4732162047802792586.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P9600223769823084286

`A114753(∑[A210530(∑[n+2])])`
-/

namespace A164097.P9600223769823084286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210530 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164097.P9600223769823084286

namespace A164097

/-- `A114753(∑[A210530(∑[n+2])])` -/
def P9600223769823084286.Spec : Prop :=
  ∀ n, P9600223769823084286.a n = A164097 (n + 1)

end A164097

/-! ## A164097.P12236359981061286831

`A060747(A309805(n+1)+n+1)`
-/

namespace A164097.P12236359981061286831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A309805 (n + 1) + (n + 1 : ℤ)).toNat

end

end A164097.P12236359981061286831

namespace A164097

/-- `A060747(A309805(n+1)+n+1)` -/
def P12236359981061286831.Spec : Prop :=
  ∀ n, P12236359981061286831.a n = A164097 (n + 1)

end A164097

