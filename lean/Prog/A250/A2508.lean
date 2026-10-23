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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B010.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A250800: Number of (3+1) X (n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250800, there is no canonical definition to state claims against.
-/

/-! ## A250800.P9411940474108958042

`A250797(∑[n+2]+4)`
-/

namespace A250800.P9411940474108958042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250800.P9411940474108958042

/-! ## A250800.P1954815728577724093

`lcm(2, A250797(A167614(n+1)))`
-/

namespace A250800.P1954815728577724093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250797 (A167614 (n + 1)).toNat)

end

end A250800.P1954815728577724093

/-! ## A250800.P765944421252227894

`A250797(A167614(n+1))+A011744(n)`
-/

namespace A250800.P765944421252227894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A167614 (n + 1)).toNat + A011744 n

end

end A250800.P765944421252227894

/-! ## A250800.P9185380199707716710

`A250797(A167614(n+1))+A185284(n)`
-/

namespace A250800.P9185380199707716710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A167614 (n + 1)).toNat + A185284 n

end

end A250800.P9185380199707716710

/-! ## A250800.P10298194448477711164

`A250797(A167614(n+1))%A016795(n)`
-/

namespace A250800.P10298194448477711164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250797 (A167614 (n + 1)).toNat) (A016795 n)

end

end A250800.P10298194448477711164

/-!
# A250801: Number of (4+1) X (n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250801, there is no canonical definition to state claims against.
-/

/-! ## A250801.P16957490448870032823

`A250797(∑[n+3]+7)`
-/

namespace A250801.P16957490448870032823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250801.P16957490448870032823

/-!
# A250802: Number of (5+1) X (n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250802, there is no canonical definition to state claims against.
-/

/-! ## A250802.P9959221905279695970

`A250797(A167499(n+3))`
-/

namespace A250802.P9959221905279695970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A167499 (n + 3)).toNat

end

end A250802.P9959221905279695970

/-! ## A250802.P8675441898687017996

`A250797(A056000(n)+15)`
-/

namespace A250802.P8675441898687017996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A056000 n + 15).toNat

end

end A250802.P8675441898687017996

/-! ## A250802.P493773803283184723

`A250797(A000217(n+4)+5)`
-/

namespace A250802.P493773803283184723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000217 (n + 4) + 5).toNat

end

end A250802.P493773803283184723

/-! ## A250802.P12796495957618175798

`A250797(eq[4, A140997(n)]+8)`
-/

namespace A250802.P12796495957618175798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 8)

end

end A250802.P12796495957618175798

/-! ## A250802.P15716192545173625350

`A250797(A014132(∑[n+3]+7)+1)`
-/

namespace A250802.P15716192545173625350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + 1).toNat

end

end A250802.P15716192545173625350

/-!
# A250803: Number of (6+1)X(n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250803, there is no canonical definition to state claims against.
-/

/-! ## A250803.P14475939868907592826

`A250797(A167614(n+4)+3)`
-/

namespace A250803.P14475939868907592826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A167614 (n + 4) + 3).toNat

end

end A250803.P14475939868907592826

/-! ## A250803.P3287188653190755177

`A250797(A000124(n+5)+5)`
-/

namespace A250803.P3287188653190755177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000124 (n + 5) + 5).toNat

end

end A250803.P3287188653190755177

/-! ## A250803.P7334436837451940722

`A250797(A000217(n+5)+6)`
-/

namespace A250803.P7334436837451940722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000217 (n + 5) + 6).toNat

end

end A250803.P7334436837451940722

/-! ## A250803.P16306317901528879030

`A250797(A002061(n+6)-A052905(n+2))`
-/

namespace A250803.P16306317901528879030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A002061 (n + 6) - A052905 (n + 2)).toNat

end

end A250803.P16306317901528879030

/-! ## A250803.P1905115592464060895

`A250797(A167499(n)+Δ[A167499(2*n+5)])`
-/

namespace A250803.P1905115592464060895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A167499 n + (f1 (n + 1) - f1 n)).toNat

end

end A250803.P1905115592464060895

/-!
# A250804: Number of (7+1)X(n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250804, there is no canonical definition to state claims against.
-/

/-! ## A250804.P8537924826677351944

`A250797(A167614(n+5)+4)`
-/

namespace A250804.P8537924826677351944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A167614 (n + 5) + 4).toNat

end

end A250804.P8537924826677351944

/-! ## A250804.P16351930552902128315

`A250797(A000124(n+6)+6)`
-/

namespace A250804.P16351930552902128315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000124 (n + 6) + 6).toNat

end

end A250804.P16351930552902128315

/-! ## A250804.P16455222344145585662

`A250797(A000217(n+6)+7)`
-/

namespace A250804.P16455222344145585662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000217 (n + 6) + 7).toNat

end

end A250804.P16455222344145585662

/-! ## A250804.P10775864119580360015

`A250797(A055999(n+3)+13)`
-/

namespace A250804.P10775864119580360015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A055999 (n + 3) + 13).toNat

end

end A250804.P10775864119580360015

/-! ## A250804.P6992339356908000578

`A250797(A101881(2*(n+3))+A020723(n+6))`
-/

namespace A250804.P6992339356908000578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A101881 (2 * (n + 3)) + A020723 (n + 6)).toNat

end

end A250804.P6992339356908000578

/-!
# A250805: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250805, there is no canonical definition to state claims against.
-/

/-! ## A250805.P439523088917408254

`A250812(∑[4*n]+1)`
-/

namespace A250805.P439523088917408254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250805.P439523088917408254

/-! ## A250805.P10131237746193628272

`record[A250812(A330613(n+1))]`
-/

namespace A250805.P10131237746193628272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250805.P10131237746193628272

/-! ## A250805.P5381861541439757046

`A250812(A001844(n))+char[11]`
-/

namespace A250805.P5381861541439757046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250805.P5381861541439757046

/-! ## A250805.P17685362145226212447

`record[A003982(n)*A250812(n+1)]`
-/

namespace A250805.P17685362145226212447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250805.P17685362145226212447

/-! ## A250805.P10193525356403408017

`record[gcd(A214292(n), A250812(n+1))]`
-/

namespace A250805.P10193525356403408017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A250812 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250805.P10193525356403408017

/-!
# A250806: Number of (n+1) X (2+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250806, the canonical program `A250806.P1827923252376342859` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250806 has offset 1).

The definition of A250806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250806.P1827923252376342859

`(126*3^(n+1)-99*2^(n+1)+20)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250806

/-- `(126*3^(n+1)-99*2^(n+1)+20)/2` -/
def P1827923252376342859.Spec : Prop :=
  ∀ n, P1827923252376342859.a n = (A250806 (n + 1) : ℚ)

end A250806

/-! ## A250806.P116350076548575343

`A250812(∑[n+2])`
-/

namespace A250806.P116350076548575343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250806.P116350076548575343

namespace A250806

/-- `A250812(∑[n+2])` -/
def P116350076548575343.Spec : Prop :=
  ∀ n, P116350076548575343.a n = A250806 (n + 1)

end A250806

/-! ## A250806.P17438061846377411972

`record[A250812(abs(A201163(n)))]`
-/

namespace A250806.P17438061846377411972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250806.P17438061846377411972

namespace A250806

/-- `record[A250812(abs(A201163(n)))]` -/
def P17438061846377411972.Spec : Prop :=
  ∀ n, P17438061846377411972.a n = A250806 (n + 1)

end A250806

/-! ## A250806.P81456268966026693

`record[A250812(A061579(n+1))]`
-/

namespace A250806.P81456268966026693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250806.P81456268966026693

namespace A250806

/-- `record[A250812(A061579(n+1))]` -/
def P81456268966026693.Spec : Prop :=
  ∀ n, P81456268966026693.a n = A250806 (n + 1)

end A250806

/-! ## A250806.P16442082930792874966

`A250812(A000096(n+1))+char[23]`
-/

namespace A250806.P16442082930792874966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250806.P16442082930792874966

namespace A250806

/-- `A250812(A000096(n+1))+char[23]` -/
def P16442082930792874966.Spec : Prop :=
  ∀ n, P16442082930792874966.a n = A250806 (n + 1)

end A250806

/-!
# A250807: Number of (n+1) X (3+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250807, the canonical program `A250807.P12891980027772627183` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250807 has offset 1).

The definition of A250807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250807.P12891980027772627183

`(304*3^(n+1)-264*2^(n+1)+66)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250807

/-- `(304*3^(n+1)-264*2^(n+1)+66)/2` -/
def P12891980027772627183.Spec : Prop :=
  ∀ n, P12891980027772627183.a n = (A250807 (n + 1) : ℚ)

end A250807

/-! ## A250807.P15988025517137773668

`A250812(∑[n+3]+1)`
-/

namespace A250807.P15988025517137773668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250807.P15988025517137773668

namespace A250807

/-- `A250812(∑[n+3]+1)` -/
def P15988025517137773668.Spec : Prop :=
  ∀ n, P15988025517137773668.a n = A250807 (n + 1)

end A250807

/-! ## A250807.P13047535895545553412

`record[A250812(A198464(n+1))]`
-/

namespace A250807.P13047535895545553412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250807.P13047535895545553412

namespace A250807

/-- `record[A250812(A198464(n+1))]` -/
def P13047535895545553412.Spec : Prop :=
  ∀ n, P13047535895545553412.a n = A250807 (n + 1)

end A250807

/-! ## A250807.P7482525538221061537

`lcm(3, A250812(A034856(n+2)))`
-/

namespace A250807.P7482525538221061537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A250812 (A034856 (n + 2)).toNat)

end

end A250807.P7482525538221061537

namespace A250807

/-- `lcm(3, A250812(A034856(n+2)))` -/
def P7482525538221061537.Spec : Prop :=
  ∀ n, (P7482525538221061537.a n : ℤ) = A250807 (n + 1)

end A250807

/-! ## A250807.P3942586847571022210

`A250812(A034856(n+2))%A250810(n+1)`
-/

namespace A250807.P3942586847571022210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250812 (A034856 (n + 2)).toNat) (A250810 (n + 1))

end

end A250807.P3942586847571022210

namespace A250807

/-- `A250812(A034856(n+2))%A250810(n+1)` -/
def P3942586847571022210.Spec : Prop :=
  ∀ n, P3942586847571022210.a n = A250807 (n + 1)

end A250807

/-!
# A250808: Number of (n+1) X (4+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250808, the canonical program `A250808.P10582283039686054511` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250808 has offset 1).

The definition of A250808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250808.P10582283039686054511

`(620*3^(n+1)-570*2^(n+1)+162)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250808

/-- `(620*3^(n+1)-570*2^(n+1)+162)/2` -/
def P10582283039686054511.Spec : Prop :=
  ∀ n, P10582283039686054511.a n = (A250808 (n + 1) : ℚ)

end A250808

/-! ## A250808.P5726659052402679948

`A250812(∑[n+4]+3)`
-/

namespace A250808.P5726659052402679948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250808.P5726659052402679948

namespace A250808

/-- `A250812(∑[n+4]+3)` -/
def P5726659052402679948.Spec : Prop :=
  ∀ n, P5726659052402679948.a n = A250808 (n + 1)

end A250808

/-! ## A250808.P2419131455744216126

`lcm(3, A250812(A055998(n+2)))`
-/

namespace A250808.P2419131455744216126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A250812 (A055998 (n + 2)).toNat)

end

end A250808.P2419131455744216126

namespace A250808

/-- `lcm(3, A250812(A055998(n+2)))` -/
def P2419131455744216126.Spec : Prop :=
  ∀ n, (P2419131455744216126.a n : ℤ) = A250808 (n + 1)

end A250808

/-! ## A250808.P14102095126083957665

`A007318(C(n, 2))*A250812(A055998(n+2))`
-/

namespace A250808.P14102095126083957665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A250812 (A055998 (n + 2)).toNat

end

end A250808.P14102095126083957665

namespace A250808

/-- `A007318(C(n, 2))*A250812(A055998(n+2))` -/
def P14102095126083957665.Spec : Prop :=
  ∀ n, P14102095126083957665.a n = A250808 (n + 1)

end A250808

/-! ## A250808.P17572033282719000668

`A250812(A055998(n+2))%A000108(n+11)`
-/

namespace A250808.P17572033282719000668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250812 (A055998 (n + 2)).toNat) (A000108 (n + 11))

end

end A250808.P17572033282719000668

namespace A250808

/-- `A250812(A055998(n+2))%A000108(n+11)` -/
def P17572033282719000668.Spec : Prop :=
  ∀ n, P17572033282719000668.a n = A250808 (n + 1)

end A250808

/-!
# A250809: Number of (n+1) X (5+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250809, there is no canonical definition to state claims against.
-/

/-! ## A250809.P14642870920113019882

`A250812(∑[n+5]+6)`
-/

namespace A250809.P14642870920113019882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250809.P14642870920113019882

/-! ## A250809.P3111757376878522234

`A157928(n+2)*A250812(A046691(n+3))`
-/

namespace A250809.P3111757376878522234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 2) * A250812 (A046691 (n + 3)).toNat

end

end A250809.P3111757376878522234

/-!
# A250810: Number of (n+1) X (6+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250810, there is no canonical definition to state claims against.
-/

/-! ## A250810.P10995016748749020204

`A250812(∑[n+6]+10)`
-/

namespace A250810.P10995016748749020204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A250810.P10995016748749020204

/-!
# A250811: Number of (n+1) X (7+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250811, there is no canonical definition to state claims against.
-/

/-! ## A250811.P7662651801700940525

`A250812(A055999(n+4))`
-/

namespace A250811.P7662651801700940525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A055999 (n + 4)).toNat

end

end A250811.P7662651801700940525

/-! ## A250811.P671002023713008217

`A250812(eq[4, A219347(n)])`
-/

namespace A250811.P671002023713008217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250811.P671002023713008217

/-! ## A250811.P1145819370438475863

`A250812(eq[6, A193592(n)])`
-/

namespace A250811.P1145819370438475863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250811.P1145819370438475863

/-! ## A250811.P18006813993434723245

`A250812(Δ[A023551(n+2)])`
-/

namespace A250811.P18006813993434723245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (f1 (n + 1) - f1 n).toNat

end

end A250811.P18006813993434723245

/-! ## A250811.P1917297160486736798

`A250812(A155212(n+3)+2)`
-/

namespace A250811.P1917297160486736798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A155212 (n + 3) + 2).toNat

end

end A250811.P1917297160486736798

/-!
# A250813: Number of (1+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250813, the canonical program `A250813.P5085104417931188799` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250813 has offset 1).

The definition of A250813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250813.P5085104417931188799

`C(n+4, 2)²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250813

/-- `C(n+4, 2)²` -/
def P5085104417931188799.Spec : Prop :=
  ∀ n, (P5085104417931188799.a n : ℤ) = A250813 (n + 1)

theorem P5085104417931188799.correct : P5085104417931188799.Spec := by
  intro n
  simp only [A250813, Nat.add_sub_cancel]

end A250813

/-! ## A250813.P11584210491260453905

`C(n+4, 2)^2`
-/

namespace A250813.P11584210491260453905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 2 ^ 2

end

end A250813.P11584210491260453905

namespace A250813

/-- `C(n+4, 2)^2` -/
def P11584210491260453905.Spec : Prop :=
  ∀ n, (P11584210491260453905.a n : ℤ) = A250813 (n + 1)

theorem P11584210491260453905.correct : P11584210491260453905.Spec := by
  intro n
  simp only [A250813, Nat.add_sub_cancel, A250813.P11584210491260453905.a, A250813.P5085104417931188799.a, SequenceMachineLib.memo_apply]

end A250813

/-! ## A250813.P7520529618797709685

`(∑[n+3]+3)²`
-/

namespace A250813.P7520529618797709685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2

end

end A250813.P7520529618797709685

namespace A250813

/-- `(∑[n+3]+3)²` -/
def P7520529618797709685.Spec : Prop :=
  ∀ n, (P7520529618797709685.a n : ℤ) = A250813 (n + 1)

end A250813

/-! ## A250813.P16911650115747054397

`lcm(n+3, n+4)²/4`
-/

namespace A250813.P16911650115747054397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (n + 4) ^ 2 : ℚ) / 4

end

end A250813.P16911650115747054397

namespace A250813

/-- `lcm(n+3, n+4)²/4` -/
def P16911650115747054397.Spec : Prop :=
  ∀ n, P16911650115747054397.a n = (A250813 (n + 1) : ℚ)

end A250813

/-! ## A250813.P15268686653424822263

`∑[a(n-1)+1]^2` with `a(0)=6, a(1)=4`
-/

namespace A250813.P15268686653424822263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A250813.P15268686653424822263

namespace A250813

/-- `∑[a(n-1)+1]^2` -/
def P15268686653424822263.Spec : Prop :=
  ∀ n, (P15268686653424822263.a n : ℤ) = A250813 (n + 1)

end A250813

/-! ## A250813.P17007208447345573214

`C(n+4, 2)*C(n+4, 2)`
-/

namespace A250813.P17007208447345573214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 2 * Nat.choose (n + 4) 2

end

end A250813.P17007208447345573214

namespace A250813

/-- `C(n+4, 2)*C(n+4, 2)` -/
def P17007208447345573214.Spec : Prop :=
  ∀ n, (P17007208447345573214.a n : ℤ) = A250813 (n + 1)

theorem P17007208447345573214.correct : P17007208447345573214.Spec := by
  intro n
  simp only [A250813, Nat.add_sub_cancel, A250813.P17007208447345573214.a, A250813.P5085104417931188799.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A250813

/-! ## A250813.P1835995473587021517

`record[a(n-1)+n]^2` with `a(0)=6, a(1)=1`
-/

namespace A250813.P1835995473587021517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A250813.P1835995473587021517

namespace A250813

/-- `record[a(n-1)+n]^2` -/
def P1835995473587021517.Spec : Prop :=
  ∀ n, (P1835995473587021517.a n : ℤ) = A250813 (n + 1)

end A250813

/-! ## A250813.P14754174571222657840

`(∑[n+3]+3)^(2%(n+3))`
-/

namespace A250813.P14754174571222657840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ (2 % (n + 3))

end

end A250813.P14754174571222657840

namespace A250813

/-- `(∑[n+3]+3)^(2%(n+3))` -/
def P14754174571222657840.Spec : Prop :=
  ∀ n, (P14754174571222657840.a n : ℤ) = A250813 (n + 1)

end A250813

/-! ## A250813.P723384630111838575

`(∑[n+3]+3)^gcd(2, 2*n)`
-/

namespace A250813.P723384630111838575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ Nat.gcd 2 (2 * n)

end

end A250813.P723384630111838575

namespace A250813

/-- `(∑[n+3]+3)^gcd(2, 2*n)` -/
def P723384630111838575.Spec : Prop :=
  ∀ n, (P723384630111838575.a n : ℤ) = A250813 (n + 1)

end A250813

/-! ## A250813.P8109937178463497162

`record[((n-3-(3-n)²)/2)²]`
-/

namespace A250813.P8109937178463497162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 - (3 - (n : ℤ)) ^ 2 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250813.P8109937178463497162

namespace A250813

/-- `record[((n-3-(3-n)²)/2)²]` -/
def P8109937178463497162.Spec : Prop :=
  ∀ n, P8109937178463497162.a n = (A250813 (n + 1) : ℚ)

end A250813

/-! ## A250813.P12956558527038566236

`floor((3-∑[a(n-1)-1])²)` with `a(0)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A250813.P12956558527038566236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A250813.P12956558527038566236

namespace A250813

/-- `floor((3-∑[a(n-1)-1])²)` -/
def P12956558527038566236.Spec : Prop :=
  ∀ n, P12956558527038566236.a n = A250813 (n + 1)

end A250813

/-! ## A250813.P17492104575486095055

`A027602(n+1)+A000537(n)`
-/

namespace A250813.P17492104575486095055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027602 (n + 1) + A000537 n

end

end A250813.P17492104575486095055

namespace A250813

/-- `A027602(n+1)+A000537(n)` -/
def P17492104575486095055.Spec : Prop :=
  ∀ n, P17492104575486095055.a n = A250813 (n + 1)

end A250813

/-! ## A250813.P5271895166198467052

`A034263(n+2)-A059599(n)`
-/

namespace A250813.P5271895166198467052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 (n + 2) - A059599 n

end

end A250813.P5271895166198467052

namespace A250813

/-- `A034263(n+2)-A059599(n)` -/
def P5271895166198467052.Spec : Prop :=
  ∀ n, P5271895166198467052.a n = A250813 (n + 1)

end A250813

/-! ## A250813.P5198084391294252035

`sqrt(A059977(n+2))`
-/

namespace A250813.P5198084391294252035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059977 (n + 2) : ℝ)

end

end A250813.P5198084391294252035

namespace A250813

/-- `sqrt(A059977(n+2))` -/
def P5198084391294252035.Spec : Prop :=
  ∀ n, P5198084391294252035.a n = (A250813 (n + 1) : ℝ)

end A250813

/-! ## A250813.P2219301999432095488

`A168566(n+3)+1`
-/

namespace A250813.P2219301999432095488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168566 (n + 3) + 1

end

end A250813.P2219301999432095488

namespace A250813

/-- `A168566(n+3)+1` -/
def P2219301999432095488.Spec : Prop :=
  ∀ n, P2219301999432095488.a n = A250813 (n + 1)

end A250813

/-! ## A250813.P1128133278237272793

`A208138(n+3)/9`
-/

namespace A250813.P1128133278237272793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208138 (n + 3) : ℚ) / 9

end

end A250813.P1128133278237272793

namespace A250813

/-- `A208138(n+3)/9` -/
def P1128133278237272793.Spec : Prop :=
  ∀ n, P1128133278237272793.a n = (A250813 (n + 1) : ℚ)

end A250813

/-! ## A250813.P4579719742357587478

`sqrt(sqrt(A059980(n+3)))`
-/

namespace A250813.P4579719742357587478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A059980 (n + 3) : ℝ))

end

end A250813.P4579719742357587478

namespace A250813

/-- `sqrt(sqrt(A059980(n+3)))` -/
def P4579719742357587478.Spec : Prop :=
  ∀ n, P4579719742357587478.a n = (A250813 (n + 1) : ℝ)

end A250813

/-! ## A250813.P3731707647594146221

`sqrt(Δ[A085439(n+2)])`
-/

namespace A250813.P3731707647594146221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085439 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ)

end

end A250813.P3731707647594146221

namespace A250813

/-- `sqrt(Δ[A085439(n+2)])` -/
def P3731707647594146221.Spec : Prop :=
  ∀ n, P3731707647594146221.a n = (A250813 (n + 1) : ℝ)

end A250813

/-! ## A250813.P1014592209402265393

`Δ[Δ[A101094(n+1)]]`
-/

namespace A250813.P1014592209402265393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250813.P1014592209402265393

namespace A250813

/-- `Δ[Δ[A101094(n+1)]]` -/
def P1014592209402265393.Spec : Prop :=
  ∀ n, P1014592209402265393.a n = A250813 (n + 1)

end A250813

/-! ## A250813.P13562765944909091518

`sqrt(A202107(n+3)/2)`
-/

namespace A250813.P13562765944909091518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A202107 (n + 3) : ℚ) / 2 : ℝ)

end

end A250813.P13562765944909091518

namespace A250813

/-- `sqrt(A202107(n+3)/2)` -/
def P13562765944909091518.Spec : Prop :=
  ∀ n, P13562765944909091518.a n = (A250813 (n + 1) : ℝ)

end A250813

/-!
# A250814: Number of (2+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250814, the canonical program `A250814.P10410478434106724363` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250814 has offset 1).

The definition of A250814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250814.P10410478434106724363

`(n+1)^4+10*(n+1)^3+37*(n+1)²+54*(n+1)+27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250814

/-- `(n+1)^4+10*(n+1)^3+37*(n+1)²+54*(n+1)+27` -/
def P10410478434106724363.Spec : Prop :=
  ∀ n, (P10410478434106724363.a n : ℤ) = A250814 (n + 1)

theorem P10410478434106724363.correct : P10410478434106724363.Spec := by
  intro n
  simp only [A250814, Nat.add_sub_cancel]

end A250814

/-! ## A250814.P14532519378417173497

`A250812(∑[n+1]+2)`
-/

namespace A250814.P14532519378417173497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250814.P14532519378417173497

namespace A250814

/-- `A250812(∑[n+1]+2)` -/
def P14532519378417173497.Spec : Prop :=
  ∀ n, P14532519378417173497.a n = A250814 (n + 1)

end A250814

/-!
# A250815: Number of (3+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250815, the canonical program `A250815.P228963502006732682` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250815 has offset 1).

The definition of A250815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250815.P228963502006732682

`15/4*(n+1)^4+36*(n+1)^3+527/4*(n+1)²+359/2*(n+1)+81`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250815

/-- `15/4*(n+1)^4+36*(n+1)^3+527/4*(n+1)²+359/2*(n+1)+81` -/
def P228963502006732682.Spec : Prop :=
  ∀ n, P228963502006732682.a n = (A250815 (n + 1) : ℚ)

end A250815

/-! ## A250815.P915840630370656699

`A250812(∑[n+2]+4)`
-/

namespace A250815.P915840630370656699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250815.P915840630370656699

namespace A250815

/-- `A250812(∑[n+2]+4)` -/
def P915840630370656699.Spec : Prop :=
  ∀ n, P915840630370656699.a n = A250815 (n + 1)

end A250815

/-! ## A250815.P4750281953753765406

`or(char[1], A250812(A167614(n+1)))`
-/

namespace A250815.P4750281953753765406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250812 (A167614 (n + 1)).toNat)

end

end A250815.P4750281953753765406

namespace A250815

/-- `or(char[1], A250812(A167614(n+1)))` -/
def P4750281953753765406.Spec : Prop :=
  ∀ n, P4750281953753765406.a n = A250815 (n + 1)

end A250815

/-! ## A250815.P3584082909246084681

`or(char[1], A250812(A055998(n)+6))`
-/

namespace A250815.P3584082909246084681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250812 (A055998 n + 6).toNat)

end

end A250815.P3584082909246084681

namespace A250815

/-- `or(char[1], A250812(A055998(n)+6))` -/
def P3584082909246084681.Spec : Prop :=
  ∀ n, P3584082909246084681.a n = A250815 (n + 1)

end A250815

/-!
# A250816: Number of (4+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250816, the canonical program `A250816.P7660121819014735989` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250816 has offset 1).

The definition of A250816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250816.P7660121819014735989

`13*(n+1)^4+121*(n+1)^3+439*(n+1)²+573*(n+1)+243`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250816

/-- `13*(n+1)^4+121*(n+1)^3+439*(n+1)²+573*(n+1)+243` -/
def P7660121819014735989.Spec : Prop :=
  ∀ n, (P7660121819014735989.a n : ℤ) = A250816 (n + 1)

theorem P7660121819014735989.correct : P7660121819014735989.Spec := by
  intro n
  simp only [A250816, Nat.add_sub_cancel]

end A250816

/-! ## A250816.P1806328639000573652

`A250812(∑[n+3]+7)`
-/

namespace A250816.P1806328639000573652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250816.P1806328639000573652

namespace A250816

/-- `A250812(∑[n+3]+7)` -/
def P1806328639000573652.Spec : Prop :=
  ∀ n, P1806328639000573652.a n = A250816 (n + 1)

end A250816

/-! ## A250816.P6012291740520826640

`or(1, A250812(A167614(n+2)+1))`
-/

namespace A250816.P6012291740520826640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250812 (A167614 (n + 2) + 1).toNat)

end

end A250816.P6012291740520826640

namespace A250816

/-- `or(1, A250812(A167614(n+2)+1))` -/
def P6012291740520826640.Spec : Prop :=
  ∀ n, P6012291740520826640.a n = A250816 (n + 1)

end A250816

/-! ## A250816.P11079002738568563350

`or(1, A250812(A027379(n+1)+7))`
-/

namespace A250816.P11079002738568563350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250812 (A027379 (n + 1) + 7).toNat)

end

end A250816.P11079002738568563350

namespace A250816

/-- `or(1, A250812(A027379(n+1)+7))` -/
def P11079002738568563350.Spec : Prop :=
  ∀ n, P11079002738568563350.a n = A250816 (n + 1)

end A250816

/-! ## A250816.P6319667035187441652

`A007318(C(2, n))*A250812(A167614(n+2)+1)`
-/

namespace A250816.P6319667035187441652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250812 (A167614 (n + 2) + 1).toNat

end

end A250816.P6319667035187441652

namespace A250816

/-- `A007318(C(2, n))*A250812(A167614(n+2)+1)` -/
def P6319667035187441652.Spec : Prop :=
  ∀ n, P6319667035187441652.a n = A250816 (n + 1)

end A250816

/-!
# A250817: Number of (5+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250817, there is no canonical definition to state claims against.
-/

/-! ## A250817.P320734261643584667

`A250812(∑[n+4]+11)`
-/

namespace A250817.P320734261643584667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250817.P320734261643584667

/-! ## A250817.P15171456611456124991

`A250812(A167499(n+3))+A000007(n+2)`
-/

namespace A250817.P15171456611456124991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A167499 (n + 3)).toNat + A000007 (n + 2)

end

end A250817.P15171456611456124991

/-! ## A250817.P15666876730861105761

`A250812(A167499(n+3))%A231092(n+1)`
-/

namespace A250817.P15666876730861105761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250812 (A167499 (n + 3)).toNat) (A231092 (n + 1))

end

end A250817.P15666876730861105761

/-!
# A250818: Number of (6+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250818, there is no canonical definition to state claims against.
-/

/-! ## A250818.P6818716059289914113

`A250812(∑[n+5]+16)`
-/

namespace A250818.P6818716059289914113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250818.P6818716059289914113

/-! ## A250818.P1311097236979118975

`or(1, A250812(A000124(n+5)+5))`
-/

namespace A250818.P1311097236979118975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250812 (A000124 (n + 5) + 5).toNat)

end

end A250818.P1311097236979118975

/-! ## A250818.P3656388323739161164

`or(1, A250812(eq[7, A131818(n+1)]))`
-/

namespace A250818.P3656388323739161164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A250818.P3656388323739161164

/-! ## A250818.P18141788734271113579

`A250812(A166136(n+4))+A000007(n+2)`
-/

namespace A250818.P18141788734271113579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A166136 (n + 4)).toNat + A000007 (n + 2)

end

end A250818.P18141788734271113579

/-! ## A250818.P17048645975455094394

`A250812(A166136(n+4))%A231092(n+1)`
-/

namespace A250818.P17048645975455094394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250812 (A166136 (n + 4)).toNat) (A231092 (n + 1))

end

end A250818.P17048645975455094394

/-!
# A250819: Number of (7+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250819, there is no canonical definition to state claims against.
-/

/-! ## A250819.P122760010151590659

`A250812(A167487(n+5))`
-/

namespace A250819.P122760010151590659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A167487 (n + 5)).toNat

end

end A250819.P122760010151590659

/-! ## A250819.P13992099552938145444

`A250812(A056119(n)+28)`
-/

namespace A250819.P13992099552938145444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A056119 n + 28).toNat

end

end A250819.P13992099552938145444

/-! ## A250819.P1113687286155626838

`A250812(eq[11, A066657(n)])`
-/

namespace A250819.P1113687286155626838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250819.P1113687286155626838

/-! ## A250819.P6977922587948561385

`A250812(A166136(n+5)+1)`
-/

namespace A250819.P6977922587948561385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A166136 (n + 5) + 1).toNat

end

end A250819.P6977922587948561385

/-! ## A250819.P4147932160171974887

`A250812(A000124(n+6)+6)`
-/

namespace A250819.P4147932160171974887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250812 (A000124 (n + 6) + 6).toNat

end

end A250819.P4147932160171974887

/-!
# A250820: Number of (n+2) X (1+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250820, the canonical program `A250820.P13041496644950716169` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250820 has offset 1).

The definition of A250820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250820.P11924698879542603398

`(∑[round(ϕ*a(n-1))]+4)^3` with `a(0)=4`
-/

namespace A250820.P11924698879542603398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 4) ^ 3

end

end A250820.P11924698879542603398

namespace A250820

/-- `(∑[round(ϕ*a(n-1))]+4)^3` -/
def P11924698879542603398.Spec : Prop :=
  ∀ n, P11924698879542603398.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P13041496644950716169

`(2*A020732(n))^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250820

/-- `(2*A020732(n))^3` -/
def P13041496644950716169.Spec : Prop :=
  ∀ n, P13041496644950716169.a n = A250820 (n + 1)

theorem P13041496644950716169.correct : P13041496644950716169.Spec := by
  intro n
  simp only [A250820, Nat.add_sub_cancel]

end A250820

/-! ## A250820.P17963982587855867122

`A019274(n+5)^3`
-/

namespace A250820.P17963982587855867122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 5) ^ 3

end

end A250820.P17963982587855867122

namespace A250820

/-- `A019274(n+5)^3` -/
def P17963982587855867122.Spec : Prop :=
  ∀ n, P17963982587855867122.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P12287892961530683230

`Δ[A192960(n+2)]^3`
-/

namespace A250820.P12287892961530683230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A250820.P12287892961530683230

namespace A250820

/-- `Δ[A192960(n+2)]^3` -/
def P12287892961530683230.Spec : Prop :=
  ∀ n, P12287892961530683230.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P4734844800678363132

`(A154691(n+2)+1)^3`
-/

namespace A250820.P4734844800678363132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154691 (n + 2) + 1) ^ 3

end

end A250820.P4734844800678363132

namespace A250820

/-- `(A154691(n+2)+1)^3` -/
def P4734844800678363132.Spec : Prop :=
  ∀ n, P4734844800678363132.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P14318496640762673047

`(A168193(n+2)+2)^3`
-/

namespace A250820.P14318496640762673047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168193 (n + 2) + 2) ^ 3

end

end A250820.P14318496640762673047

namespace A250820

/-- `(A168193(n+2)+2)^3` -/
def P14318496640762673047.Spec : Prop :=
  ∀ n, P14318496640762673047.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P15269994277365828485

`(A090991(n+2)-2)^3`
-/

namespace A250820.P15269994277365828485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090991 (n + 2) - 2) ^ 3

end

end A250820.P15269994277365828485

namespace A250820

/-- `(A090991(n+2)-2)^3` -/
def P15269994277365828485.Spec : Prop :=
  ∀ n, P15269994277365828485.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P13806304817804920451

`(A166863(n+2)+3)^3`
-/

namespace A250820.P13806304817804920451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166863 (n + 2) + 3) ^ 3

end

end A250820.P13806304817804920451

namespace A250820

/-- `(A166863(n+2)+3)^3` -/
def P13806304817804920451.Spec : Prop :=
  ∀ n, P13806304817804920451.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P8050576410928797980

`(A054886(n+3)-2)^3`
-/

namespace A250820.P8050576410928797980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054886 (n + 3) - 2) ^ 3

end

end A250820.P8050576410928797980

namespace A250820

/-- `(A054886(n+3)-2)^3` -/
def P8050576410928797980.Spec : Prop :=
  ∀ n, P8050576410928797980.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P10882621668440219316

`(A078642(n+3)-2)^3`
-/

namespace A250820.P10882621668440219316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078642 (n + 3) - 2) ^ 3

end

end A250820.P10882621668440219316

namespace A250820

/-- `(A078642(n+3)-2)^3` -/
def P10882621668440219316.Spec : Prop :=
  ∀ n, P10882621668440219316.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P6631341385906045837

`(A163714(n+3)-2)^3`
-/

namespace A250820.P6631341385906045837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163714 (n + 3) - 2) ^ 3

end

end A250820.P6631341385906045837

namespace A250820

/-- `(A163714(n+3)-2)^3` -/
def P6631341385906045837.Spec : Prop :=
  ∀ n, P6631341385906045837.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P13702574934731200841

`A179999(2*(n+3))^3`
-/

namespace A250820.P13702574934731200841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179999 (2 * (n + 3)) ^ 3

end

end A250820.P13702574934731200841

namespace A250820

/-- `A179999(2*(n+3))^3` -/
def P13702574934731200841.Spec : Prop :=
  ∀ n, P13702574934731200841.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P5474664873775616507

`(A204644(n+2)/2)^3`
-/

namespace A250820.P5474664873775616507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A204644 (n + 2) : ℚ) / 2) ^ 3

end

end A250820.P5474664873775616507

namespace A250820

/-- `(A204644(n+2)/2)^3` -/
def P5474664873775616507.Spec : Prop :=
  ∀ n, P5474664873775616507.a n = (A250820 (n + 1) : ℚ)

end A250820

/-! ## A250820.P17285958760692260506

`A094707(2*n+7)^3`
-/

namespace A250820.P17285958760692260506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (2 * n + 7) ^ 3

end

end A250820.P17285958760692260506

namespace A250820

/-- `A094707(2*n+7)^3` -/
def P17285958760692260506.Spec : Prop :=
  ∀ n, P17285958760692260506.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P6743747853573801142

`(A131269(n+3)+n+2)^3`
-/

namespace A250820.P6743747853573801142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131269 (n + 3) + (n + 2 : ℤ)) ^ 3

end

end A250820.P6743747853573801142

namespace A250820

/-- `(A131269(n+3)+n+2)^3` -/
def P6743747853573801142.Spec : Prop :=
  ∀ n, P6743747853573801142.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P15620816098875777008

`(A104161(n+3)+n+3)^3`
-/

namespace A250820.P15620816098875777008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104161 (n + 3) + (n + 3 : ℤ)) ^ 3

end

end A250820.P15620816098875777008

namespace A250820

/-- `(A104161(n+3)+n+3)^3` -/
def P15620816098875777008.Spec : Prop :=
  ∀ n, P15620816098875777008.a n = A250820 (n + 1)

end A250820

/-! ## A250820.P7198132500842501743

`(∑[A001595(n+2)+1]+4)^3`
-/

namespace A250820.P7198132500842501743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 4) ^ 3

end

end A250820.P7198132500842501743

namespace A250820

/-- `(∑[A001595(n+2)+1]+4)^3` -/
def P7198132500842501743.Spec : Prop :=
  ∀ n, P7198132500842501743.a n = A250820 (n + 1)

end A250820

/-!
# A250821: Number of (n+2)X(2+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250821, there is no canonical definition to state claims against.
-/

/-! ## A250821.P7880392625909506996

`A250826(∑[n+1]+2)`
-/

namespace A250821.P7880392625909506996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250821.P7880392625909506996

/-! ## A250821.P14955794569141192775

`lcm(2, A250826(A133263(n+1)))`
-/

namespace A250821.P14955794569141192775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250826 (A133263 (n + 1)).toNat)

end

end A250821.P14955794569141192775

/-! ## A250821.P13211272410104976748

`record[A250826(n+3)^A185018(n)]`
-/

namespace A250821.P13211272410104976748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250826 (n + 3) : ℚ) ^ (A185018 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250821.P13211272410104976748

/-! ## A250821.P4813091181623363609

`A250826(A133263(n+1))+A011727(n)`
-/

namespace A250821.P4813091181623363609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A133263 (n + 1)).toNat + A011727 n

end

end A250821.P4813091181623363609

/-! ## A250821.P3469080509942985614

`A250826(A133263(n+1))+A011731(n)`
-/

namespace A250821.P3469080509942985614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A133263 (n + 1)).toNat + A011731 n

end

end A250821.P3469080509942985614

/-!
# A250822: Number of (n+2) X (3+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250822, there is no canonical definition to state claims against.
-/

/-! ## A250822.P1426704405523055740

`A250826(∑[n+2]+4)`
-/

namespace A250822.P1426704405523055740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250822.P1426704405523055740

/-! ## A250822.P14279473060218344176

`lcm(2, A250826(A167614(n+1)))`
-/

namespace A250822.P14279473060218344176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250826 (A167614 (n + 1)).toNat)

end

end A250822.P14279473060218344176

/-! ## A250822.P15950301514826671389

`A250826(A167614(n+1))+A011738(n)`
-/

namespace A250822.P15950301514826671389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A167614 (n + 1)).toNat + A011738 n

end

end A250822.P15950301514826671389

/-! ## A250822.P6721311687989362304

`A250826(A167614(n+1))+A185284(n)`
-/

namespace A250822.P6721311687989362304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A167614 (n + 1)).toNat + A185284 n

end

end A250822.P6721311687989362304

/-! ## A250822.P144206327939167125

`A308923(n)+A250826(A167614(n+1))`
-/

namespace A250822.P144206327939167125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308923 n + A250826 (A167614 (n + 1)).toNat

end

end A250822.P144206327939167125

/-!
# A250823: Number of (n+2) X (4+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250823, there is no canonical definition to state claims against.
-/

/-! ## A250823.P10694392794641797794

`A250826(A374004(n+1))`
-/

namespace A250823.P10694392794641797794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A374004 (n + 1)).toNat

end

end A250823.P10694392794641797794

/-! ## A250823.P1608287847365846862

`A250826(A141214(n)+7)`
-/

namespace A250823.P1608287847365846862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A141214 n + 7).toNat

end

end A250823.P1608287847365846862

/-! ## A250823.P15021987977168879301

`A250826(A052905(n)+9)`
-/

namespace A250823.P15021987977168879301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A052905 n + 9).toNat

end

end A250823.P15021987977168879301

/-! ## A250823.P5581804507974023511

`A250826(A055999(n)+10)`
-/

namespace A250823.P5581804507974023511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A055999 n + 10).toNat

end

end A250823.P5581804507974023511

/-! ## A250823.P5450789836955012651

`A250826(eq[5, A066657(n)])`
-/

namespace A250823.P5450789836955012651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250823.P5450789836955012651

/-!
# A250824: Number of (n+2)X(5+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250824, there is no canonical definition to state claims against.
-/

/-! ## A250824.P8807010516498495657

`A250826(A374005(n+1))`
-/

namespace A250824.P8807010516498495657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A374005 (n + 1)).toNat

end

end A250824.P8807010516498495657

/-! ## A250824.P14374473964265642047

`A250826(A167499(n+3))`
-/

namespace A250824.P14374473964265642047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A167499 (n + 3)).toNat

end

end A250824.P14374473964265642047

/-! ## A250824.P9314664212289482350

`A250826(A155212(n)+13)`
-/

namespace A250824.P9314664212289482350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A155212 n + 13).toNat

end

end A250824.P9314664212289482350

/-! ## A250824.P9781472306213155908

`A250826(A056000(n)+15)`
-/

namespace A250824.P9781472306213155908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A056000 n + 15).toNat

end

end A250824.P9781472306213155908

/-! ## A250824.P9052066780195988145

`A250826(eq[7, A066657(n)])`
-/

namespace A250824.P9052066780195988145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250824.P9052066780195988145

/-!
# A250825: Number of (n+2)X(6+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250825, there is no canonical definition to state claims against.
-/

/-! ## A250825.P14386062593920802151

`A250826(A374007(n+1))`
-/

namespace A250825.P14386062593920802151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A374007 (n + 1)).toNat

end

end A250825.P14386062593920802151

/-! ## A250825.P12901266254200697358

`A250826(A056115(n)+21)`
-/

namespace A250825.P12901266254200697358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A056115 n + 21).toNat

end

end A250825.P12901266254200697358

/-! ## A250825.P2901152546323233419

`A250826(A167499(n+4)+1)`
-/

namespace A250825.P2901152546323233419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A167499 (n + 4) + 1).toNat

end

end A250825.P2901152546323233419

/-! ## A250825.P16647742700720523218

`A250826(A141214(n+2)+9)`
-/

namespace A250825.P16647742700720523218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250826 (A141214 (n + 2) + 9).toNat

end

end A250825.P16647742700720523218

/-!
# A250826: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250826, there is no canonical definition to state claims against.
-/

/-! ## A250826.P7173904910629401362

`A250504(n+1)-A075206(A128103(n))`
-/

namespace A250826.P7173904910629401362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (n + 1) - A075206 (A128103 n).toNat

end

end A250826.P7173904910629401362

/-!
# A250827: Number of (n+1) X (1+1) 0..4 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250827, there is no canonical definition to state claims against.
-/

/-! ## A250827.P17455842044655638011

`A250832(∑[n]+1)`
-/

namespace A250827.P17455842044655638011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250827.P17455842044655638011

/-! ## A250827.P3276402953802364456

`record[root(A250832(n+1), A132813(n))]`
-/

namespace A250827.P3276402953802364456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250832 (n + 1) : ℝ) ^ (1 / (A132813 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250827.P3276402953802364456

/-! ## A250827.P12958611972724488733

`record[gcd(A002262(n), A250832(n+1))]`
-/

namespace A250827.P12958611972724488733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250832 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250827.P12958611972724488733

/-! ## A250827.P5337846209025309062

`A250832(A000124(n))+A185238(n)`
-/

namespace A250827.P5337846209025309062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (A000124 n).toNat + A185238 n

end

end A250827.P5337846209025309062

/-! ## A250827.P18041014642416304783

`lcm(A033999(n), A250832(A000124(n)))`
-/

namespace A250827.P18041014642416304783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250832 (A000124 n).toNat)

end

end A250827.P18041014642416304783

/-!
# A250828: Number of (n+1)X(2+1) 0..4 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250828, there is no canonical definition to state claims against.
-/

/-! ## A250828.P17742727430204773996

`A250832(∑[n+1]+2)`
-/

namespace A250828.P17742727430204773996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250828.P17742727430204773996

/-! ## A250828.P8856941180962192417

`record[root(A250832(n+2), A132813(n))]`
-/

namespace A250828.P8856941180962192417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250832 (n + 2) : ℝ) ^ (1 / (A132813 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250828.P8856941180962192417

/-! ## A250828.P12642553456023546207

`record[gcd(A002262(n), A250832(n+2))]`
-/

namespace A250828.P12642553456023546207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250832 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250828.P12642553456023546207

/-! ## A250828.P17716262388606855792

`lcm(1-and(2, n), A250832(A133263(n+1)))`
-/

namespace A250828.P17716262388606855792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A250832 (A133263 (n + 1)).toNat)

end

end A250828.P17716262388606855792

/-! ## A250828.P9433025944106343765

`A250832(A133263(n+1))+A011727(n)`
-/

namespace A250828.P9433025944106343765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (A133263 (n + 1)).toNat + A011727 n

end

end A250828.P9433025944106343765

/-!
# A250829: Number of (n+1)X(3+1) 0..4 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250829, there is no canonical definition to state claims against.
-/

/-! ## A250829.P9579004780709500167

`A250832(∑[n+3]-(n-3))`
-/

namespace A250829.P9579004780709500167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 3)).toNat

end

end A250829.P9579004780709500167

/-!
# A250830: Number of (n+1)X(4+1) 0..4 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250830, there is no canonical definition to state claims against.
-/

/-! ## A250830.P8824844363694009064

`A250832(A052905(n)+9)`
-/

namespace A250830.P8824844363694009064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (A052905 n + 9).toNat

end

end A250830.P8824844363694009064

/-! ## A250830.P5773110838102578506

`A250832(A055998(n+2))`
-/

namespace A250830.P5773110838102578506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250832 (A055998 (n + 2)).toNat

end

end A250830.P5773110838102578506

/-!
# A250833: Number of (n+1) X (n+1) 0..2 arrays with no 2 X 2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250833, there is no canonical definition to state claims against.
-/

/-! ## A250833.P11524706213623497406

`A250841((n+1)²+n²)`
-/

namespace A250833.P11524706213623497406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 ((n + 1) ^ 2 + n ^ 2)

end

end A250833.P11524706213623497406

/-!
# A250834: Number of (n+1) X (1+1) 0..2 arrays with no 2 X 2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250834, there is no canonical definition to state claims against.
-/

/-! ## A250834.P13316605997704007771

`A250841(∑[n]+1)`
-/

namespace A250834.P13316605997704007771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250834.P13316605997704007771

/-! ## A250834.P11678131701623560123

`record[root(A250841(n+1), A051237(n+1))]`
-/

namespace A250834.P11678131701623560123
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250841 (n + 1) : ℝ) ^ (1 / (A051237 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250834.P11678131701623560123

/-! ## A250834.P10685657351873474673

`record[gcd(A229685(n+1), A250841(n+1))]`
-/

namespace A250834.P10685657351873474673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229685 (n + 1)) (A250841 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250834.P10685657351873474673

/-! ## A250834.P3444663943475295496

`lcm(A033999(n), A250841(A000124(n)))`
-/

namespace A250834.P3444663943475295496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250841 (A000124 n).toNat)

end

end A250834.P3444663943475295496

/-! ## A250834.P6605602613828316181

`A250841(A000124(n))%A250835(n+1)`
-/

namespace A250834.P6605602613828316181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250841 (A000124 n).toNat) (A250835 (n + 1))

end

end A250834.P6605602613828316181

/-!
# A250835: Number of (n+1)X(2+1) 0..2 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250835, there is no canonical definition to state claims against.
-/

/-! ## A250835.P5732981990611669702

`A250841(∑[n+1]+2)`
-/

namespace A250835.P5732981990611669702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250835.P5732981990611669702

/-! ## A250835.P11698807457111493986

`lcm(1-and(2, n), A250841(A133263(n+1)))`
-/

namespace A250835.P11698807457111493986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A250841 (A133263 (n + 1)).toNat)

end

end A250835.P11698807457111493986

/-! ## A250835.P17751073668102548033

`record[A250841(abs(A201163(n)))]`
-/

namespace A250835.P17751073668102548033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250835.P17751073668102548033

/-! ## A250835.P5129464103740957993

`record[A250841(Δ[A003453(n+5)])]`
-/

namespace A250835.P5129464103740957993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250835.P5129464103740957993

/-! ## A250835.P591831117322298588

`A250841(A000096(n+1))%A250838(n+1)`
-/

namespace A250835.P591831117322298588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250841 (A000096 (n + 1)).toNat) (A250838 (n + 1))

end

end A250835.P591831117322298588

/-!
# A250836: Number of (n+1)X(3+1) 0..2 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250836, there is no canonical definition to state claims against.
-/

/-! ## A250836.P10657797954200540126

`A250841(∑[n+2]+4)`
-/

namespace A250836.P10657797954200540126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250836.P10657797954200540126

/-! ## A250836.P17777294232968490458

`or(1, A250841(A167614(n+1)))`
-/

namespace A250836.P17777294232968490458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250841 (A167614 (n + 1)).toNat)

end

end A250836.P17777294232968490458

/-! ## A250836.P18120741689445576628

`A250841(A167614(n+1))+A184955(n)`
-/

namespace A250836.P18120741689445576628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A167614 (n + 1)).toNat + A184955 n

end

end A250836.P18120741689445576628

/-! ## A250836.P8207247018769343879

`lcm(A020985(n), A250841(A167614(n+1)))`
-/

namespace A250836.P8207247018769343879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A250841 (A167614 (n + 1)).toNat)

end

end A250836.P8207247018769343879

/-! ## A250836.P5669054982773372056

`A250841(A167614(n+1))%A250837(n+1)`
-/

namespace A250836.P5669054982773372056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250841 (A167614 (n + 1)).toNat) (A250837 (n + 1))

end

end A250836.P5669054982773372056

/-!
# A250837: Number of (n+1)X(4+1) 0..2 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250837, there is no canonical definition to state claims against.
-/

/-! ## A250837.P10086899597047886104

`A250841(A374004(n+1))`
-/

namespace A250837.P10086899597047886104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A374004 (n + 1)).toNat

end

end A250837.P10086899597047886104

/-! ## A250837.P13789998612478004506

`A250841(A052905(n)+9)`
-/

namespace A250837.P13789998612478004506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A052905 n + 9).toNat

end

end A250837.P13789998612478004506

/-! ## A250837.P13379991966757603561

`A250841(A167614(n+2)+1)`
-/

namespace A250837.P13379991966757603561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A167614 (n + 2) + 1).toNat

end

end A250837.P13379991966757603561

/-! ## A250837.P16677571117134657911

`A250841(A166136(n+2)-2)`
-/

namespace A250837.P16677571117134657911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A166136 (n + 2) - 2).toNat

end

end A250837.P16677571117134657911

/-! ## A250837.P5429140788889334991

`A250841(A166136(n+1)+1+n)`
-/

namespace A250837.P5429140788889334991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A250837.P5429140788889334991

/-!
# A250838: Number of (n+1)X(5+1) 0..2 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250838, there is no canonical definition to state claims against.
-/

/-! ## A250838.P5972665817844506634

`A250841(A374005(n+1))`
-/

namespace A250838.P5972665817844506634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A374005 (n + 1)).toNat

end

end A250838.P5972665817844506634

/-! ## A250838.P13260020879166356980

`A250841(A046691(n+3))`
-/

namespace A250838.P13260020879166356980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A046691 (n + 3)).toNat

end

end A250838.P13260020879166356980

/-!
# A250839: Number of (n+1)X(6+1) 0..2 arrays with no 2X2 subblock having a diagonal absolute difference less than its antidiagonal absolute difference.

The programs for A250839, there is no canonical definition to state claims against.
-/

/-! ## A250839.P7945709262417672617

`A250841(A374007(n+1))`
-/

namespace A250839.P7945709262417672617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A374007 (n + 1)).toNat

end

end A250839.P7945709262417672617

/-! ## A250839.P7034229280558734775

`A250841(A052905(n+3))`
-/

namespace A250839.P7034229280558734775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (A052905 (n + 3)).toNat

end

end A250839.P7034229280558734775

/-! ## A250839.P192163856294729815

`A250841(eq[3, A219347(n)])`
-/

namespace A250839.P192163856294729815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250839.P192163856294729815

/-! ## A250839.P4477552864750603586

`A250841(eq[5, A193592(n)])`
-/

namespace A250839.P4477552864750603586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250839.P4477552864750603586

/-!
# A250843: Primes of the form 6^x + y^6 with x, y > 0.

The programs for A250843, there is no canonical definition to state claims against.
-/

/-! ## A250843.P10285852550210189806

`p?[A250547(n+3)]`
-/

namespace A250843.P10285852550210189806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250547 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250843.P10285852550210189806

/-!
# A250845: Number of (n+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250845, there is no canonical definition to state claims against.
-/

/-! ## A250845.P12628530426743574790

`A250853(∑[4*n]+1)`
-/

namespace A250845.P12628530426743574790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250845.P12628530426743574790

/-! ## A250845.P9821120799602336432

`record[A250853(A330613(n+1))]`
-/

namespace A250845.P9821120799602336432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250845.P9821120799602336432

/-! ## A250845.P509419235806131780

`A250853(A001844(n))+char[10]`
-/

namespace A250845.P509419235806131780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250845.P509419235806131780

/-! ## A250845.P12931722234390573201

`record[A214505(n)*A250853(n+1)]`
-/

namespace A250845.P12931722234390573201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A250853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250845.P12931722234390573201

/-! ## A250845.P4195721735462896868

`record[gcd(A003987(n), A250853(n+1))]`
-/

namespace A250845.P4195721735462896868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A250853 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250845.P4195721735462896868

/-!
# A250846: Number of (n+1) X (1+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250846, the canonical program `A250846.P4921775147774914046` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250846 has offset 1).

The definition of A250846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250846.P4921775147774914046

`(832*4^(n+1)-846*3^(n+1)+204*2^(n+1)+2)/12`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250846

/-- `(832*4^(n+1)-846*3^(n+1)+204*2^(n+1)+2)/12` -/
def P4921775147774914046.Spec : Prop :=
  ∀ n, P4921775147774914046.a n = (A250846 (n + 1) : ℚ)

end A250846

/-! ## A250846.P1553424889849635803

`A250853(∑[n+1])`
-/

namespace A250846.P1553424889849635803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250846.P1553424889849635803

namespace A250846

/-- `A250853(∑[n+1])` -/
def P1553424889849635803.Spec : Prop :=
  ∀ n, P1553424889849635803.a n = A250846 (n + 1)

end A250846

/-! ## A250846.P11081766530263864263

`record[A250853(A133825(n))]`
-/

namespace A250846.P11081766530263864263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250846.P11081766530263864263

namespace A250846

/-- `record[A250853(A133825(n))]` -/
def P11081766530263864263.Spec : Prop :=
  ∀ n, P11081766530263864263.a n = A250846 (n + 1)

end A250846

/-! ## A250846.P10748335693880912000

`record[A250853(A115017(n+1))]`
-/

namespace A250846.P10748335693880912000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250846.P10748335693880912000

namespace A250846

/-- `record[A250853(A115017(n+1))]` -/
def P10748335693880912000.Spec : Prop :=
  ∀ n, P10748335693880912000.a n = A250846 (n + 1)

end A250846

/-! ## A250846.P11444322151987780579

`record[A250853(A130270(n+1))]`
-/

namespace A250846.P11444322151987780579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250846.P11444322151987780579

namespace A250846

/-- `record[A250853(A130270(n+1))]` -/
def P11444322151987780579.Spec : Prop :=
  ∀ n, P11444322151987780579.a n = A250846 (n + 1)

end A250846

/-!
# A250847: Number of (n+1) X (2+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250847, there is no canonical definition to state claims against.
-/

/-! ## A250847.P18112410187942377105

`A250853(∑[n+2])`
-/

namespace A250847.P18112410187942377105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250847.P18112410187942377105

/-! ## A250847.P12482567947937090338

`record[A250853(A061579(n+1))]`
-/

namespace A250847.P12482567947937090338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250847.P12482567947937090338

/-! ## A250847.P11637903929891404872

`A250853(A000096(n+1))+char[16]`
-/

namespace A250847.P11637903929891404872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250847.P11637903929891404872

/-! ## A250847.P17252413073553197834

`record[A023531(n+2)*A250853(n+2)]`
-/

namespace A250847.P17252413073553197834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A250853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250847.P17252413073553197834

/-! ## A250847.P6519394588545860758

`record[A055137(n+2)*A250853(n+2)]`
-/

namespace A250847.P6519394588545860758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 (n + 2) * A250853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250847.P6519394588545860758

/-!
# A250848: Number of (n+1) X (3+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250848, there is no canonical definition to state claims against.
-/

/-! ## A250848.P10317037580410508548

`A250853(∑[n+3]+1)`
-/

namespace A250848.P10317037580410508548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250848.P10317037580410508548

/-! ## A250848.P15032385536050025639

`or(1, A250853(Δ[A008778(n)]))`
-/

namespace A250848.P15032385536050025639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250853 (f1 (n + 1) - f1 n).toNat)

end

end A250848.P15032385536050025639

/-! ## A250848.P16644466274143352093

`A250853(Δ[A008778(n)])+A008683(12*(n+1))`
-/

namespace A250848.P16644466274143352093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (f1 (n + 1) - f1 n).toNat + A008683 (12 * (n + 1))

end

end A250848.P16644466274143352093

/-! ## A250848.P14278341682902107730

`A014963(15*(n+1))*A250853(Δ[A008778(n)])`
-/

namespace A250848.P14278341682902107730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A250853 (f1 (n + 1) - f1 n).toNat

end

end A250848.P14278341682902107730

/-! ## A250848.P6798270891235353105

`A250853(Δ[A008778(n)])+A018252(n+1)%((-1)^n)²`
-/

namespace A250848.P6798270891235353105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (f1 (n + 1) - f1 n).toNat + Int.tmod (A018252 (n + 1)) (((-1) ^ n) ^ 2)

end

end A250848.P6798270891235353105

/-!
# A250849: Number of (n+1) X (4+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250849, there is no canonical definition to state claims against.
-/

/-! ## A250849.P319190113914408209

`A250853(∑[n+4]+3)`
-/

namespace A250849.P319190113914408209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250849.P319190113914408209

/-! ## A250849.P4866219353969195133

`A250853(A141214(n+1))+A184955(n)`
-/

namespace A250849.P4866219353969195133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A141214 (n + 1)).toNat + A184955 n

end

end A250849.P4866219353969195133

/-! ## A250849.P12482098100909036658

`A250853(A027379(n+2))%A163031(n+5)`
-/

namespace A250849.P12482098100909036658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250853 (A027379 (n + 2)).toNat) (A163031 (n + 5))

end

end A250849.P12482098100909036658

/-!
# A250850: Number of (n+1) X (5+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250850, there is no canonical definition to state claims against.
-/

/-! ## A250850.P810877744245288011

`A250853(∑[n+5]+6)`
-/

namespace A250850.P810877744245288011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250850.P810877744245288011

/-!
# A250851: Number of (n+1) X (6+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250851, there is no canonical definition to state claims against.
-/

/-! ## A250851.P6341809695384903254

`A250853(A052905(n+3))`
-/

namespace A250851.P6341809695384903254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A052905 (n + 3)).toNat

end

end A250851.P6341809695384903254

/-! ## A250851.P8514715572102762585

`A250853(A056119(n)+16)`
-/

namespace A250851.P8514715572102762585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A056119 n + 16).toNat

end

end A250851.P8514715572102762585

/-! ## A250851.P5624006934988794880

`A250853(eq[3, A219347(n)])`
-/

namespace A250851.P5624006934988794880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250851.P5624006934988794880

/-! ## A250851.P12509277864346043889

`A250853(eq[5, A193592(n)])`
-/

namespace A250851.P12509277864346043889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250851.P12509277864346043889

/-! ## A250851.P11958301936430211252

`A250853(eq[8, A258709(n)])`
-/

namespace A250851.P11958301936430211252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250851.P11958301936430211252

/-!
# A250852: Number of (n+1) X (7+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250852, there is no canonical definition to state claims against.
-/

/-! ## A250852.P1068240396807337883

`A250853(A055999(n+4))`
-/

namespace A250852.P1068240396807337883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A055999 (n + 4)).toNat

end

end A250852.P1068240396807337883

/-! ## A250852.P13023016262379158919

`A250853(A056121(n)+22)`
-/

namespace A250852.P13023016262379158919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A056121 n + 22).toNat

end

end A250852.P13023016262379158919

/-! ## A250852.P4453396717406548881

`A250853(eq[4, A219347(n)])`
-/

namespace A250852.P4453396717406548881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250852.P4453396717406548881

/-! ## A250852.P2434475770454464622

`A250853(eq[6, A193592(n)])`
-/

namespace A250852.P2434475770454464622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250852.P2434475770454464622

/-! ## A250852.P18161590937636305735

`A250853(Δ[A023551(n+2)])`
-/

namespace A250852.P18161590937636305735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (f1 (n + 1) - f1 n).toNat

end

end A250852.P18161590937636305735

/-!
# A250854: Number of (2+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250854, there is no canonical definition to state claims against.
-/

/-! ## A250854.P4008830734306735902

`A250853(∑[n+1]+2)`
-/

namespace A250854.P4008830734306735902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250854.P4008830734306735902

/-! ## A250854.P12501223029583590639

`record[A250853(A130270(n+1)+2)]`
-/

namespace A250854.P12501223029583590639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250854.P12501223029583590639

/-! ## A250854.P13981109320874472634

`A250853(A000096(n)+3)+char[17]`
-/

namespace A250854.P13981109320874472634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250854.P13981109320874472634

/-! ## A250854.P4802486105371303163

`record[A023531(n)*A250853(n+3)]`
-/

namespace A250854.P4802486105371303163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A250853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250854.P4802486105371303163

/-! ## A250854.P11868964363658677814

`A007318(C(2, n))*A250853(A000096(n)+3)`
-/

namespace A250854.P11868964363658677814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250853 (A000096 n + 3).toNat

end

end A250854.P11868964363658677814

/-!
# A250855: Number of (3+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250855, there is no canonical definition to state claims against.
-/

/-! ## A250855.P8537355933674256064

`A250853(∑[n+2]+4)`
-/

namespace A250855.P8537355933674256064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250855.P8537355933674256064

/-! ## A250855.P10492498852894286510

`A250853(A167614(n+1))+char[16]`
-/

namespace A250855.P10492498852894286510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250855.P10492498852894286510

/-! ## A250855.P12096026245778266789

`A250853(A055998(n)+6)+char[17]`
-/

namespace A250855.P12096026245778266789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250855.P12096026245778266789

/-! ## A250855.P4352880500582224458

`lcm(A114295(n), A250853(A167614(n+1)))`
-/

namespace A250855.P4352880500582224458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114295 n) (A250853 (A167614 (n + 1)).toNat)

end

end A250855.P4352880500582224458

/-! ## A250855.P14847904693764095431

`A250853(A167614(n+1))%A250850(n+1)`
-/

namespace A250855.P14847904693764095431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250853 (A167614 (n + 1)).toNat) (A250850 (n + 1))

end

end A250855.P14847904693764095431

/-!
# A250856: Number of (4+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250856, there is no canonical definition to state claims against.
-/

/-! ## A250856.P12715387953385966889

`A250853(∑[n+3]+7)`
-/

namespace A250856.P12715387953385966889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250856.P12715387953385966889

/-! ## A250856.P13978006955334567080

`A250853(A141214(n)+7)+char[24]`
-/

namespace A250856.P13978006955334567080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250856.P13978006955334567080

/-! ## A250856.P12865351028735491064

`A007318(C(2, n))*A250853(A141214(n)+7)`
-/

namespace A250856.P12865351028735491064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250853 (A141214 n + 7).toNat

end

end A250856.P12865351028735491064

/-! ## A250856.P5400575518146114825

`A007318(∑{e}[n, #])*A250853(A141214(n)+7)`
-/

namespace A250856.P5400575518146114825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A250853 (A141214 n + 7).toNat

end

end A250856.P5400575518146114825

/-! ## A250856.P17301153418912902288

`and(1, A000041(n))!*A250853(A141214(n)+7)`
-/

namespace A250856.P17301153418912902288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A250853 (A141214 n + 7).toNat

end

end A250856.P17301153418912902288

/-!
# A250857: Number of (5+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250857, there is no canonical definition to state claims against.
-/

/-! ## A250857.P11879482920637616488

`A250853(∑[n+4]+11)`
-/

namespace A250857.P11879482920637616488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250857.P11879482920637616488

/-!
# A250858: Number of (6+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250858, there is no canonical definition to state claims against.
-/

/-! ## A250858.P9515907745288777262

`A250853(A056115(n)+21)`
-/

namespace A250858.P9515907745288777262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A056115 n + 21).toNat

end

end A250858.P9515907745288777262

/-! ## A250858.P1496381172805326112

`A250853(Δ[A264443(n)]+10)`
-/

namespace A250858.P1496381172805326112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (f1 (n + 1) - f1 n + 10).toNat

end

end A250858.P1496381172805326112

/-! ## A250858.P12538172974557815172

`A250853(A167614(n+4)+3)`
-/

namespace A250858.P12538172974557815172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A167614 (n + 4) + 3).toNat

end

end A250858.P12538172974557815172

/-! ## A250858.P13652929379533063804

`A250853(A055998(n+3)+9)`
-/

namespace A250858.P13652929379533063804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A055998 (n + 3) + 9).toNat

end

end A250858.P13652929379533063804

/-! ## A250858.P1109982124457040540

`A250853(eq[5, A002262(n)]+1)`
-/

namespace A250858.P1109982124457040540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A250858.P1109982124457040540

/-!
# A250859: Number of (7+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250859, there is no canonical definition to state claims against.
-/

/-! ## A250859.P15638167026873871441

`A250853(A167487(n+5))`
-/

namespace A250859.P15638167026873871441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A167487 (n + 5)).toNat

end

end A250859.P15638167026873871441

/-! ## A250859.P9166049686998690421

`A250853(A056119(n)+28)`
-/

namespace A250859.P9166049686998690421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A056119 n + 28).toNat

end

end A250859.P9166049686998690421

/-! ## A250859.P11205498057662852148

`A250853(eq[11, A066657(n)])`
-/

namespace A250859.P11205498057662852148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250859.P11205498057662852148

/-! ## A250859.P2851951548319001446

`A250853(A166136(n+5)+1)`
-/

namespace A250859.P2851951548319001446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A166136 (n + 5) + 1).toNat

end

end A250859.P2851951548319001446

/-! ## A250859.P14272566574870653647

`A250853(A167499(n+5)+2)`
-/

namespace A250859.P14272566574870653647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250853 (A167499 (n + 5) + 2).toNat

end

end A250859.P14272566574870653647

/-!
# A250860: 

The programs for A250860, there is no canonical definition to state claims against.
-/

/-! ## A250860.P493371841137417103

`A250868((n+1)²+n²)`
-/

namespace A250860.P493371841137417103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 ((n + 1) ^ 2 + n ^ 2)

end

end A250860.P493371841137417103

/-!
# A250861: Number of (n+2) X (1+2) 0..3 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250861, there is no canonical definition to state claims against.
-/

/-! ## A250861.P2926633829601721761

`A251191(n+1)²/A251190(n+1)`
-/

namespace A250861.P2926633829601721761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251191 (n + 1) ^ 2 : ℚ) / (A251190 (n + 1) : ℚ)

end

end A250861.P2926633829601721761

/-! ## A250861.P6054121436450229005

`A251190(n+1)/A250594(n+1)*A251191(n+1)`
-/

namespace A250861.P6054121436450229005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251191 (n + 1) : ℚ)

end

end A250861.P6054121436450229005

/-! ## A250861.P7746795406998860379

`A250862(n+1)²/A250863(n+1)`
-/

namespace A250861.P7746795406998860379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250862 (n + 1) ^ 2 : ℚ) / (A250863 (n + 1) : ℚ)

end

end A250861.P7746795406998860379

/-! ## A250861.P3499961240327359668

`(A250596(n+1)/A250594(n+1)*A251188(n+1))²/A251190(n+1)`
-/

namespace A250861.P3499961240327359668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250596 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A251188 (n + 1) : ℚ)) ^ 2 / (A251190 (n + 1) : ℚ)

end

end A250861.P3499961240327359668

/-! ## A250861.P7602385945483932690

`A251192(A374008(n+1))`
-/

namespace A250861.P7602385945483932690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251192 (A374008 (n + 1)).toNat

end

end A250861.P7602385945483932690

/-!
# A250862: Number of (n+2)X(2+2) 0..3 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250862, there is no canonical definition to state claims against.
-/

/-! ## A250862.P14642912073304879609

`sqrt(A250861(n+1)*A250863(n+1))`
-/

namespace A250862.P14642912073304879609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250861 (n + 1) * A250863 (n + 1) : ℝ)

end

end A250862.P14642912073304879609

/-! ## A250862.P2259646388197081802

`A250868(∑[n+1]+2)`
-/

namespace A250862.P2259646388197081802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250862.P2259646388197081802

/-! ## A250862.P5308113394875816613

`record[A250868(abs(A201163(n)))]`
-/

namespace A250862.P5308113394875816613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250862.P5308113394875816613

/-! ## A250862.P14980048277240322518

`record[A250868(Δ[A003453(n+5)])]`
-/

namespace A250862.P14980048277240322518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250862.P14980048277240322518

/-!
# A250863: Number of (n+2)X(3+2) 0..3 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250863, there is no canonical definition to state claims against.
-/

/-! ## A250863.P11508090290865535919

`A250862(n+1)²/A250861(n+1)`
-/

namespace A250863.P11508090290865535919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250862 (n + 1) ^ 2 : ℚ) / (A250861 (n + 1) : ℚ)

end

end A250863.P11508090290865535919

/-! ## A250863.P13904550124524848165

`A250868(∑[n+1]+2)²/A250861(n+1)`
-/

namespace A250863.P13904550124524848165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250868 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 : ℚ) / (A250861 (n + 1) : ℚ)

end

end A250863.P13904550124524848165

/-! ## A250863.P1356689581305962179

`A250868(∑[n+2]+4)`
-/

namespace A250863.P1356689581305962179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250863.P1356689581305962179

/-!
# A250864: 

The programs for A250864, there is no canonical definition to state claims against.
-/

/-! ## A250864.P14598137043539944257

`A250863(n+1)²/A250862(n+1)`
-/

namespace A250864.P14598137043539944257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250863 (n + 1) ^ 2 : ℚ) / (A250862 (n + 1) : ℚ)

end

end A250864.P14598137043539944257

/-! ## A250864.P9128132781794522233

`A250863(n+1)²/sqrt(A250861(n+1)*A250863(n+1))`
-/

namespace A250864.P9128132781794522233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250863 (n + 1) ^ 2 : ℝ) / Real.sqrt (A250861 (n + 1) * A250863 (n + 1) : ℝ)

end

end A250864.P9128132781794522233

/-! ## A250864.P7093443497435621490

`A250863(n+1)²/A250868(∑[n+1]+2)`
-/

namespace A250864.P7093443497435621490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250863 (n + 1) ^ 2 : ℚ) / (A250868 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ)

end

end A250864.P7093443497435621490

/-!
# A250865: 

The programs for A250865, there is no canonical definition to state claims against.
-/

/-! ## A250865.P5504988466595662073

`A250868(A052905(n+2)+1)`
-/

namespace A250865.P5504988466595662073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A052905 (n + 2) + 1).toNat

end

end A250865.P5504988466595662073

/-! ## A250865.P7750200032766877911

`A250868(A141214(n+2)-1)`
-/

namespace A250865.P7750200032766877911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A141214 (n + 2) - 1).toNat

end

end A250865.P7750200032766877911

/-!
# A250866: 

The programs for A250866, there is no canonical definition to state claims against.
-/

/-! ## A250866.P9508667676249993914

`A250868(A167499(n+4)+1)`
-/

namespace A250866.P9508667676249993914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A167499 (n + 4) + 1).toNat

end

end A250866.P9508667676249993914

/-!
# A250867: 

The programs for A250867, there is no canonical definition to state claims against.
-/

/-! ## A250867.P116715769332131002

`A250868(A055999(n+4))`
-/

namespace A250867.P116715769332131002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A055999 (n + 4)).toNat

end

end A250867.P116715769332131002

/-!
# A250869: Number of (n+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250869, there is no canonical definition to state claims against.
-/

/-! ## A250869.P9396971132365951575

`A250877(∑[4*n]+1)`
-/

namespace A250869.P9396971132365951575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250869.P9396971132365951575

/-! ## A250869.P2214154250537563352

`lcm(2, A250877(A001844(n)))`
-/

namespace A250869.P2214154250537563352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250877 (A001844 n).toNat)

end

end A250869.P2214154250537563352

/-! ## A250869.P14639363338807907724

`record[A250877(Δ[A235355(n)])]`
-/

namespace A250869.P14639363338807907724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250869.P14639363338807907724

/-! ## A250869.P2486210148490316142

`record[A250877(A178218(n+1))]`
-/

namespace A250869.P2486210148490316142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250869.P2486210148490316142

/-! ## A250869.P1177433675968635096

`record[A250877(A330613(n+1))]`
-/

namespace A250869.P1177433675968635096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250869.P1177433675968635096

/-!
# A250870: Number of (n+1) X (1+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250870, the canonical program `A250870.P6673347047517117770` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250870 has offset 1).

The definition of A250870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250870.P6673347047517117770

`2*A016208(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250870

/-- `2*A016208(n+2)` -/
def P6673347047517117770.Spec : Prop :=
  ∀ n, P6673347047517117770.a n = A250870 (n + 1)

theorem P6673347047517117770.correct : P6673347047517117770.Spec := by
  intro n
  simp only [A250870, Nat.add_sub_cancel]

end A250870

/-! ## A250870.P2215674124184342896

`A120664(n+4)-2`
-/

namespace A250870.P2215674124184342896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120664 (n + 4) - 2

end

end A250870.P2215674124184342896

namespace A250870

/-- `A120664(n+4)-2` -/
def P2215674124184342896.Spec : Prop :=
  ∀ n, P2215674124184342896.a n = A250870 (n + 1)

end A250870

/-! ## A250870.P11383750219695164658

`A304974(2*n+9)`
-/

namespace A250870.P11383750219695164658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304974 (2 * n + 9)

end

end A250870.P11383750219695164658

namespace A250870

/-- `A304974(2*n+9)` -/
def P11383750219695164658.Spec : Prop :=
  ∀ n, P11383750219695164658.a n = A250870 (n + 1)

end A250870

/-! ## A250870.P15775765224115078600

`A171477(n+2)+A016269(n+2)`
-/

namespace A250870.P15775765224115078600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 (n + 2) + A016269 (n + 2)

end

end A250870.P15775765224115078600

namespace A250870

/-- `A171477(n+2)+A016269(n+2)` -/
def P15775765224115078600.Spec : Prop :=
  ∀ n, P15775765224115078600.a n = A250870 (n + 1)

end A250870

/-! ## A250870.P17707138655262787962

`A083584(n+3)-A058481(n+4)`
-/

namespace A250870.P17707138655262787962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083584 (n + 3) - A058481 (n + 4)

end

end A250870.P17707138655262787962

namespace A250870

/-- `A083584(n+3)-A058481(n+4)` -/
def P17707138655262787962.Spec : Prop :=
  ∀ n, P17707138655262787962.a n = A250870 (n + 1)

end A250870

/-! ## A250870.P8941971826462612655

`(128*4^(n+1)-81*3^(n+1)+1)/3`
-/

namespace A250870.P8941971826462612655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((128 * 4 ^ (n + 1) : ℤ) - (81 * 3 ^ (n + 1) : ℤ) + 1 : ℚ) / 3

end

end A250870.P8941971826462612655

namespace A250870

/-- `(128*4^(n+1)-81*3^(n+1)+1)/3` -/
def P8941971826462612655.Spec : Prop :=
  ∀ n, P8941971826462612655.a n = (A250870 (n + 1) : ℚ)

end A250870

/-! ## A250870.P13506020316341736733

`A016208(n+2)+A016208(A118759(n+2))`
-/

namespace A250870.P13506020316341736733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016208 (n + 2) + A016208 (A118759 (n + 2)).toNat

end

end A250870.P13506020316341736733

namespace A250870

/-- `A016208(n+2)+A016208(A118759(n+2))` -/
def P13506020316341736733.Spec : Prop :=
  ∀ n, P13506020316341736733.a n = A250870 (n + 1)

end A250870

/-!
# A250871: Number of (n+1) X (2+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250871, the canonical program `A250871.P2573691612901626524` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250871 has offset 1).

The definition of A250871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250871.P2573691612901626524

`(472*4^(n+1)-378*3^(n+1)+54*2^(n+1)+2)/3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250871

/-- `(472*4^(n+1)-378*3^(n+1)+54*2^(n+1)+2)/3` -/
def P2573691612901626524.Spec : Prop :=
  ∀ n, P2573691612901626524.a n = (A250871 (n + 1) : ℚ)

end A250871

/-! ## A250871.P1019143919153573250

`A250877(∑[n+2])`
-/

namespace A250871.P1019143919153573250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250871.P1019143919153573250

namespace A250871

/-- `A250877(∑[n+2])` -/
def P1019143919153573250.Spec : Prop :=
  ∀ n, P1019143919153573250.a n = A250871 (n + 1)

end A250871

/-! ## A250871.P17008016924278601345

`record[A250877(A061579(n+1))]`
-/

namespace A250871.P17008016924278601345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250871.P17008016924278601345

namespace A250871

/-- `record[A250877(A061579(n+1))]` -/
def P17008016924278601345.Spec : Prop :=
  ∀ n, P17008016924278601345.a n = A250871 (n + 1)

end A250871

/-! ## A250871.P17001981857447781999

`record[A250877(A333530(n+1))]`
-/

namespace A250871.P17001981857447781999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250871.P17001981857447781999

namespace A250871

/-- `record[A250877(A333530(n+1))]` -/
def P17001981857447781999.Spec : Prop :=
  ∀ n, P17001981857447781999.a n = A250871 (n + 1)

end A250871

/-! ## A250871.P13824377519753349546

`record[A250877(A099375(n)+1+n)]`
-/

namespace A250871.P13824377519753349546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A099375 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250871.P13824377519753349546

namespace A250871

/-- `record[A250877(A099375(n)+1+n)]` -/
def P13824377519753349546.Spec : Prop :=
  ∀ n, P13824377519753349546.a n = A250871 (n + 1)

end A250871

/-!
# A250872: Number of (n+1) X (3+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250872, there is no canonical definition to state claims against.
-/

/-! ## A250872.P8616448206115792726

`A250877(∑[n+3]+1)`
-/

namespace A250872.P8616448206115792726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250872.P8616448206115792726

/-! ## A250872.P10206655230091361942

`lcm(2, A250877(Δ[A008778(n)]))`
-/

namespace A250872.P10206655230091361942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250877 (f1 (n + 1) - f1 n).toNat)

end

end A250872.P10206655230091361942

/-! ## A250872.P8949786769609009674

`or(2, A250877(A034856(n+2)))`
-/

namespace A250872.P8949786769609009674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A250877 (A034856 (n + 2)).toNat)

end

end A250872.P8949786769609009674

/-! ## A250872.P16762285790103118842

`lcm(A250877(A034856(n+2)), A369929(n))`
-/

namespace A250872.P16762285790103118842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A250877 (A034856 (n + 2)).toNat) (A369929 n)

end

end A250872.P16762285790103118842

/-! ## A250872.P10298689592132169351

`A250877(Δ[A008778(n)])+A008683(8*(n+1))`
-/

namespace A250872.P10298689592132169351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (f1 (n + 1) - f1 n).toNat + A008683 (8 * (n + 1))

end

end A250872.P10298689592132169351

/-!
# A250873: Number of (n+1) X (4+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250873, there is no canonical definition to state claims against.
-/

/-! ## A250873.P1677812064460000622

`A250877(∑[n+4]+3)`
-/

namespace A250873.P1677812064460000622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250873.P1677812064460000622

/-!
# A250874: Number of (n+1) X (5+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250874, there is no canonical definition to state claims against.
-/

/-! ## A250874.P11286174429745482463

`A250877(C(n+3, 2)+3*(n-1)+11)`
-/

namespace A250874.P11286174429745482463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 ((Nat.choose (n + 3) 2 : ℤ) + 3 * ((n : ℤ) - 1) + 11).toNat

end

end A250874.P11286174429745482463

/-! ## A250874.P12207085121044956197

`A250877(Δ[A264443(n)])`
-/

namespace A250874.P12207085121044956197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (f1 (n + 1) - f1 n).toNat

end

end A250874.P12207085121044956197

/-! ## A250874.P863886598896825203

`A250877(A046691(n+3))`
-/

namespace A250874.P863886598896825203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A046691 (n + 3)).toNat

end

end A250874.P863886598896825203

/-! ## A250874.P2008356992169636448

`A250877(A056115(n)+11)`
-/

namespace A250874.P2008356992169636448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A056115 n + 11).toNat

end

end A250874.P2008356992169636448

/-! ## A250874.P1851344127890241943

`A250877(eq[2, A092921(n)])`
-/

namespace A250874.P1851344127890241943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250874.P1851344127890241943

/-!
# A250875: Number of (n+1) X (6+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250875, there is no canonical definition to state claims against.
-/

/-! ## A250875.P9674399264579794585

`A250877(∑[n+6]+10)`
-/

namespace A250875.P9674399264579794585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A250875.P9674399264579794585

/-!
# A250876: Number of (n+1) X (7+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250876, there is no canonical definition to state claims against.
-/

/-! ## A250876.P9397105742791225777

`A250877(A055999(n+4))`
-/

namespace A250876.P9397105742791225777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A055999 (n + 4)).toNat

end

end A250876.P9397105742791225777

/-! ## A250876.P7650936894600485682

`A250877(eq[4, A219347(n)])`
-/

namespace A250876.P7650936894600485682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250876.P7650936894600485682

/-! ## A250876.P16989505798120517394

`A250877(eq[5, A332954(n)])`
-/

namespace A250876.P16989505798120517394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250876.P16989505798120517394

/-! ## A250876.P14968655420647285776

`A250877(eq[6, A193592(n)])`
-/

namespace A250876.P14968655420647285776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250876.P14968655420647285776

/-! ## A250876.P5308985593283182849

`A250877(Δ[A023551(n+2)])`
-/

namespace A250876.P5308985593283182849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (f1 (n + 1) - f1 n).toNat

end

end A250876.P5308985593283182849

/-!
# A250878: Number of (1+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250878, the canonical program `A250878.P14780115222893296796` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250878 has offset 1).

The definition of A250878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250878.P14780115222893296796

`34/3*(n+1)^3+28*(n+1)²+104/3*(n+1)+16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250878

/-- `34/3*(n+1)^3+28*(n+1)²+104/3*(n+1)+16` -/
def P14780115222893296796.Spec : Prop :=
  ∀ n, P14780115222893296796.a n = (A250878 (n + 1) : ℚ)

end A250878

/-! ## A250878.P9672378943570161783

`A250877(∑[n]+1)`
-/

namespace A250878.P9672378943570161783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250878.P9672378943570161783

namespace A250878

/-- `A250877(∑[n]+1)` -/
def P9672378943570161783.Spec : Prop :=
  ∀ n, P9672378943570161783.a n = A250878 (n + 1)

end A250878

/-! ## A250878.P15122668421555061410

`lcm(2, A250877(A000124(n)))`
-/

namespace A250878.P15122668421555061410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250877 (A000124 n).toNat)

end

end A250878.P15122668421555061410

namespace A250878

/-- `lcm(2, A250877(A000124(n)))` -/
def P15122668421555061410.Spec : Prop :=
  ∀ n, (P15122668421555061410.a n : ℤ) = A250878 (n + 1)

end A250878

/-! ## A250878.P15883947326401647801

`record[A250877(A114091(n+1))]`
-/

namespace A250878.P15883947326401647801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250878.P15883947326401647801

namespace A250878

/-- `record[A250877(A114091(n+1))]` -/
def P15883947326401647801.Spec : Prop :=
  ∀ n, P15883947326401647801.a n = A250878 (n + 1)

end A250878

/-! ## A250878.P17830270885358982656

`record[A010054(n)*A250877(n+1)]`
-/

namespace A250878.P17830270885358982656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250878.P17830270885358982656

namespace A250878

/-- `record[A010054(n)*A250877(n+1)]` -/
def P17830270885358982656.Spec : Prop :=
  ∀ n, P17830270885358982656.a n = A250878 (n + 1)

end A250878

/-!
# A250879: Number of (2+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250879, the canonical program `A250879.P7428710936216838256` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250879 has offset 1).

The definition of A250879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250879.P7428710936216838256

`55*(n+1)^3+155*(n+1)²+166*(n+1)+64`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250879

/-- `55*(n+1)^3+155*(n+1)²+166*(n+1)+64` -/
def P7428710936216838256.Spec : Prop :=
  ∀ n, (P7428710936216838256.a n : ℤ) = A250879 (n + 1)

theorem P7428710936216838256.correct : P7428710936216838256.Spec := by
  intro n
  simp only [A250879, Nat.add_sub_cancel]

end A250879

/-! ## A250879.P13760463969579484953

`A250877(∑[n+1]+2)`
-/

namespace A250879.P13760463969579484953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250879.P13760463969579484953

namespace A250879

/-- `A250877(∑[n+1]+2)` -/
def P13760463969579484953.Spec : Prop :=
  ∀ n, P13760463969579484953.a n = A250879 (n + 1)

end A250879

/-! ## A250879.P7449420863634203759

`lcm(2, A250877(A133263(n+1)))`
-/

namespace A250879.P7449420863634203759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250877 (A133263 (n + 1)).toNat)

end

end A250879.P7449420863634203759

namespace A250879

/-- `lcm(2, A250877(A133263(n+1)))` -/
def P7449420863634203759.Spec : Prop :=
  ∀ n, (P7449420863634203759.a n : ℤ) = A250879 (n + 1)

end A250879

/-! ## A250879.P8211662551358468355

`record[A250877(A133263(abs(1-n)))]`
-/

namespace A250879.P8211662551358468355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250879.P8211662551358468355

namespace A250879

/-- `record[A250877(A133263(abs(1-n)))]` -/
def P8211662551358468355.Spec : Prop :=
  ∀ n, P8211662551358468355.a n = A250879 (n + 1)

end A250879

/-! ## A250879.P16052979454665104114

`record[gcd(A094053(n+1), A250877(n+3))]`
-/

namespace A250879.P16052979454665104114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094053 (n + 1)) (A250877 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250879.P16052979454665104114

namespace A250879

/-- `record[gcd(A094053(n+1), A250877(n+3))]` -/
def P16052979454665104114.Spec : Prop :=
  ∀ n, (P16052979454665104114.a n : ℤ) = A250879 (n + 1)

end A250879

/-!
# A250880: Number of (3+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250880, there is no canonical definition to state claims against.
-/

/-! ## A250880.P15933816168067277661

`A250877(∑[n+2]+4)`
-/

namespace A250880.P15933816168067277661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250880.P15933816168067277661

/-! ## A250880.P2831242673265592119

`lcm(2, A250877(A167614(n+1)))`
-/

namespace A250880.P2831242673265592119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250877 (A167614 (n + 1)).toNat)

end

end A250880.P2831242673265592119

/-! ## A250880.P2286973023013799846

`A250877(A167614(n+1))+A054900(n)`
-/

namespace A250880.P2286973023013799846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167614 (n + 1)).toNat + A054900 n

end

end A250880.P2286973023013799846

/-! ## A250880.P11216769108105310446

`A250877(A167614(n+1))+A178798(n)`
-/

namespace A250880.P11216769108105310446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167614 (n + 1)).toNat + A178798 n

end

end A250880.P11216769108105310446

/-! ## A250880.P5626939217650820529

`A250877(A167614(n+1))+A180472(n)`
-/

namespace A250880.P5626939217650820529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167614 (n + 1)).toNat + A180472 n

end

end A250880.P5626939217650820529

/-!
# A250881: Number of (4+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250881, there is no canonical definition to state claims against.
-/

/-! ## A250881.P3166712444655349422

`A250877(∑[n+3]+7)`
-/

namespace A250881.P3166712444655349422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250881.P3166712444655349422

/-! ## A250881.P8202094078656985037

`lcm(2, A250877(A167614(n+2)+1))`
-/

namespace A250881.P8202094078656985037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250877 (A167614 (n + 2) + 1).toNat)

end

end A250881.P8202094078656985037

/-! ## A250881.P4422315998656967467

`A250877(A167614(n+2)+1)%A111346(n+1)`
-/

namespace A250881.P4422315998656967467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250877 (A167614 (n + 2) + 1).toNat) (A111346 (n + 1))

end

end A250881.P4422315998656967467

/-! ## A250881.P12623195784330039059

`A007318(C(n, 2))*A250877(A167614(n+2)+1)`
-/

namespace A250881.P12623195784330039059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A250877 (A167614 (n + 2) + 1).toNat

end

end A250881.P12623195784330039059

/-! ## A250881.P5348913787120330955

`A250877(A167614(n+2)+1)+val(A007318(n), 7)`
-/

namespace A250881.P5348913787120330955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167614 (n + 2) + 1).toNat + (SequenceMachineLib.valuation (A007318 n).toNat 7 : ℤ)

end

end A250881.P5348913787120330955

/-!
# A250882: Number of (5+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250882, there is no canonical definition to state claims against.
-/

/-! ## A250882.P3294468953292414429

`A250877(A167499(n+3))`
-/

namespace A250882.P3294468953292414429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167499 (n + 3)).toNat

end

end A250882.P3294468953292414429

/-! ## A250882.P5301187732387530685

`A250877(A155212(n)+13)`
-/

namespace A250882.P5301187732387530685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A155212 n + 13).toNat

end

end A250882.P5301187732387530685

/-! ## A250882.P9392980060993636356

`A250877(A056000(n)+15)`
-/

namespace A250882.P9392980060993636356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A056000 n + 15).toNat

end

end A250882.P9392980060993636356

/-! ## A250882.P507214872405265451

`A250877(eq[7, A066657(n)])`
-/

namespace A250882.P507214872405265451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250882.P507214872405265451

/-! ## A250882.P18356728090489982415

`A250877(A166136(n+3)-1)`
-/

namespace A250882.P18356728090489982415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A166136 (n + 3) - 1).toNat

end

end A250882.P18356728090489982415

/-!
# A250883: Number of (6+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250883, there is no canonical definition to state claims against.
-/

/-! ## A250883.P13197343645164404113

`A250877(A056115(n)+21)`
-/

namespace A250883.P13197343645164404113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A056115 n + 21).toNat

end

end A250883.P13197343645164404113

/-! ## A250883.P773409314812003779

`A250877(Δ[A264443(n)]+10)`
-/

namespace A250883.P773409314812003779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (f1 (n + 1) - f1 n + 10).toNat

end

end A250883.P773409314812003779

/-! ## A250883.P14718634844313947236

`A250877(A167499(n+4)+1)`
-/

namespace A250883.P14718634844313947236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167499 (n + 4) + 1).toNat

end

end A250883.P14718634844313947236

/-! ## A250883.P6595817219072163032

`A250877(A167614(n+4)+3)`
-/

namespace A250883.P6595817219072163032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A167614 (n + 4) + 3).toNat

end

end A250883.P6595817219072163032

/-! ## A250883.P9324054839548621270

`A250877(A000124(n+5)+5)`
-/

namespace A250883.P9324054839548621270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A000124 (n + 5) + 5).toNat

end

end A250883.P9324054839548621270

/-!
# A250884: Number of (7+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250884, there is no canonical definition to state claims against.
-/

/-! ## A250884.P11472188775499040200

`A250877(C(n+8, 2)-n)`
-/

namespace A250884.P11472188775499040200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (Nat.choose (n + 8) 2 - n)

end

end A250884.P11472188775499040200

/-! ## A250884.P8005474055976354267

`A250877(A302537(n)+27)`
-/

namespace A250884.P8005474055976354267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A302537 n + 27).toNat

end

end A250884.P8005474055976354267

/-! ## A250884.P6719187559113801654

`A250877(A056119(n)+28)`
-/

namespace A250884.P6719187559113801654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A056119 n + 28).toNat

end

end A250884.P6719187559113801654

/-! ## A250884.P15133001171087837830

`A250877(eq[11, A066657(n)])`
-/

namespace A250884.P15133001171087837830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250884.P15133001171087837830

/-! ## A250884.P1527857005415574616

`A250877(A000217(n+6)+7)`
-/

namespace A250884.P1527857005415574616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250877 (A000217 (n + 6) + 7).toNat

end

end A250884.P1527857005415574616

/-!
# A250885: G.f. A(x) satisfies: x = A(x) * (1 - A(x)) * (1 - 3*A(x)).

The programs for A250885, there is no canonical definition to state claims against.
-/

/-! ## A250885.P12832071161677877327

`A116414((n+1)*2*n)/(n+1)`
-/

namespace A250885.P12832071161677877327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116414 ((n + 1) * (2 * n)) : ℚ) / (n + 1 : ℚ)

end

end A250885.P12832071161677877327

/-!
# A250886: G.f. A(x) satisfies: x = A(x) * (1 + A(x)) * (1 - 2*A(x)).

The programs for A250886, there is no canonical definition to state claims against.
-/

/-! ## A250886.P3525984924561494840

`A073370(A046092(n))/(n+1)`
-/

namespace A250886.P3525984924561494840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073370 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A250886.P3525984924561494840

/-! ## A250886.P1909592585981889522

`ceil(A073370(A046092(n))/A008619(2*n))`
-/

namespace A250886.P1909592585981889522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073370 (A046092 n).toNat : ℚ) / (A008619 (2 * n) : ℚ)⌉

end

end A250886.P1909592585981889522

/-! ## A250886.P6349944136038404234

`round(A073370(A046092(n))/(A005408(n)-n))`
-/

namespace A250886.P6349944136038404234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073370 (A046092 n).toNat : ℚ) / (A005408 n - (n : ℤ) : ℚ))

end

end A250886.P6349944136038404234

/-! ## A250886.P287332460136110217

`A073370(A046092(n))/A008619(2*n)*A155040(n)²`
-/

namespace A250886.P287332460136110217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073370 (A046092 n).toNat : ℚ) / (A008619 (2 * n) : ℚ) * (A155040 n ^ 2 : ℚ)

end

end A250886.P287332460136110217

/-! ## A250886.P17901979565486400008

`A073370(A046092(n))/A008619(2*n)-A000035(2*n)`
-/

namespace A250886.P17901979565486400008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073370 (A046092 n).toNat : ℚ) / (A008619 (2 * n) : ℚ) - (A000035 (2 * n) : ℚ)

end

end A250886.P17901979565486400008

/-!
# A250887: G.f. A(x) satisfies: x = A(x) * (1 + A(x)) * (1 - 3*A(x)).

The programs for A250887, there is no canonical definition to state claims against.
-/

/-! ## A250887.P10077222577968630507

`or(lt[0, ∏{digits}[n, (1-#)²]], A027307(n*(n*(n-5)+5)²))`
-/

namespace A250887.P10077222577968630507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (A027307 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat)

end

end A250887.P10077222577968630507

/-!
# A250888: G.f. A(x) satisfies: x = A(x) * (1 + A(x)) * (1 - 4*A(x)).

The programs for A250888, there is no canonical definition to state claims against.
-/

/-! ## A250888.P16350154605283290097

`A032796(∑[∑[A015456(n)]])`
-/

namespace A250888.P16350154605283290097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A250888.P16350154605283290097

/-!
# A250889: G.f. A(x) satisfies: x = A(x) * (1 + 2*A(x)) * (1 - 3*A(x)).

The programs for A250889, there is no canonical definition to state claims against.
-/

/-! ## A250889.P15904392460654038936

`A118176(A370345(n+1)+∑{p}[A151762(2*n)+1, #])`
-/

namespace A250889.P15904392460654038936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151762 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118176 (A370345 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)).toNat

end

end A250889.P15904392460654038936

/-!
# A250890: G.f. A(x) satisfies: x = A(x) * (1 + 2*A(x)) * (1 - 5*A(x)).

The programs for A250890, there is no canonical definition to state claims against.
-/

/-! ## A250890.P8714048593754310551

`A071562(A362354(n))-n`
-/

namespace A250890.P8714048593754310551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A362354 n).toNat - (n : ℤ)

end

end A250890.P8714048593754310551

/-!
# A250891: Number of (n+1) X (1+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250891, there is no canonical definition to state claims against.
-/

/-! ## A250891.P3765540244183787592

`A250898(∑[n+1])`
-/

namespace A250891.P3765540244183787592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250891.P3765540244183787592

/-! ## A250891.P833974614291650538

`or(1, A250898(A025747(n)))`
-/

namespace A250891.P833974614291650538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250898 (A025747 n).toNat)

end

end A250891.P833974614291650538

/-! ## A250891.P10215002295290111668

`record[A250898(abs(A122432(n)))]`
-/

namespace A250891.P10215002295290111668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250891.P10215002295290111668

/-! ## A250891.P9557915542798041802

`record[A250898(A115017(n+1))]`
-/

namespace A250891.P9557915542798041802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250891.P9557915542798041802

/-! ## A250891.P15075354388008494373

`record[A250898(A130270(n+1))]`
-/

namespace A250891.P15075354388008494373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250891.P15075354388008494373

/-!
# A250892: Number of (n+1) X (2+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250892, there is no canonical definition to state claims against.
-/

/-! ## A250892.P15175594264721789600

`A250898(∑[n+2])`
-/

namespace A250892.P15175594264721789600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250892.P15175594264721789600

/-! ## A250892.P6426247393268563740

`record[A250898(A193974(n))]`
-/

namespace A250892.P6426247393268563740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250892.P6426247393268563740

/-! ## A250892.P1147785634213605735

`record[A250898(abs(A201163(n)))]`
-/

namespace A250892.P1147785634213605735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250892.P1147785634213605735

/-! ## A250892.P5629830672179728748

`record[A250898(A061579(n+1))]`
-/

namespace A250892.P5629830672179728748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250892.P5629830672179728748

/-! ## A250892.P14447878176666200373

`record[A250898(A198455(n+1))]`
-/

namespace A250892.P14447878176666200373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250892.P14447878176666200373

/-!
# A250893: Number of (n+1) X (3+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250893, there is no canonical definition to state claims against.
-/

/-! ## A250893.P380400727999007873

`A250898(∑[n+3]+1)`
-/

namespace A250893.P380400727999007873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250893.P380400727999007873

/-! ## A250893.P11247538912707411968

`A250898(Δ[A008778(n)])+char[17]`
-/

namespace A250893.P11247538912707411968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250893.P11247538912707411968

/-! ## A250893.P8487796936129981668

`record[A250898(A056536(n+5)-3)]`
-/

namespace A250893.P8487796936129981668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A056536 (n + 5) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250893.P8487796936129981668

/-! ## A250893.P7200749741512488324

`A250898(A052905(n)+3)+char[16]`
-/

namespace A250893.P7200749741512488324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250893.P7200749741512488324

/-! ## A250893.P14349690620323552193

`A250898(A034856(n+2))+char[40]`
-/

namespace A250893.P14349690620323552193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250893.P14349690620323552193

/-!
# A250894: Number of (n+1) X (4+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250894, there is no canonical definition to state claims against.
-/

/-! ## A250894.P4369963056838432837

`A250898(∑[n+4]+3)`
-/

namespace A250894.P4369963056838432837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250894.P4369963056838432837

/-! ## A250894.P970883525196244914

`or(1, A250898(A141214(n+1)))`
-/

namespace A250894.P970883525196244914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250898 (A141214 (n + 1)).toNat)

end

end A250894.P970883525196244914

/-!
# A250895: Number of (n+1) X (5+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250895, there is no canonical definition to state claims against.
-/

/-! ## A250895.P4375166683909593474

`A250898(∑[n+5]+6)`
-/

namespace A250895.P4375166683909593474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250895.P4375166683909593474

/-!
# A250896: Number of (n+1) X (6+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250896, there is no canonical definition to state claims against.
-/

/-! ## A250896.P9252730342822257684

`A250898(Δ[n²]+∑[n+4]+11)`
-/

namespace A250896.P9252730342822257684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 11 : ℕ) : ℤ)).toNat

end

end A250896.P9252730342822257684

/-!
# A250897: Number of (n+1) X (7+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250897, there is no canonical definition to state claims against.
-/

/-! ## A250897.P14858412934667151760

`A250898(A055999(n+4))`
-/

namespace A250897.P14858412934667151760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A055999 (n + 4)).toNat

end

end A250897.P14858412934667151760

/-! ## A250897.P12238589783379690153

`A250898(eq[4, A219347(n)])`
-/

namespace A250897.P12238589783379690153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250897.P12238589783379690153

/-! ## A250897.P14589425442555165555

`A250898(eq[5, A332954(n)])`
-/

namespace A250897.P14589425442555165555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250897.P14589425442555165555

/-! ## A250897.P1874021648188342307

`A250898(eq[6, A193592(n)])`
-/

namespace A250897.P1874021648188342307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250897.P1874021648188342307

/-! ## A250897.P1269087827905673605

`A250898(A052905(n+4)-1)`
-/

namespace A250897.P1269087827905673605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A052905 (n + 4) - 1).toNat

end

end A250897.P1269087827905673605

/-!
# A250899: Number of (1+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250899, there is no canonical definition to state claims against.
-/

/-! ## A250899.P11140166973710051090

`A250898(∑[n]+1)`
-/

namespace A250899.P11140166973710051090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250899.P11140166973710051090

/-! ## A250899.P1785475283048809332

`or(1, A250898((n²+n)*tan(acot(2))+1))`
-/

namespace A250899.P1785475283048809332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250898 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ)) + 1)).toNat)

end

end A250899.P1785475283048809332

/-! ## A250899.P9146074870494635373

`or(1, A250898(floor((2*n+1)²/8)+1))`
-/

namespace A250899.P9146074870494635373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250898 (⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋ + 1).toNat)

end

end A250899.P9146074870494635373

/-! ## A250899.P12496887962375479659

`and(-1, A250898(A000124(n)))`
-/

namespace A250899.P12496887962375479659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A250898 (A000124 n).toNat)

end

end A250899.P12496887962375479659

/-! ## A250899.P14144299811231393349

`record[A250898(A056536(n+1))]`
-/

namespace A250899.P14144299811231393349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250898 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250899.P14144299811231393349

