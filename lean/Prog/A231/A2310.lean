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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231000: Number of years after which a date can fall on the same day of the week, in the Julian calendar.

The programs for A231000, the canonical program `A231000.P11903148562044061700` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231000 has offset 0).

The definition of A231000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231000.P11903148562044061700

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=5, a(2)=6, a(3)=11, a(4)=17, a(5)=22, a(6)=23, a(7)=28`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231000

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P11903148562044061700.Spec : Prop :=
  ∀ n, P11903148562044061700.a n = A231000 n

theorem P11903148562044061700.correct : P11903148562044061700.Spec := by
  intro n
  simp only [A231000]

end A231000

/-! ## A231000.P16041951545156968273

`∪[A184549(n), A184552(n)]`
-/

namespace A231000.P16041951545156968273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231000.P16041951545156968273

namespace A231000

/-- `∪[A184549(n), A184552(n)]` -/
def P16041951545156968273.Spec : Prop :=
  ∀ n, (P16041951545156968273.a n : ℤ) = A231000 n

end A231000

/-! ## A231000.P7787137167175681418

`∪[A231002(n+1), A231001(n)]`
-/

namespace A231000.P7787137167175681418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231000.P7787137167175681418

namespace A231000

/-- `∪[A231002(n+1), A231001(n)]` -/
def P7787137167175681418.Spec : Prop :=
  ∀ n, (P7787137167175681418.a n : ℤ) = A231000 n

end A231000

/-! ## A231000.P4682912655479675079

`record[A184550(n)-A184550(A004396(n))]`
-/

namespace A231000.P4682912655479675079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 n - A184550 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231000.P4682912655479675079

namespace A231000

/-- `record[A184550(n)-A184550(A004396(n))]` -/
def P4682912655479675079.Spec : Prop :=
  ∀ n, P4682912655479675079.a n = A231000 n

end A231000

/-! ## A231000.P11805827318185218844

`record[A184551(n)-A231001(n)]`
-/

namespace A231000.P11805827318185218844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 n - A231001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231000.P11805827318185218844

namespace A231000

/-- `record[A184551(n)-A231001(n)]` -/
def P11805827318185218844.Spec : Prop :=
  ∀ n, P11805827318185218844.a n = A231000 n

end A231000

/-! ## A231000.P14504751715958496748

`comp[A231003(n+1)]`
-/

namespace A231000.P14504751715958496748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231000.P14504751715958496748

namespace A231000

/-- `comp[A231003(n+1)]` -/
def P14504751715958496748.Spec : Prop :=
  ∀ n, (P14504751715958496748.a n : ℤ) = A231000 n

end A231000

/-! ## A231000.P1551359110235984917

`eq[1, A305371(A057359(n+2))]`
-/

namespace A231000.P1551359110235984917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (A057359 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231000.P1551359110235984917

namespace A231000

/-- `eq[1, A305371(A057359(n+2))]` -/
def P1551359110235984917.Spec : Prop :=
  ∀ n, (P1551359110235984917.a n : ℤ) = A231000 n

end A231000

/-! ## A231000.P17478449266521126546

`A008706(A083033(n+1))-A314838(n)`
-/

namespace A231000.P17478449266521126546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A083033 (n + 1)).toNat - A314838 n

end

end A231000.P17478449266521126546

namespace A231000

/-- `A008706(A083033(n+1))-A314838(n)` -/
def P17478449266521126546.Spec : Prop :=
  ∀ n, P17478449266521126546.a n = A231000 n

end A231000

/-! ## A231000.P11753328877468096381

`record[A047248(A286474(n+1))-n]`
-/

namespace A231000.P11753328877468096381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (A286474 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231000.P11753328877468096381

namespace A231000

/-- `record[A047248(A286474(n+1))-n]` -/
def P11753328877468096381.Spec : Prop :=
  ∀ n, P11753328877468096381.a n = A231000 n

end A231000

/-!
# A231001: Number of years after which an entire year can have the same calendar, in the Julian calendar.

The programs for A231001, the canonical program `A231001.P4905478160859478518` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231001 has offset 0).

The definition of A231001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231001.P4905478160859478518

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=6, a(2)=11, a(3)=17, a(4)=22, a(5)=28`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231001

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P4905478160859478518.Spec : Prop :=
  ∀ n, P4905478160859478518.a n = A231001 n

theorem P4905478160859478518.correct : P4905478160859478518.Spec := by
  intro n
  simp only [A231001]

end A231001

/-! ## A231001.P17670934628158889833

`round(n*(3/5+5))`
-/

namespace A231001.P17670934628158889833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((3 : ℚ) / 5 + 5))

end

end A231001.P17670934628158889833

namespace A231001

/-- `round(n*(3/5+5))` -/
def P17670934628158889833.Spec : Prop :=
  ∀ n, P17670934628158889833.a n = A231001 n

end A231001

/-! ## A231001.P11757851517908646307

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=6, a(2)=5, a(3)=6, a(4)=5, a(5)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A231001.P11757851517908646307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 5, 6, 5, 6] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231001.P11757851517908646307

namespace A231001

/-- `∑[floor(a(n-5))]` -/
def P11757851517908646307.Spec : Prop :=
  ∀ n, (P11757851517908646307.a n : ℤ) = A231001 n

end A231001

/-! ## A231001.P2088829693202451973

`floor((A161714(n)+1)/5)`
-/

namespace A231001.P2088829693202451973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161714 n + 1 : ℚ) / 5⌋

end

end A231001.P2088829693202451973

namespace A231001

/-- `floor((A161714(n)+1)/5)` -/
def P2088829693202451973.Spec : Prop :=
  ∀ n, P2088829693202451973.a n = A231001 n

end A231001

/-! ## A231001.P5612735740071819288

`A047448(n+1)+4*n`
-/

namespace A231001.P5612735740071819288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + (4 * n : ℤ)

end

end A231001.P5612735740071819288

namespace A231001

/-- `A047448(n+1)+4*n` -/
def P5612735740071819288.Spec : Prop :=
  ∀ n, P5612735740071819288.a n = A231001 n

end A231001

/-! ## A231001.P5716046653923771175

`4*n+A047516(n+1)-1`
-/

namespace A231001.P5716046653923771175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A047516 (n + 1) - 1)

end

end A231001.P5716046653923771175

namespace A231001

/-- `4*n+A047516(n+1)-1` -/
def P5716046653923771175.Spec : Prop :=
  ∀ n, P5716046653923771175.a n = A231001 n

end A231001

/-! ## A231001.P9905488647969828131

`6*n-(comp[A047385(n+1)]-n)`
-/

namespace A231001.P9905488647969828131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A231001.P9905488647969828131

namespace A231001

/-- `6*n-(comp[A047385(n+1)]-n)` -/
def P9905488647969828131.Spec : Prop :=
  ∀ n, P9905488647969828131.a n = A231001 n

end A231001

/-! ## A231001.P8535576749739745710

`∪[A184550(n), A184551(n)]`
-/

namespace A231001.P8535576749739745710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231001.P8535576749739745710

namespace A231001

/-- `∪[A184550(n), A184551(n)]` -/
def P8535576749739745710.Spec : Prop :=
  ∀ n, (P8535576749739745710.a n : ℤ) = A231001 n

end A231001

/-! ## A231001.P11275442017526267581

`A008589(n)-A047299(n+1)`
-/

namespace A231001.P11275442017526267581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A047299 (n + 1)

end

end A231001.P11275442017526267581

namespace A231001

/-- `A008589(n)-A047299(n+1)` -/
def P11275442017526267581.Spec : Prop :=
  ∀ n, P11275442017526267581.a n = A231001 n

end A231001

/-! ## A231001.P8193124656829117566

`A008588(n)-A004523(A057355(n)+1)`
-/

namespace A231001.P8193124656829117566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A004523 (A057355 n + 1).toNat

end

end A231001.P8193124656829117566

namespace A231001

/-- `A008588(n)-A004523(A057355(n)+1)` -/
def P8193124656829117566.Spec : Prop :=
  ∀ n, P8193124656829117566.a n = A231001 n

end A231001

/-! ## A231001.P9041087414574162233

`A008588(n)-A004523(n-A057354(n))`
-/

namespace A231001.P9041087414574162233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A004523 ((n : ℤ) - A057354 n).toNat

end

end A231001.P9041087414574162233

namespace A231001

/-- `A008588(n)-A004523(n-A057354(n))` -/
def P9041087414574162233.Spec : Prop :=
  ∀ n, P9041087414574162233.a n = A231001 n

end A231001

/-! ## A231001.P5663024543306908677

`6*n-A057354(n+1)`
-/

namespace A231001.P5663024543306908677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - A057354 (n + 1)

end

end A231001.P5663024543306908677

namespace A231001

/-- `6*n-A057354(n+1)` -/
def P5663024543306908677.Spec : Prop :=
  ∀ n, P5663024543306908677.a n = A231001 n

end A231001

/-! ## A231001.P6391845924656971083

`A008585(n)+A008585(n)-A057354(n+1)`
-/

namespace A231001.P6391845924656971083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A008585 n - A057354 (n + 1))

end

end A231001.P6391845924656971083

namespace A231001

/-- `A008585(n)+A008585(n)-A057354(n+1)` -/
def P6391845924656971083.Spec : Prop :=
  ∀ n, P6391845924656971083.a n = A231001 n

end A231001

/-! ## A231001.P18126832315790639819

`A231000(A047363(n+1))`
-/

namespace A231001.P18126832315790639819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047363 (n + 1)).toNat

end

end A231001.P18126832315790639819

namespace A231001

/-- `A231000(A047363(n+1))` -/
def P18126832315790639819.Spec : Prop :=
  ∀ n, P18126832315790639819.a n = A231001 n

end A231001

/-! ## A231001.P17633053031173138337

`A008706(2*n)-A312928(n)`
-/

namespace A231001.P17633053031173138337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n) - A312928 n

end

end A231001.P17633053031173138337

namespace A231001

/-- `A008706(2*n)-A312928(n)` -/
def P17633053031173138337.Spec : Prop :=
  ∀ n, P17633053031173138337.a n = A231001 n

end A231001

/-! ## A231001.P5950507322027001225

`floor((A047501(2*n+1)+8*n)/2)`
-/

namespace A231001.P5950507322027001225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047501 (2 * n + 1) + (8 * n : ℤ) : ℚ) / 2⌋

end

end A231001.P5950507322027001225

namespace A231001

/-- `floor((A047501(2*n+1)+8*n)/2)` -/
def P5950507322027001225.Spec : Prop :=
  ∀ n, P5950507322027001225.a n = A231001 n

end A231001

/-! ## A231001.P14013364139812907704

`A008588(n)-A134119(2*n)`
-/

namespace A231001.P14013364139812907704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A134119 (2 * n)

end

end A231001.P14013364139812907704

namespace A231001

/-- `A008588(n)-A134119(2*n)` -/
def P14013364139812907704.Spec : Prop :=
  ∀ n, P14013364139812907704.a n = A231001 n

end A231001

/-! ## A231001.P9740948338650028101

`A315707(2*n)-A008458(n)`
-/

namespace A231001.P9740948338650028101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 (2 * n) - A008458 n

end

end A231001.P9740948338650028101

namespace A231001

/-- `A315707(2*n)-A008458(n)` -/
def P9740948338650028101.Spec : Prop :=
  ∀ n, P9740948338650028101.a n = A231001 n

end A231001

/-! ## A231001.P13414192545019542411

`A315707(2*n)-A008486(2*n)`
-/

namespace A231001.P13414192545019542411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 (2 * n) - A008486 (2 * n)

end

end A231001.P13414192545019542411

namespace A231001

/-- `A315707(2*n)-A008486(2*n)` -/
def P13414192545019542411.Spec : Prop :=
  ∀ n, P13414192545019542411.a n = A231001 n

end A231001

/-! ## A231001.P11353874878602834032

`A047367(2*n+1)+A047367(2*(n+1))-1`
-/

namespace A231001.P11353874878602834032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (2 * n + 1) + (A047367 (2 * (n + 1)) - 1)

end

end A231001.P11353874878602834032

namespace A231001

/-- `A047367(2*n+1)+A047367(2*(n+1))-1` -/
def P11353874878602834032.Spec : Prop :=
  ∀ n, P11353874878602834032.a n = A231001 n

end A231001

/-!
# A231002: Number of years after which it is possible to have a date falling on same day of the week, but the entire year does not have the same calendar, in the Julian calendar.

The programs for A231002, the canonical program `A231002.P9309957807312755171` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231002 has offset 1).

The definition of A231002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231002.P9309957807312755171

`28*floor((n+1)/2)-5*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231002

/-- `28*floor((n+1)/2)-5*(-1)^(n+1)` -/
def P9309957807312755171.Spec : Prop :=
  ∀ n, P9309957807312755171.a n = A231002 (n + 1)

theorem P9309957807312755171.correct : P9309957807312755171.Spec := by
  intro n
  simp only [A231002, Nat.add_sub_cancel]

end A231002

/-! ## A231002.P851872842791590064

`xor(2, 14*n+7)`
-/

namespace A231002.P851872842791590064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (14 * n + 7)

end

end A231002.P851872842791590064

namespace A231002

/-- `xor(2, 14*n+7)` -/
def P851872842791590064.Spec : Prop :=
  ∀ n, (P851872842791590064.a n : ℤ) = A231002 (n + 1)

end A231002

/-! ## A231002.P16043603159581897447

`Δ[xor(1, 7*n²)]`
-/

namespace A231002.P16043603159581897447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A231002.P16043603159581897447

namespace A231002

/-- `Δ[xor(1, 7*n²)]` -/
def P16043603159581897447.Spec : Prop :=
  ∀ n, P16043603159581897447.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P14942114483106245899

`Δ[or(2, 7*n²)]`
-/

namespace A231002.P14942114483106245899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (7 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A231002.P14942114483106245899

namespace A231002

/-- `Δ[or(2, 7*n²)]` -/
def P14942114483106245899.Spec : Prop :=
  ∀ n, P14942114483106245899.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P9931847374157770435

`∑[28-a(n-1)]` with `a(0)=5, a(1)=18`
-/

namespace A231002.P9931847374157770435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 18] fun n f1 =>
  28 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231002.P9931847374157770435

namespace A231002

/-- `∑[28-a(n-1)]` -/
def P9931847374157770435.Spec : Prop :=
  ∀ n, P9931847374157770435.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P13648538132099960769

`or(1, A184552(2*n+1))`
-/

namespace A231002.P13648538132099960769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184552 (2 * n + 1))

end

end A231002.P13648538132099960769

namespace A231002

/-- `or(1, A184552(2*n+1))` -/
def P13648538132099960769.Spec : Prop :=
  ∀ n, P13648538132099960769.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P8264667531185688129

`A113805(A042948(n+1))`
-/

namespace A231002.P8264667531185688129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (A042948 (n + 1)).toNat

end

end A231002.P8264667531185688129

namespace A231002

/-- `A113805(A042948(n+1))` -/
def P8264667531185688129.Spec : Prop :=
  ∀ n, P8264667531185688129.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P1814743905597881807

`∩[2*n+1, A301298(2*n+1)]`
-/

namespace A231002.P1814743905597881807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231002.P1814743905597881807

namespace A231002

/-- `∩[2*n+1, A301298(2*n+1)]` -/
def P1814743905597881807.Spec : Prop :=
  ∀ n, (P1814743905597881807.a n : ℤ) = A231002 (n + 1)

end A231002

/-! ## A231002.P2380948903846451005

`A301298(A007310(n+1))`
-/

namespace A231002.P2380948903846451005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (A007310 (n + 1)).toNat

end

end A231002.P2380948903846451005

namespace A231002

/-- `A301298(A007310(n+1))` -/
def P2380948903846451005.Spec : Prop :=
  ∀ n, P2380948903846451005.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P8472188962132830466

`filter[A301298(2*n+1), A035263(#)]`
-/

namespace A231002.P8472188962132830466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A231002.P8472188962132830466

namespace A231002

/-- `filter[A301298(2*n+1), A035263(#)]` -/
def P8472188962132830466.Spec : Prop :=
  ∀ n, P8472188962132830466.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P16310654478035339047

`A231000(A047336(n+1))`
-/

namespace A231002.P16310654478035339047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047336 (n + 1)).toNat

end

end A231002.P16310654478035339047

namespace A231002

/-- `A231000(A047336(n+1))` -/
def P16310654478035339047.Spec : Prop :=
  ∀ n, P16310654478035339047.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P15189487681441231350

`∩[A113805(n+1), A231000(n)]`
-/

namespace A231002.P15189487681441231350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231002.P15189487681441231350

namespace A231002

/-- `∩[A113805(n+1), A231000(n)]` -/
def P15189487681441231350.Spec : Prop :=
  ∀ n, (P15189487681441231350.a n : ℤ) = A231002 (n + 1)

end A231002

/-! ## A231002.P8597701552633160228

`A047385(A047524(n+1))`
-/

namespace A231002.P8597701552633160228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (A047524 (n + 1)).toNat

end

end A231002.P8597701552633160228

namespace A231002

/-- `A047385(A047524(n+1))` -/
def P8597701552633160228.Spec : Prop :=
  ∀ n, P8597701552633160228.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P724466185799343145

`∩[A047385(n+1), A231000(n)]`
-/

namespace A231002.P724466185799343145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231002.P724466185799343145

namespace A231002

/-- `∩[A047385(n+1), A231000(n)]` -/
def P724466185799343145.Spec : Prop :=
  ∀ n, (P724466185799343145.a n : ℤ) = A231002 (n + 1)

end A231002

/-! ## A231002.P17188622935902298150

`A348236(A090772(n+1))`
-/

namespace A231002.P17188622935902298150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 (A090772 (n + 1)).toNat

end

end A231002.P17188622935902298150

namespace A231002

/-- `A348236(A090772(n+1))` -/
def P17188622935902298150.Spec : Prop :=
  ∀ n, P17188622935902298150.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P10310296098931821119

`filter[A348236(2*n), A324908(#)]`
-/

namespace A231002.P10310296098931821119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A231002.P10310296098931821119

namespace A231002

/-- `filter[A348236(2*n), A324908(#)]` -/
def P10310296098931821119.Spec : Prop :=
  ∀ n, P10310296098931821119.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P4693798181780200821

`∩[A113805(n+1), A348236(n)]`
-/

namespace A231002.P4693798181780200821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231002.P4693798181780200821

namespace A231002

/-- `∩[A113805(n+1), A348236(n)]` -/
def P4693798181780200821.Spec : Prop :=
  ∀ n, (P4693798181780200821.a n : ℤ) = A231002 (n + 1)

end A231002

/-! ## A231002.P13499317506904763320

`A047323(A091999(n+1))`
-/

namespace A231002.P13499317506904763320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047323 (A091999 (n + 1)).toNat

end

end A231002.P13499317506904763320

namespace A231002

/-- `A047323(A091999(n+1))` -/
def P13499317506904763320.Spec : Prop :=
  ∀ n, P13499317506904763320.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P119692676299894171

`A162699(A045572(2*n+1)+n+2)`
-/

namespace A231002.P119692676299894171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (A045572 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A231002.P119692676299894171

namespace A231002

/-- `A162699(A045572(2*n+1)+n+2)` -/
def P119692676299894171.Spec : Prop :=
  ∀ n, P119692676299894171.a n = A231002 (n + 1)

end A231002

/-! ## A231002.P12321346459412731245

`A004443(7*(2*n+1))`
-/

namespace A231002.P12321346459412731245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (7 * (2 * n + 1))

end

end A231002.P12321346459412731245

namespace A231002

/-- `A004443(7*(2*n+1))` -/
def P12321346459412731245.Spec : Prop :=
  ∀ n, P12321346459412731245.a n = A231002 (n + 1)

end A231002

/-!
# A231003: Number of years after which it is not possible to have a date falling on the same day of the week, in the Julian calendar.

The programs for A231003, the canonical program `A231003.P8402459544255823097` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231003 has offset 1).

The definition of A231003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231003.P8402459544255823097

`comp[A231000(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231003

/-- `comp[A231000(n)]` -/
def P8402459544255823097.Spec : Prop :=
  ∀ n, (P8402459544255823097.a n : ℤ) = A231003 (n + 1)

theorem P8402459544255823097.correct : P8402459544255823097.Spec := by
  intro n
  simp only [A231003, Nat.add_sub_cancel]

end A231003

/-! ## A231003.P14648548657095289456

`comp[∪[A184549(n), A184552(n)]]`
-/

namespace A231003.P14648548657095289456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184549 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231003.P14648548657095289456

namespace A231003

/-- `comp[∪[A184549(n), A184552(n)]]` -/
def P14648548657095289456.Spec : Prop :=
  ∀ n, (P14648548657095289456.a n : ℤ) = A231003 (n + 1)

end A231003

/-! ## A231003.P647030581336359610

`comp[record[A184551(n)-A231001(n)]]`
-/

namespace A231003.P647030581336359610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 n - A231001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231003.P647030581336359610

namespace A231003

/-- `comp[record[A184551(n)-A231001(n)]]` -/
def P647030581336359610.Spec : Prop :=
  ∀ n, (P647030581336359610.a n : ℤ) = A231003 (n + 1)

end A231003

/-! ## A231003.P9434536764823705649

`comp[∪[A231002(n+1), A231001(n)]]`
-/

namespace A231003.P9434536764823705649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231003.P9434536764823705649

namespace A231003

/-- `comp[∪[A231002(n+1), A231001(n)]]` -/
def P9434536764823705649.Spec : Prop :=
  ∀ n, (P9434536764823705649.a n : ℤ) = A231003 (n + 1)

end A231003

/-! ## A231003.P11477814340519597804

`comp[A184550(n)-A184550(A004396(n))]`
-/

namespace A231003.P11477814340519597804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 n - A184550 (A004396 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231003.P11477814340519597804

namespace A231003

/-- `comp[A184550(n)-A184550(A004396(n))]` -/
def P11477814340519597804.Spec : Prop :=
  ∀ n, (P11477814340519597804.a n : ℤ) = A231003 (n + 1)

end A231003

/-! ## A231003.P2012183527592626136

`∩[A231004(n+1), A231237(n+1)]`
-/

namespace A231003.P2012183527592626136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231003.P2012183527592626136

namespace A231003

/-- `∩[A231004(n+1), A231237(n+1)]` -/
def P2012183527592626136.Spec : Prop :=
  ∀ n, (P2012183527592626136.a n : ℤ) = A231003 (n + 1)

end A231003

/-! ## A231003.P13299286373245336017

`∩[comp[A231002(n+1)], A231004(n+1)]`
-/

namespace A231003.P13299286373245336017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A231003.P13299286373245336017

namespace A231003

/-- `∩[comp[A231002(n+1)], A231004(n+1)]` -/
def P13299286373245336017.Spec : Prop :=
  ∀ n, (P13299286373245336017.a n : ℤ) = A231003 (n + 1)

end A231003

/-! ## A231003.P9418632642857831400

`comp[Δ[A231001(n%3*floor(n/3))]]`
-/

namespace A231003.P9418632642857831400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 (((n % 3 : ℕ) : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231003.P9418632642857831400

namespace A231003

/-- `comp[Δ[A231001(n%3*floor(n/3))]]` -/
def P9418632642857831400.Spec : Prop :=
  ∀ n, (P9418632642857831400.a n : ℤ) = A231003 (n + 1)

end A231003

/-!
# A231004: Number of years after which it is not possible to have the same calendar for the entire year, in the Julian calendar.

The programs for A231004, the canonical program `A231004.P17776384986892402907` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231004 has offset 1).

The definition of A231004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231004.P17776384986892402907

`round((2*n+1)*14/23)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231004

/-- `round((2*n+1)*14/23)` -/
def P17776384986892402907.Spec : Prop :=
  ∀ n, P17776384986892402907.a n = A231004 (n + 1)

theorem P17776384986892402907.correct : P17776384986892402907.Spec := by
  intro n
  simp only [A231004, Nat.add_sub_cancel]

end A231004

/-! ## A231004.P11537977280196399952

`comp[A231001(n)]`
-/

namespace A231004.P11537977280196399952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231004.P11537977280196399952

namespace A231004

/-- `comp[A231001(n)]` -/
def P11537977280196399952.Spec : Prop :=
  ∀ n, (P11537977280196399952.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P8303324529311906562

`comp[floor(atan(n+1))*A315525(n)]`
-/

namespace A231004.P8303324529311906562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * A315525 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231004.P8303324529311906562

namespace A231004

/-- `comp[floor(atan(n+1))*A315525(n)]` -/
def P8303324529311906562.Spec : Prop :=
  ∀ n, (P8303324529311906562.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P9064536023330865998

`comp[4*n+A047516(n+1)-1]`
-/

namespace A231004.P9064536023330865998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A047516 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231004.P9064536023330865998

namespace A231004

/-- `comp[4*n+A047516(n+1)-1]` -/
def P9064536023330865998.Spec : Prop :=
  ∀ n, (P9064536023330865998.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P9457819497024626873

`comp[A047299(A005408(2*n))]`
-/

namespace A231004.P9457819497024626873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A005408 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231004.P9457819497024626873

namespace A231004

/-- `comp[A047299(A005408(2*n))]` -/
def P9457819497024626873.Spec : Prop :=
  ∀ n, (P9457819497024626873.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P3511541274625483648

`∪[A047385(n+1), A231003(n+1)]`
-/

namespace A231004.P3511541274625483648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231004.P3511541274625483648

namespace A231004

/-- `∪[A047385(n+1), A231003(n+1)]` -/
def P3511541274625483648.Spec : Prop :=
  ∀ n, (P3511541274625483648.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P4060273276043883627

`∪[A113805(n+1), A231003(n+1)]`
-/

namespace A231004.P4060273276043883627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231004.P4060273276043883627

namespace A231004

/-- `∪[A113805(n+1), A231003(n+1)]` -/
def P4060273276043883627.Spec : Prop :=
  ∀ n, (P4060273276043883627.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P13834034978047255174

`∪[A231002(n+1), A231003(n+1)]`
-/

namespace A231004.P13834034978047255174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231004.P13834034978047255174

namespace A231004

/-- `∪[A231002(n+1), A231003(n+1)]` -/
def P13834034978047255174.Spec : Prop :=
  ∀ n, (P13834034978047255174.a n : ℤ) = A231004 (n + 1)

end A231004

/-! ## A231004.P10975630143732588724

`comp[round(7*n/5)*A056594(n)]`
-/

namespace A231004.P10975630143732588724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 * ((n : ℚ) / 5)) * A056594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231004.P10975630143732588724

namespace A231004

/-- `comp[round(7*n/5)*A056594(n)]` -/
def P10975630143732588724.Spec : Prop :=
  ∀ n, (P10975630143732588724.a n : ℤ) = A231004 (n + 1)

end A231004

/-!
# A231005: Number of months after which a date can fall on the same day of the week, in the Gregorian calendar.

The programs for A231005, there is no canonical definition to state claims against.
-/

/-! ## A231005.P12683768035239442720

`comp[A231008(n+1)]`
-/

namespace A231005.P12683768035239442720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231005.P12683768035239442720

/-! ## A231005.P10597219749996958043

`comp[record[A231008(A126759(n))]]`
-/

namespace A231005.P10597219749996958043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231005.P10597219749996958043

/-! ## A231005.P8975711410303170526

`comp[record[A231008(A193592(n))]]`
-/

namespace A231005.P8975711410303170526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231005.P8975711410303170526

/-! ## A231005.P521215328081038138

`comp[record[A231008(A286549(n))]]`
-/

namespace A231005.P521215328081038138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A286549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231005.P521215328081038138

/-! ## A231005.P2132362092954671520

`comp[record[A231008(A328397(n))]]`
-/

namespace A231005.P2132362092954671520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231005.P2132362092954671520

/-! ## A231005.P7514606543579659295

`∪[A231007(n+1), A231006(n)]`
-/

namespace A231005.P7514606543579659295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231005.P7514606543579659295

/-! ## A231005.P14320804733818476961

`∪[A231007(n+1), comp[A231009(n+1)]]`
-/

namespace A231005.P14320804733818476961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A231005.P14320804733818476961

/-! ## A231005.P11942647613836377560

`comp[A231008(A328397(n))]%A111297(n)`
-/

namespace A231005.P11942647613836377560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A328397 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A111297 n)

end

end A231005.P11942647613836377560

/-!
# A231006: Number of months after which a date can fall on the same day of the week, and the two months can have the same number of days, in the Gregorian calendar.

The programs for A231006, there is no canonical definition to state claims against.
-/

/-! ## A231006.P7775862331949679945

`comp[A231009(n+1)]`
-/

namespace A231006.P7775862331949679945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231006.P7775862331949679945

/-! ## A231006.P5356742376768230468

`comp[record[A231009(A022446(n))]]`
-/

namespace A231006.P5356742376768230468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231006.P5356742376768230468

/-! ## A231006.P10735390070752775546

`comp[record[A231009(A126759(n))]]`
-/

namespace A231006.P10735390070752775546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231006.P10735390070752775546

/-! ## A231006.P2810865463347503033

`comp[record[A231009(A286549(n))]]`
-/

namespace A231006.P2810865463347503033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A286549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231006.P2810865463347503033

/-! ## A231006.P8323800021272559787

`comp[record[A231009(A328397(n))]]`
-/

namespace A231006.P8323800021272559787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231006.P8323800021272559787

/-! ## A231006.P16845219745223505800

`comp[∪[A231007(n+1), A231008(n+1)]]`
-/

namespace A231006.P16845219745223505800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231006.P16845219745223505800

/-!
# A231007: Number of months after which a date can fall on the same day of the week, but it is not possible that the two months have the same number of days, in the Gregorian calendar.

The programs for A231007, there is no canonical definition to state claims against.
-/

/-! ## A231007.P61738806566780919

`∩[comp[A231008(n+1)], A231009(n+1)]`
-/

namespace A231007.P61738806566780919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A231007.P61738806566780919

/-! ## A231007.P3206970682680499162

`∩[A231005(n), comp[A231006(n)]]`
-/

namespace A231007.P3206970682680499162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231006 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A231007.P3206970682680499162

/-! ## A231007.P6689823773699672728

`∩[A231009(n+1), A231005(n)]`
-/

namespace A231007.P6689823773699672728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231007.P6689823773699672728

/-! ## A231007.P12338899866144326497

`comp[A231238(n+1)]`
-/

namespace A231007.P12338899866144326497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231007.P12338899866144326497

/-!
# A231008: Number of months after which it is not possible to have a date falling on the same day of the week, in the Gregorian calendar.

The programs for A231008, there is no canonical definition to state claims against.
-/

/-! ## A231008.P7909548827825515626

`comp[A231005(n)]`
-/

namespace A231008.P7909548827825515626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231008.P7909548827825515626

/-! ## A231008.P5279150849446808159

`∩[A231009(n+1), A231238(n+1)]`
-/

namespace A231008.P5279150849446808159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231008.P5279150849446808159

/-!
# A231009: Number of months after which it is not possible to have the same calendar for the entire month with the same number of days, in the Gregorian calendar.

The programs for A231009, there is no canonical definition to state claims against.
-/

/-! ## A231009.P8453332040092557650

`∪[A231007(n+1), A231008(n+1)]`
-/

namespace A231009.P8453332040092557650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231009.P8453332040092557650

/-! ## A231009.P8512079805924673856

`comp[A231006(n)]`
-/

namespace A231009.P8512079805924673856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231009.P8512079805924673856

/-!
# A231010: Number of months after which a date can fall on the same day of the week, in the Julian calendar.

The programs for A231010, there is no canonical definition to state claims against.
-/

/-! ## A231010.P13063584262861946881

`comp[A231013(n+1)]`
-/

namespace A231010.P13063584262861946881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231010.P13063584262861946881

/-! ## A231010.P163372196406482642

`comp[record[A231013(A126759(n))]]`
-/

namespace A231010.P163372196406482642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231010.P163372196406482642

/-! ## A231010.P4260930368800078534

`comp[record[A231013(A193592(n))]]`
-/

namespace A231010.P4260930368800078534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231010.P4260930368800078534

/-! ## A231010.P9344002935623763205

`comp[record[A231013(A286549(n))]]`
-/

namespace A231010.P9344002935623763205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (A286549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231010.P9344002935623763205

/-! ## A231010.P7535344262398013726

`comp[record[A231013(A328397(n))]]`
-/

namespace A231010.P7535344262398013726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231010.P7535344262398013726

/-! ## A231010.P16695631707945091193

`∪[A231012(n+1), A231011(n)]`
-/

namespace A231010.P16695631707945091193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231010.P16695631707945091193

/-! ## A231010.P1079130438496756878

`∪[A231012(n+1), comp[A231014(n+1)]]`
-/

namespace A231010.P1079130438496756878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A231010.P1079130438496756878

/-!
# A231011: Number of months after which a date can fall on the same day of the week, and the two months can have the same number of days, in the Julian calendar.

The programs for A231011, there is no canonical definition to state claims against.
-/

/-! ## A231011.P16574278939984339910

`comp[∪[A231012(n+1), A231013(n+1)]]`
-/

namespace A231011.P16574278939984339910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231011.P16574278939984339910

/-! ## A231011.P3578863666349039465

`comp[A231014(n+1)]`
-/

namespace A231011.P3578863666349039465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231011.P3578863666349039465

/-! ## A231011.P16567972185775473421

`∩[A231010(n), A231239(n+1)]`
-/

namespace A231011.P16567972185775473421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231011.P16567972185775473421

/-!
# A231012: Number of months after which a date can fall on the same day of the week, but it is not possible that the two months have the same number of days, in the Julian calendar.

The programs for A231012, there is no canonical definition to state claims against.
-/

/-! ## A231012.P8765678134008803228

`∩[comp[A231013(n+1)], A231014(n+1)]`
-/

namespace A231012.P8765678134008803228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A231012.P8765678134008803228

/-! ## A231012.P3278183724902060420

`∩[A231010(n), comp[A231011(n)]]`
-/

namespace A231012.P3278183724902060420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231011 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A231012.P3278183724902060420

/-! ## A231012.P1793906502918997190

`∩[A231014(n+1), A231010(n)]`
-/

namespace A231012.P1793906502918997190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231012.P1793906502918997190

/-! ## A231012.P15372893998706110570

`comp[A231239(n+1)]`
-/

namespace A231012.P15372893998706110570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231012.P15372893998706110570

/-!
# A231013: Number of months after which it is not possible to have a date falling on the same day of the week, in the Julian calendar.

The programs for A231013, there is no canonical definition to state claims against.
-/

/-! ## A231013.P16979897244370776435

`comp[A231010(n)]`
-/

namespace A231013.P16979897244370776435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231013.P16979897244370776435

/-! ## A231013.P17409469733584945192

`∩[A231014(n+1), A231239(n+1)]`
-/

namespace A231013.P17409469733584945192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231013.P17409469733584945192

/-! ## A231013.P2657218729835892482

`A231008(A043320(n+1))`
-/

namespace A231013.P2657218729835892482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A043320 (n + 1)).toNat

end

end A231013.P2657218729835892482

/-! ## A231013.P7818899165725642593

`A231008(A044917(n+1))`
-/

namespace A231013.P7818899165725642593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A044917 (n + 1)).toNat

end

end A231013.P7818899165725642593

/-! ## A231013.P8839265836239092315

`A231008(A055645(n+1))`
-/

namespace A231013.P8839265836239092315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (A055645 (n + 1)).toNat

end

end A231013.P8839265836239092315

/-!
# A231014: Number of months after which it is not possible to have the same calendar for the entire month with the same number of days, in the Julian calendar.

The programs for A231014, there is no canonical definition to state claims against.
-/

/-! ## A231014.P9758621454247191076

`comp[A231011(n)]`
-/

namespace A231014.P9758621454247191076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231014.P9758621454247191076

/-! ## A231014.P11560528322732840361

`∪[A231012(n+1), A231013(n+1)]`
-/

namespace A231014.P11560528322732840361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231014.P11560528322732840361

/-! ## A231014.P2413095265170892960

`∪[A231009(n+1), A231012(n+1)]%A231239(3*n+4)`
-/

namespace A231014.P2413095265170892960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A231239 (3 * n + 4))

end

end A231014.P2413095265170892960

/-! ## A231014.P9908736707886007208

`A231009(A008554(n+1)+1)`
-/

namespace A231014.P9908736707886007208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A008554 (n + 1) + 1).toNat

end

end A231014.P9908736707886007208

/-!
# A231016: Numbers m with non-unique solution to m = +- 1^2 +- 2^2 +- ... +- k^2 with minimal k giving at least one solution.

The programs for A231016, there is no canonical definition to state claims against.
-/

/-! ## A231016.P10096225587384788591

`comp[A231272(n+1)]`
-/

namespace A231016.P10096225587384788591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231016.P10096225587384788591

/-! ## A231016.P2219510832753743578

`lt[1, A231071(n)]`
-/

namespace A231016.P2219510832753743578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A231016.P2219510832753743578

/-! ## A231016.P3771840887417505265

`A254667(eq[0, char[A231272(n+1)]])`
-/

namespace A231016.P3771840887417505265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231272 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A231016.P3771840887417505265

/-! ## A231016.P15609544669456100260

`eq[A005843(n)%2, char[A231272(n+1)]]`
-/

namespace A231016.P15609544669456100260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231272 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A231016.P15609544669456100260

/-! ## A231016.P6187601731190571632

`eq[A092517(n+1)%2, char[A231272(n+1)]]`
-/

namespace A231016.P6187601731190571632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092517 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231272 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A231016.P6187601731190571632

/-! ## A231016.P7297906489245251418

`eq[A333100(n+1)%2, char[A231272(n+1)]]`
-/

namespace A231016.P7297906489245251418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333100 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231272 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A231016.P7297906489245251418

/-! ## A231016.P9062092670173655108

`eq[A231071(n)², A254667(A231071(n)²)]`
-/

namespace A231016.P9062092670173655108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A231071 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231016.P9062092670173655108

/-!
# A231017: Least prime q > p = prime(n) such that if d = q-p, then p, p+d, p+2d, ..., p+(p-1)d are all primes.

The programs for A231017, there is no canonical definition to state claims against.
-/

/-! ## A231017.P2841035639183773704

`A000040(n+1)+A088430(n+1)`
-/

namespace A231017.P2841035639183773704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A088430 (n + 1)

end

end A231017.P2841035639183773704

/-! ## A231017.P9369397609598568837

`A231406(A007504(n)+2)`
-/

namespace A231017.P9369397609598568837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231406 (A007504 n + 2).toNat

end

end A231017.P9369397609598568837

/-! ## A231017.P1632683158025840383

`A088430(n+1)+p?[A015919(n+1)]`
-/

namespace A231017.P1632683158025840383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088430 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231017.P1632683158025840383

/-! ## A231017.P16272930483421025726

`A206074(n+1)+A061558(A206074(n+1))`
-/

namespace A231017.P16272930483421025726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1) + A061558 (A206074 (n + 1)).toNat

end

end A231017.P16272930483421025726

/-!
# A231018: a(n) = d(n)/p(n-1)# where d(n) > 0 is the common difference of the smallest p-term arithmetic progression of primes beginning with p = p(n) = n-th prime.

The programs for A231018, there is no canonical definition to state claims against.
-/

/-! ## A231018.P12675031935157630832

`A088430(n+1)/A002110(n)`
-/

namespace A231018.P12675031935157630832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088430 (n + 1) : ℚ) / (A002110 n : ℚ)

end

end A231018.P12675031935157630832

/-!
# A231019: Number of (n+3)X(n+3) 0..3 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231019, there is no canonical definition to state claims against.
-/

/-! ## A231019.P1267534279259526708

`A231023(∑[4*n]+1)`
-/

namespace A231019.P1267534279259526708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231019.P1267534279259526708

/-! ## A231019.P17756342651408806521

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A231023(n+1))]`
-/

namespace A231019.P17756342651408806521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A231023 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231019.P17756342651408806521

/-! ## A231019.P6396047888956297321

`lcm(2, A231023(A001844(n)))`
-/

namespace A231019.P6396047888956297321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231023 (A001844 n).toNat)

end

end A231019.P6396047888956297321

/-! ## A231019.P2182000800629828822

`record[A231023(Δ[A235355(n)])]`
-/

namespace A231019.P2182000800629828822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231019.P2182000800629828822

/-!
# A231020: Number of (n+3)X(2+3) 0..3 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231020, there is no canonical definition to state claims against.
-/

/-! ## A231020.P13572040245907276069

`A231023(∑[n+1]+2)`
-/

namespace A231020.P13572040245907276069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231020.P13572040245907276069

/-! ## A231020.P5397028190224249374

`record[A231023(A286159(n+1)+2)]`
-/

namespace A231020.P5397028190224249374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231020.P5397028190224249374

/-! ## A231020.P17985555778383747864

`record[gcd(A231023(n+2), A271439(n))]`
-/

namespace A231020.P17985555778383747864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231023 (n + 2)) (A271439 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231020.P17985555778383747864

/-! ## A231020.P8274475308684871222

`record[root(A231023(n+2), A002260(n+1))]`
-/

namespace A231020.P8274475308684871222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231023 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231020.P8274475308684871222

/-! ## A231020.P6006829079724403897

`record[A231023(Δ[A003453(n+5)])]`
-/

namespace A231020.P6006829079724403897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231020.P6006829079724403897

/-!
# A231021: Number of (n+3)X(4+3) 0..3 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231021, there is no canonical definition to state claims against.
-/

/-! ## A231021.P17715530206741307575

`A231023(A374004(n+1))`
-/

namespace A231021.P17715530206741307575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A374004 (n + 1)).toNat

end

end A231021.P17715530206741307575

/-! ## A231021.P4695791235244398433

`A231023(A141214(n)+7)`
-/

namespace A231021.P4695791235244398433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A141214 n + 7).toNat

end

end A231021.P4695791235244398433

/-! ## A231021.P14050825084839867391

`A231023(A052905(n)+9)`
-/

namespace A231021.P14050825084839867391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A052905 n + 9).toNat

end

end A231021.P14050825084839867391

/-! ## A231021.P12857078448743795540

`A231023(A055999(n)+10)`
-/

namespace A231021.P12857078448743795540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A055999 n + 10).toNat

end

end A231021.P12857078448743795540

/-! ## A231021.P17001874515612863982

`A231023(eq[5, A066657(n)])`
-/

namespace A231021.P17001874515612863982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231021.P17001874515612863982

/-!
# A231022: Number of (n+3) X (6+3) 0..3 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231022, there is no canonical definition to state claims against.
-/

/-! ## A231022.P17749165095966996836

`A231023(A374007(n+1))`
-/

namespace A231022.P17749165095966996836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A374007 (n + 1)).toNat

end

end A231022.P17749165095966996836

/-! ## A231022.P18175500533960160584

`A231023(eq[7, A131818(n+1)])`
-/

namespace A231022.P18175500533960160584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231022.P18175500533960160584

/-! ## A231022.P10834295105702320395

`A231023(A056119(n)+16)`
-/

namespace A231022.P10834295105702320395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (A056119 n + 16).toNat

end

end A231022.P10834295105702320395

/-! ## A231022.P15765076267774210639

`A231023(eq[5, A193592(n)])`
-/

namespace A231022.P15765076267774210639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231022.P15765076267774210639

/-! ## A231022.P16797994780217127981

`A231023(eq[6, A200370(n+1)])`
-/

namespace A231022.P16797994780217127981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231022.P16797994780217127981

/-!
# A231023: T(n,k)=Number of (n+3)X(k+3) 0..3 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231023, there is no canonical definition to state claims against.
-/

/-! ## A231023.P11156369348555249438

`A230796(n+1)/(4*A230949(n+1))`
-/

namespace A231023.P11156369348555249438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230796 (n + 1) : ℚ) / (4 * A230949 (n + 1) : ℚ)

end

end A231023.P11156369348555249438

/-! ## A231023.P1981536747118838827

`A230796(n+1)/A008574(A230949(n+1))`
-/

namespace A231023.P1981536747118838827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230796 (n + 1) : ℚ) / (A008574 (A230949 (n + 1)).toNat : ℚ)

end

end A231023.P1981536747118838827

/-!
# A231024: Number of n X n 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231024, there is no canonical definition to state claims against.
-/

/-! ## A231024.P7691829933053657915

`A231031((n+1)²+n²)`
-/

namespace A231024.P7691829933053657915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 ((n + 1) ^ 2 + n ^ 2)

end

end A231024.P7691829933053657915

/-!
# A231025: Number of n X 2 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231025, the canonical program `A231025.P16307564340873312255` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231025 has offset 1).

The definition of A231025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231025.P16307564340873312255

`4*a(n-1)+8*a(n-2)-4*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=62, a(4)=344`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231025

/-- `4*a(n-1)+8*a(n-2)-4*a(n-4)+a(n-5)` -/
def P16307564340873312255.Spec : Prop :=
  ∀ n, P16307564340873312255.a n = A231025 (n + 1)

theorem P16307564340873312255.correct : P16307564340873312255.Spec := by
  intro n
  simp only [A231025, Nat.add_sub_cancel]

end A231025

/-! ## A231025.P7181153056579594579

`record[A002524(n)*A010673(n)]`
-/

namespace A231025.P7181153056579594579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n * A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231025.P7181153056579594579

namespace A231025

/-- `record[A002524(n)*A010673(n)]` -/
def P7181153056579594579.Spec : Prop :=
  ∀ n, P7181153056579594579.a n = A231025 (n + 1)

end A231025

/-! ## A231025.P12956517090203352713

`record[A002524(n)*A010873(2*n)]`
-/

namespace A231025.P12956517090203352713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n * A010873 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231025.P12956517090203352713

namespace A231025

/-- `record[A002524(n)*A010873(2*n)]` -/
def P12956517090203352713.Spec : Prop :=
  ∀ n, P12956517090203352713.a n = A231025 (n + 1)

end A231025

/-! ## A231025.P17771628796788623057

`record[and(2, A131380(n))*A002524(n)]`
-/

namespace A231025.P17771628796788623057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A131380 n) * A002524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231025.P17771628796788623057

namespace A231025

/-- `record[and(2, A131380(n))*A002524(n)]` -/
def P17771628796788623057.Spec : Prop :=
  ∀ n, P17771628796788623057.a n = A231025 (n + 1)

end A231025

/-! ## A231025.P13730663047662821964

`record[2*A059841(n+1)*A002524(n)]`
-/

namespace A231025.P13730663047662821964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059841 (n + 1) * A002524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231025.P13730663047662821964

namespace A231025

/-- `record[2*A059841(n+1)*A002524(n)]` -/
def P13730663047662821964.Spec : Prop :=
  ∀ n, P13730663047662821964.a n = A231025 (n + 1)

end A231025

/-! ## A231025.P10677517773326552032

`record[A002524(n+1)*A107279(3*n)]`
-/

namespace A231025.P10677517773326552032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 1) * A107279 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231025.P10677517773326552032

namespace A231025

/-- `record[A002524(n+1)*A107279(3*n)]` -/
def P10677517773326552032.Spec : Prop :=
  ∀ n, P10677517773326552032.a n = A231025 (n + 1)

end A231025

/-!
# A231026: Number of nX3 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231026, there is no canonical definition to state claims against.
-/

/-! ## A231026.P7704570300967019624

`A231031(∑[n+2]+4)`
-/

namespace A231026.P7704570300967019624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231026.P7704570300967019624

/-! ## A231026.P11893361046231732629

`lcm(2, A231031(A167614(n+1)))`
-/

namespace A231026.P11893361046231732629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231031 (A167614 (n + 1)).toNat)

end

end A231026.P11893361046231732629

/-! ## A231026.P9709444731183712422

`A326680(n)+A231031(A167614(n+1))`
-/

namespace A231026.P9709444731183712422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A231031 (A167614 (n + 1)).toNat

end

end A231026.P9709444731183712422

/-! ## A231026.P3581595699772431460

`A326688(n)+A231031(A167614(n+1))`
-/

namespace A231026.P3581595699772431460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A231031 (A167614 (n + 1)).toNat

end

end A231026.P3581595699772431460

/-! ## A231026.P13878550213339025643

`A057427(n)*A231031(A167614(n+1))`
-/

namespace A231026.P13878550213339025643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231031 (A167614 (n + 1)).toNat

end

end A231026.P13878550213339025643

/-!
# A231027: Number of nX4 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231027, there is no canonical definition to state claims against.
-/

/-! ## A231027.P12146014624157616714

`A231031(A052905(n)+9)`
-/

namespace A231027.P12146014624157616714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A052905 n + 9).toNat

end

end A231027.P12146014624157616714

/-! ## A231027.P15815927835567503082

`A231031(A055999(n)+10)`
-/

namespace A231027.P15815927835567503082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A055999 n + 10).toNat

end

end A231027.P15815927835567503082

/-! ## A231027.P3438666283269085642

`A231031(A167614(n+2)+1)`
-/

namespace A231027.P3438666283269085642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A167614 (n + 2) + 1).toNat

end

end A231027.P3438666283269085642

/-! ## A231027.P16143923188196360252

`A231031(A166136(n+2)-2)`
-/

namespace A231027.P16143923188196360252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A166136 (n + 2) - 2).toNat

end

end A231027.P16143923188196360252

/-! ## A231027.P4615031258751595528

`A231031(eq[5, A131818(n+1)])`
-/

namespace A231027.P4615031258751595528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231027.P4615031258751595528

/-!
# A231028: Number of nX5 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231028, there is no canonical definition to state claims against.
-/

/-! ## A231028.P10466043943916663251

`A231031(A155212(n)+13)`
-/

namespace A231028.P10466043943916663251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A155212 n + 13).toNat

end

end A231028.P10466043943916663251

/-! ## A231028.P1138489722551051129

`A231031(eq[6, A131818(n+1)])`
-/

namespace A231028.P1138489722551051129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231028.P1138489722551051129

/-! ## A231028.P7712737144421593869

`A231031(Δ[A264443(n)])`
-/

namespace A231028.P7712737144421593869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (f1 (n + 1) - f1 n).toNat

end

end A231028.P7712737144421593869

/-! ## A231028.P15236826018334348092

`A231031(A374005(n+1))`
-/

namespace A231028.P15236826018334348092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A374005 (n + 1)).toNat

end

end A231028.P15236826018334348092

/-! ## A231028.P303420614026262258

`A231031(eq[4, A193592(n)])`
-/

namespace A231028.P303420614026262258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231028.P303420614026262258

/-!
# A231029: Number of nX6 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231029, there is no canonical definition to state claims against.
-/

/-! ## A231029.P11359885315980200666

`A231031(eq[7, A131818(n+1)])`
-/

namespace A231029.P11359885315980200666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231029.P11359885315980200666

/-! ## A231029.P13578885555561550306

`A231031(A374007(n+1))`
-/

namespace A231029.P13578885555561550306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A374007 (n + 1)).toNat

end

end A231029.P13578885555561550306

/-! ## A231029.P622650448470603509

`A231031(A052905(n+3))`
-/

namespace A231029.P622650448470603509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A052905 (n + 3)).toNat

end

end A231029.P622650448470603509

/-! ## A231029.P13202632670072886454

`A231031(eq[3, A219347(n)])`
-/

namespace A231029.P13202632670072886454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231029.P13202632670072886454

/-! ## A231029.P2633897288907881271

`A231031(eq[5, A193592(n)])`
-/

namespace A231029.P2633897288907881271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231029.P2633897288907881271

/-!
# A231030: Number of n X 7 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231030, there is no canonical definition to state claims against.
-/

/-! ## A231030.P16167640700106488049

`A231031(eq[8, A131818(n+1)])`
-/

namespace A231030.P16167640700106488049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231030.P16167640700106488049

/-! ## A231030.P9191295835827921352

`A231031(A374008(n+1))`
-/

namespace A231030.P9191295835827921352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (A374008 (n + 1)).toNat

end

end A231030.P9191295835827921352

/-! ## A231030.P816192461656357185

`A231031(eq[2, A219347(n)-2])`
-/

namespace A231030.P816192461656357185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231030.P816192461656357185

/-!
# A231031: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231031, there is no canonical definition to state claims against.
-/

/-! ## A231031.P6332327880787749517

`A007150(A118190(n))`
-/

namespace A231031.P6332327880787749517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A118190 n).toNat

end

end A231031.P6332327880787749517

/-! ## A231031.P886537387126750187

`A103634(A118185(n))`
-/

namespace A231031.P886537387126750187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A118185 n).toNat

end

end A231031.P886537387126750187

/-! ## A231031.P6823310101455177500

`A160230(A168551(n))`
-/

namespace A231031.P6823310101455177500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160230 (A168551 n).toNat

end

end A231031.P6823310101455177500

/-! ## A231031.P8879695319312690991

`A334045(A038719(n))`
-/

namespace A231031.P8879695319312690991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334045 (A038719 n).toNat

end

end A231031.P8879695319312690991

/-! ## A231031.P15865640506927676511

`A232114(A146990(n))`
-/

namespace A231031.P15865640506927676511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232114 (A146990 n).toNat

end

end A231031.P15865640506927676511

/-!
# A231032: Number of n X 3 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231032, there is no canonical definition to state claims against.
-/

/-! ## A231032.P10196963143838080908

`A231037(∑[n+3]+1)`
-/

namespace A231032.P10196963143838080908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231032.P10196963143838080908

/-! ## A231032.P8903222582593928101

`lcm(2, A231037(A034856(n+2)))`
-/

namespace A231032.P8903222582593928101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231037 (A034856 (n + 2)).toNat)

end

end A231032.P8903222582593928101

/-! ## A231032.P15993819772655503453

`A231037(A034856(n+2))%A001147(n+1)`
-/

namespace A231032.P15993819772655503453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231037 (A034856 (n + 2)).toNat) (A001147 (n + 1))

end

end A231032.P15993819772655503453

/-! ## A231032.P698617664029585665

`and(A231037(A034856(n+2)), A295304(2*(n+1)))`
-/

namespace A231032.P698617664029585665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231037 (A034856 (n + 2)).toNat) (A295304 (2 * (n + 1)))

end

end A231032.P698617664029585665

/-!
# A231033: Number of nX4 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231033, there is no canonical definition to state claims against.
-/

/-! ## A231033.P1461625294969983810

`A231037(∑[n+4]+3)`
-/

namespace A231033.P1461625294969983810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A231033.P1461625294969983810

/-!
# A231034: Number of nX5 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231034, there is no canonical definition to state claims against.
-/

/-! ## A231034.P2864478946511561875

`A231037(∑[n+5]+6)`
-/

namespace A231034.P2864478946511561875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A231034.P2864478946511561875

/-!
# A231035: Number of nX6 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231035, there is no canonical definition to state claims against.
-/

/-! ## A231035.P1069291744750148043

`A231037(A052905(n+3))`
-/

namespace A231035.P1069291744750148043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A052905 (n + 3)).toNat

end

end A231035.P1069291744750148043

/-! ## A231035.P15415791207259032776

`A231037(A056119(n)+16)`
-/

namespace A231035.P15415791207259032776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A056119 n + 16).toNat

end

end A231035.P15415791207259032776

/-! ## A231035.P1335256242402408596

`A231037(eq[3, A219347(n)])`
-/

namespace A231035.P1335256242402408596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231035.P1335256242402408596

/-! ## A231035.P14502531239658110377

`A231037(eq[5, A152157(n)])`
-/

namespace A231035.P14502531239658110377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231035.P14502531239658110377

/-!
# A231036: Number of nX7 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231036, there is no canonical definition to state claims against.
-/

/-! ## A231036.P16868895274858309440

`A231037(A055999(n+4))`
-/

namespace A231036.P16868895274858309440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A055999 (n + 4)).toNat

end

end A231036.P16868895274858309440

/-! ## A231036.P15024441723465338232

`A231037(eq[4, A219347(n)])`
-/

namespace A231036.P15024441723465338232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231036.P15024441723465338232

/-! ## A231036.P15617759398710380059

`A231037(eq[6, A193592(n)])`
-/

namespace A231036.P15617759398710380059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231036.P15617759398710380059

/-!
# A231038: Number of 2 X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231038, there is no canonical definition to state claims against.
-/

/-! ## A231038.P679027619256494954

`A231037(∑[n+1]+2)`
-/

namespace A231038.P679027619256494954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231038.P679027619256494954

/-! ## A231038.P17907199844258014488

`lcm(2, A231037(A238531(n+2)))`
-/

namespace A231038.P17907199844258014488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231037 (A238531 (n + 2)).toNat)

end

end A231038.P17907199844258014488

/-! ## A231038.P11745163145621942426

`A231037(A238531(n+2))%A137956(n)`
-/

namespace A231038.P11745163145621942426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231037 (A238531 (n + 2)).toNat) (A137956 n)

end

end A231038.P11745163145621942426

/-! ## A231038.P6270818119771561641

`and((char[5]+1)*n!, A005843(A214521(n+1)))`
-/

namespace A231038.P6270818119771561641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((((if ∃ j, f1 j = n then 1 else 0) + 1) * Nat.factorial n : ℕ) : ℤ) (A005843 (A214521 (n + 1)).toNat)

end

end A231038.P6270818119771561641

/-!
# A231039: Number of 3 X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231039, there is no canonical definition to state claims against.
-/

/-! ## A231039.P4610344163010127023

`A231037(∑[n+2]+4)`
-/

namespace A231039.P4610344163010127023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231039.P4610344163010127023

/-! ## A231039.P17042820054901989277

`lcm(2, A231037(A167614(n+1)))`
-/

namespace A231039.P17042820054901989277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231037 (A167614 (n + 1)).toNat)

end

end A231039.P17042820054901989277

/-! ## A231039.P18182187622424579230

`record[A010054(n)*A231037(n+3)]`
-/

namespace A231039.P18182187622424579230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231039.P18182187622424579230

/-! ## A231039.P18033208253935930495

`record[A231037(n+4)/A201638(n)]`
-/

namespace A231039.P18033208253935930495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231037 (n + 4) : ℚ) / (A201638 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231039.P18033208253935930495

/-! ## A231039.P13120271578081673154

`record[A231037(n+5)/A322383(n+2)]`
-/

namespace A231039.P13120271578081673154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231037 (n + 5) : ℚ) / (A322383 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231039.P13120271578081673154

/-!
# A231040: Number of 4Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231040, there is no canonical definition to state claims against.
-/

/-! ## A231040.P13904165649391577721

`A231037(∑[n+3]+7)`
-/

namespace A231040.P13904165649391577721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231040.P13904165649391577721

/-!
# A231041: Number of 5Xn 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231041, there is no canonical definition to state claims against.
-/

/-! ## A231041.P18133259408653871916

`A231037(A167499(n+3))`
-/

namespace A231041.P18133259408653871916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A167499 (n + 3)).toNat

end

end A231041.P18133259408653871916

/-! ## A231041.P8931415279179657360

`A231037(A155212(n)+13)`
-/

namespace A231041.P8931415279179657360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A155212 n + 13).toNat

end

end A231041.P8931415279179657360

/-! ## A231041.P3630861787438207972

`A231037(A056000(n)+15)`
-/

namespace A231041.P3630861787438207972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A056000 n + 15).toNat

end

end A231041.P3630861787438207972

/-! ## A231041.P10284141355252922179

`A231037(eq[7, A066657(n)])`
-/

namespace A231041.P10284141355252922179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231041.P10284141355252922179

/-! ## A231041.P14510485728042235413

`A231037(A133263(n+4)+3)`
-/

namespace A231041.P14510485728042235413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A133263 (n + 4) + 3).toNat

end

end A231041.P14510485728042235413

/-!
# A231042: Number of 6 X n 0..2 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3 and at least one element with value (x(i,j)-1) mod 3, and upper left element zero.

The programs for A231042, there is no canonical definition to state claims against.
-/

/-! ## A231042.P8887449463070062482

`A231037(A056115(n)+21)`
-/

namespace A231042.P8887449463070062482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A056115 n + 21).toNat

end

end A231042.P8887449463070062482

/-! ## A231042.P14599431231715356938

`A231037(eq[6, A256910(n)])`
-/

namespace A231042.P14599431231715356938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231042.P14599431231715356938

/-! ## A231042.P17658085381716721056

`A231037(A056000(n+1)+16)`
-/

namespace A231042.P17658085381716721056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A056000 (n + 1) + 16).toNat

end

end A231042.P17658085381716721056

/-! ## A231042.P3252647114932197114

`A231037(eq[6, A130270(n+1)])`
-/

namespace A231042.P3252647114932197114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231042.P3252647114932197114

/-! ## A231042.P7874228424868706651

`A231037(eq[7, A131818(n+1)])`
-/

namespace A231042.P7874228424868706651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231042.P7874228424868706651

/-!
# A231043: Number of n X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231043, there is no canonical definition to state claims against.
-/

/-! ## A231043.P3920050855011798597

`A231049(∑[4*n]+1)`
-/

namespace A231043.P3920050855011798597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231043.P3920050855011798597

/-! ## A231043.P12894062824946970588

`lcm(2, A231049(A001844(n)))`
-/

namespace A231043.P12894062824946970588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231049 (A001844 n).toNat)

end

end A231043.P12894062824946970588

/-! ## A231043.P2598747281409719648

`record[A003982(n)*A231049(n+1)]`
-/

namespace A231043.P2598747281409719648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231043.P2598747281409719648

/-! ## A231043.P9444191357127733405

`A231049(A001844(n))+A185245(n)`
-/

namespace A231043.P9444191357127733405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A001844 n).toNat + A185245 n

end

end A231043.P9444191357127733405

/-! ## A231043.P8644947742167896530

`A231049(A001844(n))+A185284(n)`
-/

namespace A231043.P8644947742167896530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A001844 n).toNat + A185284 n

end

end A231043.P8644947742167896530

/-!
# A231044: Number of n X 3 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231044, there is no canonical definition to state claims against.
-/

/-! ## A231044.P8420736833234509693

`A231049(∑[n+3]+1)`
-/

namespace A231044.P8420736833234509693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231044.P8420736833234509693

/-! ## A231044.P2199819324832510382

`record[A231049(A347633(n+1))]`
-/

namespace A231044.P2199819324832510382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231044.P2199819324832510382

/-! ## A231044.P11073705930650873087

`record[A231049(A034856(A328397(n)))]`
-/

namespace A231044.P11073705930650873087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A034856 (A328397 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231044.P11073705930650873087

/-! ## A231044.P16298999848667207068

`A335453(n+1)+A231049(A347633(3*n+4))`
-/

namespace A231044.P16298999848667207068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (n + 1) + A231049 (A347633 (3 * n + 4)).toNat

end

end A231044.P16298999848667207068

/-! ## A231044.P914069884430114599

`A335460(2*n+3)+A231049(A347633(3*n+4))`
-/

namespace A231044.P914069884430114599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (2 * n + 3) + A231049 (A347633 (3 * n + 4)).toNat

end

end A231044.P914069884430114599

/-!
# A231045: Number of n X 4 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231045, there is no canonical definition to state claims against.
-/

/-! ## A231045.P4141027656763132196

`8*a(n-1)+33*a(n-2)-68*a(n-3)` with `a(0)=0, a(1)=32, a(2)=128`
-/

namespace A231045.P4141027656763132196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 32, 128] fun n a =>
  8 * a (n - 1) + 33 * a (n - 2) - 68 * a (n - 3)

end

end A231045.P4141027656763132196

/-! ## A231045.P14700971378651685421

`A231049(A141214(n+1))`
-/

namespace A231045.P14700971378651685421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A141214 (n + 1)).toNat

end

end A231045.P14700971378651685421

/-! ## A231045.P14530412002295470993

`A231049(A027379(n+2))`
-/

namespace A231045.P14530412002295470993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A027379 (n + 2)).toNat

end

end A231045.P14530412002295470993

/-! ## A231045.P8810390503658242201

`A231049(A056000(n)+7)`
-/

namespace A231045.P8810390503658242201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A056000 n + 7).toNat

end

end A231045.P8810390503658242201

/-! ## A231045.P15213521303044340978

`A231049(A046691(n+2)+1)`
-/

namespace A231045.P15213521303044340978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A046691 (n + 2) + 1).toNat

end

end A231045.P15213521303044340978

/-!
# A231046: Number of nX5 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231046, there is no canonical definition to state claims against.
-/

/-! ## A231046.P16257949628498125232

`A231049(Δ[A264443(n)])`
-/

namespace A231046.P16257949628498125232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (f1 (n + 1) - f1 n).toNat

end

end A231046.P16257949628498125232

/-! ## A231046.P12164824533879050152

`A231049(A046691(n+3))`
-/

namespace A231046.P12164824533879050152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A046691 (n + 3)).toNat

end

end A231046.P12164824533879050152

/-! ## A231046.P5834177901890290829

`A231049(A056115(n)+11)`
-/

namespace A231046.P5834177901890290829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A056115 n + 11).toNat

end

end A231046.P5834177901890290829

/-! ## A231046.P10730579988962556467

`A231049(eq[4, A193592(n)])`
-/

namespace A231046.P10730579988962556467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231046.P10730579988962556467

/-! ## A231046.P9068121680249312651

`A231049(Δ[A023545(n+1)])`
-/

namespace A231046.P9068121680249312651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (f1 (n + 1) - f1 n).toNat

end

end A231046.P9068121680249312651

/-!
# A231047: Number of nX6 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231047, there is no canonical definition to state claims against.
-/

/-! ## A231047.P4640166246995523278

`A231049(A052905(n+3))`
-/

namespace A231047.P4640166246995523278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A052905 (n + 3)).toNat

end

end A231047.P4640166246995523278

/-! ## A231047.P12028977763418099355

`A231049(eq[3, A219347(n)])`
-/

namespace A231047.P12028977763418099355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231047.P12028977763418099355

/-! ## A231047.P5156302840362274113

`A231049(eq[5, A193592(n)])`
-/

namespace A231047.P5156302840362274113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231047.P5156302840362274113

/-! ## A231047.P15610736400716336072

`A231049(eq[6, A200370(n+1)])`
-/

namespace A231047.P15610736400716336072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231047.P15610736400716336072

/-! ## A231047.P1247690025429410672

`A231049(eq[8, A185782(n+1)])`
-/

namespace A231047.P1247690025429410672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231047.P1247690025429410672

/-!
# A231048: Number of nX7 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231048, there is no canonical definition to state claims against.
-/

/-! ## A231048.P11650606174161048937

`A231049(A055999(n+4))`
-/

namespace A231048.P11650606174161048937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A055999 (n + 4)).toNat

end

end A231048.P11650606174161048937

/-! ## A231048.P8832808008208014303

`A231049(eq[4, A219347(n)])`
-/

namespace A231048.P8832808008208014303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231048.P8832808008208014303

/-! ## A231048.P14717773895704563073

`A231049(eq[6, A193592(n)])`
-/

namespace A231048.P14717773895704563073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231048.P14717773895704563073

/-! ## A231048.P13164272399523058619

`A231049(eq[7, A200370(n+1)])`
-/

namespace A231048.P13164272399523058619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231048.P13164272399523058619

/-! ## A231048.P4490624873486051631

`A231049(eq[10, A185782(n+1)])`
-/

namespace A231048.P4490624873486051631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231048.P4490624873486051631

/-!
# A231049: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231049, there is no canonical definition to state claims against.
-/

/-! ## A231049.P15402742092379159950

`and(A000217(A026395(n)), A231080(n+1))`
-/

namespace A231049.P15402742092379159950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A026395 n).toNat) (A231080 (n + 1))

end

end A231049.P15402742092379159950

/-! ## A231049.P4894990818439915949

`and(A026741(A214663(n)), A231080(n+1))`
-/

namespace A231049.P4894990818439915949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026741 (A214663 n).toNat) (A231080 (n + 1))

end

end A231049.P4894990818439915949

/-! ## A231049.P8727645034784301790

`and(A231080(n+1), A290490(A001405(n)))`
-/

namespace A231049.P8727645034784301790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231080 (n + 1)) (A290490 (A001405 n).toNat)

end

end A231049.P8727645034784301790

/-! ## A231049.P12226506504553495020

`and(A005408(A324218(n)), A231080(n+1))`
-/

namespace A231049.P12226506504553495020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A324218 n).toNat) (A231080 (n + 1))

end

end A231049.P12226506504553495020

/-! ## A231049.P6750435105002967426

`and(A156521(A156562(n+1)), A231080(n+1))`
-/

namespace A231049.P6750435105002967426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156521 (A156562 (n + 1)).toNat) (A231080 (n + 1))

end

end A231049.P6750435105002967426

/-!
# A231050: Number of 2 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231050, the canonical program `A231050.P12167193557831723890` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231050 has offset 1).

The definition of A231050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231050.P12167193557831723890

`3*a(n-1)+8*a(n-3)+6*a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=2, a(2)=14, a(3)=32, a(4)=100, a(5)=428`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231050

/-- `3*a(n-1)+8*a(n-3)+6*a(n-4)-4*a(n-5)` -/
def P12167193557831723890.Spec : Prop :=
  ∀ n, P12167193557831723890.a n = A231050 (n + 1)

theorem P12167193557831723890.correct : P12167193557831723890.Spec := by
  intro n
  simp only [A231050, Nat.add_sub_cancel]

end A231050

/-! ## A231050.P6080372860402517263

`A231049(∑[n+1]+2)`
-/

namespace A231050.P6080372860402517263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231050.P6080372860402517263

namespace A231050

/-- `A231049(∑[n+1]+2)` -/
def P6080372860402517263.Spec : Prop :=
  ∀ n, P6080372860402517263.a n = A231050 (n + 1)

end A231050

/-! ## A231050.P16971452112560038964

`record[A231049(n+1)/A245397(n)]`
-/

namespace A231050.P16971452112560038964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231049 (n + 1) : ℚ) / (A245397 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231050.P16971452112560038964

namespace A231050

/-- `record[A231049(n+1)/A245397(n)]` -/
def P16971452112560038964.Spec : Prop :=
  ∀ n, P16971452112560038964.a n = (A231050 (n + 1) : ℚ)

end A231050

/-! ## A231050.P266555435911805382

`record[A231049(n+2)/A118185(n)]`
-/

namespace A231050.P266555435911805382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231049 (n + 2) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231050.P266555435911805382

namespace A231050

/-- `record[A231049(n+2)/A118185(n)]` -/
def P266555435911805382.Spec : Prop :=
  ∀ n, P266555435911805382.a n = (A231050 (n + 1) : ℚ)

end A231050

/-! ## A231050.P14410875709376497819

`record[A231049(n+2)/A154985(n)]`
-/

namespace A231050.P14410875709376497819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231049 (n + 2) : ℚ) / (A154985 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231050.P14410875709376497819

namespace A231050

/-- `record[A231049(n+2)/A154985(n)]` -/
def P14410875709376497819.Spec : Prop :=
  ∀ n, P14410875709376497819.a n = (A231050 (n + 1) : ℚ)

end A231050

/-!
# A231051: Number of 3Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231051, there is no canonical definition to state claims against.
-/

/-! ## A231051.P7675080727816172263

`A231049(∑[n+2]+4)`
-/

namespace A231051.P7675080727816172263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231051.P7675080727816172263

/-! ## A231051.P9935886629743993345

`lcm(2, A231049(A167614(n+1)))`
-/

namespace A231051.P9935886629743993345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231049 (A167614 (n + 1)).toNat)

end

end A231051.P9935886629743993345

/-! ## A231051.P10105878918681233961

`A264668(n)+A231049(A167614(n+1))`
-/

namespace A231051.P10105878918681233961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A231049 (A167614 (n + 1)).toNat

end

end A231051.P10105878918681233961

/-! ## A231051.P7401847795824954450

`A057427(n)*A231049(A167614(n+1))`
-/

namespace A231051.P7401847795824954450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231049 (A167614 (n + 1)).toNat

end

end A231051.P7401847795824954450

/-! ## A231051.P4928505790484959156

`A231049(A167614(n+1))*A271839(n)`
-/

namespace A231051.P4928505790484959156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A167614 (n + 1)).toNat * A271839 n

end

end A231051.P4928505790484959156

/-!
# A231052: Number of 4Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231052, there is no canonical definition to state claims against.
-/

/-! ## A231052.P1454586931751118862

`A231049(A141214(n)+7)`
-/

namespace A231052.P1454586931751118862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A141214 n + 7).toNat

end

end A231052.P1454586931751118862

/-! ## A231052.P5108862912585540651

`A231049(A052905(n)+9)`
-/

namespace A231052.P5108862912585540651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A052905 n + 9).toNat

end

end A231052.P5108862912585540651

/-! ## A231052.P8391559299102283305

`A231049(A055999(n)+10)`
-/

namespace A231052.P8391559299102283305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A055999 n + 10).toNat

end

end A231052.P8391559299102283305

/-! ## A231052.P7618817521541864043

`A231049(A167614(n+2)+1)`
-/

namespace A231052.P7618817521541864043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A167614 (n + 2) + 1).toNat

end

end A231052.P7618817521541864043

/-! ## A231052.P12829465149510484688

`A231049(eq[5, A131818(n+1)])`
-/

namespace A231052.P12829465149510484688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231052.P12829465149510484688

/-!
# A231053: Number of 5Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231053, there is no canonical definition to state claims against.
-/

/-! ## A231053.P9251245410366447147

`A231049(A167499(n+3))`
-/

namespace A231053.P9251245410366447147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A167499 (n + 3)).toNat

end

end A231053.P9251245410366447147

/-! ## A231053.P6174929404870759518

`A231049(A155212(n)+13)`
-/

namespace A231053.P6174929404870759518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A155212 n + 13).toNat

end

end A231053.P6174929404870759518

/-! ## A231053.P252522266229673756

`A231049(A056000(n)+15)`
-/

namespace A231053.P252522266229673756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A056000 n + 15).toNat

end

end A231053.P252522266229673756

/-! ## A231053.P1972050767221675255

`A231049(eq[7, A066657(n)])`
-/

namespace A231053.P1972050767221675255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231053.P1972050767221675255

/-! ## A231053.P17259564742915755730

`A231049(eq[6, A131818(n+1)])`
-/

namespace A231053.P17259564742915755730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231053.P17259564742915755730

/-!
# A231054: Number of 6Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231054, there is no canonical definition to state claims against.
-/

/-! ## A231054.P2490004926106668066

`A231049(Δ[A264443(n)]+10)`
-/

namespace A231054.P2490004926106668066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (f1 (n + 1) - f1 n + 10).toNat

end

end A231054.P2490004926106668066

/-! ## A231054.P3003992970621938442

`A231049(A167499(n+4)+1)`
-/

namespace A231054.P3003992970621938442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A167499 (n + 4) + 1).toNat

end

end A231054.P3003992970621938442

/-! ## A231054.P583230735679967068

`A231049(A161680(n+6)+6)`
-/

namespace A231054.P583230735679967068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A161680 (n + 6) + 6).toNat

end

end A231054.P583230735679967068

/-! ## A231054.P17387133595149819982

`A231049(eq[6, A130270(n+1)])`
-/

namespace A231054.P17387133595149819982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231054.P17387133595149819982

/-! ## A231054.P14763204772280698084

`A231049(eq[7, A131818(n+1)])`
-/

namespace A231054.P14763204772280698084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231054.P14763204772280698084

/-!
# A231055: Number of 7Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231055, there is no canonical definition to state claims against.
-/

/-! ## A231055.P11710812893858277508

`A231049(A056119(n)+28)`
-/

namespace A231055.P11710812893858277508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A056119 n + 28).toNat

end

end A231055.P11710812893858277508

/-! ## A231055.P1384841703446982077

`A231049(eq[11, A066657(n)])`
-/

namespace A231055.P1384841703446982077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231055.P1384841703446982077

/-! ## A231055.P18067879375342472086

`A231049(A000217(n+6)+7)`
-/

namespace A231055.P18067879375342472086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A000217 (n + 6) + 7).toNat

end

end A231055.P18067879375342472086

/-! ## A231055.P1467184017295379083

`A231049(A161680(n+7)+7)`
-/

namespace A231055.P1467184017295379083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A161680 (n + 7) + 7).toNat

end

end A231055.P1467184017295379083

/-! ## A231055.P7572687743983997044

`A231049(A155212(n+2)+15)`
-/

namespace A231055.P7572687743983997044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (A155212 (n + 2) + 15).toNat

end

end A231055.P7572687743983997044

/-!
# A231056: The maximum number of X patterns that can be packed into an n X n array of coins.

The programs for A231056, there is no canonical definition to state claims against.
-/

/-! ## A231056.P18231650453188304363

`A036404(n)-A323239(A036424(n))`
-/

namespace A231056.P18231650453188304363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 n - A323239 (A036424 n).toNat

end

end A231056.P18231650453188304363

/-! ## A231056.P10889681869776335932

`A121902(A119438(n)+A046368(n+1))`
-/

namespace A231056.P10889681869776335932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A119438 n + A046368 (n + 1)).toNat

end

end A231056.P10889681869776335932

/-! ## A231056.P4283665608850234804

`A121902(A165971(n+1)+A119438(n))`
-/

namespace A231056.P4283665608850234804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A165971 (n + 1) + A119438 n).toNat

end

end A231056.P4283665608850234804

/-! ## A231056.P6438479375519234089

`A003002(A325877(2*n+1)-A239141(n+1))`
-/

namespace A231056.P6438479375519234089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A325877 (2 * n + 1) - A239141 (n + 1)).toNat

end

end A231056.P6438479375519234089

/-! ## A231056.P15441699581693660952

`A090532(A291401(n))`
-/

namespace A231056.P15441699581693660952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A291401 n).toNat

end

end A231056.P15441699581693660952

/-!
# A231057: Number of n X 2 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231057, the canonical program `A231057.P12907186779717525578` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231057 has offset 1).

The definition of A231057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231057.P4511373514243495186

`ogf(-2x/(-1+3x+x^2+x^3))`
-/

namespace A231057.P4511373514243495186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -3, -1, -1] n

end

end A231057.P4511373514243495186

namespace A231057

/-- `ogf(-2x/(-1+3x+x^2+x^3))` -/
def P4511373514243495186.Spec : Prop :=
  ∀ n, P4511373514243495186.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P12907186779717525578

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231057

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P12907186779717525578.Spec : Prop :=
  ∀ n, (P12907186779717525578.a n : ℤ) = A231057 (n + 1)

theorem P12907186779717525578.correct : P12907186779717525578.Spec := by
  intro n
  simp only [A231057, Nat.add_sub_cancel]

end A231057

/-! ## A231057.P16556566149264428217

`2*A113300(n)`
-/

namespace A231057.P16556566149264428217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113300 n

end

end A231057.P16556566149264428217

namespace A231057

/-- `2*A113300(n)` -/
def P16556566149264428217.Spec : Prop :=
  ∀ n, P16556566149264428217.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P14066830575610434092

`∑[2*A099463(n)]`
-/

namespace A231057.P14066830575610434092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231057.P14066830575610434092

namespace A231057

/-- `∑[2*A099463(n)]` -/
def P14066830575610434092.Spec : Prop :=
  ∀ n, P14066830575610434092.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P1533115770898585797

`∑[A354784(2*n)]`
-/

namespace A231057.P1533115770898585797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231057.P1533115770898585797

namespace A231057

/-- `∑[A354784(2*n)]` -/
def P1533115770898585797.Spec : Prop :=
  ∀ n, P1533115770898585797.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P7842221094306577295

`Δ[A192804(2*n)]`
-/

namespace A231057.P7842221094306577295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231057.P7842221094306577295

namespace A231057

/-- `Δ[A192804(2*n)]` -/
def P7842221094306577295.Spec : Prop :=
  ∀ n, P7842221094306577295.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P518288858177007646

`A001590(2*(n+1))`
-/

namespace A231057.P518288858177007646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (2 * (n + 1))

end

end A231057.P518288858177007646

namespace A231057

/-- `A001590(2*(n+1))` -/
def P518288858177007646.Spec : Prop :=
  ∀ n, P518288858177007646.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P8963530098662360186

`A034804(3*(n+1))`
-/

namespace A231057.P8963530098662360186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034804 (3 * (n + 1))

end

end A231057.P8963530098662360186

namespace A231057

/-- `A034804(3*(n+1))` -/
def P8963530098662360186.Spec : Prop :=
  ∀ n, P8963530098662360186.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P15621053245762760400

`2*A075111(2*n)`
-/

namespace A231057.P15621053245762760400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075111 (2 * n)

end

end A231057.P15621053245762760400

namespace A231057

/-- `2*A075111(2*n)` -/
def P15621053245762760400.Spec : Prop :=
  ∀ n, P15621053245762760400.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P2783793864321927121

`A034803(3*n+5)`
-/

namespace A231057.P2783793864321927121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034803 (3 * n + 5)

end

end A231057.P2783793864321927121

namespace A231057

/-- `A034803(3*n+5)` -/
def P2783793864321927121.Spec : Prop :=
  ∀ n, P2783793864321927121.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P16249594643298282633

`∑[2*A000073(2*n)]`
-/

namespace A231057.P16249594643298282633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000073 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231057.P16249594643298282633

namespace A231057

/-- `∑[2*A000073(2*n)]` -/
def P16249594643298282633.Spec : Prop :=
  ∀ n, P16249594643298282633.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P15061291301947613346

`∑[2*A114952(4*n)]`
-/

namespace A231057.P15061291301947613346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114952 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231057.P15061291301947613346

namespace A231057

/-- `∑[2*A114952(4*n)]` -/
def P15061291301947613346.Spec : Prop :=
  ∀ n, P15061291301947613346.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P4159976445453247327

`A114952(3*(n+1)+n+2)`
-/

namespace A231057.P4159976445453247327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (3 * (n + 1) + (n + 2))

end

end A231057.P4159976445453247327

namespace A231057

/-- `A114952(3*(n+1)+n+2)` -/
def P4159976445453247327.Spec : Prop :=
  ∀ n, P4159976445453247327.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P4397356263570635474

`A308189(A113127(n))`
-/

namespace A231057.P4397356263570635474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (A113127 n).toNat

end

end A231057.P4397356263570635474

namespace A231057

/-- `A308189(A113127(n))` -/
def P4397356263570635474.Spec : Prop :=
  ∀ n, P4397356263570635474.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P9139079862024336424

`A099463(n)+A073717(n)`
-/

namespace A231057.P9139079862024336424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 n + A073717 n

end

end A231057.P9139079862024336424

namespace A231057

/-- `A099463(n)+A073717(n)` -/
def P9139079862024336424.Spec : Prop :=
  ∀ n, P9139079862024336424.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P14512489393202668040

`record[A001590(A014681(n)+2)]`
-/

namespace A231057.P14512489393202668040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A014681 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231057.P14512489393202668040

namespace A231057

/-- `record[A001590(A014681(n)+2)]` -/
def P14512489393202668040.Spec : Prop :=
  ∀ n, P14512489393202668040.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P8838867231022964996

`A113300(n)+∑[A099463(n)]`
-/

namespace A231057.P8838867231022964996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113300 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231057.P8838867231022964996

namespace A231057

/-- `A113300(n)+∑[A099463(n)]` -/
def P8838867231022964996.Spec : Prop :=
  ∀ n, P8838867231022964996.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P13597000926134613991

`A308189(A004278(2*n+1))`
-/

namespace A231057.P13597000926134613991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (A004278 (2 * n + 1)).toNat

end

end A231057.P13597000926134613991

namespace A231057

/-- `A308189(A004278(2*n+1))` -/
def P13597000926134613991.Spec : Prop :=
  ∀ n, P13597000926134613991.a n = A231057 (n + 1)

end A231057

/-! ## A231057.P7940123282203892438

`lcm(2, A001590(lcm(2, A103517(n))))`
-/

namespace A231057.P7940123282203892438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001590 (Int.lcm 2 (A103517 n)))

end

end A231057.P7940123282203892438

namespace A231057

/-- `lcm(2, A001590(lcm(2, A103517(n))))` -/
def P7940123282203892438.Spec : Prop :=
  ∀ n, (P7940123282203892438.a n : ℤ) = A231057 (n + 1)

end A231057

/-! ## A231057.P18194525991624055085

`A326329(n+1)+A099463(n)`
-/

namespace A231057.P18194525991624055085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 (n + 1) + A099463 n

end

end A231057.P18194525991624055085

namespace A231057

/-- `A326329(n+1)+A099463(n)` -/
def P18194525991624055085.Spec : Prop :=
  ∀ n, P18194525991624055085.a n = A231057 (n + 1)

end A231057

/-!
# A231058: Number of n X 3 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231058, there is no canonical definition to state claims against.
-/

/-! ## A231058.P9493271187899334882

`A231063(∑[n+2]+4)`
-/

namespace A231058.P9493271187899334882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231058.P9493271187899334882

/-! ## A231058.P15240410379730852701

`lcm(2, A231063(A167614(n+1)))`
-/

namespace A231058.P15240410379730852701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231063 (A167614 (n + 1)).toNat)

end

end A231058.P15240410379730852701

/-! ## A231058.P14480955890217572053

`A231063(A167614(n+1))+A185036(n)`
-/

namespace A231058.P14480955890217572053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A167614 (n + 1)).toNat + A185036 n

end

end A231058.P14480955890217572053

/-! ## A231058.P16908647370177656669

`A231063(A167614(n+1))+A185284(n)`
-/

namespace A231058.P16908647370177656669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A167614 (n + 1)).toNat + A185284 n

end

end A231058.P16908647370177656669

/-! ## A231058.P265031793617245782

`A057427(n)*A231063(A167614(n+1))`
-/

namespace A231058.P265031793617245782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231063 (A167614 (n + 1)).toNat

end

end A231058.P265031793617245782

/-!
# A231059: Number of nX4 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231059, there is no canonical definition to state claims against.
-/

/-! ## A231059.P7185553494446594969

`A231063(A141214(n)+7)`
-/

namespace A231059.P7185553494446594969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A141214 n + 7).toNat

end

end A231059.P7185553494446594969

/-! ## A231059.P1854601220558232498

`A231063(A052905(n)+9)`
-/

namespace A231059.P1854601220558232498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A052905 n + 9).toNat

end

end A231059.P1854601220558232498

/-! ## A231059.P11739340357274246995

`A231063(A055999(n)+10)`
-/

namespace A231059.P11739340357274246995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A055999 n + 10).toNat

end

end A231059.P11739340357274246995

/-! ## A231059.P8516208578032401280

`A231063(A167614(n+2)+1)`
-/

namespace A231059.P8516208578032401280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A167614 (n + 2) + 1).toNat

end

end A231059.P8516208578032401280

/-! ## A231059.P14227522710875957660

`A231063(A134227(n+1)+10)`
-/

namespace A231059.P14227522710875957660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A134227 (n + 1) + 10).toNat

end

end A231059.P14227522710875957660

/-!
# A231060: Number of nX5 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231060, there is no canonical definition to state claims against.
-/

/-! ## A231060.P13922474782326424711

`A231063(A155212(n)+13)`
-/

namespace A231060.P13922474782326424711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A155212 n + 13).toNat

end

end A231060.P13922474782326424711

/-! ## A231060.P703943642273922533

`A231063(A056000(n)+15)`
-/

namespace A231060.P703943642273922533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A056000 n + 15).toNat

end

end A231060.P703943642273922533

/-! ## A231060.P15845205291486880198

`A231063(eq[6, A131818(n+1)])`
-/

namespace A231060.P15845205291486880198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231060.P15845205291486880198

/-! ## A231060.P5231839999207751292

`A231063(eq[6, A135223(n+1)])`
-/

namespace A231060.P5231839999207751292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231060.P5231839999207751292

/-! ## A231060.P11183898746141296195

`A231063(Δ[A264443(n)])`
-/

namespace A231060.P11183898746141296195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (f1 (n + 1) - f1 n).toNat

end

end A231060.P11183898746141296195

/-!
# A231061: Number of nX6 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231061, there is no canonical definition to state claims against.
-/

/-! ## A231061.P431699047285181079

`A231063(A166136(n+4))`
-/

namespace A231061.P431699047285181079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A166136 (n + 4)).toNat

end

end A231061.P431699047285181079

/-! ## A231061.P2476952451909156656

`A231063(A141214(n+2)+9)`
-/

namespace A231061.P2476952451909156656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A141214 (n + 2) + 9).toNat

end

end A231061.P2476952451909156656

/-! ## A231061.P6463269998483592588

`A231063(eq[7, A131818(n+1)])`
-/

namespace A231061.P6463269998483592588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231061.P6463269998483592588

/-! ## A231061.P8288651195303767534

`record[A054527(n+1)*A231063(n+1)]`
-/

namespace A231061.P8288651195303767534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A231063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231061.P8288651195303767534

/-! ## A231061.P7714969650856577798

`A231063(A374007(n+1))`
-/

namespace A231061.P7714969650856577798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A374007 (n + 1)).toNat

end

end A231061.P7714969650856577798

/-!
# A231062: Number of nX7 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231062, there is no canonical definition to state claims against.
-/

/-! ## A231062.P8079437477674024840

`A231063(eq[11, A066657(n)])`
-/

namespace A231062.P8079437477674024840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231062.P8079437477674024840

/-! ## A231062.P14350424209709542619

`A231063(A055998(n+4)+10)`
-/

namespace A231062.P14350424209709542619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A055998 (n + 4) + 10).toNat

end

end A231062.P14350424209709542619

/-! ## A231062.P4322313018114241424

`A231063(eq[8, A131818(n+1)])`
-/

namespace A231062.P4322313018114241424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231062.P4322313018114241424

/-! ## A231062.P8686562910695501439

`A231063(A374008(n+1))`
-/

namespace A231062.P8686562910695501439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (A374008 (n + 1)).toNat

end

end A231062.P8686562910695501439

/-! ## A231062.P13492778214043316160

`A231063(eq[4, A219347(n)])`
-/

namespace A231062.P13492778214043316160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231062.P13492778214043316160

/-!
# A231063: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231063, there is no canonical definition to state claims against.
-/

/-! ## A231063.P14562251458663442557

`xor(A022166(n), A327939(A174192(n)))`
-/

namespace A231063.P14562251458663442557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022166 n) (A327939 (A174192 n).toNat)

end

end A231063.P14562251458663442557

/-! ## A231063.P11887105009989453892

`A261104(A230337(n+1)%A121964(n))`
-/

namespace A231063.P11887105009989453892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (Int.tmod (A230337 (n + 1)) (A121964 (n + 30))).toNat

end

end A231063.P11887105009989453892

/-! ## A231063.P7661349864284522673

`A227182(A271910(n+1)%A121964(n))`
-/

namespace A231063.P7661349864284522673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227182 (Int.tmod (A271910 (n + 1)) (A121964 (n + 30))).toNat

end

end A231063.P7661349864284522673

/-! ## A231063.P14509679333877865345

`A227182(A271910(n+1)^A327939(n+3))`
-/

namespace A231063.P14509679333877865345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227182 (SequenceMachineLib.roundAway ((A271910 (n + 1) : ℚ) ^ (A327939 (n + 3) : ℤ))).toNat

end

end A231063.P14509679333877865345

/-! ## A231063.P1907933911469220310

`A000010(A237437(n+1))%A008292(n+1)`
-/

namespace A231063.P1907933911469220310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A237437 (n + 1)).toNat) (A008292 (n + 1))

end

end A231063.P1907933911469220310

/-!
# A231065: Voids left after packing X patterns into an of n X n array of coins.

The programs for A231065, there is no canonical definition to state claims against.
-/

/-! ## A231065.P11753713609621370022

`(n+1)²-4*A231056(n+2)`
-/

namespace A231065.P11753713609621370022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 4 * A231056 (n + 2)

end

end A231065.P11753713609621370022

/-! ## A231065.P6490969290001366080

`A002378(n)-4*A231056(n+2)+n+1`
-/

namespace A231065.P6490969290001366080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - 4 * A231056 (n + 2) + (n + 1 : ℤ)

end

end A231065.P6490969290001366080

/-! ## A231065.P10606315774266089465

`A001489(4*A231056(n+2))+(n+1)²`
-/

namespace A231065.P10606315774266089465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (4 * A231056 (n + 2)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A231065.P10606315774266089465

/-!
# A231066: Number of black square subarrays of (n+1)X(n+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A231066, there is no canonical definition to state claims against.
-/

/-! ## A231066.P10613942961226236969

`A231070(∑[4*n]+1)`
-/

namespace A231066.P10613942961226236969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231066.P10613942961226236969

/-! ## A231066.P2017238489474869633

`record[A231070(∑[A266981(n)])]`
-/

namespace A231066.P2017238489474869633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231066.P2017238489474869633

/-! ## A231066.P8340542286290870307

`record[A003982(n)*A231070(n+1)]`
-/

namespace A231066.P8340542286290870307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231066.P8340542286290870307

/-! ## A231066.P14931123220439276745

`A231070(A001844(n))+A185284(n)`
-/

namespace A231066.P14931123220439276745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A001844 n).toNat + A185284 n

end

end A231066.P14931123220439276745

/-! ## A231066.P12231406444089154834

`A231070(A001844(n))%A332114(n)`
-/

namespace A231066.P12231406444089154834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231070 (A001844 n).toNat) (A332114 n)

end

end A231066.P12231406444089154834

/-!
# A231067: Number of black square subarrays of (n+1) X (2+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A231067, the canonical program `A231067.P12058714057141017311` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231067 has offset 1).

The definition of A231067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231067.P12058714057141017311

`5*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=11, a(4)=15, a(5)=42`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231067

/-- `5*a(n-2)-5*a(n-4)+2*a(n-6)` -/
def P12058714057141017311.Spec : Prop :=
  ∀ n, P12058714057141017311.a n = A231067 (n + 1)

theorem P12058714057141017311.correct : P12058714057141017311.Spec := by
  intro n
  simp only [A231067, Nat.add_sub_cancel]

end A231067

/-! ## A231067.P4501306327107096481

`∪[A279704(n+1), ∑[A279704(n+1)]]`
-/

namespace A231067.P4501306327107096481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279704 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231067.P4501306327107096481

namespace A231067

/-- `∪[A279704(n+1), ∑[A279704(n+1)]]` -/
def P4501306327107096481.Spec : Prop :=
  ∀ n, (P4501306327107096481.a n : ℤ) = A231067 (n + 1)

end A231067

/-! ## A231067.P6111758443347024333

`∪[A230983(2*n+1), Δ[A230983(2*n+1)]]`
-/

namespace A231067.P6111758443347024333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230983 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230983 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231067.P6111758443347024333

namespace A231067

/-- `∪[A230983(2*n+1), Δ[A230983(2*n+1)]]` -/
def P6111758443347024333.Spec : Prop :=
  ∀ n, (P6111758443347024333.a n : ℤ) = A231067 (n + 1)

end A231067

/-! ## A231067.P3192697105264901100

`A231070(∑[n+1]+2)`
-/

namespace A231067.P3192697105264901100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231067.P3192697105264901100

namespace A231067

/-- `A231070(∑[n+1]+2)` -/
def P3192697105264901100.Spec : Prop :=
  ∀ n, P3192697105264901100.a n = A231067 (n + 1)

end A231067

/-! ## A231067.P10433991581277927347

`or(A000007(n), A231070(C(n+2, 2)+2))`
-/

namespace A231067.P10433991581277927347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231070 (Nat.choose (n + 2) 2 + 2))

end

end A231067.P10433991581277927347

namespace A231067

/-- `or(A000007(n), A231070(C(n+2, 2)+2))` -/
def P10433991581277927347.Spec : Prop :=
  ∀ n, P10433991581277927347.a n = A231067 (n + 1)

end A231067

/-!
# A231068: Number of black square subarrays of (n+1)X(4+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A231068, there is no canonical definition to state claims against.
-/

/-! ## A231068.P12439817157433788545

`A231070(A374004(n+1))`
-/

namespace A231068.P12439817157433788545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A374004 (n + 1)).toNat

end

end A231068.P12439817157433788545

/-! ## A231068.P11391916399330984152

`A231070(A055999(n)+10)`
-/

namespace A231068.P11391916399330984152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A055999 n + 10).toNat

end

end A231068.P11391916399330984152

/-! ## A231068.P6401601412247678380

`A231070(Δ[A005286(n)]+5)`
-/

namespace A231068.P6401601412247678380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (f1 (n + 1) - f1 n + 5).toNat

end

end A231068.P6401601412247678380

/-! ## A231068.P10209776924477585692

`A231070(A167614(n+2)+1)`
-/

namespace A231068.P10209776924477585692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A167614 (n + 2) + 1).toNat

end

end A231068.P10209776924477585692

/-! ## A231068.P2808997857376799321

`A231070(A167487(n+2)-3)`
-/

namespace A231068.P2808997857376799321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A167487 (n + 2) - 3).toNat

end

end A231068.P2808997857376799321

/-!
# A231069: Number of black square subarrays of (n+1)X(6+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

The programs for A231069, there is no canonical definition to state claims against.
-/

/-! ## A231069.P17442146623605247226

`A231070(A374007(n+1))`
-/

namespace A231069.P17442146623605247226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A374007 (n + 1)).toNat

end

end A231069.P17442146623605247226

/-! ## A231069.P8513042014843572143

`A231070(A167614(n+4)+3)`
-/

namespace A231069.P8513042014843572143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A167614 (n + 4) + 3).toNat

end

end A231069.P8513042014843572143

/-! ## A231069.P999179308497377166

`A231070(A000217(n+5)+6)`
-/

namespace A231069.P999179308497377166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A000217 (n + 5) + 6).toNat

end

end A231069.P999179308497377166

/-! ## A231069.P14603190071635561151

`A231070(A052905(n+3))`
-/

namespace A231069.P14603190071635561151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A052905 (n + 3)).toNat

end

end A231069.P14603190071635561151

/-! ## A231069.P5865983339975262034

`A231070(A000124(n+6)-6)`
-/

namespace A231069.P5865983339975262034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231070 (A000124 (n + 6) - 6).toNat

end

end A231069.P5865983339975262034

/-!
# A231074: The number of possible ways to arrange the sums x_i + x_j (1 <= i < j <= n) of the items x_1 < x_2 <...< x_n in nondecreasing order.

The programs for A231074, there is no canonical definition to state claims against.
-/

/-! ## A231074.P11935383189448910428

`floor(sqrt(exp(n*(n²-6*n+11)/6)))`
-/

namespace A231074.P11935383189448910428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp ((n : ℚ) * (((n ^ 2 : ℤ) - (6 * n : ℤ) + 11 : ℚ) / 6) : ℝ))⌋

end

end A231074.P11935383189448910428

/-! ## A231074.P4672836835047563369

`ceil(A181076(n)/15)`
-/

namespace A231074.P4672836835047563369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181076 n : ℚ) / 15⌉

end

end A231074.P4672836835047563369

/-! ## A231074.P6609995809498321536

`ceil(A137160(n)/57)`
-/

namespace A231074.P6609995809498321536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137160 n : ℚ) / 57⌉

end

end A231074.P6609995809498321536

/-!
# A231076: Number of n X 3 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231076, there is no canonical definition to state claims against.
-/

/-! ## A231076.P16379800221774863062

`A231080(∑[n+3]+1)`
-/

namespace A231076.P16379800221774863062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231076.P16379800221774863062

/-! ## A231076.P7660972579897310802

`record[A231080(A198464(n+1))]`
-/

namespace A231076.P7660972579897310802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231076.P7660972579897310802

/-! ## A231076.P14077913235136549218

`record[A231080(A347633(n+1))]`
-/

namespace A231076.P14077913235136549218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231076.P14077913235136549218

/-! ## A231076.P14181860678320670642

`record[char[A055998(n)]*A231080(n+1)]`
-/

namespace A231076.P14181860678320670642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231076.P14181860678320670642

/-! ## A231076.P15808182544999482898

`record[char[A141214(n)]*A231080(n+1)]`
-/

namespace A231076.P15808182544999482898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231076.P15808182544999482898

/-!
# A231077: Number of n X 4 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231077, there is no canonical definition to state claims against.
-/

/-! ## A231077.P10541104482204928766

`A231080(A141214(n+1))`
-/

namespace A231077.P10541104482204928766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A141214 (n + 1)).toNat

end

end A231077.P10541104482204928766

/-! ## A231077.P9632266971052899690

`A231080(A027379(n+2))`
-/

namespace A231077.P9632266971052899690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A027379 (n + 2)).toNat

end

end A231077.P9632266971052899690

/-! ## A231077.P11977390810355676578

`A231080(A055998(n+2))`
-/

namespace A231077.P11977390810355676578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A055998 (n + 2)).toNat

end

end A231077.P11977390810355676578

/-! ## A231077.P11358380222217789627

`A231080(A155212(n)+5)`
-/

namespace A231077.P11358380222217789627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A155212 n + 5).toNat

end

end A231077.P11358380222217789627

/-! ## A231077.P3784569968484890633

`A231080(A056000(n)+7)`
-/

namespace A231077.P3784569968484890633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A056000 n + 7).toNat

end

end A231077.P3784569968484890633

/-!
# A231078: Number of n X 5 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231078, there is no canonical definition to state claims against.
-/

/-! ## A231078.P17687900147768166687

`A231080(∑[n+5]+6)`
-/

namespace A231078.P17687900147768166687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A231078.P17687900147768166687

/-! ## A231078.P14425126503691509598

`A231080(A046691(n+3))+A185012(2*(n+2))`
-/

namespace A231078.P14425126503691509598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A046691 (n + 3)).toNat + A185012 (2 * (n + 2))

end

end A231078.P14425126503691509598

/-!
# A231079: Number of n X 6 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231079, there is no canonical definition to state claims against.
-/

/-! ## A231079.P9225771807429343015

`A231080(A052905(n+3))`
-/

namespace A231079.P9225771807429343015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A052905 (n + 3)).toNat

end

end A231079.P9225771807429343015

/-! ## A231079.P6252491817605847266

`A231080(eq[3, A219347(n)])`
-/

namespace A231079.P6252491817605847266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231079.P6252491817605847266

/-! ## A231079.P12776704623503270061

`A231080(eq[5, A152157(n)])`
-/

namespace A231079.P12776704623503270061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231079.P12776704623503270061

/-!
# A231080: T(n,k) = number of n X k 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231080, there is no canonical definition to state claims against.
-/

/-! ## A231080.P10533452555762659261

`and(A016825(n), A122412(A094816(n)))`
-/

namespace A231080.P10533452555762659261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016825 n) (A122412 (A094816 n).toNat)

end

end A231080.P10533452555762659261

/-! ## A231080.P18318849018592945045

`and(A001333(A144510(n+1)), A016825(n))`
-/

namespace A231080.P18318849018592945045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001333 (A144510 (n + 1)).toNat) (A016825 n)

end

end A231080.P18318849018592945045

/-! ## A231080.P6176379754117102329

`A025675(A026780(n)!)`
-/

namespace A231080.P6176379754117102329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (Nat.factorial (A026780 n).toNat)

end

end A231080.P6176379754117102329

/-! ## A231080.P532231367657939817

`A025675(A029653(n)!)`
-/

namespace A231080.P532231367657939817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (Nat.factorial (A029653 n).toNat)

end

end A231080.P532231367657939817

/-! ## A231080.P16464462254782427922

`xor(A103997(n), A317937(A022182(n)))`
-/

namespace A231080.P16464462254782427922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103997 n) (A317937 (A022182 n).toNat)

end

end A231080.P16464462254782427922

/-!
# A231081: Number of 2 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231081, there is no canonical definition to state claims against.
-/

/-! ## A231081.P2299987107206195582

`A231080(∑[n+1]+2)`
-/

namespace A231081.P2299987107206195582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231081.P2299987107206195582

/-! ## A231081.P11156504012198035189

`record[A231080(A133825(n)+2)]`
-/

namespace A231081.P11156504012198035189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231081.P11156504012198035189

/-! ## A231081.P8528827946536653480

`record[A231080(record[A091995(n+1)])]`
-/

namespace A231081.P8528827946536653480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231081.P8528827946536653480

/-! ## A231081.P7965173505804072598

`record[A231080(record[A194977(n+1)])]`
-/

namespace A231081.P7965173505804072598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194977 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231081.P7965173505804072598

/-! ## A231081.P17749241592669878829

`record[A231080(A257504(n+1)+1)]`
-/

namespace A231081.P17749241592669878829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231081.P17749241592669878829

/-!
# A231082: Number of 3 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231082, there is no canonical definition to state claims against.
-/

/-! ## A231082.P12946548326131127951

`A231080(∑[n+2]+4)`
-/

namespace A231082.P12946548326131127951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231082.P12946548326131127951

/-! ## A231082.P8684589025651696141

`lcm(2, A231080(A167614(n+1)))`
-/

namespace A231082.P8684589025651696141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231080 (A167614 (n + 1)).toNat)

end

end A231082.P8684589025651696141

/-! ## A231082.P4507956154886389548

`record[A231080(A257504(n+1)+2)]`
-/

namespace A231082.P4507956154886389548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A257504 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231082.P4507956154886389548

/-! ## A231082.P13028955867762124825

`record[A010054(n)*A231080(n+3)]`
-/

namespace A231082.P13028955867762124825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231080 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231082.P13028955867762124825

/-! ## A231082.P14369916684208625427

`record[A231080(n+4)/A008275(n+1)]`
-/

namespace A231082.P14369916684208625427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231080 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231082.P14369916684208625427

/-!
# A231083: Number of 4 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231083, there is no canonical definition to state claims against.
-/

/-! ## A231083.P10529891990535490558

`A231080(A141214(n)+7)`
-/

namespace A231083.P10529891990535490558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A141214 n + 7).toNat

end

end A231083.P10529891990535490558

/-! ## A231083.P6118899441999426725

`A231080(A052905(n)+9)`
-/

namespace A231083.P6118899441999426725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A052905 n + 9).toNat

end

end A231083.P6118899441999426725

/-! ## A231083.P3784354785171586747

`A231080(A055999(n)+10)`
-/

namespace A231083.P3784354785171586747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A055999 n + 10).toNat

end

end A231083.P3784354785171586747

/-! ## A231083.P10611697407742906788

`A231080(eq[5, A066657(n)])`
-/

namespace A231083.P10611697407742906788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231083.P10611697407742906788

/-! ## A231083.P17977419490584186097

`A231080(A167614(n+2)+1)`
-/

namespace A231083.P17977419490584186097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A167614 (n + 2) + 1).toNat

end

end A231083.P17977419490584186097

/-!
# A231084: Number of 5 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4 and at least one element with value (x(i,j)-1) mod 4, and upper left element zero.

The programs for A231084, there is no canonical definition to state claims against.
-/

/-! ## A231084.P15833022564856815743

`A231080(A167499(n+3))`
-/

namespace A231084.P15833022564856815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A167499 (n + 3)).toNat

end

end A231084.P15833022564856815743

/-! ## A231084.P7287811955364770850

`A231080(A155212(n)+13)`
-/

namespace A231084.P7287811955364770850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A155212 n + 13).toNat

end

end A231084.P7287811955364770850

/-! ## A231084.P18113530874484179055

`A231080(A056000(n)+15)`
-/

namespace A231084.P18113530874484179055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A056000 n + 15).toNat

end

end A231084.P18113530874484179055

/-! ## A231084.P10876377988249935858

`A231080(eq[7, A066657(n)])`
-/

namespace A231084.P10876377988249935858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231084.P10876377988249935858

/-! ## A231084.P13685313865418459840

`A231080(A167614(n+3)+2)`
-/

namespace A231084.P13685313865418459840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231080 (A167614 (n + 3) + 2).toNat

end

end A231084.P13685313865418459840

/-!
# A231085: The number of possible ways to arrange the sums x_i + x_j (1 <= i < j <= n) of the items x_1 < x_2 <...< x_n in increasing order provided that all sums are different.

The programs for A231085, there is no canonical definition to state claims against.
-/

/-! ## A231085.P4473148331508520688

`A059522(floor((n²-n)/9)+1)`
-/

namespace A231085.P4473148331508520688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059522 (⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 9⌋ + 1).toNat

end

end A231085.P4473148331508520688

/-! ## A231085.P14329173444057031843

`∏{p}[A167000(n), dr(#)]`
-/

namespace A231085.P14329173444057031843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.digitalRoot (p : ℤ)

end

end A231085.P14329173444057031843

/-! ## A231085.P12556416485763634525

`A325234(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A231085.P12556416485763634525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  A325234 (a (n - 1)).toNat

end

end A231085.P12556416485763634525

/-!
# A231086: Initial members of abundant twins, i.e., values of k such that (k, k+2) are both abundant numbers.

The programs for A231086, the canonical program `A231086.P15220536245985747541` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231086 has offset 1).

The definition of A231086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231086.P12728333900054447965

`A005101(A303741(n+1))`
-/

namespace A231086.P12728333900054447965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A303741 (n + 1)).toNat

end

end A231086.P12728333900054447965

namespace A231086

/-- `A005101(A303741(n+1))` -/
def P12728333900054447965.Spec : Prop :=
  ∀ n, P12728333900054447965.a n = A231086 (n + 1)

end A231086

/-! ## A231086.P15220536245985747541

`A005101(eq[2, A125115(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231086

/-- `A005101(eq[2, A125115(n+1)]+1)` -/
def P15220536245985747541.Spec : Prop :=
  ∀ n, P15220536245985747541.a n = A231086 (n + 1)

theorem P15220536245985747541.correct : P15220536245985747541.Spec := by
  intro n
  simp only [A231086, Nat.add_sub_cancel]

end A231086

/-! ## A231086.P1273754508778842782

`A224907(eq[2, A125115(n+1)]+1)/2`
-/

namespace A231086.P1273754508778842782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A231086.P1273754508778842782

namespace A231086

/-- `A224907(eq[2, A125115(n+1)]+1)/2` -/
def P1273754508778842782.Spec : Prop :=
  ∀ n, P1273754508778842782.a n = (A231086 (n + 1) : ℚ)

theorem P1273754508778842782.correct : P1273754508778842782.Spec := by
  intro n
  simp only [A231086, Nat.add_sub_cancel, A231086.P1273754508778842782.f1, A231086.P1273754508778842782.f2, A231086.P1273754508778842782.a, A231086.P15220536245985747541.f1, A231086.P15220536245985747541.f2, A231086.P15220536245985747541.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A125115, A125115.P9586527931005899637.a, A224907, A224907.P17184024121669876912.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231086

/-! ## A231086.P11402248218420423528

`∩[A005101(n+1)-2, A005101(n+1)]`
-/

namespace A231086.P11402248218420423528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231086.P11402248218420423528

namespace A231086

/-- `∩[A005101(n+1)-2, A005101(n+1)]` -/
def P11402248218420423528.Spec : Prop :=
  ∀ n, (P11402248218420423528.a n : ℤ) = A231086 (n + 1)

end A231086

/-! ## A231086.P4343196569430039768

`A005101(eq[2, A005101(n+2)-A005101(n+1)]+1)`
-/

namespace A231086.P4343196569430039768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) - A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P4343196569430039768

namespace A231086

/-- `A005101(eq[2, A005101(n+2)-A005101(n+1)]+1)` -/
def P4343196569430039768.Spec : Prop :=
  ∀ n, P4343196569430039768.a n = A231086 (n + 1)

end A231086

/-! ## A231086.P8207561901660584456

`A005101(eq[2, A005101(n+2)%A005101(n+1)]+1)`
-/

namespace A231086.P8207561901660584456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005101 (n + 2)) (A005101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231086.P8207561901660584456

namespace A231086

/-- `A005101(eq[2, A005101(n+2)%A005101(n+1)]+1)` -/
def P8207561901660584456.Spec : Prop :=
  ∀ n, P8207561901660584456.a n = A231086 (n + 1)

end A231086

/-!
# A231087: Number of perfect matchings in graph C_3 x C_{2n}.

The programs for A231087, the canonical program `A231087.P11059372465653664694` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231087 has offset 2).

The definition of A231087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231087.P11059372465653664694

`5*a(n-1)-a(n-2)-12` with `a(0)=50, a(1)=224`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231087

/-- `5*a(n-1)-a(n-2)-12` -/
def P11059372465653664694.Spec : Prop :=
  ∀ n, P11059372465653664694.a n = A231087 (n + 2)

theorem P11059372465653664694.correct : P11059372465653664694.Spec := by
  intro n
  simp only [A231087, Nat.add_sub_cancel]

end A231087

/-! ## A231087.P12564426129709861288

`6*A054493(n+1)+8`
-/

namespace A231087.P12564426129709861288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A054493 (n + 1) + 8

end

end A231087.P12564426129709861288

namespace A231087

/-- `6*A054493(n+1)+8` -/
def P12564426129709861288.Spec : Prop :=
  ∀ n, P12564426129709861288.a n = A231087 (n + 2)

end A231087

/-! ## A231087.P5395465920960669956

`2*(A003501(n+2)+2)`
-/

namespace A231087.P5395465920960669956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003501 (n + 2) + 2)

end

end A231087.P5395465920960669956

namespace A231087

/-- `2*(A003501(n+2)+2)` -/
def P5395465920960669956.Spec : Prop :=
  ∀ n, P5395465920960669956.a n = A231087 (n + 2)

end A231087

/-! ## A231087.P2438202369477907174

`A072563(2*(n+3))-1`
-/

namespace A231087.P2438202369477907174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072563 (2 * (n + 3)) - 1

end

end A231087.P2438202369477907174

namespace A231087

/-- `A072563(2*(n+3))-1` -/
def P2438202369477907174.Spec : Prop :=
  ∀ n, P2438202369477907174.a n = A231087 (n + 2)

end A231087

/-! ## A231087.P9965427254393468454

`A237254(2*n+3)+A237254(2*(n+3))+4`
-/

namespace A231087.P9965427254393468454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237254 (2 * n + 3) + (A237254 (2 * (n + 3)) + 4)

end

end A231087.P9965427254393468454

namespace A231087

/-- `A237254(2*n+3)+A237254(2*(n+3))+4` -/
def P9965427254393468454.Spec : Prop :=
  ∀ n, P9965427254393468454.a n = A231087 (n + 2)

end A231087

/-! ## A231087.P2797904171925372402

`A237255(2*(n+2))+A237255(2*n+5)+4`
-/

namespace A231087.P2797904171925372402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237255 (2 * (n + 2)) + (A237255 (2 * n + 5) + 4)

end

end A231087.P2797904171925372402

namespace A231087

/-- `A237255(2*(n+2))+A237255(2*n+5)+4` -/
def P2797904171925372402.Spec : Prop :=
  ∀ n, P2797904171925372402.a n = A231087 (n + 2)

end A231087

/-! ## A231087.P12936807685488647087

`A253150(n+2)/A068397(2*(n+2))`
-/

namespace A231087.P12936807685488647087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253150 (n + 2) : ℚ) / (A068397 (2 * (n + 2)) : ℚ)

end

end A231087.P12936807685488647087

namespace A231087

/-- `A253150(n+2)/A068397(2*(n+2))` -/
def P12936807685488647087.Spec : Prop :=
  ∀ n, P12936807685488647087.a n = (A231087 (n + 2) : ℚ)

end A231087

/-!
# A231088: Initial members of abundant triples, i.e., values of k such that (k, k+2, k+4) are all abundant numbers.

The programs for A231088, the canonical program `A231088.P9425386829451350861` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231088 has offset 1).

The definition of A231088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1920 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231088.P14198467326795878061

`∩[A231086(n+2)-2, A231086(n+2)]`
-/

namespace A231088.P14198467326795878061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231088.P14198467326795878061

namespace A231088

/-- `∩[A231086(n+2)-2, A231086(n+2)]` -/
def P14198467326795878061.Spec : Prop :=
  ∀ n, (P14198467326795878061.a n : ℤ) = A231088 (n + 1)

end A231088

/-! ## A231088.P9425386829451350861

`A231086(eq[2, A231086(n+2)-A231086(n+1)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A231088

/-- `A231086(eq[2, A231086(n+2)-A231086(n+1)]+1)` -/
def P9425386829451350861.Spec : Prop :=
  ∀ n, P9425386829451350861.a n = A231088 (n + 1)

theorem P9425386829451350861.correct : P9425386829451350861.Spec := by
  intro n
  simp only [A231088, Nat.add_sub_cancel]

end A231088

/-! ## A231088.P8299745460770993043

`∩[A228844(n+1), A231086(n+1)]`
-/

namespace A231088.P8299745460770993043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231088.P8299745460770993043

namespace A231088

/-- `∩[A228844(n+1), A231086(n+1)]` -/
def P8299745460770993043.Spec : Prop :=
  ∀ n, (P8299745460770993043.a n : ℤ) = A231088 (n + 1)

end A231088

/-! ## A231088.P761769450331112064

`∩[A005101(n+1)-2, A228844(n+1)]`
-/

namespace A231088.P761769450331112064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231088.P761769450331112064

namespace A231088

/-- `∩[A005101(n+1)-2, A228844(n+1)]` -/
def P761769450331112064.Spec : Prop :=
  ∀ n, (P761769450331112064.a n : ℤ) = A231088 (n + 1)

end A231088

/-! ## A231088.P920487017856908350

`∩[A023196(n+1)-2, A228844(n+1)]`
-/

namespace A231088.P920487017856908350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231088.P920487017856908350

namespace A231088

/-- `∩[A023196(n+1)-2, A228844(n+1)]` -/
def P920487017856908350.Spec : Prop :=
  ∀ n, (P920487017856908350.a n : ℤ) = A231088 (n + 1)

end A231088

/-!
# A231089: Initial members of abundant quadruplets, i.e., values of k such that (k, k+2, k+4, k+6) are all abundant numbers.

The programs for A231089, the canonical program `A231089.P5698171417465960839` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231089 has offset 1).

The definition of A231089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231089.P5698171417465960839

`∩[A231088(n+1)-2, A231088(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A231089

/-- `∩[A231088(n+1)-2, A231088(n+1)]` -/
def P5698171417465960839.Spec : Prop :=
  ∀ n, (P5698171417465960839.a n : ℤ) = A231089 (n + 1)

theorem P5698171417465960839.correct : P5698171417465960839.Spec := by
  intro n
  simp only [A231089, Nat.add_sub_cancel]

end A231089

/-! ## A231089.P12578432366345791103

`A343303(n+1)+A069289(A022798(n+1)+A014238(n+1))`
-/

namespace A231089.P12578432366345791103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A069289 (A022798 (n + 1) + A014238 (n + 1)).toNat

end

end A231089.P12578432366345791103

namespace A231089

/-- `A343303(n+1)+A069289(A022798(n+1)+A014238(n+1))` -/
def P12578432366345791103.Spec : Prop :=
  ∀ n, P12578432366345791103.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P15248916420516455617

`A343303(n+1)+A326584(A129656(2*n+5))`
-/

namespace A231089.P15248916420516455617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A326584 (A129656 (2 * n + 5)).toNat

end

end A231089.P15248916420516455617

namespace A231089

/-- `A343303(n+1)+A326584(A129656(2*n+5))` -/
def P15248916420516455617.Spec : Prop :=
  ∀ n, P15248916420516455617.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P14327813941388045876

`A343303(n+1)+A000035(A002145(n+1))`
-/

namespace A231089.P14327813941388045876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A000035 (A002145 (n + 1)).toNat

end

end A231089.P14327813941388045876

namespace A231089

/-- `A343303(n+1)+A000035(A002145(n+1))` -/
def P14327813941388045876.Spec : Prop :=
  ∀ n, P14327813941388045876.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P15447831786273651520

`A343303(n+1)+A009194(A000040(2*(n+2)))`
-/

namespace A231089.P15447831786273651520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A009194 (A000040 (2 * (n + 2))).toNat

end

end A231089.P15447831786273651520

namespace A231089

/-- `A343303(n+1)+A009194(A000040(2*(n+2)))` -/
def P15447831786273651520.Spec : Prop :=
  ∀ n, P15447831786273651520.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P15277347902560112129

`A343303(n+1)+A009194(A065091(2*n+5))`
-/

namespace A231089.P15277347902560112129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A009194 (A065091 (2 * n + 5)).toNat

end

end A231089.P15277347902560112129

namespace A231089

/-- `A343303(n+1)+A009194(A065091(2*n+5))` -/
def P15277347902560112129.Spec : Prop :=
  ∀ n, P15277347902560112129.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P11576182026783592754

`A343303(n+1)+A108775(p?[A016777(n)])`
-/

namespace A231089.P11576182026783592754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A108775 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A231089.P11576182026783592754

namespace A231089

/-- `A343303(n+1)+A108775(p?[A016777(n)])` -/
def P11576182026783592754.Spec : Prop :=
  ∀ n, P11576182026783592754.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P2894909292158345102

`A343303(n+1)-A033999(p?[A016777(n)])`
-/

namespace A231089.P2894909292158345102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) - A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A231089.P2894909292158345102

namespace A231089

/-- `A343303(n+1)-A033999(p?[A016777(n)])` -/
def P2894909292158345102.Spec : Prop :=
  ∀ n, P2894909292158345102.a n = A231089 (n + 1)

theorem P2894909292158345102.correct : P2894909292158345102.Spec := by
  intro n
  simp only [A231089, Nat.add_sub_cancel, A231089.P2894909292158345102.f1, A231089.P2894909292158345102.a, A231089.P5698171417465960839.f1, A231089.P5698171417465960839.f2, A231089.P5698171417465960839.a, A016777, A016777.P9931792138852554157.a, A033999, A033999.P17703899380244199787.a, A231088, A231088.P9425386829451350861.f1, A231088.P9425386829451350861.f2, A231088.P9425386829451350861.a, A343303, A343303.P7519863497709517625.f1, A343303.P7519863497709517625.a, A231086, A231086.P15220536245985747541.f1, A231086.P15220536245985747541.f2, A231086.P15220536245985747541.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A125115, A125115.P9586527931005899637.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A231089

/-! ## A231089.P17661740153546114548

`A343303(n+1)+A033999(p?[A016777(n)]+1)`
-/

namespace A231089.P17661740153546114548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A033999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A231089.P17661740153546114548

namespace A231089

/-- `A343303(n+1)+A033999(p?[A016777(n)]+1)` -/
def P17661740153546114548.Spec : Prop :=
  ∀ n, P17661740153546114548.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P8936231425461234949

`A343303(n+1)+A326584(p?[A016777(n)]+1)`
-/

namespace A231089.P8936231425461234949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A326584 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A231089.P8936231425461234949

namespace A231089

/-- `A343303(n+1)+A326584(p?[A016777(n)]+1)` -/
def P8936231425461234949.Spec : Prop :=
  ∀ n, P8936231425461234949.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P6269592897345224261

`A343303(n+1)+A050326(A046704(n+1))`
-/

namespace A231089.P6269592897345224261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A050326 (A046704 (n + 1)).toNat

end

end A231089.P6269592897345224261

namespace A231089

/-- `A343303(n+1)+A050326(A046704(n+1))` -/
def P6269592897345224261.Spec : Prop :=
  ∀ n, P6269592897345224261.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P5584523152982541784

`∩[A228961(n+1), A231088(n+1)]`
-/

namespace A231089.P5584523152982541784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231089.P5584523152982541784

namespace A231089

/-- `∩[A228961(n+1), A231088(n+1)]` -/
def P5584523152982541784.Spec : Prop :=
  ∀ n, (P5584523152982541784.a n : ℤ) = A231089 (n + 1)

end A231089

/-! ## A231089.P11161751800661424773

`∩[A228961(n+1), A231086(n+1)]`
-/

namespace A231089.P11161751800661424773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231089.P11161751800661424773

namespace A231089

/-- `∩[A228961(n+1), A231086(n+1)]` -/
def P11161751800661424773.Spec : Prop :=
  ∀ n, (P11161751800661424773.a n : ℤ) = A231089 (n + 1)

end A231089

/-! ## A231089.P17386161448003631214

`A343303(n+1)+A343303(∑[n]+1)%2`
-/

namespace A231089.P17386161448003631214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + Int.tmod (A343303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 2

end

end A231089.P17386161448003631214

namespace A231089

/-- `A343303(n+1)+A343303(∑[n]+1)%2` -/
def P17386161448003631214.Spec : Prop :=
  ∀ n, P17386161448003631214.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P13499265575802203600

`A343303(n+1)-A326405(A006530(∑[n-1]+3))`
-/

namespace A231089.P13499265575802203600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) - A326405 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat).toNat

end

end A231089.P13499265575802203600

namespace A231089

/-- `A343303(n+1)-A326405(A006530(∑[n-1]+3))` -/
def P13499265575802203600.Spec : Prop :=
  ∀ n, P13499265575802203600.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P16774214772160294723

`A343303(n+1)+A007318(∑[n]-n)`
-/

namespace A231089.P16774214772160294723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A231089.P16774214772160294723

namespace A231089

/-- `A343303(n+1)+A007318(∑[n]-n)` -/
def P16774214772160294723.Spec : Prop :=
  ∀ n, P16774214772160294723.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P867273052087787262

`∩[A228844(n+1)-2, A228844(n+1)]`
-/

namespace A231089.P867273052087787262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228844 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231089.P867273052087787262

namespace A231089

/-- `∩[A228844(n+1)-2, A228844(n+1)]` -/
def P867273052087787262.Spec : Prop :=
  ∀ n, (P867273052087787262.a n : ℤ) = A231089 (n + 1)

end A231089

/-! ## A231089.P10442107213854433745

`A343303(n+1)+A009194(A009194(n+1)²)`
-/

namespace A231089.P10442107213854433745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343303 (n + 1) + A009194 (A009194 (n + 1) ^ 2).toNat

end

end A231089.P10442107213854433745

namespace A231089

/-- `A343303(n+1)+A009194(A009194(n+1)²)` -/
def P10442107213854433745.Spec : Prop :=
  ∀ n, P10442107213854433745.a n = A231089 (n + 1)

end A231089

/-! ## A231089.P16596888167393677717

`A125746(A343303(n+1))+1`
-/

namespace A231089.P16596888167393677717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A343303 (n + 1)).toNat + 1

end

end A231089.P16596888167393677717

namespace A231089

/-- `A125746(A343303(n+1))+1` -/
def P16596888167393677717.Spec : Prop :=
  ∀ n, P16596888167393677717.a n = A231089 (n + 1)

end A231089

/-!
# A231090: Initial members of abundant sextuplets, i.e., values of n such that (n, n+2, n+4, n+6, n+8, n+10) are all abundant numbers.

The programs for A231090, there is no canonical definition to state claims against.
-/

/-! ## A231090.P6448984200477693143

`A231629(n+1)+1`
-/

namespace A231090.P6448984200477693143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231629 (n + 1) + 1

end

end A231090.P6448984200477693143

/-!
# A231091: Number of distinct (modulo rotation) unicursal star polygons (not necessarily regular, no edge joins adjacent vertices) that can be formed by connecting the vertices of a regular n-gon.

The programs for A231091, there is no canonical definition to state claims against.
-/

/-! ## A231091.P6522318609185430707

`Δ[A342516(A004111(n))]`
-/

namespace A231091.P6522318609185430707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A004111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231091.P6522318609185430707

/-! ## A231091.P12002892994505727925

`A378273(or(1, A362608(n)))`
-/

namespace A231091.P12002892994505727925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378273 (Int.lor 1 (A362608 n)).toNat

end

end A231091.P12002892994505727925

/-! ## A231091.P9891576710414229314

`A003796(Δ[A011912(n)]!)`
-/

namespace A231091.P9891576710414229314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A231091.P9891576710414229314

/-! ## A231091.P7833355352800894752

`A008676(A259870(n)+A023604(n+1))`
-/

namespace A231091.P7833355352800894752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A259870 n + A023604 (n + 1)).toNat

end

end A231091.P7833355352800894752

/-! ## A231091.P16992439719077630834

`A127788(A320738(n)+A072273(n+1))`
-/

namespace A231091.P16992439719077630834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (A320738 n + A072273 (n + 1)).toNat

end

end A231091.P16992439719077630834

/-!
# A231092: Initial members of abundant septuplets, i.e., values of n such that (n, n+2, n+4, n+6, n+8, n+10, n+12) are all abundant numbers.

The programs for A231092, there is no canonical definition to state claims against.
-/

/-! ## A231092.P18075982576250481643

`∩[A231090(n+1)-2, A231090(n+1)]`
-/

namespace A231092.P18075982576250481643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231090 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231092.P18075982576250481643

/-! ## A231092.P14414292658605332145

`A231630(n+1)+1`
-/

namespace A231092.P14414292658605332145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231630 (n + 1) + 1

end

end A231092.P14414292658605332145

/-! ## A231092.P2795492810328173322

`∩[A231629(n+1)-2, A231629(n+1)]+1`
-/

namespace A231092.P2795492810328173322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231629 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A231092.P2795492810328173322

/-!
# A231093: Initial members of abundant octuplets, i.e., values of n such that (n, n+2, n+4, n+6, n+8, n+10, n+12, n+14) are all abundant numbers.

The programs for A231093, there is no canonical definition to state claims against.
-/

/-! ## A231093.P10626999613963008554

`∩[A231092(n+1)-2, A231092(n+1)]`
-/

namespace A231093.P10626999613963008554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231093.P10626999613963008554

/-! ## A231093.P6531213219705991785

`A231092(eq[2, A231092(n+2)-A231092(n+1)]+1)`
-/

namespace A231093.P6531213219705991785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (n + 2) - A231092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231093.P6531213219705991785

/-! ## A231093.P5115781282764835481

`A231092(eq[2, A231092(n+2)%A231092(n+1)]+1)`
-/

namespace A231093.P5115781282764835481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231092 (n + 2)) (A231092 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231093.P5115781282764835481

/-! ## A231093.P4675551652870531222

`A231092(record[A004442(A003002(n))])`
-/

namespace A231093.P4675551652870531222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A003002 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A231093.P4675551652870531222

/-! ## A231093.P17567148604987427799

`A231092(2*n+1)+A000038(A129455(n))`
-/

namespace A231093.P17567148604987427799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231092 (2 * n + 1) + A000038 (A129455 n).toNat

end

end A231093.P17567148604987427799

/-!
# A231099: Primes expressible as phi(sigma(n)) + sigma(phi(n)), in order of their occurrence.

The programs for A231099, the canonical program `A231099.P2171262129548700046` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231099 has offset 1).

The definition of A231099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231099.P2171262129548700046

`p?[A000010(A000203(n+1))+A295302(n+1)+1+n]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A231099

/-- `p?[A000010(A000203(n+1))+A295302(n+1)+1+n]` -/
def P2171262129548700046.Spec : Prop :=
  ∀ n, P2171262129548700046.a n = A231099 (n + 1)

theorem P2171262129548700046.correct : P2171262129548700046.Spec := by
  intro n
  simp only [A231099, Nat.add_sub_cancel]

end A231099

/-! ## A231099.P1242424208261349303

`p?[A062402(n+1)+A062401(n+1)]`
-/

namespace A231099.P1242424208261349303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) + A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P1242424208261349303

namespace A231099

/-- `p?[A062402(n+1)+A062401(n+1)]` -/
def P1242424208261349303.Spec : Prop :=
  ∀ n, P1242424208261349303.a n = A231099 (n + 1)

end A231099

/-! ## A231099.P13154225093638942601

`p?[A062401(n+1)+A000203(A000010(n+1))]`
-/

namespace A231099.P13154225093638942601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) + A000203 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P13154225093638942601

namespace A231099

/-- `p?[A062401(n+1)+A000203(A000010(n+1))]` -/
def P13154225093638942601.Spec : Prop :=
  ∀ n, P13154225093638942601.a n = A231099 (n + 1)

end A231099

/-! ## A231099.P7936233300643202580

`p?[A062402(n+1)+A000010(A000203(n+1))]`
-/

namespace A231099.P7936233300643202580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) + A000010 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P7936233300643202580

namespace A231099

/-- `p?[A062402(n+1)+A000010(A000203(n+1))]` -/
def P7936233300643202580.Spec : Prop :=
  ∀ n, P7936233300643202580.a n = A231099 (n + 1)

end A231099

/-! ## A231099.P7062824386384377170

`p?[A349137(A002659(n+1))+A062402(n+1)]`
-/

namespace A231099.P7062824386384377170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A002659 (n + 1)).toNat + A062402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231099.P7062824386384377170

namespace A231099

/-- `p?[A349137(A002659(n+1))+A062402(n+1)]` -/
def P7062824386384377170.Spec : Prop :=
  ∀ n, P7062824386384377170.a n = A231099 (n + 1)

end A231099

