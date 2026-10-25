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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B008.C001
import Seq.B009.C000
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
# A219400: Unchanging value maps: number of n X 5 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 n X 5 array.

The programs for A219400, there is no canonical definition to state claims against.
-/

/-! ## A219400.P6273857057263740979

`A219403(∑[n+4]+11)`
-/

namespace A219400.P6273857057263740979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A219400.P6273857057263740979

/-! ## A219400.P12149297956314375766

`A219403(A155212(n)+13)+A129947(n+1)`
-/

namespace A219400.P12149297956314375766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A155212 n + 13).toNat + A129947 (n + 1)

end

end A219400.P12149297956314375766

/-! ## A219400.P13011216961255931737

`A219403(A000217(n+5)-4)+char[17]`
-/

namespace A219400.P13011216961255931737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219400.P13011216961255931737

/-! ## A219400.P8971249836631260331

`A007318(C(2, n))*A219403(A000217(n+5)-4)`
-/

namespace A219400.P8971249836631260331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219403 (A000217 (n + 5) - 4).toNat

end

end A219400.P8971249836631260331

/-! ## A219400.P12397567220386869538

`(A000041(n)%2)!*A219403(A000217(n+5)-4)`
-/

namespace A219400.P12397567220386869538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A219403 (A000217 (n + 5) - 4).toNat

end

end A219400.P12397567220386869538

/-!
# A219401: Unchanging value maps: number of nX6 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 nX6 array.

The programs for A219401, there is no canonical definition to state claims against.
-/

/-! ## A219401.P12786556092994980113

`A219403(A166136(n+4))`
-/

namespace A219401.P12786556092994980113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A166136 (n + 4)).toNat

end

end A219401.P12786556092994980113

/-! ## A219401.P3824776315530920574

`A219403(A056115(n)+21)`
-/

namespace A219401.P3824776315530920574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A056115 n + 21).toNat

end

end A219401.P3824776315530920574

/-! ## A219401.P13026925230914113697

`A219403(A167614(n+4)+3)`
-/

namespace A219401.P13026925230914113697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A167614 (n + 4) + 3).toNat

end

end A219401.P13026925230914113697

/-! ## A219401.P10785090123216740023

`A219403(A000124(n+5)+5)`
-/

namespace A219401.P10785090123216740023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A000124 (n + 5) + 5).toNat

end

end A219401.P10785090123216740023

/-! ## A219401.P17788298963814188683

`A219403(A000096(n+4)+7)`
-/

namespace A219401.P17788298963814188683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A000096 (n + 4) + 7).toNat

end

end A219401.P17788298963814188683

/-!
# A219402: Unchanging value maps: number of n X 7 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 n X 7 array.

The programs for A219402, there is no canonical definition to state claims against.
-/

/-! ## A219402.P13280908250109705775

`A219403(eq[11, A066657(n)])`
-/

namespace A219402.P13280908250109705775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219402.P13280908250109705775

/-! ## A219402.P11970603416032711377

`A219403(A167499(n+5)+2)`
-/

namespace A219402.P11970603416032711377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A167499 (n + 5) + 2).toNat

end

end A219402.P11970603416032711377

/-! ## A219402.P3486514439230240328

`A219403(A253145(n+5)+7)`
-/

namespace A219402.P3486514439230240328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A253145 (n + 5) + 7).toNat

end

end A219402.P3486514439230240328

/-! ## A219402.P18273092056365019209

`A219403(A027379(n+4)+10)`
-/

namespace A219402.P18273092056365019209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (A027379 (n + 4) + 10).toNat

end

end A219402.P18273092056365019209

/-! ## A219402.P1035378006525537573

`A219403(eq[8, A131818(n+1)])`
-/

namespace A219402.P1035378006525537573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219402.P1035378006525537573

/-!
# A219403: T(n,k)=Unchanging value maps: number of nXk binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..1 nXk array.

The programs for A219403, there is no canonical definition to state claims against.
-/

/-! ## A219403.P12271688319097850859

`A100755(n+1)%2*A222248(A219451(n+1))`
-/

namespace A219403.P12271688319097850859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100755 (n + 1)) 2 * A222248 (A219451 (n + 1)).toNat

end

end A219403.P12271688319097850859

/-! ## A219403.P18057787105330262608

`A222248(A219451(n+1))+A000007(A016116(n))`
-/

namespace A219403.P18057787105330262608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A219451 (n + 1)).toNat + A000007 (A016116 n).toNat

end

end A219403.P18057787105330262608

/-! ## A219403.P14534568615952968954

`A222248(A219451(n+1))^A022166(A018843(n))`
-/

namespace A219403.P14534568615952968954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222248 (A219451 (n + 1)).toNat : ℚ) ^ (A022166 (A018843 n).toNat : ℤ)

end

end A219403.P14534568615952968954

/-! ## A219403.P11937195121432561185

`A018851(A219451(n+1)²)`
-/

namespace A219403.P11937195121432561185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A219451 (n + 1) ^ 2).toNat

end

end A219403.P11937195121432561185

/-! ## A219403.P15523215950502034505

`A003987(C(A219451(n+1)+1, 2))`
-/

namespace A219403.P15523215950502034505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Nat.choose (A219451 (n + 1) + 1).toNat 2)

end

end A219403.P15523215950502034505

/-!
# A219404: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A219404, there is no canonical definition to state claims against.
-/

/-! ## A219404.P11054089842376036285

`A219410(∑[4*n]+1)`
-/

namespace A219404.P11054089842376036285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219404.P11054089842376036285

/-! ## A219404.P16399205270859555308

`and(-1, A219410(n²+(n+1)²))`
-/

namespace A219404.P16399205270859555308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219410 (n ^ 2 + (n + 1) ^ 2))

end

end A219404.P16399205270859555308

/-! ## A219404.P18180833167513888522

`record[A219410(Δ[A235355(n)])]`
-/

namespace A219404.P18180833167513888522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219404.P18180833167513888522

/-!
# A219405: Unmatched value maps: number of n X 3 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 n X 3 array.

The programs for A219405, the canonical program `A219405.P1675199836131273958` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219405 has offset 1).

The definition of A219405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219405.P1675199836131273958

`4*a(n-1)+15*a(n-2)+9*a(n-3)` with `a(0)=4, a(1)=28, a(2)=181`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219405

/-- `4*a(n-1)+15*a(n-2)+9*a(n-3)` -/
def P1675199836131273958.Spec : Prop :=
  ∀ n, (P1675199836131273958.a n : ℤ) = A219405 (n + 1)

theorem P1675199836131273958.correct : P1675199836131273958.Spec := by
  intro n
  simp only [A219405, Nat.add_sub_cancel]

end A219405

/-! ## A219405.P17987574200700813636

`A219410(∑[n+3]+1)`
-/

namespace A219405.P17987574200700813636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219405.P17987574200700813636

namespace A219405

/-- `A219410(∑[n+3]+1)` -/
def P17987574200700813636.Spec : Prop :=
  ∀ n, P17987574200700813636.a n = A219405 (n + 1)

end A219405

/-!
# A219406: Unmatched value maps: number of n X 4 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 n X 4 array.

The programs for A219406, there is no canonical definition to state claims against.
-/

/-! ## A219406.P12526419306930202863

`A219410(∑[n+5]-(n-2))`
-/

namespace A219406.P12526419306930202863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A219406.P12526419306930202863

/-!
# A219407: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A219407, there is no canonical definition to state claims against.
-/

/-! ## A219407.P9863932719758512957

`A219410(∑[n+5]+6)`
-/

namespace A219407.P9863932719758512957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219407.P9863932719758512957

/-! ## A219407.P3379085162448143562

`A219410(A046691(n+3))+A000007(n+1)`
-/

namespace A219407.P3379085162448143562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A219407.P3379085162448143562

/-!
# A219408: Unmatched value maps: number of n X 6 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 n X 6 array.

The programs for A219408, there is no canonical definition to state claims against.
-/

/-! ## A219408.P1837186310884300908

`A219410(A052905(n+3))`
-/

namespace A219408.P1837186310884300908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A052905 (n + 3)).toNat

end

end A219408.P1837186310884300908

/-! ## A219408.P16219898764786808840

`A219410(A056119(n)+16)`
-/

namespace A219408.P16219898764786808840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A056119 n + 16).toNat

end

end A219408.P16219898764786808840

/-! ## A219408.P17821322804858339563

`A219410(eq[3, A219347(n)])`
-/

namespace A219408.P17821322804858339563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219408.P17821322804858339563

/-! ## A219408.P1283981207600165104

`A219410(eq[3, A274661(n)])`
-/

namespace A219408.P1283981207600165104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219408.P1283981207600165104

/-! ## A219408.P8807361420112691313

`A219410(eq[5, A193592(n)])`
-/

namespace A219408.P8807361420112691313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219408.P8807361420112691313

/-!
# A219409: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A219409, there is no canonical definition to state claims against.
-/

/-! ## A219409.P2892003907912904121

`A219410(C(n+7, 2)+n+1)`
-/

namespace A219409.P2892003907912904121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (Nat.choose (n + 7) 2 + n + 1)

end

end A219409.P2892003907912904121

/-! ## A219409.P16846634573293062740

`A219410(A055999(n+4))`
-/

namespace A219409.P16846634573293062740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A055999 (n + 4)).toNat

end

end A219409.P16846634573293062740

/-! ## A219409.P10258367170714507003

`A219410(eq[4, A219347(n)])`
-/

namespace A219409.P10258367170714507003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219409.P10258367170714507003

/-! ## A219409.P15471019008084499890

`A219410(eq[6, A193592(n)])`
-/

namespace A219409.P15471019008084499890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219409.P15471019008084499890

/-!
# A219411: Unmatched value maps: number of 2 X n binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 2 X n array.

The programs for A219411, there is no canonical definition to state claims against.
-/

/-! ## A219411.P332893988775851751

`A219410(∑[n+1]+2)`
-/

namespace A219411.P332893988775851751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219411.P332893988775851751

/-! ## A219411.P6988161638947759327

`record[ratio[A219410(A080036(n))]]`
-/

namespace A219411.P6988161638947759327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219411.P6988161638947759327

/-! ## A219411.P3051963306211867795

`record[A219410(A135223(n+1)+2)]`
-/

namespace A219411.P3051963306211867795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219411.P3051963306211867795

/-! ## A219411.P632350468919081025

`record[gcd(A097230(n), A219410(n+1))]`
-/

namespace A219411.P632350468919081025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A219410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219411.P632350468919081025

/-! ## A219411.P2060302217712324555

`record[gcd(A002262(n+1), A219410(n+3))]`
-/

namespace A219411.P2060302217712324555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A219410 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219411.P2060302217712324555

/-!
# A219412: Unmatched value maps: number of 3 X n binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 3 X n array.

The programs for A219412, there is no canonical definition to state claims against.
-/

/-! ## A219412.P12367101430170692502

`A219410(∑[n+2]+4)`
-/

namespace A219412.P12367101430170692502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219412.P12367101430170692502

/-! ## A219412.P13012259045688006076

`or(1, A219410(A167614(n+1)))`
-/

namespace A219412.P13012259045688006076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219410 (A167614 (n + 1)).toNat)

end

end A219412.P13012259045688006076

/-! ## A219412.P9539685740454632547

`record[gcd(A219410(n+1), A303913(n))]`
-/

namespace A219412.P9539685740454632547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219410 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219412.P9539685740454632547

/-! ## A219412.P18068083528691984705

`A219410(A167614(n+1))+A011741(n)`
-/

namespace A219412.P18068083528691984705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A167614 (n + 1)).toNat + A011741 n

end

end A219412.P18068083528691984705

/-! ## A219412.P5956254753398623483

`A219410(A167614(n+1))+A025443(n)`
-/

namespace A219412.P5956254753398623483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A167614 (n + 1)).toNat + A025443 n

end

end A219412.P5956254753398623483

/-!
# A219413: Unmatched value maps: number of 4Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 4Xn array.

The programs for A219413, there is no canonical definition to state claims against.
-/

/-! ## A219413.P7308913456224185779

`A219410(A145018(n+4))`
-/

namespace A219413.P7308913456224185779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A145018 (n + 4)).toNat

end

end A219413.P7308913456224185779

/-! ## A219413.P8684484816657861895

`A219410(A141214(n)+7)`
-/

namespace A219413.P8684484816657861895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A141214 n + 7).toNat

end

end A219413.P8684484816657861895

/-! ## A219413.P10092839952392581233

`A219410(A052905(n)+9)`
-/

namespace A219413.P10092839952392581233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A052905 n + 9).toNat

end

end A219413.P10092839952392581233

/-! ## A219413.P13006705690666308948

`A219410(A055999(n)+10)`
-/

namespace A219413.P13006705690666308948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A055999 n + 10).toNat

end

end A219413.P13006705690666308948

/-! ## A219413.P2922713024292626396

`A219410(eq[5, A066657(n)])`
-/

namespace A219413.P2922713024292626396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219413.P2922713024292626396

/-!
# A219414: Unmatched value maps: number of 5Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 5Xn array.

The programs for A219414, there is no canonical definition to state claims against.
-/

/-! ## A219414.P61333408678653819

`A219410(A167499(n+3))`
-/

namespace A219414.P61333408678653819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A167499 (n + 3)).toNat

end

end A219414.P61333408678653819

/-! ## A219414.P4214547655025560335

`A219410(A155212(n)+13)`
-/

namespace A219414.P4214547655025560335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A155212 n + 13).toNat

end

end A219414.P4214547655025560335

/-! ## A219414.P1353424861304130225

`A219410(A056000(n)+15)`
-/

namespace A219414.P1353424861304130225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A056000 n + 15).toNat

end

end A219414.P1353424861304130225

/-! ## A219414.P16042770458672149714

`A219410(eq[7, A066657(n)])`
-/

namespace A219414.P16042770458672149714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219414.P16042770458672149714

/-! ## A219414.P47512894847616866

`A219410(A167614(n+3)+2)`
-/

namespace A219414.P47512894847616866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A167614 (n + 3) + 2).toNat

end

end A219414.P47512894847616866

/-!
# A219415: Unmatched value maps: number of 6Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 6Xn array.

The programs for A219415, there is no canonical definition to state claims against.
-/

/-! ## A219415.P11070334429529298727

`A219410(A056115(n)+21)`
-/

namespace A219415.P11070334429529298727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A056115 n + 21).toNat

end

end A219415.P11070334429529298727

/-! ## A219415.P11436778882129583646

`A219410(A167499(n+4)+1)`
-/

namespace A219415.P11436778882129583646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A167499 (n + 4) + 1).toNat

end

end A219415.P11436778882129583646

/-! ## A219415.P750585572922725377

`A219410(A000124(n+5)+5)`
-/

namespace A219415.P750585572922725377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A000124 (n + 5) + 5).toNat

end

end A219415.P750585572922725377

/-! ## A219415.P9899469158521098647

`A219410(A000096(n+4)+7)`
-/

namespace A219415.P9899469158521098647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A000096 (n + 4) + 7).toNat

end

end A219415.P9899469158521098647

/-! ## A219415.P8132573801130580554

`A219410(A000217(n+5)+6)`
-/

namespace A219415.P8132573801130580554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A000217 (n + 5) + 6).toNat

end

end A219415.P8132573801130580554

/-!
# A219416: Unmatched value maps: number of 7Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal or antidiagonal neighbor in a random 0..2 7Xn array.

The programs for A219416, there is no canonical definition to state claims against.
-/

/-! ## A219416.P18195644638841941301

`A219410(A167487(n+5))`
-/

namespace A219416.P18195644638841941301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A167487 (n + 5)).toNat

end

end A219416.P18195644638841941301

/-! ## A219416.P9416050631592565001

`A219410(A056119(n)+28)`
-/

namespace A219416.P9416050631592565001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A056119 n + 28).toNat

end

end A219416.P9416050631592565001

/-! ## A219416.P9302769205343885533

`A219410(eq[11, A066657(n)])`
-/

namespace A219416.P9302769205343885533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219416.P9302769205343885533

/-! ## A219416.P3551696817710178337

`A219410(A166136(n+5)+1)`
-/

namespace A219416.P3551696817710178337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A166136 (n + 5) + 1).toNat

end

end A219416.P3551696817710178337

/-!
# A219417: Unchanging value maps: number of n X n binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A219417, there is no canonical definition to state claims against.
-/

/-! ## A219417.P7947461636669386716

`A219421(∑[4*n]+1)`
-/

namespace A219417.P7947461636669386716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219417.P7947461636669386716

/-! ## A219417.P11914582407075815567

`record[gcd(A008482(n), A219421(n+1))]`
-/

namespace A219417.P11914582407075815567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A219421 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219417.P11914582407075815567

/-! ## A219417.P13543326067532129829

`record[A077606(n+1)*A219421(n+1)]`
-/

namespace A219417.P13543326067532129829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A219421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219417.P13543326067532129829

/-! ## A219417.P3304432257969377841

`A214020(n)*A219421(A001844(n))`
-/

namespace A219417.P3304432257969377841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214020 n * A219421 (A001844 n).toNat

end

end A219417.P3304432257969377841

/-! ## A219417.P3227298956066901557

`lcm(A033999(n), A219421(A001844(n)))`
-/

namespace A219417.P3227298956066901557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A219421 (A001844 n).toNat)

end

end A219417.P3227298956066901557

/-!
# A219418: Unchanging value maps: number of n X 5 binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 n X 5 array.

The programs for A219418, there is no canonical definition to state claims against.
-/

/-! ## A219418.P15460360268078476509

`A219421(Δ[A264443(n)])`
-/

namespace A219418.P15460360268078476509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (f1 (n + 1) - f1 n).toNat

end

end A219418.P15460360268078476509

/-! ## A219418.P12294246214084720111

`A219421(eq[4, A193592(n)])`
-/

namespace A219418.P12294246214084720111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219418.P12294246214084720111

/-! ## A219418.P8589873114635259011

`A219421(eq[8, A166065(n)])`
-/

namespace A219418.P8589873114635259011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219418.P8589873114635259011

/-! ## A219418.P11713247216672945209

`A219421(Δ[A023545(n+1)])`
-/

namespace A219418.P11713247216672945209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (f1 (n + 1) - f1 n).toNat

end

end A219418.P11713247216672945209

/-! ## A219418.P1579629029157352598

`A219421(∑[A020710(n)]+6)`
-/

namespace A219418.P1579629029157352598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A219418.P1579629029157352598

/-!
# A219419: Unchanging value maps: number of nX6 binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A219419, there is no canonical definition to state claims against.
-/

/-! ## A219419.P10879584578763764262

`A219421(A056119(n)+16)`
-/

namespace A219419.P10879584578763764262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A056119 n + 16).toNat

end

end A219419.P10879584578763764262

/-! ## A219419.P6657882875806990625

`A219421(eq[3, A219347(n)])`
-/

namespace A219419.P6657882875806990625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219419.P6657882875806990625

/-! ## A219419.P10266528076859350561

`A219421(eq[5, A193592(n)])`
-/

namespace A219419.P10266528076859350561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219419.P10266528076859350561

/-! ## A219419.P11412854816781342659

`A219421(eq[16, A166065(n)])`
-/

namespace A219419.P11412854816781342659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219419.P11412854816781342659

/-! ## A219419.P10582713698945891228

`A219421(Δ[Δ[A006504(n+1)]])`
-/

namespace A219419.P10582713698945891228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (f1 (n + 1) - f1 n).toNat

end

end A219419.P10582713698945891228

/-!
# A219420: Unchanging value maps: number of nX7 binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A219420, there is no canonical definition to state claims against.
-/

/-! ## A219420.P887328656961330525

`A219421(eq[4, A219347(n)])`
-/

namespace A219420.P887328656961330525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219420.P887328656961330525

/-! ## A219420.P14780219106144971767

`A219421(eq[5, A332954(n)])`
-/

namespace A219420.P14780219106144971767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219420.P14780219106144971767

/-! ## A219420.P6226137909541990739

`A219421(eq[6, A193592(n)])`
-/

namespace A219420.P6226137909541990739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219420.P6226137909541990739

/-! ## A219420.P12905055852066952005

`A219421(eq[7, A200370(n+1)])`
-/

namespace A219420.P12905055852066952005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219420.P12905055852066952005

/-! ## A219420.P6932750281281787555

`A219421(eq[7, A131818(n+1)]+2*n+1)`
-/

namespace A219420.P6932750281281787555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A219420.P6932750281281787555

/-!
# A219421: T(n,k)=Unchanging value maps: number of nXk binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 nXk array.

The programs for A219421, there is no canonical definition to state claims against.
-/

/-! ## A219421.P9353016449183426812

`A218842(n+1)+A184946(∑{d}[n, #%#²])`
-/

namespace A219421.P9353016449183426812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (n + 1) + A184946 (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2)

end

end A219421.P9353016449183426812

/-! ## A219421.P2063502669735872591

`A218842(n+1)+A184946(A039653(n))`
-/

namespace A219421.P2063502669735872591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (n + 1) + A184946 (A039653 n).toNat

end

end A219421.P2063502669735872591

/-! ## A219421.P12994949471947292550

`A130446(A218842(n+1))`
-/

namespace A219421.P12994949471947292550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A218842 (n + 1)).toNat

end

end A219421.P12994949471947292550

/-! ## A219421.P11615773831203730346

`A218842(n+1)+A200508(A184955(n))`
-/

namespace A219421.P11615773831203730346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218842 (n + 1) + A200508 (A184955 n).toNat

end

end A219421.P11615773831203730346

/-! ## A219421.P5457078417648437988

`A324096(A008302(n+1))+A218842(n+1)`
-/

namespace A219421.P5457078417648437988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324096 (A008302 (n + 1)).toNat + A218842 (n + 1)

end

end A219421.P5457078417648437988

/-!
# A219422: Unchanging value maps: number of 2 X n binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 2 X n array.

The programs for A219422, there is no canonical definition to state claims against.
-/

/-! ## A219422.P14728164343250342143

`A219421(∑[n+1]+2)`
-/

namespace A219422.P14728164343250342143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219422.P14728164343250342143

/-! ## A219422.P14444030549273895978

`record[ratio[A219421(A080036(n))]]`
-/

namespace A219422.P14444030549273895978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219422.P14444030549273895978

/-! ## A219422.P10310049208396032151

`record[A219421(n+1)*A326822(n)]`
-/

namespace A219422.P10310049208396032151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219422.P10310049208396032151

/-! ## A219422.P5175741944814745414

`record[gcd(A098825(n), A219421(n+1))]`
-/

namespace A219422.P5175741944814745414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A219421 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219422.P5175741944814745414

/-! ## A219422.P12140751189650668335

`record[A219421(A133263(val(n+1, 2)+1))]`
-/

namespace A219422.P12140751189650668335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219422.P12140751189650668335

/-!
# A219423: Unchanging value maps: number of 3 X n binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 3 X n array.

The programs for A219423, there is no canonical definition to state claims against.
-/

/-! ## A219423.P7214096292846818348

`A219421(∑[n+2]+4)`
-/

namespace A219423.P7214096292846818348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219423.P7214096292846818348

/-! ## A219423.P16157297962254593305

`or(char[1], A219421(A167614(n+1)))`
-/

namespace A219423.P16157297962254593305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219421 (A167614 (n + 1)).toNat)

end

end A219423.P16157297962254593305

/-! ## A219423.P1702864552752125341

`A219421(A167614(n+1))+A025469(n)`
-/

namespace A219423.P1702864552752125341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167614 (n + 1)).toNat + A025469 n

end

end A219423.P1702864552752125341

/-! ## A219423.P4227966355413499750

`A219421(A167614(n+1))+A178798(n)`
-/

namespace A219423.P4227966355413499750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167614 (n + 1)).toNat + A178798 n

end

end A219423.P4227966355413499750

/-! ## A219423.P6517443778516110606

`A219421(A167614(n+1))+A185284(n)`
-/

namespace A219423.P6517443778516110606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167614 (n + 1)).toNat + A185284 n

end

end A219423.P6517443778516110606

/-!
# A219424: Unchanging value maps: number of 4Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 4Xn array.

The programs for A219424, there is no canonical definition to state claims against.
-/

/-! ## A219424.P5902086548725612606

`A219421(A141214(n)+7)`
-/

namespace A219424.P5902086548725612606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A141214 n + 7).toNat

end

end A219424.P5902086548725612606

/-! ## A219424.P18013943507598501449

`A219421(A055999(n)+10)`
-/

namespace A219424.P18013943507598501449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A055999 n + 10).toNat

end

end A219424.P18013943507598501449

/-! ## A219424.P10645021554434922995

`A219421(A167614(n+2)+1)`
-/

namespace A219424.P10645021554434922995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167614 (n + 2) + 1).toNat

end

end A219424.P10645021554434922995

/-! ## A219424.P11091392571568242185

`A219421(A167499(n+2)-1)`
-/

namespace A219424.P11091392571568242185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167499 (n + 2) - 1).toNat

end

end A219424.P11091392571568242185

/-! ## A219424.P1147415041532782383

`A219421(A046691(n+1)+8)`
-/

namespace A219424.P1147415041532782383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A046691 (n + 1) + 8).toNat

end

end A219424.P1147415041532782383

/-!
# A219425: Unchanging value maps: number of 5 X n binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 5 X n array.

The programs for A219425, there is no canonical definition to state claims against.
-/

/-! ## A219425.P16259052521400569279

`A219421(A056000(n)+15)`
-/

namespace A219425.P16259052521400569279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A056000 n + 15).toNat

end

end A219425.P16259052521400569279

/-! ## A219425.P1130149697231192924

`A219421(A167614(n+3)+2)`
-/

namespace A219425.P1130149697231192924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167614 (n + 3) + 2).toNat

end

end A219425.P1130149697231192924

/-! ## A219425.P5143473124676710711

`A219421(A046691(n+2)+9)`
-/

namespace A219425.P5143473124676710711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A046691 (n + 2) + 9).toNat

end

end A219425.P5143473124676710711

/-! ## A219425.P11648764447352403813

`A219421(eq[6, A131818(n+1)])`
-/

namespace A219425.P11648764447352403813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219425.P11648764447352403813

/-! ## A219425.P17204382568439924332

`A219421(A167499(n+2)+n+4)`
-/

namespace A219425.P17204382568439924332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A167499 (n + 2) + (n + 4 : ℤ)).toNat

end

end A219425.P17204382568439924332

/-!
# A219426: Unchanging value maps: number of 6Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 6Xn array.

The programs for A219426, there is no canonical definition to state claims against.
-/

/-! ## A219426.P10309236942633305218

`A219421(A000096(n+4)+7)`
-/

namespace A219426.P10309236942633305218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A000096 (n + 4) + 7).toNat

end

end A219426.P10309236942633305218

/-! ## A219426.P16380223975076536169

`A219421(A000217(n+5)+6)`
-/

namespace A219426.P16380223975076536169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A000217 (n + 5) + 6).toNat

end

end A219426.P16380223975076536169

/-! ## A219426.P5853323200734448754

`A219421(eq[6, A130270(n+1)])`
-/

namespace A219426.P5853323200734448754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219426.P5853323200734448754

/-! ## A219426.P2858035851264193008

`A219421(eq[7, A131818(n+1)])`
-/

namespace A219426.P2858035851264193008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219426.P2858035851264193008

/-!
# A219427: Unchanging value maps: number of 7Xn binary arrays indicating the locations of corresponding elements unequal to no horizontal or antidiagonal neighbor in a random 0..2 7Xn array.

The programs for A219427, there is no canonical definition to state claims against.
-/

/-! ## A219427.P17646959188253331335

`A219421(A056119(n)+28)`
-/

namespace A219427.P17646959188253331335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A056119 n + 28).toNat

end

end A219427.P17646959188253331335

/-! ## A219427.P6579373742852008895

`A219421(eq[11, A066657(n)])`
-/

namespace A219427.P6579373742852008895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219427.P6579373742852008895

/-! ## A219427.P10650362930602121252

`A219421(A034856(n+5)+9)`
-/

namespace A219427.P10650362930602121252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (A034856 (n + 5) + 9).toNat

end

end A219427.P10650362930602121252

/-! ## A219427.P16321005711035946784

`A219421(eq[6, A002262(n)]+1)`
-/

namespace A219427.P16321005711035946784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A219427.P16321005711035946784

/-! ## A219427.P18186696519651704866

`A219421(eq[8, A131818(n+1)])`
-/

namespace A219427.P18186696519651704866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219427.P18186696519651704866

/-!
# A219428: a(n) = n - 1 - phi(n).

The programs for A219428, the canonical program `A219428.P10048868048684072397` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219428 has offset 1).

The definition of A219428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219428.P10048868048684072397

`A051953(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219428

/-- `A051953(n+1)-1` -/
def P10048868048684072397.Spec : Prop :=
  ∀ n, P10048868048684072397.a n = A219428 (n + 1)

theorem P10048868048684072397.correct : P10048868048684072397.Spec := by
  intro n
  simp only [A219428, Nat.add_sub_cancel]

end A219428

/-! ## A219428.P9184341513320465947

`n-A000010(n+1)`
-/

namespace A219428.P9184341513320465947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

end

end A219428.P9184341513320465947

namespace A219428

/-- `n-A000010(n+1)` -/
def P9184341513320465947.Spec : Prop :=
  ∀ n, P9184341513320465947.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P17640356619326805535

`n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A219428.P17640356619326805535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A219428.P17640356619326805535

namespace A219428

/-- `n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P17640356619326805535.Spec : Prop :=
  ∀ n, P17640356619326805535.a n = (A219428 (n + 1) : ℚ)

end A219428

/-! ## A219428.P3872484394667347957

`n-Δ[A002088(n)]`
-/

namespace A219428.P3872484394667347957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A219428.P3872484394667347957

namespace A219428

/-- `n-Δ[A002088(n)]` -/
def P3872484394667347957.Spec : Prop :=
  ∀ n, P3872484394667347957.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P3609801899933334116

`n-Δ[A005728(n)]`
-/

namespace A219428.P3609801899933334116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A219428.P3609801899933334116

namespace A219428

/-- `n-Δ[A005728(n)]` -/
def P3609801899933334116.Spec : Prop :=
  ∀ n, P3609801899933334116.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P17519709341559103795

`n-A349137(Δ[n²])`
-/

namespace A219428.P17519709341559103795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A219428.P17519709341559103795

namespace A219428

/-- `n-A349137(Δ[n²])` -/
def P17519709341559103795.Spec : Prop :=
  ∀ n, P17519709341559103795.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P8236517016939202852

`n-sqrt(A127473(n+1))`
-/

namespace A219428.P8236517016939202852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A127473 (n + 1) : ℝ)

end

end A219428.P8236517016939202852

namespace A219428

/-- `n-sqrt(A127473(n+1))` -/
def P8236517016939202852.Spec : Prop :=
  ∀ n, P8236517016939202852.a n = (A219428 (n + 1) : ℝ)

end A219428

/-! ## A219428.P13425063757783274368

`n-Δ[A100449(n)/4]`
-/

namespace A219428.P13425063757783274368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (f1 (n + 1) - f1 n)

end

end A219428.P13425063757783274368

namespace A219428

/-- `n-Δ[A100449(n)/4]` -/
def P13425063757783274368.Spec : Prop :=
  ∀ n, P13425063757783274368.a n = (A219428 (n + 1) : ℚ)

end A219428

/-! ## A219428.P12347331240975785085

`1-A039649(n+1)+n`
-/

namespace A219428.P12347331240975785085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1) + (n : ℤ)

end

end A219428.P12347331240975785085

namespace A219428

/-- `1-A039649(n+1)+n` -/
def P12347331240975785085.Spec : Prop :=
  ∀ n, P12347331240975785085.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P13662632493871386016

`n-(A109606(n+1)+1)`
-/

namespace A219428.P13662632493871386016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A109606 (n + 1) + 1)

end

end A219428.P13662632493871386016

namespace A219428

/-- `n-(A109606(n+1)+1)` -/
def P13662632493871386016.Spec : Prop :=
  ∀ n, P13662632493871386016.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P1658763286822535362

`A053158(n+1)-(n+2)`
-/

namespace A219428.P1658763286822535362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - (n + 2 : ℤ)

end

end A219428.P1658763286822535362

namespace A219428

/-- `A053158(n+1)-(n+2)` -/
def P1658763286822535362.Spec : Prop :=
  ∀ n, P1658763286822535362.a n = A219428 (n + 1)

theorem P1658763286822535362.correct : P1658763286822535362.Spec := by
  intro n
  simp only [A219428, Nat.add_sub_cancel, A219428.P1658763286822535362.a, A219428.P10048868048684072397.a, A051953, A051953.P12093122754958550118.a, A053158, A053158.P12394903761097819487.a, A003557, A003557.P6364735403900941810.a, A318305, A318305.P17845263951644339002.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A219428

/-! ## A219428.P8165823610446406789

`n-A200905(n+1)/3`
-/

namespace A219428.P8165823610446406789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A200905 (n + 1) : ℚ) / 3

end

end A219428.P8165823610446406789

namespace A219428

/-- `n-A200905(n+1)/3` -/
def P8165823610446406789.Spec : Prop :=
  ∀ n, P8165823610446406789.a n = (A219428 (n + 1) : ℚ)

end A219428

/-! ## A219428.P2941904946372143118

`n-sqrt(sqrt(A361148(n+1)))`
-/

namespace A219428.P2941904946372143118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (Real.sqrt (A361148 (n + 1) : ℝ))

end

end A219428.P2941904946372143118

namespace A219428

/-- `n-sqrt(sqrt(A361148(n+1)))` -/
def P2941904946372143118.Spec : Prop :=
  ∀ n, P2941904946372143118.a n = (A219428 (n + 1) : ℝ)

end A219428

/-! ## A219428.P13246188581028678379

`Δ[n²]-A121048(n+1)`
-/

namespace A219428.P13246188581028678379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A121048 (n + 1)

end

end A219428.P13246188581028678379

namespace A219428

/-- `Δ[n²]-A121048(n+1)` -/
def P13246188581028678379.Spec : Prop :=
  ∀ n, P13246188581028678379.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P8340015613532897069

`A053650(n+1)/(n+1)-1`
-/

namespace A219428.P8340015613532897069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A219428.P8340015613532897069

namespace A219428

/-- `A053650(n+1)/(n+1)-1` -/
def P8340015613532897069.Spec : Prop :=
  ∀ n, P8340015613532897069.a n = (A219428 (n + 1) : ℚ)

end A219428

/-! ## A219428.P1195101268098015181

`n-A002618(n+1)/(n+1)`
-/

namespace A219428.P1195101268098015181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A219428.P1195101268098015181

namespace A219428

/-- `n-A002618(n+1)/(n+1)` -/
def P1195101268098015181.Spec : Prop :=
  ∀ n, P1195101268098015181.a n = (A219428 (n + 1) : ℚ)

end A219428

/-! ## A219428.P14768162640714604812

`Δ[n-1-(A000010(n)-a(n-1))]` with `a(0)=0`
-/

namespace A219428.P14768162640714604812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - (A000010 n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219428.P14768162640714604812

namespace A219428

/-- `Δ[n-1-(A000010(n)-a(n-1))]` -/
def P14768162640714604812.Spec : Prop :=
  ∀ n, P14768162640714604812.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P5161116806399267631

`2*n-A000010(2*n-(n-1))-n`
-/

namespace A219428.P5161116806399267631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)

end

end A219428.P5161116806399267631

namespace A219428

/-- `2*n-A000010(2*n-(n-1))-n` -/
def P5161116806399267631.Spec : Prop :=
  ∀ n, P5161116806399267631.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P9503796508798400997

`A023443(A051953(n+1))`
-/

namespace A219428.P9503796508798400997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A051953 (n + 1)).toNat

end

end A219428.P9503796508798400997

namespace A219428

/-- `A023443(A051953(n+1))` -/
def P9503796508798400997.Spec : Prop :=
  ∀ n, P9503796508798400997.a n = A219428 (n + 1)

end A219428

/-! ## A219428.P13362944257682276637

`A079532(n+1)+A000196(n)`
-/

namespace A219428.P13362944257682276637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079532 (n + 1) + A000196 n

end

end A219428.P13362944257682276637

namespace A219428

/-- `A079532(n+1)+A000196(n)` -/
def P13362944257682276637.Spec : Prop :=
  ∀ n, P13362944257682276637.a n = A219428 (n + 1)

end A219428

/-!
# A219429: Highest prime primitive root (less than p) for the n-th prime p. (or 0 if none exists).

The programs for A219429, there is no canonical definition to state claims against.
-/

/-! ## A219429.P14673845292827305559

`A103310(p?[comp[n²]])`
-/

namespace A219429.P14673845292827305559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A219429.P14673845292827305559

/-! ## A219429.P16027019865039837609

`A103310(A000040(n+1))`
-/

namespace A219429.P16027019865039837609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (A000040 (n + 1)).toNat

end

end A219429.P16027019865039837609

/-! ## A219429.P1814050974482062974

`A103310(A006005(n+1))`
-/

namespace A219429.P1814050974482062974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (A006005 (n + 1)).toNat

end

end A219429.P1814050974482062974

/-! ## A219429.P7607861626767427104

`A103310(A008578(n+2))`
-/

namespace A219429.P7607861626767427104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (A008578 (n + 2)).toNat

end

end A219429.P7607861626767427104

/-! ## A219429.P13387820278990458147

`A103310(A075643(n+2))`
-/

namespace A219429.P13387820278990458147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (A075643 (n + 2)).toNat

end

end A219429.P13387820278990458147

/-! ## A219429.P2578946438254915934

`A103310(A182986(n+2))`
-/

namespace A219429.P2578946438254915934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (A182986 (n + 2)).toNat

end

end A219429.P2578946438254915934

/-! ## A219429.P518796535005088625

`A103310(eq[0, A007920(n)])`
-/

namespace A219429.P518796535005088625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219429.P518796535005088625

/-! ## A219429.P2607952366239251169

`A103310(record[A006530(n+2)])`
-/

namespace A219429.P2607952366239251169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219429.P2607952366239251169

/-! ## A219429.P18317982939955862489

`A103310(record[A014963(n+2)])`
-/

namespace A219429.P18317982939955862489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219429.P18317982939955862489

/-! ## A219429.P5814795207591404728

`A103310(record[A020639(n+2)])`
-/

namespace A219429.P5814795207591404728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219429.P5814795207591404728

/-!
# A219430: Number of overpartitions of n^2; a(n) = A015128(n^2).

The programs for A219430, there is no canonical definition to state claims against.
-/

/-! ## A219430.P860495728763354799

`A015128(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219430.P860495728763354799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 (n ^ 2)

end

end A219430.P860495728763354799

/-! ## A219430.P17467573950565812701

`abs(A004402(n²))`
-/

namespace A219430.P17467573950565812701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 (n ^ 2)|

end

end A219430.P17467573950565812701

/-! ## A219430.P18416325121777240918

`A004402(n²)*A033999(n)`
-/

namespace A219430.P18416325121777240918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 (n ^ 2) * A033999 n

end

end A219430.P18416325121777240918

/-! ## A219430.P1280673597840425166

`gcd(A000038(n), A004402(n²))`
-/

namespace A219430.P1280673597840425166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004402 (n ^ 2))

end

end A219430.P1280673597840425166

/-! ## A219430.P13202758369648149826

`lcm(A000034(n), A004402(n²))`
-/

namespace A219430.P13202758369648149826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004402 (n ^ 2))

end

end A219430.P13202758369648149826

/-! ## A219430.P13432778159760549524

`record[lcm(A000122(n), A004402(n))]`
-/

namespace A219430.P13432778159760549524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000122 n) (A004402 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219430.P13432778159760549524

/-! ## A219430.P3984860289920101392

`record[A015128(A048760(A014681(n)))]`
-/

namespace A219430.P3984860289920101392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 (A048760 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219430.P3984860289920101392

/-! ## A219430.P16559813619903702135

`lcm(A015128(A000290(n)), A040001(n))`
-/

namespace A219430.P16559813619903702135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015128 (A000290 n).toNat) (A040001 n)

end

end A219430.P16559813619903702135

/-! ## A219430.P9320290248787442239

`or(A000122(n), A015128(A000290(n)))`
-/

namespace A219430.P9320290248787442239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A015128 (A000290 n).toNat)

end

end A219430.P9320290248787442239

/-! ## A219430.P12322787570338080798

`gcd(A004402(A000290(n)), A035377(3*n+4))`
-/

namespace A219430.P12322787570338080798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004402 (A000290 n).toNat) (A035377 (3 * n + 4))

end

end A219430.P12322787570338080798

/-!
# A219433: a(n) is the smallest 3-smooth number such that prime(n)*a(n) + 1 is prime.

The programs for A219433, there is no canonical definition to state claims against.
-/

/-! ## A219433.P8373659673986867071

`A093178(A001545(n))*A134361(A035096(n+1))`
-/

namespace A219433.P8373659673986867071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A001545 n).toNat * A134361 (A035096 (n + 1)).toNat

end

end A219433.P8373659673986867071

/-! ## A219433.P17723019305565312651

`A134361(A035096(n+1))+A000007(A173333(n+1))`
-/

namespace A219433.P17723019305565312651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A035096 (n + 1)).toNat + A000007 (A173333 (n + 1)).toNat

end

end A219433.P17723019305565312651

/-! ## A219433.P6367487727371561766

`A352550(A188670(2*n+3))+A035096(n+1)`
-/

namespace A219433.P6367487727371561766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (A188670 (2 * n + 3)).toNat + A035096 (n + 1)

end

end A219433.P6367487727371561766

/-! ## A219433.P16454756470316237389

`A051037(A035096(n+1)%A348927(n+1))`
-/

namespace A219433.P16454756470316237389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (Int.tmod (A035096 (n + 1)) (A348927 (n + 1))).toNat

end

end A219433.P16454756470316237389

/-!
# A219435: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 n X n array.

The programs for A219435, there is no canonical definition to state claims against.
-/

/-! ## A219435.P6758783382655712338

`A219441(∑[4*n]+1)`
-/

namespace A219435.P6758783382655712338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219435.P6758783382655712338

/-! ## A219435.P3062542061876412938

`record[A219441(Δ[A235355(n)])]`
-/

namespace A219435.P3062542061876412938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219435.P3062542061876412938

/-! ## A219435.P14083321472500068932

`record[A219441(A330613(n+1))]`
-/

namespace A219435.P14083321472500068932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219435.P14083321472500068932

/-! ## A219435.P12389260877333909027

`A219441(A001844(n))+C(n, 37)`
-/

namespace A219435.P12389260877333909027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A001844 n).toNat + (Nat.choose n 37 : ℤ)

end

end A219435.P12389260877333909027

/-!
# A219436: Unmatched value maps: number of nX3 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 nX3 array.

The programs for A219436, there is no canonical definition to state claims against.
-/

/-! ## A219436.P6653879303719211197

`A219441(∑[n+3]+1)`
-/

namespace A219436.P6653879303719211197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219436.P6653879303719211197

/-! ## A219436.P17227889334740651111

`record[A219441(A198464(n+1))]`
-/

namespace A219436.P17227889334740651111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219436.P17227889334740651111

/-! ## A219436.P9541171508746667021

`A219441(A034856(n+2))+A000007(2*n+1)`
-/

namespace A219436.P9541171508746667021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A034856 (n + 2)).toNat + A000007 (2 * n + 1)

end

end A219436.P9541171508746667021

/-! ## A219436.P3944917812445286076

`A219441(A034856(n+2))%A010966(2*(n+1))`
-/

namespace A219436.P3944917812445286076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219441 (A034856 (n + 2)).toNat) (A010966 (2 * (n + 1) + 13))

end

end A219436.P3944917812445286076

/-! ## A219436.P288064044866743505

`A000034(A017341(n))*A219441(A034856(n+2))`
-/

namespace A219436.P288064044866743505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A017341 n).toNat * A219441 (A034856 (n + 2)).toNat

end

end A219436.P288064044866743505

/-!
# A219437: Unmatched value maps: number of nX4 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 nX4 array.

The programs for A219437, there is no canonical definition to state claims against.
-/

/-! ## A219437.P1332832355463903034

`A219441(∑[n+4]+3)`
-/

namespace A219437.P1332832355463903034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219437.P1332832355463903034

/-!
# A219438: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 nX5 array.

The programs for A219438, there is no canonical definition to state claims against.
-/

/-! ## A219438.P6212956153380100925

`A219441(∑[n+5]+6)`
-/

namespace A219438.P6212956153380100925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219438.P6212956153380100925

/-! ## A219438.P4303120446473725891

`A219441(A046691(n+3))+A011731(n)`
-/

namespace A219438.P4303120446473725891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A046691 (n + 3)).toNat + A011731 n

end

end A219438.P4303120446473725891

/-! ## A219438.P9256002988779622329

`A219441(A046691(n+3))+A025469(n)`
-/

namespace A219438.P9256002988779622329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A046691 (n + 3)).toNat + A025469 n

end

end A219438.P9256002988779622329

/-!
# A219439: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 nX6 array.

The programs for A219439, there is no canonical definition to state claims against.
-/

/-! ## A219439.P4036317833343160205

`A219441(A052905(n+3))`
-/

namespace A219439.P4036317833343160205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A052905 (n + 3)).toNat

end

end A219439.P4036317833343160205

/-! ## A219439.P10260520575787496990

`A219441(A302537(n)+15)`
-/

namespace A219439.P10260520575787496990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A302537 n + 15).toNat

end

end A219439.P10260520575787496990

/-! ## A219439.P11097730844486200234

`A219441(A056119(n)+16)`
-/

namespace A219439.P11097730844486200234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A056119 n + 16).toNat

end

end A219439.P11097730844486200234

/-! ## A219439.P5798392922568602457

`A219441(eq[3, A219347(n)])`
-/

namespace A219439.P5798392922568602457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219439.P5798392922568602457

/-! ## A219439.P1374872083142734593

`A219441(eq[5, A193592(n)])`
-/

namespace A219439.P1374872083142734593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219439.P1374872083142734593

/-!
# A219440: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 nX7 array.

The programs for A219440, there is no canonical definition to state claims against.
-/

/-! ## A219440.P96258240869969374

`A219441(A055999(n+4))`
-/

namespace A219440.P96258240869969374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A055999 (n + 4)).toNat

end

end A219440.P96258240869969374

/-! ## A219440.P14707153527524587188

`A219441(eq[4, A219347(n)])`
-/

namespace A219440.P14707153527524587188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219440.P14707153527524587188

/-! ## A219440.P10218430158092863103

`A219441(eq[6, A193592(n)])`
-/

namespace A219440.P10218430158092863103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219440.P10218430158092863103

/-! ## A219440.P17519149783224334289

`A219441(eq[32, A166065(n)])`
-/

namespace A219440.P17519149783224334289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219440.P17519149783224334289

/-! ## A219440.P13818654112102853766

`A219441(∑[A020719(n)]+15)`
-/

namespace A219440.P13818654112102853766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A219440.P13818654112102853766

/-!
# A219441: T(n,k)=Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 nXk array.

The programs for A219441, there is no canonical definition to state claims against.
-/

/-! ## A219441.P797315440739252129

`A219142(n+1)-A061858(A322605(n+1))`
-/

namespace A219441.P797315440739252129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (n + 1) - A061858 (A322605 (n + 1)).toNat

end

end A219441.P797315440739252129

/-! ## A219441.P10041838808173274634

`A219142(n+1)-A061858(A066119(n+1))`
-/

namespace A219441.P10041838808173274634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (n + 1) - A061858 (A066119 (n + 1)).toNat

end

end A219441.P10041838808173274634

/-! ## A219441.P12126110620081436264

`A219142(n+1)+A133573(A355527(3*n+5))`
-/

namespace A219441.P12126110620081436264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (n + 1) + A133573 (A355527 (3 * n + 5)).toNat

end

end A219441.P12126110620081436264

/-! ## A219441.P13510525363132387804

`A219142(n+1)-A240868(A014382(n))`
-/

namespace A219441.P13510525363132387804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219142 (n + 1) - A240868 (A014382 n).toNat

end

end A219441.P13510525363132387804

/-!
# A219442: Unmatched value maps: number of 4Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 4Xn array.

The programs for A219442, there is no canonical definition to state claims against.
-/

/-! ## A219442.P15423945490413002115

`A219441(∑[n+3]+7)`
-/

namespace A219442.P15423945490413002115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219442.P15423945490413002115

/-! ## A219442.P9546526365831542800

`A219441(A052905(n)+9)+A007814(2*n+1)`
-/

namespace A219442.P9546526365831542800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A052905 n + 9).toNat + A007814 (2 * n + 1)

end

end A219442.P9546526365831542800

/-!
# A219443: Unmatched value maps: number of 5Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 5Xn array.

The programs for A219443, there is no canonical definition to state claims against.
-/

/-! ## A219443.P9026938819535537807

`A219441(A167499(n+3))`
-/

namespace A219443.P9026938819535537807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A167499 (n + 3)).toNat

end

end A219443.P9026938819535537807

/-! ## A219443.P9102010770122912068

`A219441(A155212(n)+13)`
-/

namespace A219443.P9102010770122912068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A155212 n + 13).toNat

end

end A219443.P9102010770122912068

/-! ## A219443.P13008277580213115431

`A219441(A056000(n)+15)`
-/

namespace A219443.P13008277580213115431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A056000 n + 15).toNat

end

end A219443.P13008277580213115431

/-! ## A219443.P15889710118517355970

`A219441(eq[7, A066657(n)])`
-/

namespace A219443.P15889710118517355970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219443.P15889710118517355970

/-! ## A219443.P7200534398858074889

`A219441(A166136(n+3)-1)`
-/

namespace A219443.P7200534398858074889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A166136 (n + 3) - 1).toNat

end

end A219443.P7200534398858074889

/-!
# A219444: Unmatched value maps: number of 6Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 6Xn array.

The programs for A219444, there is no canonical definition to state claims against.
-/

/-! ## A219444.P13523568552563520260

`A219441(A166136(n+4))`
-/

namespace A219444.P13523568552563520260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A166136 (n + 4)).toNat

end

end A219444.P13523568552563520260

/-! ## A219444.P6977995862059442398

`A219441(A056115(n)+21)`
-/

namespace A219444.P6977995862059442398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A056115 n + 21).toNat

end

end A219444.P6977995862059442398

/-! ## A219444.P10783911183209985550

`A219441(A167499(n+4)+1)`
-/

namespace A219444.P10783911183209985550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A167499 (n + 4) + 1).toNat

end

end A219444.P10783911183209985550

/-! ## A219444.P17576382609234513113

`A219441(A167614(n+4)+3)`
-/

namespace A219444.P17576382609234513113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A167614 (n + 4) + 3).toNat

end

end A219444.P17576382609234513113

/-! ## A219444.P11107153602938715354

`A219441(A133263(n+5)+4)`
-/

namespace A219444.P11107153602938715354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A133263 (n + 5) + 4).toNat

end

end A219444.P11107153602938715354

/-!
# A219445: Unmatched value maps: number of 7Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..1 7Xn array.

The programs for A219445, there is no canonical definition to state claims against.
-/

/-! ## A219445.P3051845968555751419

`A219441(C(n+8, 2)-n)`
-/

namespace A219445.P3051845968555751419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (Nat.choose (n + 8) 2 - n)

end

end A219445.P3051845968555751419

/-! ## A219445.P14907444545333424521

`A219441(A056119(n)+28)`
-/

namespace A219445.P14907444545333424521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A056119 n + 28).toNat

end

end A219445.P14907444545333424521

/-! ## A219445.P5975940198278414305

`A219441(eq[11, A066657(n)])`
-/

namespace A219445.P5975940198278414305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219445.P5975940198278414305

/-! ## A219445.P13424980540998860603

`A219441(A166136(n+5)+1)`
-/

namespace A219445.P13424980540998860603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A166136 (n + 5) + 1).toNat

end

end A219445.P13424980540998860603

/-! ## A219445.P4157470897894078305

`A219441(A167499(n+5)+2)`
-/

namespace A219445.P4157470897894078305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219441 (A167499 (n + 5) + 2).toNat

end

end A219445.P4157470897894078305

/-!
# A219446: Unchanging value maps: number of n X n binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..2 n X n array.

The programs for A219446, there is no canonical definition to state claims against.
-/

/-! ## A219446.P5135534447659945755

`A219451(∑[4*n]+1)`
-/

namespace A219446.P5135534447659945755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219446.P5135534447659945755

/-! ## A219446.P10769653799381599585

`and(-1, A219451(A001844(n)))`
-/

namespace A219446.P10769653799381599585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219451 (A001844 n).toNat)

end

end A219446.P10769653799381599585

/-! ## A219446.P12231350149022148320

`record[A219451(A330613(n+1))]`
-/

namespace A219446.P12231350149022148320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219446.P12231350149022148320

/-! ## A219446.P14789868220552417644

`record[A219451(Δ[A079824(n+1)])]`
-/

namespace A219446.P14789868220552417644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219446.P14789868220552417644

/-! ## A219446.P12957002052098141166

`record[A003982(n)*A219451(n+1)]`
-/

namespace A219446.P12957002052098141166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A219451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219446.P12957002052098141166

/-!
# A219447: Unchanging value maps: number of nX4 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..2 nX4 array.

The programs for A219447, there is no canonical definition to state claims against.
-/

/-! ## A219447.P5345323521049212971

`A219451(∑[n+3]+7)`
-/

namespace A219447.P5345323521049212971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219447.P5345323521049212971

/-! ## A219447.P5339472692862994743

`or(1, A219451(A141214(n)+7))`
-/

namespace A219447.P5339472692862994743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219451 (A141214 n + 7).toNat)

end

end A219447.P5339472692862994743

/-! ## A219447.P1825328888705330992

`or(1, A219451(A167614(n+2)+1))`
-/

namespace A219447.P1825328888705330992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219451 (A167614 (n + 2) + 1).toNat)

end

end A219447.P1825328888705330992

/-! ## A219447.P10711743823780818458

`or(1, A219451(A034856(n+2)+6))`
-/

namespace A219447.P10711743823780818458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219451 (A034856 (n + 2) + 6).toNat)

end

end A219447.P10711743823780818458

/-! ## A219447.P11060373300143892975

`A007318(C(2, n))*A219451(A141214(n)+7)`
-/

namespace A219447.P11060373300143892975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219451 (A141214 n + 7).toNat

end

end A219447.P11060373300143892975

/-!
# A219448: Unchanging value maps: number of nX5 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..2 nX5 array.

The programs for A219448, there is no canonical definition to state claims against.
-/

/-! ## A219448.P11683522280428973406

`A219451(A374005(n+1))`
-/

namespace A219448.P11683522280428973406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A374005 (n + 1)).toNat

end

end A219448.P11683522280428973406

/-! ## A219448.P4402643074571957619

`A219451(A167499(n+3))`
-/

namespace A219448.P4402643074571957619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A167499 (n + 3)).toNat

end

end A219448.P4402643074571957619

/-! ## A219448.P15072872836768871380

`A219451(A155212(n)+13)`
-/

namespace A219448.P15072872836768871380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A155212 n + 13).toNat

end

end A219448.P15072872836768871380

/-! ## A219448.P17414747076638362398

`A219451(A056000(n)+15)`
-/

namespace A219448.P17414747076638362398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A056000 n + 15).toNat

end

end A219448.P17414747076638362398

/-! ## A219448.P12744444167493683582

`A219451(eq[7, A066657(n)])`
-/

namespace A219448.P12744444167493683582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219448.P12744444167493683582

/-!
# A219449: Unchanging value maps: number of nX6 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..2 nX6 array.

The programs for A219449, there is no canonical definition to state claims against.
-/

/-! ## A219449.P3893678198435255495

`A219451(A374007(n+1))`
-/

namespace A219449.P3893678198435255495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A374007 (n + 1)).toNat

end

end A219449.P3893678198435255495

/-! ## A219449.P5401234018449858686

`A219451(A056115(n)+21)`
-/

namespace A219449.P5401234018449858686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A056115 n + 21).toNat

end

end A219449.P5401234018449858686

/-! ## A219449.P2263550683275476668

`A219451(A167499(n+4)+1)`
-/

namespace A219449.P2263550683275476668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A167499 (n + 4) + 1).toNat

end

end A219449.P2263550683275476668

/-! ## A219449.P4394527253731672635

`A219451(A167614(n+4)+3)`
-/

namespace A219449.P4394527253731672635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A167614 (n + 4) + 3).toNat

end

end A219449.P4394527253731672635

/-! ## A219449.P8802250878146173514

`A219451(A000217(n+5)+6)`
-/

namespace A219449.P8802250878146173514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A000217 (n + 5) + 6).toNat

end

end A219449.P8802250878146173514

/-!
# A219450: Unchanging value maps: number of n X 7 binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..2 n X 7 array.

The programs for A219450, there is no canonical definition to state claims against.
-/

/-! ## A219450.P10780315154947072966

`A219451(A374008(n+1))`
-/

namespace A219450.P10780315154947072966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A374008 (n + 1)).toNat

end

end A219450.P10780315154947072966

/-! ## A219450.P694199883310285003

`A219451(A167487(n+5))`
-/

namespace A219450.P694199883310285003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A167487 (n + 5)).toNat

end

end A219450.P694199883310285003

/-! ## A219450.P4885729658057739861

`A219451(eq[11, A066657(n)])`
-/

namespace A219450.P4885729658057739861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219450.P4885729658057739861

/-! ## A219450.P8861341763223458987

`A219451(A000217(n+6)+7)`
-/

namespace A219450.P8861341763223458987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A000217 (n + 6) + 7).toNat

end

end A219450.P8861341763223458987

/-! ## A219450.P3367614978721500732

`A219451(A034856(n+5)+9)`
-/

namespace A219450.P3367614978721500732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219451 (A034856 (n + 5) + 9).toNat

end

end A219450.P3367614978721500732

/-!
# A219451: T(n,k)=Unchanging value maps: number of nXk binary arrays indicating the locations of corresponding elements unequal to no king-move neighbor in a random 0..2 nXk array.

The programs for A219451, there is no canonical definition to state claims against.
-/

/-! ## A219451.P15652751460706206556

`A222248(A219403(n+1)%A360628(2*n+5))`
-/

namespace A219451.P15652751460706206556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (Int.tmod (A219403 (n + 1)) (A360628 (2 * n + 5))).toNat

end

end A219451.P15652751460706206556

/-! ## A219451.P7548978879039098165

`A222248(A219403(n+1))+A000007(A016116(n))`
-/

namespace A219451.P7548978879039098165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A219403 (n + 1)).toNat + A000007 (A016116 n).toNat

end

end A219451.P7548978879039098165

/-! ## A219451.P10713266079317745890

`A222248(A219403(n+1))+A000038(A110506(n))`
-/

namespace A219451.P10713266079317745890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A219403 (n + 1)).toNat + A000038 (A110506 n).toNat

end

end A219451.P10713266079317745890

/-! ## A219451.P188804115699086666

`A222248(A219403(n+1))%A359912(2*(n+2))`
-/

namespace A219451.P188804115699086666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222248 (A219403 (n + 1)).toNat) (A359912 (2 * (n + 2)))

end

end A219451.P188804115699086666

/-!
# A219453: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X n array.

The programs for A219453, there is no canonical definition to state claims against.
-/

/-! ## A219453.P12568683163607651442

`A219460(∑[4*n]+1)`
-/

namespace A219453.P12568683163607651442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219453.P12568683163607651442

/-!
# A219454: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X 2 array.

The programs for A219454, there is no canonical definition to state claims against.
-/

/-! ## A219454.P8570236826199056261

`A219460(∑[n+1]+2)`
-/

namespace A219454.P8570236826199056261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219454.P8570236826199056261

/-! ## A219454.P15610294440582800799

`A219802(∑[n+2])`
-/

namespace A219454.P15610294440582800799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219454.P15610294440582800799

/-! ## A219454.P12085450815473092523

`A000027(A219460(∑[n+2]))`
-/

namespace A219454.P12085450815473092523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A219460 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A219454.P12085450815473092523

/-!
# A219455: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX3 array.

The programs for A219455, there is no canonical definition to state claims against.
-/

/-! ## A219455.P16921261316707388635

`A219460(∑[n+2]+4)`
-/

namespace A219455.P16921261316707388635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219455.P16921261316707388635

/-! ## A219455.P5817008356861183993

`or(char[1], A219460(A167614(n+1)))`
-/

namespace A219455.P5817008356861183993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219460 (A167614 (n + 1)).toNat)

end

end A219455.P5817008356861183993

/-! ## A219455.P4466592623863206921

`A219460(A167614(n+1))+A025444(n)`
-/

namespace A219455.P4466592623863206921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A167614 (n + 1)).toNat + A025444 n

end

end A219455.P4466592623863206921

/-! ## A219455.P8339669530315804498

`A219460(A167614(n+1))+A025466(n)`
-/

namespace A219455.P8339669530315804498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A167614 (n + 1)).toNat + A025466 n

end

end A219455.P8339669530315804498

/-! ## A219455.P3332172367007718324

`A219460(A167614(n+1))+A054908(n)`
-/

namespace A219455.P3332172367007718324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A167614 (n + 1)).toNat + A054908 n

end

end A219455.P3332172367007718324

/-!
# A219456: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX4 array.

The programs for A219456, there is no canonical definition to state claims against.
-/

/-! ## A219456.P15020557588420764725

`A219460(∑[n+3]+7)`
-/

namespace A219456.P15020557588420764725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219456.P15020557588420764725

/-!
# A219457: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX5 array.

The programs for A219457, there is no canonical definition to state claims against.
-/

/-! ## A219457.P8138626652699235280

`A219460(A374005(n+1))`
-/

namespace A219457.P8138626652699235280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A374005 (n + 1)).toNat

end

end A219457.P8138626652699235280

/-! ## A219457.P15778765476939611896

`A219460(A167499(n+3))`
-/

namespace A219457.P15778765476939611896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A167499 (n + 3)).toNat

end

end A219457.P15778765476939611896

/-! ## A219457.P9836332365679818214

`A219460(A155212(n)+13)`
-/

namespace A219457.P9836332365679818214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A155212 n + 13).toNat

end

end A219457.P9836332365679818214

/-! ## A219457.P10126935639250249573

`A219460(A056000(n)+15)`
-/

namespace A219457.P10126935639250249573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A056000 n + 15).toNat

end

end A219457.P10126935639250249573

/-! ## A219457.P1980961132683926393

`A219460(eq[7, A066657(n)])`
-/

namespace A219457.P1980961132683926393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219457.P1980961132683926393

/-!
# A219458: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX6 array.

The programs for A219458, there is no canonical definition to state claims against.
-/

/-! ## A219458.P13335440063041923664

`A219460(A374007(n+1))`
-/

namespace A219458.P13335440063041923664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A374007 (n + 1)).toNat

end

end A219458.P13335440063041923664

/-! ## A219458.P17334914928105215265

`A219460(A056115(n)+21)`
-/

namespace A219458.P17334914928105215265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A056115 n + 21).toNat

end

end A219458.P17334914928105215265

/-! ## A219458.P14183274432600660896

`A219460(eq[7, A131818(n+1)])`
-/

namespace A219458.P14183274432600660896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219458.P14183274432600660896

/-! ## A219458.P14342410457628092419

`A219460(Δ[A023545(n+1)]+10)`
-/

namespace A219458.P14342410457628092419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (f1 (n + 1) - f1 n + 10).toNat

end

end A219458.P14342410457628092419

/-!
# A219459: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX7 array.

The programs for A219459, there is no canonical definition to state claims against.
-/

/-! ## A219459.P11670386571810073912

`A219460(A374008(n+1))`
-/

namespace A219459.P11670386571810073912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (A374008 (n + 1)).toNat

end

end A219459.P11670386571810073912

/-!
# A219460: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nXk array.

The programs for A219460, there is no canonical definition to state claims against.
-/

/-! ## A219460.P10168770945441855916

`A219802(A062399(n)+A046854(n))`
-/

namespace A219460.P10168770945441855916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A062399 n + A046854 n).toNat

end

end A219460.P10168770945441855916

/-! ## A219460.P11197629551235581072

`A219802(A120126(n)+A046854(n))`
-/

namespace A219460.P11197629551235581072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A120126 n + A046854 n).toNat

end

end A219460.P11197629551235581072

/-! ## A219460.P1439579205658151595

`A219802(A219347(A062399(n))+n)`
-/

namespace A219460.P1439579205658151595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A219347 (A062399 n).toNat + (n : ℤ)).toNat

end

end A219460.P1439579205658151595

/-! ## A219460.P11178314556771926280

`A219802(A219347(n)+A120126(n))`
-/

namespace A219460.P11178314556771926280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A219347 n + A120126 n).toNat

end

end A219460.P11178314556771926280

/-! ## A219460.P7503874637799324544

`A219802(A309049(A062399(n))+n)`
-/

namespace A219460.P7503874637799324544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A309049 (A062399 n).toNat + (n : ℤ)).toNat

end

end A219460.P7503874637799324544

/-!
# A219461: Primes p such that 2^p - 1 is a prime with primitive root 3.

The programs for A219461, there is no canonical definition to state claims against.
-/

/-! ## A219461.P10634504249649356887

`A000043(eq[A000188(3*n+1), A316081(n)])`
-/

namespace A219461.P10634504249649356887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A219461.P10634504249649356887

/-! ## A219461.P15112675217708211083

`∩[A000043(n+1), A000040(A051204(n+3))]`
-/

namespace A219461.P15112675217708211083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051204 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219461.P15112675217708211083

/-! ## A219461.P8721754076229907097

`A322903(A292113(n+1))`
-/

namespace A219461.P8721754076229907097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (A292113 (n + 1)).toNat

end

end A219461.P8721754076229907097

/-!
# A219462: a(n) = Sum_{k = 1..2*n} binomial(2*n,k) * Fibonacci(2*k).

The programs for A219462, the canonical program `A219462.P5614578218388287376` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219462 has offset 0).

The definition of A219462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219462.P5614578218388287376

`A000351(n)*A001906(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A219462

/-- `A000351(n)*A001906(n)` -/
def P5614578218388287376.Spec : Prop :=
  ∀ n, P5614578218388287376.a n = A219462 n

theorem P5614578218388287376.correct : P5614578218388287376.Spec := by
  intro n
  simp only [A219462]

end A219462

/-! ## A219462.P2258845418698595614

`ogf(5x/(1-15x+25x^2))`
-/

namespace A219462.P2258845418698595614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -15, 25] n

end

end A219462.P2258845418698595614

namespace A219462

/-- `ogf(5x/(1-15x+25x^2))` -/
def P2258845418698595614.Spec : Prop :=
  ∀ n, P2258845418698595614.a n = A219462 n

end A219462

/-! ## A219462.P1217302417867529664

`A093131(2*n)`
-/

namespace A219462.P1217302417867529664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (2 * n)

end

end A219462.P1217302417867529664

namespace A219462

/-- `A093131(2*n)` -/
def P1217302417867529664.Spec : Prop :=
  ∀ n, P1217302417867529664.a n = A219462 n

end A219462

/-! ## A219462.P17330837026859912041

`A112091(2*n)-1`
-/

namespace A219462.P17330837026859912041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112091 (2 * n) - 1

end

end A219462.P17330837026859912041

namespace A219462

/-- `A112091(2*n)-1` -/
def P17330837026859912041.Spec : Prop :=
  ∀ n, P17330837026859912041.a n = A219462 n

end A219462

/-! ## A219462.P11398418045978201308

`5^n*A000045(2*n)`
-/

namespace A219462.P11398418045978201308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000045 (2 * n)

end

end A219462.P11398418045978201308

namespace A219462

/-- `5^n*A000045(2*n)` -/
def P11398418045978201308.Spec : Prop :=
  ∀ n, P11398418045978201308.a n = A219462 n

end A219462

/-! ## A219462.P12051220849930455497

`(A001611(2*n)-1)*5^n`
-/

namespace A219462.P12051220849930455497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n) - 1) * (5 ^ n : ℤ)

end

end A219462.P12051220849930455497

namespace A219462

/-- `(A001611(2*n)-1)*5^n` -/
def P12051220849930455497.Spec : Prop :=
  ∀ n, P12051220849930455497.a n = A219462 n

end A219462

/-! ## A219462.P1352737158322390310

`record[A093131(A014681(n))]`
-/

namespace A219462.P1352737158322390310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219462.P1352737158322390310

namespace A219462

/-- `record[A093131(A014681(n))]` -/
def P1352737158322390310.Spec : Prop :=
  ∀ n, P1352737158322390310.a n = A219462 n

end A219462

/-! ## A219462.P8204590450592912841

`A000045(2*n)*A000351(n)`
-/

namespace A219462.P8204590450592912841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A000351 n

end

end A219462.P8204590450592912841

namespace A219462

/-- `A000045(2*n)*A000351(n)` -/
def P8204590450592912841.Spec : Prop :=
  ∀ n, P8204590450592912841.a n = A219462 n

end A219462

/-! ## A219462.P1485599442636115388

`A081567(n)²-A093129(n)²`
-/

namespace A219462.P1485599442636115388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n ^ 2 - A093129 n ^ 2

end

end A219462.P1485599442636115388

namespace A219462

/-- `A081567(n)²-A093129(n)²` -/
def P1485599442636115388.Spec : Prop :=
  ∀ n, P1485599442636115388.a n = A219462 n

end A219462

/-! ## A219462.P14311804469210710900

`A109106(n+1)-A020876(2*n)`
-/

namespace A219462.P14311804469210710900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109106 (n + 1) - A020876 (2 * n)

end

end A219462.P14311804469210710900

namespace A219462

/-- `A109106(n+1)-A020876(2*n)` -/
def P14311804469210710900.Spec : Prop :=
  ∀ n, P14311804469210710900.a n = A219462 n

end A219462

/-!
# A219463: Triangle read by rows: T(n,k) = 1 - A047999(n,k), 0 <= k <= n.

The programs for A219463, the canonical program `A219463.P16758991508588374760` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219463 has offset 0).

The definition of A219463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047999, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219463.P16758991508588374760

`1-A047999(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A219463

/-- `1-A047999(n)` -/
def P16758991508588374760.Spec : Prop :=
  ∀ n, P16758991508588374760.a n = A219463 n

theorem P16758991508588374760.correct : P16758991508588374760.Spec := by
  intro n
  simp only [A219463]

end A219463

/-! ## A219463.P17553191882057711495

`A014473(n)%2`
-/

namespace A219463.P17553191882057711495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014473 n) 2

end

end A219463.P17553191882057711495

namespace A219463

/-- `A014473(n)%2` -/
def P17553191882057711495.Spec : Prop :=
  ∀ n, P17553191882057711495.a n = A219463 n

end A219463

/-! ## A219463.P16920775957242201315

`val(A080396(n), 2)`
-/

namespace A219463.P16920775957242201315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A080396 n).toNat 2

end

end A219463.P16920775957242201315

namespace A219463

/-- `val(A080396(n), 2)` -/
def P16920775957242201315.Spec : Prop :=
  ∀ n, (P16920775957242201315.a n : ℤ) = A219463 n

end A219463

/-! ## A219463.P10948027528778063036

`1-abs(A143200(n))`
-/

namespace A219463.P10948027528778063036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A143200 n|

end

end A219463.P10948027528778063036

namespace A219463

/-- `1-abs(A143200(n))` -/
def P10948027528778063036.Spec : Prop :=
  ∀ n, P10948027528778063036.a n = A219463 n

end A219463

/-! ## A219463.P9889187763118856687

`1-abs(A166282(n))`
-/

namespace A219463.P9889187763118856687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A166282 n|

end

end A219463.P9889187763118856687

namespace A219463

/-- `1-abs(A166282(n))` -/
def P9889187763118856687.Spec : Prop :=
  ∀ n, P9889187763118856687.a n = A219463 n

end A219463

/-! ## A219463.P1225494500213373226

`(1-A166279(n))²`
-/

namespace A219463.P1225494500213373226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A166279 n) ^ 2

end

end A219463.P1225494500213373226

namespace A219463

/-- `(1-A166279(n))²` -/
def P1225494500213373226.Spec : Prop :=
  ∀ n, P1225494500213373226.a n = A219463 n

end A219463

/-! ## A219463.P16850020643087188896

`log2(gcd(2, A007318(n)))`
-/

namespace A219463.P16850020643087188896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A007318 n) : ℝ)

end

end A219463.P16850020643087188896

namespace A219463

/-- `log2(gcd(2, A007318(n)))` -/
def P16850020643087188896.Spec : Prop :=
  ∀ n, P16850020643087188896.a n = (A219463 n : ℝ)

end A219463

/-! ## A219463.P7611557360126043526

`ceil(A065040(n)/7)`
-/

namespace A219463.P7611557360126043526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065040 n : ℚ) / 7⌉

end

end A219463.P7611557360126043526

namespace A219463

/-- `ceil(A065040(n)/7)` -/
def P7611557360126043526.Spec : Prop :=
  ∀ n, P7611557360126043526.a n = A219463 n

end A219463

/-! ## A219463.P10549600648712831771

`ceil(A050602(n)/15)`
-/

namespace A219463.P10549600648712831771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050602 n : ℚ) / 15⌉

end

end A219463.P10549600648712831771

namespace A219463

/-- `ceil(A050602(n)/15)` -/
def P10549600648712831771.Spec : Prop :=
  ∀ n, P10549600648712831771.a n = A219463 n

end A219463

/-! ## A219463.P4154460862904100444

`char[A268232(n+1)]`
-/

namespace A219463.P4154460862904100444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A219463.P4154460862904100444

namespace A219463

/-- `char[A268232(n+1)]` -/
def P4154460862904100444.Spec : Prop :=
  ∀ n, (P4154460862904100444.a n : ℤ) = A219463 n

end A219463

/-! ## A219463.P7038151373915849145

`val(A008459(n)+2, 2)`
-/

namespace A219463.P7038151373915849145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008459 n + 2).toNat 2

end

end A219463.P7038151373915849145

namespace A219463

/-- `val(A008459(n)+2, 2)` -/
def P7038151373915849145.Spec : Prop :=
  ∀ n, (P7038151373915849145.a n : ℤ) = A219463 n

end A219463

/-! ## A219463.P1538929308113094056

`and(1, A008975(n)+1)`
-/

namespace A219463.P1538929308113094056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008975 n + 1)

end

end A219463.P1538929308113094056

namespace A219463

/-- `and(1, A008975(n)+1)` -/
def P1538929308113094056.Spec : Prop :=
  ∀ n, P1538929308113094056.a n = A219463 n

end A219463

/-! ## A219463.P18098012214690251588

`and(1, A013610(n)+1)`
-/

namespace A219463.P18098012214690251588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A013610 n + 1)

end

end A219463.P18098012214690251588

namespace A219463

/-- `and(1, A013610(n)+1)` -/
def P18098012214690251588.Spec : Prop :=
  ∀ n, P18098012214690251588.a n = A219463 n

end A219463

/-! ## A219463.P18176788427544534944

`and(1, A027170(n)+1)`
-/

namespace A219463.P18176788427544534944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027170 n + 1)

end

end A219463.P18176788427544534944

namespace A219463

/-- `and(1, A027170(n)+1)` -/
def P18176788427544534944.Spec : Prop :=
  ∀ n, P18176788427544534944.a n = A219463 n

end A219463

/-! ## A219463.P16188280472177462733

`and(1, A027465(n)+1)`
-/

namespace A219463.P16188280472177462733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027465 n + 1)

end

end A219463.P16188280472177462733

namespace A219463

/-- `and(1, A027465(n)+1)` -/
def P16188280472177462733.Spec : Prop :=
  ∀ n, P16188280472177462733.a n = A219463 n

end A219463

/-! ## A219463.P6504631277606105793

`and(1, A034930(n)+1)`
-/

namespace A219463.P6504631277606105793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034930 n + 1)

end

end A219463.P6504631277606105793

namespace A219463

/-- `and(1, A034930(n)+1)` -/
def P6504631277606105793.Spec : Prop :=
  ∀ n, P6504631277606105793.a n = A219463 n

end A219463

/-! ## A219463.P12599815603623336109

`and(1, A034931(n)+1)`
-/

namespace A219463.P12599815603623336109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034931 n + 1)

end

end A219463.P12599815603623336109

namespace A219463

/-- `and(1, A034931(n)+1)` -/
def P12599815603623336109.Spec : Prop :=
  ∀ n, P12599815603623336109.a n = A219463 n

end A219463

/-! ## A219463.P15150664890163600309

`and(1, A034932(n)+1)`
-/

namespace A219463.P15150664890163600309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034932 n + 1)

end

end A219463.P15150664890163600309

namespace A219463

/-- `and(1, A034932(n)+1)` -/
def P15150664890163600309.Spec : Prop :=
  ∀ n, P15150664890163600309.a n = A219463 n

end A219463

/-! ## A219463.P1320464276432899101

`and(1, A038763(n)+1)`
-/

namespace A219463.P1320464276432899101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038763 n + 1)

end

end A219463.P1320464276432899101

namespace A219463

/-- `and(1, A038763(n)+1)` -/
def P1320464276432899101.Spec : Prop :=
  ∀ n, P1320464276432899101.a n = A219463 n

end A219463

/-! ## A219463.P13465995238921348009

`and(1, A051159(n)+1)`
-/

namespace A219463.P13465995238921348009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051159 n + 1)

end

end A219463.P13465995238921348009

namespace A219463

/-- `and(1, A051159(n)+1)` -/
def P13465995238921348009.Spec : Prop :=
  ∀ n, P13465995238921348009.a n = A219463 n

end A219463

/-!
# A219464: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X n array.

The programs for A219464, there is no canonical definition to state claims against.
-/

/-! ## A219464.P4481158485059661189

`A219471(∑[4*n]+1)`
-/

namespace A219464.P4481158485059661189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219464.P4481158485059661189

/-! ## A219464.P13644139546640043362

`∑{digits}[n, A219471(A001844(#))]`
-/

namespace A219464.P13644139546640043362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219471 (A001844 x).toNat).sum

end

end A219464.P13644139546640043362

/-!
# A219465: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X 2 array.

The programs for A219465, there is no canonical definition to state claims against.
-/

/-! ## A219465.P11776671385436018880

`A219471(∑[n+2])`
-/

namespace A219465.P11776671385436018880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219465.P11776671385436018880

/-! ## A219465.P4337056697762725182

`record[root(A219471(n+1), A205005(n+1))]`
-/

namespace A219465.P4337056697762725182
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219471 (n + 1) : ℝ) ^ (1 / (A205005 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219465.P4337056697762725182

/-! ## A219465.P15110092793135563985

`record[A219471(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A219465.P15110092793135563985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219465.P15110092793135563985

/-! ## A219465.P9137165384616141253

`A219471(A000096(n+1))+A216284(n+4)`
-/

namespace A219465.P9137165384616141253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A000096 (n + 1)).toNat + A216284 (n + 4)

end

end A219465.P9137165384616141253

/-! ## A219465.P10130748212909089963

`A219471(A000096(n+1))%A187422(n+1)`
-/

namespace A219465.P10130748212909089963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219471 (A000096 (n + 1)).toNat) (A187422 (n + 1))

end

end A219465.P10130748212909089963

/-!
# A219466: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX3 array.

The programs for A219466, there is no canonical definition to state claims against.
-/

/-! ## A219466.P11294878803162747406

`A219471(∑[n+3]+1)`
-/

namespace A219466.P11294878803162747406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219466.P11294878803162747406

/-! ## A219466.P3771748703544460049

`A326626(n)+A219471(A034856(n+2))`
-/

namespace A219466.P3771748703544460049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A219471 (A034856 (n + 2)).toNat

end

end A219466.P3771748703544460049

/-! ## A219466.P10271660614767705329

`A219471(A034856(n+2))%A098206(n+3)`
-/

namespace A219466.P10271660614767705329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219471 (A034856 (n + 2)).toNat) (A098206 (n + 3))

end

end A219466.P10271660614767705329

/-!
# A219467: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX4 array.

The programs for A219467, there is no canonical definition to state claims against.
-/

/-! ## A219467.P10001696829275590661

`A219471(∑[n+4]+3)`
-/

namespace A219467.P10001696829275590661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219467.P10001696829275590661

/-! ## A219467.P14960038098730680547

`char[A032741(n)]*A219471(A055998(n+2))`
-/

namespace A219467.P14960038098730680547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A219471 (A055998 (n + 2)).toNat

end

end A219467.P14960038098730680547

/-! ## A219467.P3227208486647727804

`A285007(n+1)+A219471(A141214(n+1))`
-/

namespace A219467.P3227208486647727804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A219471 (A141214 (n + 1)).toNat

end

end A219467.P3227208486647727804

/-! ## A219467.P7762797462007816015

`A219471(A027379(n+2))+A035322(n+1)`
-/

namespace A219467.P7762797462007816015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A027379 (n + 2)).toNat + A035322 (n + 1)

end

end A219467.P7762797462007816015

/-! ## A219467.P5238149299890000537

`A219471(A027379(n+2))%A060801(2*(n+2))`
-/

namespace A219467.P5238149299890000537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219471 (A027379 (n + 2)).toNat) (A060801 (2 * (n + 2)))

end

end A219467.P5238149299890000537

/-!
# A219468: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX5 array.

The programs for A219468, there is no canonical definition to state claims against.
-/

/-! ## A219468.P15006504921976301940

`A219471(Δ[A264443(n)])`
-/

namespace A219468.P15006504921976301940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (f1 (n + 1) - f1 n).toNat

end

end A219468.P15006504921976301940

/-! ## A219468.P6527228113422328976

`A219471(A046691(n+3))`
-/

namespace A219468.P6527228113422328976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A046691 (n + 3)).toNat

end

end A219468.P6527228113422328976

/-! ## A219468.P18317047540788825923

`A219471(A056115(n)+11)`
-/

namespace A219468.P18317047540788825923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A056115 n + 11).toNat

end

end A219468.P18317047540788825923

/-! ## A219468.P14679553411768560166

`A219471(eq[2, A092921(n)])`
-/

namespace A219468.P14679553411768560166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219468.P14679553411768560166

/-!
# A219469: Number of n X 6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X 6 array.

The programs for A219469, there is no canonical definition to state claims against.
-/

/-! ## A219469.P12042347174068246517

`A219471(A052905(n+3))`
-/

namespace A219469.P12042347174068246517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A052905 (n + 3)).toNat

end

end A219469.P12042347174068246517

/-! ## A219469.P8413166824669360846

`A219471(eq[3, A219347(n)])`
-/

namespace A219469.P8413166824669360846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219469.P8413166824669360846

/-! ## A219469.P16257653898447689642

`A219471(eq[5, A193592(n)])`
-/

namespace A219469.P16257653898447689642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219469.P16257653898447689642

/-!
# A219470: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX7 array.

The programs for A219470, there is no canonical definition to state claims against.
-/

/-! ## A219470.P16686512265744954880

`A219471(A055999(n+4))`
-/

namespace A219470.P16686512265744954880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A055999 (n + 4)).toNat

end

end A219470.P16686512265744954880

/-! ## A219470.P4837152573791495916

`A219471(eq[4, A219347(n)])`
-/

namespace A219470.P4837152573791495916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219470.P4837152573791495916

/-!
# A219472: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 2 X n array.

The programs for A219472, there is no canonical definition to state claims against.
-/

/-! ## A219472.P2940042988013264386

`A219471(∑[n+1]+2)`
-/

namespace A219472.P2940042988013264386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219472.P2940042988013264386

/-! ## A219472.P14770352146994844443

`record[A106270(n)*A219471(n+3)]`
-/

namespace A219472.P14770352146994844443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 n * A219471 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219472.P14770352146994844443

/-! ## A219472.P11387777705336095216

`((-1)^n)²*A219471(A133263(n+1))`
-/

namespace A219472.P11387777705336095216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A219471 (A133263 (n + 1)).toNat

end

end A219472.P11387777705336095216

/-! ## A219472.P9923414411909189015

`A264668(n)+A219471(A133263(n+1))`
-/

namespace A219472.P9923414411909189015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A219471 (A133263 (n + 1)).toNat

end

end A219472.P9923414411909189015

/-! ## A219472.P1905979662772677828

`A219471(A133263(n+1))%A017057(n)`
-/

namespace A219472.P1905979662772677828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219471 (A133263 (n + 1)).toNat) (A017057 n)

end

end A219472.P1905979662772677828

/-!
# A219473: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 3Xn array.

The programs for A219473, there is no canonical definition to state claims against.
-/

/-! ## A219473.P17689028902271814214

`A219471(∑[n+2]+4)`
-/

namespace A219473.P17689028902271814214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219473.P17689028902271814214

/-! ## A219473.P5404451218249540266

`A219471(A167614(n+1))+A011741(n)`
-/

namespace A219473.P5404451218249540266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A167614 (n + 1)).toNat + A011741 n

end

end A219473.P5404451218249540266

/-! ## A219473.P7619352277320915367

`A219471(A167614(n+1))+A025466(n)`
-/

namespace A219473.P7619352277320915367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A167614 (n + 1)).toNat + A025466 n

end

end A219473.P7619352277320915367

/-! ## A219473.P3509491521735625892

`A219471(A167614(n+1))+A084904(n)`
-/

namespace A219473.P3509491521735625892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A167614 (n + 1)).toNat + A084904 n

end

end A219473.P3509491521735625892

/-! ## A219473.P5555551461497833065

`A219471(A167614(n+1))+A086015(n)`
-/

namespace A219473.P5555551461497833065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A167614 (n + 1)).toNat + A086015 n

end

end A219473.P5555551461497833065

/-!
# A219474: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 4Xn array.

The programs for A219474, there is no canonical definition to state claims against.
-/

/-! ## A219474.P14388982275443063225

`A219471(∑[n+3]+7)`
-/

namespace A219474.P14388982275443063225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219474.P14388982275443063225

/-!
# A219475: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 5Xn array.

The programs for A219475, there is no canonical definition to state claims against.
-/

/-! ## A219475.P14597147158569692541

`A219471(C(n+6, 2)-n)`
-/

namespace A219475.P14597147158569692541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (Nat.choose (n + 6) 2 - n)

end

end A219475.P14597147158569692541

/-! ## A219475.P9646508703138221824

`A219471(A167499(n+3))`
-/

namespace A219475.P9646508703138221824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A167499 (n + 3)).toNat

end

end A219475.P9646508703138221824

/-! ## A219475.P7852746481726840791

`A219471(A155212(n)+13)`
-/

namespace A219475.P7852746481726840791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A155212 n + 13).toNat

end

end A219475.P7852746481726840791

/-! ## A219475.P9398742560017189155

`A219471(A056000(n)+15)`
-/

namespace A219475.P9398742560017189155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A056000 n + 15).toNat

end

end A219475.P9398742560017189155

/-! ## A219475.P14647596178453930957

`A219471(eq[7, A066657(n)])`
-/

namespace A219475.P14647596178453930957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219475.P14647596178453930957

/-!
# A219476: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 6Xn array.

The programs for A219476, there is no canonical definition to state claims against.
-/

/-! ## A219476.P10643347828990221410

`A219471(∑[n+5]+16)`
-/

namespace A219476.P10643347828990221410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219476.P10643347828990221410

/-! ## A219476.P2958617806408813373

`A326456(n)+A219471(A166136(n+4))`
-/

namespace A219476.P2958617806408813373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 n + A219471 (A166136 (n + 4)).toNat

end

end A219476.P2958617806408813373

/-! ## A219476.P816360681808235697

`A219471(A166136(n+4))%A002275(2*(n+2))`
-/

namespace A219476.P816360681808235697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219471 (A166136 (n + 4)).toNat) (A002275 (2 * (n + 2)))

end

end A219476.P816360681808235697

/-!
# A219477: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 7Xn array.

The programs for A219477, there is no canonical definition to state claims against.
-/

/-! ## A219477.P18368615881759325655

`A219471(A056119(n)+28)`
-/

namespace A219477.P18368615881759325655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (A056119 n + 28).toNat

end

end A219477.P18368615881759325655

/-! ## A219477.P1847921101004569785

`A219471(eq[11, A066657(n)])`
-/

namespace A219477.P1847921101004569785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219477.P1847921101004569785

/-!
# A219478: Prime numbers that are the mean of 5 successive primes.

The programs for A219478, there is no canonical definition to state claims against.
-/

/-! ## A219478.P10816283425364249551

`p?[A219505(n+1)]`
-/

namespace A219478.P10816283425364249551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219478.P10816283425364249551

/-! ## A219478.P12255322353130747574

`p?[A298102(n+1)+2]`
-/

namespace A219478.P12255322353130747574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298102 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219478.P12255322353130747574

/-! ## A219478.P13613740270405157952

`filter[A219505(n+1), A010051(#)]`
-/

namespace A219478.P13613740270405157952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A219478.P13613740270405157952

/-! ## A219478.P13676055458809625525

`filter[A219505(n+1), A257531(#)]`
-/

namespace A219478.P13676055458809625525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A219478.P13676055458809625525

/-! ## A219478.P14065370944776881465

`filter[A219505(n+1), A323152(#)]`
-/

namespace A219478.P14065370944776881465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A219478.P14065370944776881465

/-! ## A219478.P326312843423897289

`filter[A219505(n+1), A323153(#)]`
-/

namespace A219478.P326312843423897289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A219478.P326312843423897289

/-! ## A219478.P14718835310093263502

`filter[A219505(n+1), A327861(#)]`
-/

namespace A219478.P14718835310093263502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A219478.P14718835310093263502

/-! ## A219478.P8943222863871271718

`filter[A219505(n+1), A340371(#)]`
-/

namespace A219478.P8943222863871271718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A219478.P8943222863871271718

/-! ## A219478.P9804076868954699171

`filter[A219505(n+1), A351957(#)]`
-/

namespace A219478.P9804076868954699171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A219478.P9804076868954699171

/-! ## A219478.P5705187005455763254

`filter[A219505(n+1), A353670(#)]`
-/

namespace A219478.P5705187005455763254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A219478.P5705187005455763254

/-! ## A219478.P14386228923550612689

`filter[A219505(n+1), A353817(#)]`
-/

namespace A219478.P14386228923550612689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A219478.P14386228923550612689

/-! ## A219478.P12734337050487649878

`record[A006530(A298102(n+1)+2)]`
-/

namespace A219478.P12734337050487649878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A298102 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219478.P12734337050487649878

/-! ## A219478.P11997709722164501956

`record[A020639(A298102(n+1)+2)]`
-/

namespace A219478.P11997709722164501956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298102 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219478.P11997709722164501956

/-! ## A219478.P16450438365024664590

`record[A006530(or(1, A219505(n+1)))]`
-/

namespace A219478.P16450438365024664590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A219505 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219478.P16450438365024664590

/-! ## A219478.P8224704173993265115

`record[A020639(or(1, A219505(n+1)))]`
-/

namespace A219478.P8224704173993265115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A219505 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219478.P8224704173993265115

/-! ## A219478.P10432990324171905688

`∩[A000040(n+1), A219505(n+1)]`
-/

namespace A219478.P10432990324171905688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219478.P10432990324171905688

/-! ## A219478.P17559740209969879689

`∩[A001751(n+1), A219505(n+1)]`
-/

namespace A219478.P17559740209969879689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219478.P17559740209969879689

/-! ## A219478.P11322795491261036031

`∩[A004139(n+1), A219505(n+1)]`
-/

namespace A219478.P11322795491261036031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219478.P11322795491261036031

/-! ## A219478.P6199430339468046822

`∩[A006005(n+1), A219505(n+1)]`
-/

namespace A219478.P6199430339468046822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219478.P6199430339468046822

/-!
# A219479: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 1, 6, 7, 13, 20, 33, 53, ....

The programs for A219479, there is no canonical definition to state claims against.
-/

/-! ## A219479.P2756634840930208053

`A219481(A111495(n+1)-n)`
-/

namespace A219479.P2756634840930208053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219481 (A111495 (n + 1) - (n : ℤ)).toNat

end

end A219479.P2756634840930208053

/-! ## A219479.P6426217957476916861

`A219481(A250267(n+1)%2*A060464(n+1))`
-/

namespace A219479.P6426217957476916861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219481 (Int.tmod (A250267 (n + 1)) 2 * A060464 (n + 1)).toNat

end

end A219479.P6426217957476916861

/-! ## A219479.P13405000762285578447

`A219480(lt[A219493(n+2), A121336(n)])`
-/

namespace A219479.P13405000762285578447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219493 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219480 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219479.P13405000762285578447

/-! ## A219479.P10033588905984911782

`A219481(A317551(n+1))`
-/

namespace A219479.P10033588905984911782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219481 (A317551 (n + 1)).toNat

end

end A219479.P10033588905984911782

/-!
# A219480: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 1, 7, 8, 15, 23, 38, ....

The programs for A219480, there is no canonical definition to state claims against.
-/

/-! ## A219480.P12989041402435273377

`A219484(eq[0, A219484(n+1)])`
-/

namespace A219480.P12989041402435273377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219480.P12989041402435273377

/-! ## A219480.P3750086593141996940

`A219484(lt[A219484(n+1), 1])`
-/

namespace A219480.P3750086593141996940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A219480.P3750086593141996940

/-! ## A219480.P5482600059640354418

`A219484(lt[A219484(n), 1]-1)`
-/

namespace A219480.P5482600059640354418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A219480.P5482600059640354418

/-! ## A219480.P17603477367395474274

`A219484(record[1-A219484(n)+n])`
-/

namespace A219480.P17603477367395474274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219484 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219480.P17603477367395474274

/-! ## A219480.P11826906965637200242

`A219481(A004777(n+1)%A326005(n))`
-/

namespace A219480.P11826906965637200242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219481 (Int.tmod (A004777 (n + 1)) (A326005 n)).toNat

end

end A219480.P11826906965637200242

/-! ## A219480.P16946731625004100318

`A219481(A047595(n+1))%A326005(n+1)`
-/

namespace A219480.P16946731625004100318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219481 (A047595 (n + 1)).toNat) (A326005 (n + 1))

end

end A219480.P16946731625004100318

/-! ## A219480.P2169034360699913516

`gcd(n, A143174(n+1))*A219481(A047595(n+1))`
-/

namespace A219480.P2169034360699913516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A143174 (n + 1)) : ℤ) * A219481 (A047595 (n + 1)).toNat

end

end A219480.P2169034360699913516

/-! ## A219480.P17154359602399144660

`A108888(A108886(n))*A219481(A047595(n+1))`
-/

namespace A219480.P17154359602399144660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108888 (A108886 n).toNat * A219481 (A047595 (n + 1)).toNat

end

end A219480.P17154359602399144660

/-! ## A219480.P4572634878565072315

`A219481(A047595(n+1))%A011199(A193917(n))`
-/

namespace A219480.P4572634878565072315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219481 (A047595 (n + 1)).toNat) (A011199 (A193917 n).toNat)

end

end A219480.P4572634878565072315

/-!
# A219481: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 1, 8, 9, 17, 26, ....

The programs for A219481, there is no canonical definition to state claims against.
-/

/-! ## A219481.P2702020812011633765

`A219482(lt[A172293(n), A083720(n+3)])`
-/

namespace A219481.P2702020812011633765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219482 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219481.P2702020812011633765

/-! ## A219481.P14812218425043634114

`A219482(lt[A000001(n), A351985(2*n+1)])`
-/

namespace A219481.P14812218425043634114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351985 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219482 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219481.P14812218425043634114

/-! ## A219481.P3934643102921646893

`A219482(lt[A007953(n), A351985(2*n+1)])`
-/

namespace A219481.P3934643102921646893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351985 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219482 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219481.P3934643102921646893

/-!
# A219483: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 2, 7, 9, 16, 25, 41, ....

The programs for A219483, there is no canonical definition to state claims against.
-/

/-! ## A219483.P17954211393178472000

`A034544(n+1)!*A219484(A039189(n+1))`
-/

namespace A219483.P17954211393178472000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A034544 (n + 1)).toNat : ℤ) * A219484 (A039189 (n + 1)).toNat

end

end A219483.P17954211393178472000

/-! ## A219483.P8751913854881966719

`A001221(A302485(n+1))*A219484(A039189(n+1))`
-/

namespace A219483.P8751913854881966719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302485 (n + 1)).toNat * A219484 (A039189 (n + 1)).toNat

end

end A219483.P8751913854881966719

/-! ## A219483.P2106485831354824581

`A010054(A014494(2*n))*A219484(A039189(n+1))`
-/

namespace A219483.P2106485831354824581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A014494 (2 * n)).toNat * A219484 (A039189 (n + 1)).toNat

end

end A219483.P2106485831354824581

/-! ## A219483.P15266918811157776348

`A219484(A039189(n+1))%A141214(n)`
-/

namespace A219483.P15266918811157776348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219484 (A039189 (n + 1)).toNat) (A141214 n)

end

end A219483.P15266918811157776348

/-! ## A219483.P18034580672844955787

`val(A376760(A153667(n+1)), A378873(n+1))`
-/

namespace A219483.P18034580672844955787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A376760 (A153667 (n + 1)).toNat).toNat (A378873 (n + 1)).toNat

end

end A219483.P18034580672844955787

/-!
# A219484: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 2, 9, 11, 20, 31, 51, ....

The programs for A219484, there is no canonical definition to state claims against.
-/

/-! ## A219484.P9040921135790330951

`A010180(A343376(n+4))%A010168(n)`
-/

namespace A219484.P9040921135790330951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010180 (A343376 (n + 4)).toNat) (A010168 n)

end

end A219484.P9040921135790330951

/-! ## A219484.P7199148311073314167

`A010180(A224262(n+1))%A010168(n)`
-/

namespace A219484.P7199148311073314167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010180 (A224262 (n + 1)).toNat) (A010168 n)

end

end A219484.P7199148311073314167

/-! ## A219484.P14020321632849738457

`A020639(A003242(n))%A010168(n)`
-/

namespace A219484.P14020321632849738457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A003242 n).toNat) (A010168 n)

end

end A219484.P14020321632849738457

/-! ## A219484.P9378245273534616291

`A005899(A195049(2*n))%A010168(n)`
-/

namespace A219484.P9378245273534616291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005899 (A195049 (2 * n)).toNat) (A010168 n)

end

end A219484.P9378245273534616291

/-!
# A219485: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 3, 7, 10, 17, 27, 44, ....

The programs for A219485, there is no canonical definition to state claims against.
-/

/-! ## A219485.P2835193031482092581

`A219488(eq[0, A219488(n+1)])`
-/

namespace A219485.P2835193031482092581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219485.P2835193031482092581

/-! ## A219485.P16189253982874743752

`A219488(lt[A219488(n+1), 1])`
-/

namespace A219485.P16189253982874743752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A219485.P16189253982874743752

/-! ## A219485.P14608121352560245146

`A219488(lt[A219488(n), 1]-1)`
-/

namespace A219485.P14608121352560245146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A219485.P14608121352560245146

/-! ## A219485.P1528658651198823986

`A219488(record[1-A219488(n)+n])`
-/

namespace A219485.P1528658651198823986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219488 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219485.P1528658651198823986

/-! ## A219485.P14154694848680595129

`A219488(record[1-(A219488(n)-n)])`
-/

namespace A219485.P14154694848680595129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A219488 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219485.P14154694848680595129

/-! ## A219485.P1974410171577462923

`A219488(eq[1, 1-A219488(n)]-1)`
-/

namespace A219485.P1974410171577462923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A219485.P1974410171577462923

/-! ## A219485.P16027632576530946154

`A219488(A111495(n+1)-n)`
-/

namespace A219485.P16027632576530946154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (A111495 (n + 1) - (n : ℤ)).toNat

end

end A219485.P16027632576530946154

/-!
# A219486: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 3, 8, 11, 19, 30, 49, ....

The programs for A219486, there is no canonical definition to state claims against.
-/

/-! ## A219486.P7023385642846739732

`A060632(A050228(n+1))%A010145(n)`
-/

namespace A219486.P7023385642846739732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060632 (A050228 (n + 1)).toNat) (A010145 n)

end

end A219486.P7023385642846739732

/-! ## A219486.P18098735183289899771

`and(A210850(A340060(n+3)), A340061(n+1))`
-/

namespace A219486.P18098735183289899771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A210850 (A340060 (n + 3)).toNat) (A340061 (n + 1))

end

end A219486.P18098735183289899771

/-! ## A219486.P18307563238030007484

`A097331(A085058(A070885(n+1)))`
-/

namespace A219486.P18307563238030007484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A085058 (A070885 (n + 1)).toNat).toNat

end

end A219486.P18307563238030007484

/-! ## A219486.P11246332916371361915

`A115060(A027379(n))%A040217(n)`
-/

namespace A219486.P11246332916371361915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115060 (A027379 n).toNat) (A040217 n)

end

end A219486.P11246332916371361915

/-! ## A219486.P18413350073382071982

`and(A003842(3*n+2), A059260(A324694(3*n+1)))`
-/

namespace A219486.P18413350073382071982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003842 (3 * n + 2)) (A059260 (A324694 (3 * n + 1)).toNat)

end

end A219486.P18413350073382071982

/-!
# A219487: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 4, 3, 7, 10, 17, 27, ....

The programs for A219487, there is no canonical definition to state claims against.
-/

/-! ## A219487.P3079757872238300374

`A219492(eq[0, A219488(n+2)])`
-/

namespace A219487.P3079757872238300374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219487.P3079757872238300374

/-! ## A219487.P1809150738680752085

`A219492(lt[A219488(n+1), 1])`
-/

namespace A219487.P1809150738680752085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219492 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A219487.P1809150738680752085

/-! ## A219487.P15914481638718216514

`A219492(lt[A219488(n), 1]-1)`
-/

namespace A219487.P15914481638718216514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219488 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219492 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A219487.P15914481638718216514

/-! ## A219487.P6343569295792858477

`A028958(A056371(n+1))%3`
-/

namespace A219487.P6343569295792858477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028958 (A056371 (n + 1)).toNat) 3

end

end A219487.P6343569295792858477

/-! ## A219487.P15326463033695723015

`A320655(A279958(n)+A139250(n))`
-/

namespace A219487.P15326463033695723015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A279958 n + A139250 n).toNat

end

end A219487.P15326463033695723015

/-!
# A219488: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 4, 9, 13, 22, 35, 57, ....

The programs for A219488, there is no canonical definition to state claims against.
-/

/-! ## A219488.P8668509751232238190

`and(A302242(2*n+3), A327125(n+3))`
-/

namespace A219488.P8668509751232238190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A302242 (2 * n + 3)) (A327125 (n + 3))

end

end A219488.P8668509751232238190

/-! ## A219488.P14042735710480724921

`and(A112607(A306600(n)), A235151(n+1))`
-/

namespace A219488.P14042735710480724921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112607 (A306600 n).toNat) (A235151 (n + 1))

end

end A219488.P14042735710480724921

/-! ## A219488.P5275398404606935819

`A019269(A258023(n+1))^A296193(A082991(n+1))`
-/

namespace A219488.P5275398404606935819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019269 (A258023 (n + 1)).toNat : ℚ) ^ (A296193 (A082991 (n + 1)).toNat : ℤ)

end

end A219488.P5275398404606935819

/-! ## A219488.P10381954668769669483

`A193796(A246647(n+1))%3`
-/

namespace A219488.P10381954668769669483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193796 (A246647 (n + 1)).toNat) 3

end

end A219488.P10381954668769669483

/-! ## A219488.P11341573613991571390

`val(A188434(A084920(n+1)), 5)`
-/

namespace A219488.P11341573613991571390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A188434 (A084920 (n + 1)).toNat).toNat 5

end

end A219488.P11341573613991571390

/-!
# A219489: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 5, 1, 6, 7, 13, 20, ....

The programs for A219489, there is no canonical definition to state claims against.
-/

/-! ## A219489.P4881155359143632988

`A051168(n+11)%A063647(A214271(n+9))`
-/

namespace A219489.P4881155359143632988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051168 (n + 11)) (A063647 (A214271 (n + 9)).toNat)

end

end A219489.P4881155359143632988

/-! ## A219489.P4078079542061813371

`A077267(A008611(A022096(n)))`
-/

namespace A219489.P4078079542061813371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A008611 (A022096 n).toNat).toNat

end

end A219489.P4078079542061813371

/-! ## A219489.P14490760700532113100

`A219493(lt[A219539(3*(n+3)), A219514(n+1)])`
-/

namespace A219489.P14490760700532113100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219539 (3 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219493 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219489.P14490760700532113100

/-! ## A219489.P13324815933336857598

`A219493(lt[A219539(3*(n+3)), A219520(n+1)])`
-/

namespace A219489.P13324815933336857598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219539 (3 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219493 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219489.P13324815933336857598

/-!
# A219490: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 5, 2, 7, 9, 16, 25, ....

The programs for A219490, there is no canonical definition to state claims against.
-/

/-! ## A219490.P12907816242319185176

`A209032(n+1)%A166198(A135814(n))`
-/

namespace A219490.P12907816242319185176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209032 (n + 1)) (A166198 (A135814 n).toNat)

end

end A219490.P12907816242319185176

/-! ## A219490.P8452517599191473788

`A089309(lcm(A156815(n), A349782(n+2)))`
-/

namespace A219490.P8452517599191473788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.lcm (A156815 n) (A349782 (n + 2)))

end

end A219490.P8452517599191473788

/-! ## A219490.P18241562827807032311

`A333627(A374700(n)*A375124(3*n+1))`
-/

namespace A219490.P18241562827807032311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A374700 n * A375124 (3 * n + 1)).toNat

end

end A219490.P18241562827807032311

/-! ## A219490.P14909866223461393399

`A263635(A004474(n)+12)`
-/

namespace A219490.P14909866223461393399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263635 (A004474 n + 12).toNat

end

end A219490.P14909866223461393399

/-! ## A219490.P9205878219533903564

`A269911(A004479(n))%5`
-/

namespace A219490.P9205878219533903564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269911 (A004479 n).toNat) 5

end

end A219490.P9205878219533903564

/-!
# A219491: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 5, 3, 8, 11, 19, 30, ....

The programs for A219491, there is no canonical definition to state claims against.
-/

/-! ## A219491.P12837972816809287537

`A125203(A151795(n)+A005247(n))`
-/

namespace A219491.P12837972816809287537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (A151795 n + A005247 n).toNat

end

end A219491.P12837972816809287537

/-! ## A219491.P11241314442325024690

`A125203(A005247(n)-A151795(n))`
-/

namespace A219491.P11241314442325024690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (A005247 n - A151795 n).toNat

end

end A219491.P11241314442325024690

/-! ## A219491.P17308801085535961602

`A036552(A247260(n+1))%A260454(n+1)`
-/

namespace A219491.P17308801085535961602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036552 (A247260 (n + 1)).toNat) (A260454 (n + 1))

end

end A219491.P17308801085535961602

/-! ## A219491.P172060286139680734

`A287240(7*A004136(n+2))`
-/

namespace A219491.P172060286139680734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (7 * A004136 (n + 2)).toNat

end

end A219491.P172060286139680734

/-! ## A219491.P15289195741225375904

`A191250(A055048(n+1)%A046410(n+1))`
-/

namespace A219491.P15289195741225375904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (Int.tmod (A055048 (n + 1)) (A046410 (n + 1))).toNat

end

end A219491.P15289195741225375904

/-!
# A219492: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 5, 4, 9, 13, 22, 35, ....

The programs for A219492, there is no canonical definition to state claims against.
-/

/-! ## A219492.P9758904465342443024

`val(A020632(2*(n+1))+3, 10)`
-/

namespace A219492.P9758904465342443024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020632 (2 * (n + 1)) + 3).toNat 10

end

end A219492.P9758904465342443024

/-! ## A219492.P9266698968597987692

`A200245(gcd(A000194(n), A246119(n)))`
-/

namespace A219492.P9266698968597987692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200245 (Int.gcd (A000194 n) (A246119 n))

end

end A219492.P9266698968597987692

/-! ## A219492.P3158587173146251150

`A083893(A273425(3*n+2)*A273429(2*n+3))`
-/

namespace A219492.P3158587173146251150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A273425 (3 * n + 2) * A273429 (2 * n + 3)).toNat

end

end A219492.P3158587173146251150

/-! ## A219492.P7620913275859638084

`A092078(p?[A264994(n)]+1)`
-/

namespace A219492.P7620913275859638084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092078 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A219492.P7620913275859638084

/-! ## A219492.P683749538120239695

`val(A316841(A068564(n+1)), 4)`
-/

namespace A219492.P683749538120239695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A316841 (A068564 (n + 1)).toNat).toNat 4

end

end A219492.P683749538120239695

/-!
# A219493: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 6, 1, 7, 8, 15, 23, ....

The programs for A219493, there is no canonical definition to state claims against.
-/

/-! ## A219493.P15676343552867568018

`A219494(floor(A306683(2*n+1)/4))`
-/

namespace A219493.P15676343552867568018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219494 ⌊(A306683 (2 * n + 1) : ℚ) / 4⌋.toNat

end

end A219493.P15676343552867568018

/-! ## A219493.P11287641140672831612

`A219494(lt[A179805(n), A219533(2*(n+1))])`
-/

namespace A219493.P11287641140672831612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219533 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219494 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219493.P11287641140672831612

/-! ## A219493.P2262912091933865023

`A219494(lt[A354934(n+1), A354965(3*n+2)])`
-/

namespace A219493.P2262912091933865023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354965 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219494 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219493.P2262912091933865023

/-! ## A219493.P3844611035502738358

`A219494(lt[A219484(2*n+1), A219512(2*n+1)])`
-/

namespace A219493.P3844611035502738358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219484 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219512 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219494 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219493.P3844611035502738358

/-! ## A219493.P10371118264735906416

`A219494(lt[A219495(n), A219512(2*n+3)])`
-/

namespace A219493.P10371118264735906416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219512 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219494 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219493.P10371118264735906416

/-!
# A219494: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 7, 1, 8, 9, 17, 26, ....

The programs for A219494, there is no canonical definition to state claims against.
-/

/-! ## A219494.P9630972987618638672

`A219496(A000196(∑[A256680(n)]))`
-/

namespace A219494.P9630972987618638672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219496 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A219494.P9630972987618638672

/-! ## A219494.P4053685462723979113

`A219496(A037474(n)%A252479(n))`
-/

namespace A219494.P4053685462723979113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219496 (Int.tmod (A037474 n) (A252479 n)).toNat

end

end A219494.P4053685462723979113

/-!
# A219495: Number of representations of n as a sum of distinct elements of the generalized Fibonacci sequence beginning 7, 2, 9, 11, 20, 31, 51, ....

The programs for A219495, there is no canonical definition to state claims against.
-/

/-! ## A219495.P16081703373197301607

`A053692(or(A095321(n+1), A095324(n+1)))`
-/

namespace A219495.P16081703373197301607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (Int.lor (A095321 (n + 1)) (A095324 (n + 1))).toNat

end

end A219495.P16081703373197301607

/-! ## A219495.P1497410737341435062

`A108731(A008288(2*n+3)*A131689(n))`
-/

namespace A219495.P1497410737341435062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (A008288 (2 * n + 3) * A131689 n).toNat

end

end A219495.P1497410737341435062

/-! ## A219495.P16882899551984919343

`A153719(n+1)%A165003(A000037(n+1))`
-/

namespace A219495.P16882899551984919343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153719 (n + 1)) (A165003 (A000037 (n + 1)).toNat)

end

end A219495.P16882899551984919343

/-! ## A219495.P5156058426166942169

`A186825(2*n+1)%A058288(A189398(n+1))`
-/

namespace A219495.P5156058426166942169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186825 (2 * n + 1)) (A058288 (A189398 (n + 1)).toNat)

end

end A219495.P5156058426166942169

/-! ## A219495.P15249925468895261372

`A007814(A235117(2*n+1)+1)`
-/

namespace A219495.P15249925468895261372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A235117 (2 * n + 1) + 1).toNat

end

end A219495.P15249925468895261372

/-!
# A219497: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X n array.

The programs for A219497, there is no canonical definition to state claims against.
-/

/-! ## A219497.P16671586135710068947

`A219502(∑[4*n]+1)`
-/

namespace A219497.P16671586135710068947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219497.P16671586135710068947

/-! ## A219497.P10722571445567363575

`record[A219502(Δ[A235355(n)])]`
-/

namespace A219497.P10722571445567363575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219497.P10722571445567363575

/-! ## A219497.P16343126437142615791

`record[A219502(A330613(n+1))]`
-/

namespace A219497.P16343126437142615791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219497.P16343126437142615791

/-! ## A219497.P3229657517996916433

`A219502(A001844(n))+char[20]`
-/

namespace A219497.P3229657517996916433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219497.P3229657517996916433

/-! ## A219497.P3481136853021942746

`record[gcd(A003987(n), A219502(n+1))]`
-/

namespace A219497.P3481136853021942746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A219502 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219497.P3481136853021942746

/-!
# A219498: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 4 array.

The programs for A219498, the canonical program `A219498.P8036053599156951691` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219498 has offset 1).

The definition of A219498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219498.P8036053599156951691

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=7, a(2)=18, a(3)=35, a(4)=58, a(5)=88`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219498

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8036053599156951691.Spec : Prop :=
  ∀ n, P8036053599156951691.a n = A219498 (n + 1)

theorem P8036053599156951691.correct : P8036053599156951691.Spec := by
  intro n
  simp only [A219498, Nat.add_sub_cancel]

end A219498

/-! ## A219498.P954407261069874391

`A008486(abs(1-n))+A005286(n)`
-/

namespace A219498.P954407261069874391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 |1 - (n : ℤ)|.toNat + A005286 n

end

end A219498.P954407261069874391

namespace A219498

/-- `A008486(abs(1-n))+A005286(n)` -/
def P954407261069874391.Spec : Prop :=
  ∀ n, P954407261069874391.a n = A219498 (n + 1)

end A219498

/-! ## A219498.P11665297662089904450

`∑[A167614(n+1)-A095121(C(2, n))]`
-/

namespace A219498.P11665297662089904450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1) - A095121 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219498.P11665297662089904450

namespace A219498

/-- `∑[A167614(n+1)-A095121(C(2, n))]` -/
def P11665297662089904450.Spec : Prop :=
  ∀ n, P11665297662089904450.a n = A219498 (n + 1)

end A219498

/-! ## A219498.P18155201243111489908

`∑[A055998(n)+6-A095121(C(2, n))]`
-/

namespace A219498.P18155201243111489908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + 6 - A095121 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219498.P18155201243111489908

namespace A219498

/-- `∑[A055998(n)+6-A095121(C(2, n))]` -/
def P18155201243111489908.Spec : Prop :=
  ∀ n, P18155201243111489908.a n = A219498 (n + 1)

end A219498

/-! ## A219498.P5358635550493730645

`∑[A167499(n)+n-A095121(C(2, n))]`
-/

namespace A219498.P5358635550493730645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + (n : ℤ) - A095121 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219498.P5358635550493730645

namespace A219498

/-- `∑[A167499(n)+n-A095121(C(2, n))]` -/
def P5358635550493730645.Spec : Prop :=
  ∀ n, P5358635550493730645.a n = A219498 (n + 1)

end A219498

/-! ## A219498.P16457053836329362747

`∑[∑[n+4]]-A285766(n+1)`
-/

namespace A219498.P16457053836329362747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A285766 (n + 1)

end

end A219498.P16457053836329362747

namespace A219498

/-- `∑[∑[n+4]]-A285766(n+1)` -/
def P16457053836329362747.Spec : Prop :=
  ∀ n, P16457053836329362747.a n = A219498 (n + 1)

end A219498

/-! ## A219498.P9094367247369668809

`A292576(A113127(n))+A008778(n)`
-/

namespace A219498.P9094367247369668809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (A113127 n).toNat + A008778 n

end

end A219498.P9094367247369668809

namespace A219498

/-- `A292576(A113127(n))+A008778(n)` -/
def P9094367247369668809.Spec : Prop :=
  ∀ n, P9094367247369668809.a n = A219498 (n + 1)

end A219498

/-!
# A219499: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..1 n X 5 array.

The programs for A219499, the canonical program `A219499.P12666024461612089075` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219499 has offset 1).

The definition of A219499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219499.P12666024461612089075

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=5, a(1)=9, a(2)=26, a(3)=58, a(4)=107, a(5)=179, a(6)=281`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219499

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12666024461612089075.Spec : Prop :=
  ∀ n, P12666024461612089075.a n = A219499 (n + 1)

theorem P12666024461612089075.correct : P12666024461612089075.Spec := by
  intro n
  simp only [A219499, Nat.add_sub_cancel]

end A219499

/-! ## A219499.P819178592085054871

`A219502(∑[2*a(n-1)-a(n-2)])` with `a(0)=15, a(1)=5, a(2)=6`
-/

namespace A219499.P819178592085054871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 5, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219499.P819178592085054871

namespace A219499

/-- `A219502(∑[2*a(n-1)-a(n-2)])` -/
def P819178592085054871.Spec : Prop :=
  ∀ n, P819178592085054871.a n = A219499 (n + 1)

end A219499

/-! ## A219499.P12809093297802044209

`A219502(A167499(n+3))`
-/

namespace A219499.P12809093297802044209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A167499 (n + 3)).toNat

end

end A219499.P12809093297802044209

namespace A219499

/-- `A219502(A167499(n+3))` -/
def P12809093297802044209.Spec : Prop :=
  ∀ n, P12809093297802044209.a n = A219499 (n + 1)

end A219499

/-! ## A219499.P13139586340626387598

`A219502(A077169(n+5))`
-/

namespace A219499.P13139586340626387598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A077169 (n + 5)).toNat

end

end A219499.P13139586340626387598

namespace A219499

/-- `A219502(A077169(n+5))` -/
def P13139586340626387598.Spec : Prop :=
  ∀ n, P13139586340626387598.a n = A219499 (n + 1)

end A219499

/-! ## A219499.P17279976614098066903

`A219502(A155212(n)+13)`
-/

namespace A219499.P17279976614098066903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A155212 n + 13).toNat

end

end A219499.P17279976614098066903

namespace A219499

/-- `A219502(A155212(n)+13)` -/
def P17279976614098066903.Spec : Prop :=
  ∀ n, P17279976614098066903.a n = A219499 (n + 1)

end A219499

