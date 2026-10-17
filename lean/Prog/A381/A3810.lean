import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A381001: Georges Pfeffermann's 1890 bimagic square of order 8, read by rows.

The programs for A381001, there is no canonical definition to state claims against.
-/

/-! ## A381001.P9584940113741578123

`A002024(A132654(n+1))`
-/

namespace A381001.P9584940113741578123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A132654 (n + 1)).toNat

end

end A381001.P9584940113741578123

/-!
# A381003: Lexicographically earliest sequence with a(0) = 0 and a(n) = a(n + a(n)) - a(n - a(n)) > 0.

The programs for A381003, there is no canonical definition to state claims against.
-/

/-! ## A381003.P13281129391753348774

`A084558(A157177(2*(n+1))%A000079(n))`
-/

namespace A381003.P13281129391753348774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.tmod (A157177 (2 * (n + 1))) (A000079 n)).toNat

end

end A381003.P13281129391753348774

/-! ## A381003.P9967879837882714725

`A050266(A165136(n+1))%(round(n/2)+1)`
-/

namespace A381003.P9967879837882714725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050266 (A165136 (n + 1)).toNat) (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1)

end

end A381003.P9967879837882714725

/-! ## A381003.P13157765106339359620

`gcd(∑[-n*(-1)^n], A353846(A135768(n+1)))`
-/

namespace A381003.P13157765106339359620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A353846 (A135768 (n + 1)).toNat)

end

end A381003.P13157765106339359620

/-! ## A381003.P4536860421047546605

`gcd(A001057(n), A047462(A108678(n)))`
-/

namespace A381003.P4536860421047546605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 n) (A047462 (A108678 n).toNat)

end

end A381003.P4536860421047546605

/-! ## A381003.P1492790844712141494

`A110654(n)^A339885(A098359(n+1))`
-/

namespace A381003.P1492790844712141494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 n : ℚ) ^ (A339885 (A098359 (n + 1)).toNat : ℤ)

end

end A381003.P1492790844712141494

/-!
# A381004: Primes ending in 777.

The programs for A381004, there is no canonical definition to state claims against.
-/

/-! ## A381004.P10390487762660057240

`1000*A102343(n+1)+777`
-/

namespace A381004.P10390487762660057240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1000 * A102343 (n + 1) + 777

end

end A381004.P10390487762660057240

/-! ## A381004.P9453716032553021899

`∩[A141928(n+1), A167282(n+1)]`
-/

namespace A381004.P9453716032553021899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381004.P9453716032553021899

/-! ## A381004.P5979656843500370233

`∩[A142466(n+1), A167282(n+1)]`
-/

namespace A381004.P5979656843500370233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381004.P5979656843500370233

/-! ## A381004.P4610728408264160818

`filter[A167282(n+1), A185708(#)]`
-/

namespace A381004.P4610728408264160818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A381004.P4610728408264160818

/-!
# A381005: Ordered short legs of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381005, there is no canonical definition to state claims against.
-/

/-! ## A381005.P10216304888051776675

`A165665(Δ[n²])-1`
-/

namespace A381005.P10216304888051776675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165665 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A381005.P10216304888051776675

/-! ## A381005.P13143356213939459031

`A083420(n)*A199116(n)`
-/

namespace A381005.P13143356213939459031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A199116 n

end

end A381005.P13143356213939459031

/-! ## A381005.P8261004963173158902

`A014551(2*n+1)*A199116(n)`
-/

namespace A381005.P8261004963173158902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 * n + 1) * A199116 n

end

end A381005.P8261004963173158902

/-! ## A381005.P727981316591140324

`A051049(2*n+1)*A199116(n)`
-/

namespace A381005.P727981316591140324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (2 * n + 1) * A199116 n

end

end A381005.P727981316591140324

/-! ## A381005.P10146227896823032137

`A083420(n)*A181565(2*n+1)`
-/

namespace A381005.P10146227896823032137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A181565 (2 * n + 1)

end

end A381005.P10146227896823032137

/-! ## A381005.P4168822069703019342

`A083420(n)*A280173(2*n+1)`
-/

namespace A381005.P4168822069703019342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A280173 (2 * n + 1)

end

end A381005.P4168822069703019342

/-! ## A381005.P495145052549102702

`A199116(n)*A280293(2*n+1)`
-/

namespace A381005.P495145052549102702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199116 n * A280293 (2 * n + 1)

end

end A381005.P495145052549102702

/-! ## A381005.P10745834119953238289

`A096045(2*n+1)-A024036(n+1)`
-/

namespace A381005.P10745834119953238289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096045 (2 * n + 1) - A024036 (n + 1)

end

end A381005.P10745834119953238289

/-! ## A381005.P8954859079158270784

`A164346(2*n+1)-A052539(n+1)`
-/

namespace A381005.P8954859079158270784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 (2 * n + 1) - A052539 (n + 1)

end

end A381005.P8954859079158270784

/-! ## A381005.P5717063343018454811

`A110594(2*(n+1))-A092896(n+2)`
-/

namespace A381005.P5717063343018454811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110594 (2 * (n + 1)) - A092896 (n + 2)

end

end A381005.P5717063343018454811

/-!
# A381006: Ordered long legs of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381006, there is no canonical definition to state claims against.
-/

/-! ## A381006.P1609460036636902470

`(4^(n+1)+1)²-1`
-/

namespace A381006.P1609460036636902470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) + 1) ^ 2 : ℤ) - 1

end

end A381006.P1609460036636902470

/-! ## A381006.P7486837611831892264

`xor(1, (4^(n+1)+1)²)`
-/

namespace A381006.P7486837611831892264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((4 ^ (n + 1) + 1) ^ 2)

end

end A381006.P7486837611831892264

/-! ## A381006.P8633144396156975835

`A242985(2*(n+1))`
-/

namespace A381006.P8633144396156975835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 (2 * (n + 1))

end

end A381006.P8633144396156975835

/-! ## A381006.P7128725068607589491

`A132390(2*n+3)`
-/

namespace A381006.P7128725068607589491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132390 (2 * n + 3)

end

end A381006.P7128725068607589491

/-! ## A381006.P14910601545615816871

`A225826(2*n+3)`
-/

namespace A381006.P14910601545615816871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225826 (2 * n + 3)

end

end A381006.P14910601545615816871

/-! ## A381006.P4141309305722984945

`A290075(4*(n+2))`
-/

namespace A381006.P4141309305722984945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (4 * (n + 2))

end

end A381006.P4141309305722984945

/-! ## A381006.P7687057145652302519

`8*A233196(n+2)`
-/

namespace A381006.P7687057145652302519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A233196 (n + 2)

end

end A381006.P7687057145652302519

/-! ## A381006.P17577140501028584321

`2*A028403(2*(n+1))`
-/

namespace A381006.P17577140501028584321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028403 (2 * (n + 1))

end

end A381006.P17577140501028584321

/-! ## A381006.P13138920895512435182

`3*A083086(2*(n+1))`
-/

namespace A381006.P13138920895512435182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083086 (2 * (n + 1))

end

end A381006.P13138920895512435182

/-!
# A381007: Ordered hypotenuses of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381007, there is no canonical definition to state claims against.
-/

/-! ## A381007.P9795653594992707231

`3*Δ[A007583(n)²]+1`
-/

namespace A381007.P9795653594992707231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) + 1

end

end A381007.P9795653594992707231

/-! ## A381007.P3175412939104646536

`A199115(2*n+1)+A000302(n+1)`
-/

namespace A381007.P3175412939104646536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199115 (2 * n + 1) + A000302 (n + 1)

end

end A381007.P3175412939104646536

/-! ## A381007.P15496196049683218347

`A028400(2*n+1)+A000302(n+1)²`
-/

namespace A381007.P15496196049683218347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028400 (2 * n + 1) + A000302 (n + 1) ^ 2

end

end A381007.P15496196049683218347

/-! ## A381007.P1299630488807281838

`A028400(2*n+1)+A087288(2*n+1)²`
-/

namespace A381007.P1299630488807281838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028400 (2 * n + 1) + A087288 (2 * n + 1) ^ 2

end

end A381007.P1299630488807281838

/-! ## A381007.P10106429617310988777

`A028400(2*n+1)+A000302(A005843(n+1))`
-/

namespace A381007.P10106429617310988777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028400 (2 * n + 1) + A000302 (A005843 (n + 1)).toNat

end

end A381007.P10106429617310988777

/-! ## A381007.P514244700075420862

`A083575(A004275(2*(n+1)))+A000079(2*(n+1))`
-/

namespace A381007.P514244700075420862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (A004275 (2 * (n + 1))).toNat + A000079 (2 * (n + 1))

end

end A381007.P514244700075420862

/-!
# A381008: Ordered perimeters of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381008, there is no canonical definition to state claims against.
-/

/-! ## A381008.P8297092705934757491

`A381005(n+1)+A381006(n+1)+A381007(n+1)`
-/

namespace A381008.P8297092705934757491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381005 (n + 1) + A381006 (n + 1) + A381007 (n + 1)

end

end A381008.P8297092705934757491

/-! ## A381008.P17434246252440110707

`(3*4^(n+1)+2)*4^(n+1)`
-/

namespace A381008.P17434246252440110707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * 4 ^ (n + 1) + 2) * 4 ^ (n + 1)

end

end A381008.P17434246252440110707

/-! ## A381008.P10648804700140680085

`floor((A007283(2*(n+1))+1)²/3)`
-/

namespace A381008.P10648804700140680085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A007283 (2 * (n + 1)) + 1) ^ 2 : ℚ) / 3⌋

end

end A381008.P10648804700140680085

/-! ## A381008.P9592833803553602236

`A007581(2*(n+2))+A001045(A008574(n+1))`
-/

namespace A381008.P9592833803553602236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (2 * (n + 2)) + A001045 (A008574 (n + 1)).toNat

end

end A381008.P9592833803553602236

/-! ## A381008.P12253264579562965827

`A004171(n+1)+A002023(n+1)*A004171(n)`
-/

namespace A381008.P12253264579562965827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + A002023 (n + 1) * A004171 n

end

end A381008.P12253264579562965827

/-! ## A381008.P12300338789319807124

`A000302(n+1)+A000302(n+1)*A140660(n+1)`
-/

namespace A381008.P12300338789319807124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + A000302 (n + 1) * A140660 (n + 1)

end

end A381008.P12300338789319807124

/-! ## A381008.P5715182520298794560

`A004171(n+1)+A004171(n+1)*A164908(n+1)`
-/

namespace A381008.P5715182520298794560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + A004171 (n + 1) * A164908 (n + 1)

end

end A381008.P5715182520298794560

/-!
# A381009: Ordered areas of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

The programs for A381009, there is no canonical definition to state claims against.
-/

/-! ## A381009.P15990344275163368300

`A381005(n+1)*A381006(n+1)/2`
-/

namespace A381009.P15990344275163368300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381005 (n + 1) * A381006 (n + 1) : ℚ) / 2

end

end A381009.P15990344275163368300

/-!
# A381015: a(n) = n + (number of trailing 0's of n).

The programs for A381015, the canonical program `A381015.P5061899489732795646` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381015 has offset 1).

The definition of A381015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381015.P5061899489732795646

`val(n+1, 10)+1+n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A381015

/-- `val(n+1, 10)+1+n` -/
def P5061899489732795646.Spec : Prop :=
  ∀ n, (P5061899489732795646.a n : ℤ) = A381015 (n + 1)

theorem P5061899489732795646.correct : P5061899489732795646.Spec := by
  intro n
  simp only [A381015, Nat.add_sub_cancel]

end A381015

/-! ## A381015.P13369225170413956021

`A160094(n+1)+n`
-/

namespace A381015.P13369225170413956021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1) + (n : ℤ)

end

end A381015.P13369225170413956021

namespace A381015

/-- `A160094(n+1)+n` -/
def P13369225170413956021.Spec : Prop :=
  ∀ n, P13369225170413956021.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P14444529049226625823

`Δ[A054899(n)]+n+1`
-/

namespace A381015.P14444529049226625823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A381015.P14444529049226625823

namespace A381015

/-- `Δ[A054899(n)]+n+1` -/
def P14444529049226625823.Spec : Prop :=
  ∀ n, P14444529049226625823.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P5530151247894756150

`A122840(n+1)+1+n`
-/

namespace A381015.P5530151247894756150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1) + 1 + (n : ℤ)

end

end A381015.P5530151247894756150

namespace A381015

/-- `A122840(n+1)+1+n` -/
def P5530151247894756150.Spec : Prop :=
  ∀ n, P5530151247894756150.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P9427151249176874995

`Δ[A065039(n)]+n`
-/

namespace A381015.P9427151249176874995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A381015.P9427151249176874995

namespace A381015

/-- `Δ[A065039(n)]+n` -/
def P9427151249176874995.Spec : Prop :=
  ∀ n, P9427151249176874995.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P17992837148474766966

`A055642(A251984(n+1))+n`
-/

namespace A381015.P17992837148474766966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A251984 (n + 1)).toNat + (n : ℤ)

end

end A381015.P17992837148474766966

namespace A381015

/-- `A055642(A251984(n+1))+n` -/
def P17992837148474766966.Spec : Prop :=
  ∀ n, P17992837148474766966.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P3356267716052571800

`A065039(n+1)-A054899(n)`
-/

namespace A381015.P3356267716052571800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (n + 1) - A054899 n

end

end A381015.P3356267716052571800

namespace A381015

/-- `A065039(n+1)-A054899(n)` -/
def P3356267716052571800.Spec : Prop :=
  ∀ n, P3356267716052571800.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P5310354886375054837

`A122840(A008592(n+1))+n`
-/

namespace A381015.P5310354886375054837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A008592 (n + 1)).toNat + (n : ℤ)

end

end A381015.P5310354886375054837

namespace A381015

/-- `A122840(A008592(n+1))+n` -/
def P5310354886375054837.Spec : Prop :=
  ∀ n, P5310354886375054837.a n = A381015 (n + 1)

end A381015

/-! ## A381015.P3440854937042475209

`gcd(2, A118762(n+1))+n`
-/

namespace A381015.P3440854937042475209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A118762 (n + 1)) + n

end

end A381015.P3440854937042475209

namespace A381015

/-- `gcd(2, A118762(n+1))+n` -/
def P3440854937042475209.Spec : Prop :=
  ∀ n, (P3440854937042475209.a n : ℤ) = A381015 (n + 1)

end A381015

/-! ## A381015.P4369802433932185886

`A340184(A028440(n+1))`
-/

namespace A381015.P4369802433932185886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340184 (A028440 (n + 1)).toNat

end

end A381015.P4369802433932185886

namespace A381015

/-- `A340184(A028440(n+1))` -/
def P4369802433932185886.Spec : Prop :=
  ∀ n, P4369802433932185886.a n = A381015 (n + 1)

end A381015

/-!
# A381016: Expansion of e.g.f. -log(1-x) * sin(x).

The programs for A381016, there is no canonical definition to state claims against.
-/

/-! ## A381016.P17865360376779275779

`A165585(A279562(n))+A001349(n)`
-/

namespace A381016.P17865360376779275779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165585 (A279562 n).toNat + A001349 n

end

end A381016.P17865360376779275779

/-! ## A381016.P1188201009882617834

`A344608(n)+A284272(A151490(n))`
-/

namespace A381016.P1188201009882617834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344608 n + A284272 (A151490 n).toNat

end

end A381016.P1188201009882617834

/-!
# A381017: Prime terms of A000328.

The programs for A381017, the canonical program `A381017.P10834525739329830361` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381017 has offset 1).

The definition of A381017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381017.P10834525739329830361

`p?[A000328(n)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A381017

/-- `p?[A000328(n)]` -/
def P10834525739329830361.Spec : Prop :=
  ∀ n, P10834525739329830361.a n = A381017 (n + 1)

theorem P10834525739329830361.correct : P10834525739329830361.Spec := by
  intro n
  simp only [A381017, Nat.add_sub_cancel]

end A381017

/-! ## A381017.P15236330690094970895

`p?[∑[A036693(n)]]`
-/

namespace A381017.P15236330690094970895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P15236330690094970895

namespace A381017

/-- `p?[∑[A036693(n)]]` -/
def P15236330690094970895.Spec : Prop :=
  ∀ n, P15236330690094970895.a n = A381017 (n + 1)

end A381017

/-! ## A381017.P5409390584089917334

`p?[A053411(2*n)]`
-/

namespace A381017.P5409390584089917334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P5409390584089917334

namespace A381017

/-- `p?[A053411(2*n)]` -/
def P5409390584089917334.Spec : Prop :=
  ∀ n, P5409390584089917334.a n = A381017 (n + 1)

end A381017

/-! ## A381017.P5853426439380457757

`p?[record[A093836(n+1)]]`
-/

namespace A381017.P5853426439380457757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381017.P5853426439380457757

namespace A381017

/-- `p?[record[A093836(n+1)]]` -/
def P5853426439380457757.Spec : Prop :=
  ∀ n, P5853426439380457757.a n = A381017 (n + 1)

end A381017

/-! ## A381017.P4258547209493943195

`∩[A002144(n+1), A000328(n)]`
-/

namespace A381017.P4258547209493943195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P4258547209493943195

namespace A381017

/-- `∩[A002144(n+1), A000328(n)]` -/
def P4258547209493943195.Spec : Prop :=
  ∀ n, (P4258547209493943195.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P14531718154230850236

`∩[A002313(n+1), A000328(n)]`
-/

namespace A381017.P14531718154230850236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P14531718154230850236

namespace A381017

/-- `∩[A002313(n+1), A000328(n)]` -/
def P14531718154230850236.Spec : Prop :=
  ∀ n, (P14531718154230850236.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P14244912238152552432

`∩[A120960(n+1), A000328(n)]`
-/

namespace A381017.P14244912238152552432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P14244912238152552432

namespace A381017

/-- `∩[A120960(n+1), A000328(n)]` -/
def P14244912238152552432.Spec : Prop :=
  ∀ n, (P14244912238152552432.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P15712586326109817491

`∩[A172480(n+1), A000328(n)]`
-/

namespace A381017.P15712586326109817491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P15712586326109817491

namespace A381017

/-- `∩[A172480(n+1), A000328(n)]` -/
def P15712586326109817491.Spec : Prop :=
  ∀ n, (P15712586326109817491.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P17199404512142861723

`∩[A175768(n+1), A000328(n)]`
-/

namespace A381017.P17199404512142861723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P17199404512142861723

namespace A381017

/-- `∩[A175768(n+1), A000328(n)]` -/
def P17199404512142861723.Spec : Prop :=
  ∀ n, (P17199404512142861723.a n : ℤ) = A381017 (n + 1)

end A381017

/-! ## A381017.P10753316330239430666

`∩[A266987(n+1), A000328(n)]`
-/

namespace A381017.P10753316330239430666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381017.P10753316330239430666

namespace A381017

/-- `∩[A266987(n+1), A000328(n)]` -/
def P10753316330239430666.Spec : Prop :=
  ∀ n, (P10753316330239430666.a n : ℤ) = A381017 (n + 1)

end A381017

/-!
# A381018: a(n) is the number of primes in A000328 for r <= n.

The programs for A381018, the canonical program `A381018.P990383455539555304` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381018 has offset 1).

The definition of A381018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381018.P990383455539555304

`∑[A010051(A000328(n+1))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A381018

/-- `∑[A010051(A000328(n+1))]` -/
def P990383455539555304.Spec : Prop :=
  ∀ n, P990383455539555304.a n = A381018 (n + 1)

theorem P990383455539555304.correct : P990383455539555304.Spec := by
  intro n
  simp only [A381018, Nat.add_sub_cancel]

end A381018

/-!
# A381019: a(n) is the smallest positive integer not yet in the sequence such that a(n) is relatively prime to a(n-i) for all 1 <= i <= min(a(n), n-1).

The programs for A381019, there is no canonical definition to state claims against.
-/

/-! ## A381019.P7724890767465962706

`A134364(A381167(n+1))`
-/

namespace A381019.P7724890767465962706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134364 (A381167 (n + 1)).toNat

end

end A381019.P7724890767465962706

/-! ## A381019.P7589362249907640121

`A381167(n+1)%A381616(2*n+1)²`
-/

namespace A381019.P7589362249907640121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381167 (n + 1)) (A381616 (2 * n + 1) ^ 2)

end

end A381019.P7589362249907640121

/-! ## A381019.P2118947449030383792

`A381167(n+1)+A000007(A071778(n+1))`
-/

namespace A381019.P2118947449030383792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381167 (n + 1) + A000007 (A071778 (n + 1)).toNat

end

end A381019.P2118947449030383792

/-! ## A381019.P4568245253215107080

`A381167(n+1)+A000007(A381616(n+1))`
-/

namespace A381019.P4568245253215107080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381167 (n + 1) + A000007 (A381616 (n + 1)).toNat

end

end A381019.P4568245253215107080

/-! ## A381019.P1964902960997725886

`A381167(n+1)+A010051(A378632(n+1))`
-/

namespace A381019.P1964902960997725886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381167 (n + 1) + A010051 (A378632 (n + 1)).toNat

end

end A381019.P1964902960997725886

/-!
# A381020: a(n) = A381018(100*n).

The programs for A381020, there is no canonical definition to state claims against.
-/

/-! ## A381020.P9305515406847847727

`A355529(A008591(n+2)+A002865(n))`
-/

namespace A381020.P9305515406847847727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (A008591 (n + 2) + A002865 n).toNat

end

end A381020.P9305515406847847727

/-! ## A381020.P6875160163565156069

`A368459(A250120(2*n+3))+A000040(n+1)`
-/

namespace A381020.P6875160163565156069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368459 (A250120 (2 * n + 3)).toNat + A000040 (n + 1)

end

end A381020.P6875160163565156069

/-!
# A381021: Expansion of e.g.f. log(1-x)^2 * exp(x) / 2.

The programs for A381021, there is no canonical definition to state claims against.
-/

/-! ## A381021.P18112112481700619152

`∑[A073596(n)]-A073596(n)`
-/

namespace A381021.P18112112481700619152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073596 n

end

end A381021.P18112112481700619152

/-! ## A381021.P12883420339869928727

`A381105(n+1)-A381107(n)`
-/

namespace A381021.P12883420339869928727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381105 (n + 1) - A381107 n

end

end A381021.P12883420339869928727

/-! ## A381021.P5898353744971213461

`A094816(∑[char[1]+n]+1)%A335530(n)`
-/

namespace A381021.P5898353744971213461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A335530 n)

end

end A381021.P5898353744971213461

/-!
# A381022: Expansion of e.g.f. -log(1-x)^3 * exp(x) / 6.

The programs for A381022, there is no canonical definition to state claims against.
-/

/-! ## A381022.P12178924055674321446

`∑[A381024(abs(1-n))]`
-/

namespace A381022.P12178924055674321446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381024 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381022.P12178924055674321446

/-! ## A381022.P16924067703177543668

`∑[A381024(n)]-A381024(n)`
-/

namespace A381022.P16924067703177543668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381024 n

end

end A381022.P16924067703177543668

/-!
# A381023: Expansion of e.g.f. log(1-x)^4 * exp(x) / 24.

The programs for A381023, there is no canonical definition to state claims against.
-/

/-! ## A381023.P3028434749425496554

`∑[A381025(abs(1-n))]`
-/

namespace A381023.P3028434749425496554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381025 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381023.P3028434749425496554

/-! ## A381023.P9924461179890166108

`∑[A381025(n)]-A381025(n)`
-/

namespace A381023.P9924461179890166108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381025 n

end

end A381023.P9924461179890166108

/-! ## A381023.P1566680514100496725

`A239072(C(n+1, 5))`
-/

namespace A381023.P1566680514100496725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239072 (Nat.choose (n + 1) 5)

end

end A381023.P1566680514100496725

/-!
# A381024: Expansion of e.g.f. log(1-x)^2 * exp(x) / (2 * (1-x)).

The programs for A381024, there is no canonical definition to state claims against.
-/

/-! ## A381024.P4113602302823844092

`A381022(n+1)-A381022(n)`
-/

namespace A381024.P4113602302823844092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381022 (n + 1) - A381022 n

end

end A381024.P4113602302823844092

/-! ## A381024.P15092047000614688475

`Δ[A381022(n)]`
-/

namespace A381024.P15092047000614688475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381024.P15092047000614688475

/-!
# A381025: Expansion of e.g.f. -log(1-x)^3 * exp(x) / (6 * (1-x)).

The programs for A381025, there is no canonical definition to state claims against.
-/

/-! ## A381025.P3786138718847584305

`A381023(n+1)-A381023(n)`
-/

namespace A381025.P3786138718847584305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381023 (n + 1) - A381023 n

end

end A381025.P3786138718847584305

/-! ## A381025.P3090012675352436166

`Δ[A381023(n)]`
-/

namespace A381025.P3090012675352436166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381025.P3090012675352436166

/-!
# A381029: G.f. A(x) satisfies A(x) = 1/(1 - x * A(x*A(x)^2)^2).

The programs for A381029, there is no canonical definition to state claims against.
-/

/-! ## A381029.P17985402236174926242

`A008619(A001910(n+3)-floor(n/(xor(n, n+1)+1)))`
-/

namespace A381029.P17985402236174926242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001910 (n + 3) - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A381029.P17985402236174926242

/-! ## A381029.P4350128092531973088

`A049761(A146963(n))+A001147(n)`
-/

namespace A381029.P4350128092531973088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049761 (A146963 n).toNat + A001147 n

end

end A381029.P4350128092531973088

/-!
# A381031: The second smallest prime not dividing n minus the smallest prime not dividing n.

The programs for A381031, there is no canonical definition to state claims against.
-/

/-! ## A381031.P16437040381512720752

`A380539(n+1)-A053669(n+1)`
-/

namespace A381031.P16437040381512720752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A053669 (n + 1)

end

end A381031.P16437040381512720752

/-! ## A381031.P7774442448645831045

`A046665(A381805(n+1))`
-/

namespace A381031.P7774442448645831045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A381805 (n + 1)).toNat

end

end A381031.P7774442448645831045

/-! ## A381031.P4038478776634070522

`A046665(A382248(n+1))`
-/

namespace A381031.P4038478776634070522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A382248 (n + 1)).toNat

end

end A381031.P4038478776634070522

/-! ## A381031.P2942464099376455710

`A380539(n+1)-A020639(A381805(n+1))`
-/

namespace A381031.P2942464099376455710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A020639 (A381805 (n + 1)).toNat

end

end A381031.P2942464099376455710

/-! ## A381031.P739986824210565284

`A380539(n+1)-A020639(A382248(n+1))`
-/

namespace A381031.P739986824210565284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A020639 (A382248 (n + 1)).toNat

end

end A381031.P739986824210565284

/-! ## A381031.P18115630478386698618

`A380539(n+1)-A020639(A382767(n+1))`
-/

namespace A381031.P18115630478386698618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380539 (n + 1) - A020639 (A382767 (n + 1)).toNat

end

end A381031.P18115630478386698618

/-! ## A381031.P14042347115345442366

`A381805(n+1)/A053669(n+1)-A053669(n+1)`
-/

namespace A381031.P14042347115345442366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381805 (n + 1) : ℚ) / (A053669 (n + 1) : ℚ) - (A053669 (n + 1) : ℚ)

end

end A381031.P14042347115345442366

/-! ## A381031.P17177130513191651969

`A053669(A087560(n+1))-A053669(n+1)`
-/

namespace A381031.P17177130513191651969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A087560 (n + 1)).toNat - A053669 (n + 1)

end

end A381031.P17177130513191651969

/-! ## A381031.P14579515732306106662

`A053669((n+1)*(A071222(n)+1))-A053669(n+1)`
-/

namespace A381031.P14579515732306106662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 ((n + 1 : ℤ) * (A071222 n + 1)).toNat - A053669 (n + 1)

end

end A381031.P14579515732306106662

/-! ## A381031.P14307977788124398761

`A053669((n+1)*(A079578(n+1)-(n+1)))-A053669(n+1)`
-/

namespace A381031.P14307977788124398761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 ((n + 1 : ℤ) * (A079578 (n + 1) - (n + 1 : ℤ))).toNat - A053669 (n + 1)

end

end A381031.P14307977788124398761

/-! ## A381031.P6126135037637299701

`A046665(A382767(n+1))`
-/

namespace A381031.P6126135037637299701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A382767 (n + 1)).toNat

end

end A381031.P6126135037637299701

/-! ## A381031.P3571106469060188656

`A053669(A129902((n+1)²)/(n+1))-A053669(n+1)`
-/

namespace A381031.P3571106469060188656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (SequenceMachineLib.roundAway ((A129902 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat - A053669 (n + 1)

end

end A381031.P3571106469060188656

/-!
# A381032: The radix prime of the least significant digit > 1 in the primorial base expansion of n, or 1 if there is no such digit.

The programs for A381032, there is no canonical definition to state claims against.
-/

/-! ## A381032.P10750043235791426845

`A020639(A328572(n))`
-/

namespace A381032.P10750043235791426845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328572 n).toNat

end

end A381032.P10750043235791426845

/-! ## A381032.P1158995989280872591

`A249739(A276086(n))`
-/

namespace A381032.P1158995989280872591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A276086 n).toNat

end

end A381032.P1158995989280872591

/-! ## A381032.P15397592939132904078

`A000041(A328828(n)+A047789(3*(n+1)))`
-/

namespace A381032.P15397592939132904078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A328828 n + A047789 (3 * (n + 1))).toNat

end

end A381032.P15397592939132904078

/-! ## A381032.P14878863799234184533

`A005704(A140313(3*n)*A328828(n))`
-/

namespace A381032.P14878863799234184533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (A140313 (3 * n) * A328828 n).toNat

end

end A381032.P14878863799234184533

/-! ## A381032.P12810605353734305296

`A020639(A276086(n)/A328571(n))`
-/

namespace A381032.P12810605353734305296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328571 n : ℚ))).toNat

end

end A381032.P12810605353734305296

/-! ## A381032.P10210692720921016025

`A020639(gcd(A276086(n), A327860(n)))`
-/

namespace A381032.P10210692720921016025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A276086 n) (A327860 n))

end

end A381032.P10210692720921016025

/-! ## A381032.P13108036103982675217

`A014673(2*A328572(n))`
-/

namespace A381032.P13108036103982675217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A328572 n).toNat

end

end A381032.P13108036103982675217

/-!
# A381033: a(n) = 1 if there is a digit > 1 in the primorial base expansion of n, and the corresponding radix prime of the least significant such digit is not a prime factor of n, otherwise 0.

The programs for A381033, there is no canonical definition to state claims against.
-/

/-! ## A381033.P16421192223275993156

`char[A381034(n+1)]`
-/

namespace A381033.P16421192223275993156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A381033.P16421192223275993156

/-! ## A381033.P17525021184714570549

`A001065(gcd(n, A381032(n)))`
-/

namespace A381033.P17525021184714570549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Int.gcd (n : ℤ) (A381032 n))

end

end A381033.P17525021184714570549

/-! ## A381033.P9712924394135695773

`A063524(A042965(3*n+2)%A381032(n))`
-/

namespace A381033.P9712924394135695773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.tmod (A042965 (3 * n + 2)) (A381032 n)).toNat

end

end A381033.P9712924394135695773

/-! ## A381033.P3320471283526525839

`A381036(A343678(n+5))+A381036(n)`
-/

namespace A381033.P3320471283526525839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 (A343678 (n + 5)).toNat + A381036 n

end

end A381033.P3320471283526525839

/-! ## A381033.P12086625419133284046

`and(A014752(A108917(n)), A381036(n))`
-/

namespace A381033.P12086625419133284046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014752 (A108917 n).toNat) (A381036 n)

end

end A381033.P12086625419133284046

/-! ## A381033.P15203384400456276907

`A381036(n)+A000007(A319169(n+4))`
-/

namespace A381033.P15203384400456276907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n + A000007 (A319169 (n + 4)).toNat

end

end A381033.P15203384400456276907

/-! ## A381033.P9743324079389539609

`A326060(A294775(3*(n+1)))*A381036(n)`
-/

namespace A381033.P9743324079389539609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326060 (A294775 (3 * (n + 1))).toNat * A381036 n

end

end A381033.P9743324079389539609

/-! ## A381033.P17817665293557319054

`and(A002189(n), A381036(n))`
-/

namespace A381033.P17817665293557319054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002189 n) (A381036 n)

end

end A381033.P17817665293557319054

/-! ## A381033.P1707226062424492490

`A381036(n)+A000007(A007602(n+1))`
-/

namespace A381033.P1707226062424492490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n + A000007 (A007602 (n + 1)).toNat

end

end A381033.P1707226062424492490

/-! ## A381033.P16188657188782746451

`∑{d}[n+1, A057374(#-1)*A381036((n+1)/#-1)]`
-/

namespace A381033.P16188657188782746451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057374 (d - 1) * A381036 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A381033.P16188657188782746451

/-!
# A381034: Numbers that have a digit > 1 in their primorial base expansion, and that are multiples of the corresponding radix prime of the least significant such digit.

The programs for A381034, there is no canonical definition to state claims against.
-/

/-! ## A381034.P11832617809596726854

`lt[0, A381033(n)]`
-/

namespace A381034.P11832617809596726854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381034.P11832617809596726854

/-! ## A381034.P5377496558755599171

`lt[1, gcd(4*n, A381032(n))]`
-/

namespace A381034.P5377496558755599171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A381032 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381034.P5377496558755599171

/-! ## A381034.P548545407148613001

`eq[A293668(n), A381033(n)]`
-/

namespace A381034.P548545407148613001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P548545407148613001

/-! ## A381034.P1896490475071810309

`eq[A369010(n), A381033(n)]`
-/

namespace A381034.P1896490475071810309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P1896490475071810309

/-! ## A381034.P6975189756519370765

`filter[A324584(n+1), A381033(#)]`
-/

namespace A381034.P6975189756519370765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P6975189756519370765

/-! ## A381034.P11954138135065327349

`filter[A392611(n+1), A381033(#)]`
-/

namespace A381034.P11954138135065327349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P11954138135065327349

/-! ## A381034.P3279465615618100651

`filter[A138593(n+1), A381033(#)]`
-/

namespace A381034.P3279465615618100651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P3279465615618100651

/-! ## A381034.P9480510446022396965

`filter[A009188(n+1), A381033(#)]`
-/

namespace A381034.P9480510446022396965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P9480510446022396965

/-! ## A381034.P9743233180992992876

`filter[A264828(n+1), A381033(#)]`
-/

namespace A381034.P9743233180992992876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P9743233180992992876

/-! ## A381034.P4610837847225735921

`filter[A138592(n+1), A381033(#)]`
-/

namespace A381034.P4610837847225735921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381033 (f1 j).toNat = 1) n)

end

end A381034.P4610837847225735921

/-! ## A381034.P15152255217769682418

`eq[A005102(n), A381033(n)]`
-/

namespace A381034.P15152255217769682418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P15152255217769682418

/-! ## A381034.P9370028244394212646

`eq[A054977(n), A381033(n)]`
-/

namespace A381034.P9370028244394212646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P9370028244394212646

/-! ## A381034.P6646297134690902451

`eq[A141044(n), A381033(n)]`
-/

namespace A381034.P6646297134690902451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P6646297134690902451

/-! ## A381034.P6712353539150862600

`eq[A158388(n), A381033(n)]`
-/

namespace A381034.P6712353539150862600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P6712353539150862600

/-! ## A381034.P11693004271488158387

`eq[A245477(n), A381033(n)]`
-/

namespace A381034.P11693004271488158387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P11693004271488158387

/-! ## A381034.P11097373790890946515

`eq[A261143(n), A381033(n)]`
-/

namespace A381034.P11097373790890946515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P11097373790890946515

/-! ## A381034.P6748810010923411947

`eq[A329684(n), A381033(n)]`
-/

namespace A381034.P6748810010923411947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P6748810010923411947

/-! ## A381034.P9689340538492428848

`eq[A373565(n), A381033(n)]`
-/

namespace A381034.P9689340538492428848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P9689340538492428848

/-! ## A381034.P10192454052074545571

`eq[A008461(n+1), A381033(n)]`
-/

namespace A381034.P10192454052074545571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P10192454052074545571

/-! ## A381034.P5561192649653457738

`eq[A037265(n+1), A381033(n)]`
-/

namespace A381034.P5561192649653457738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381034.P5561192649653457738

/-!
# A381035: Numbers such that the least significant nonzero digit in their primorial base representation (A049345) is 1.

The programs for A381035, there is no canonical definition to state claims against.
-/

/-! ## A381035.P16960851227046754943

`comp[(n+1)*A380534(n+1)]`
-/

namespace A381035.P16960851227046754943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A380534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381035.P16960851227046754943

/-! ## A381035.P946514176493226

`eq[1, gcd(n%2, A351567((n+1)/2^val(n+1, 2)))]`
-/

namespace A381035.P946514176493226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A351567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381035.P946514176493226

/-! ## A381035.P3071360016744960283

`eq[1, A276088(n)]`
-/

namespace A381035.P3071360016744960283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381035.P3071360016744960283

/-! ## A381035.P876544307139090596

`eq[1, A255326(n-A276093(n))]`
-/

namespace A381035.P876544307139090596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 ((n : ℤ) - A276093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381035.P876544307139090596

/-! ## A381035.P2936688602325871284

`lt[A000038(n), A121373(A276088(n))]`
-/

namespace A381035.P2936688602325871284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A276088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P2936688602325871284

/-! ## A381035.P6061987192346213961

`lt[A271673(A276088(n)), A007953(n)]`
-/

namespace A381035.P6061987192346213961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271673 (A276088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P6061987192346213961

/-! ## A381035.P1326783435005546047

`lt[A078008(A276088(n)), A001511(n+1)]`
-/

namespace A381035.P1326783435005546047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A276088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P1326783435005546047

/-! ## A381035.P12749382060201652740

`lt[A143419(A276088(n)), A007814(n+1)]`
-/

namespace A381035.P12749382060201652740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143419 (A276088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P12749382060201652740

/-! ## A381035.P10261510143331288695

`record[A220466(2*n+1)-A276088(n)]`
-/

namespace A381035.P10261510143331288695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (2 * n + 1) - A276088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381035.P10261510143331288695

/-! ## A381035.P17498046056454839886

`lt[A380534(A233583(n+1)), A057427(n)]`
-/

namespace A381035.P17498046056454839886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380534 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381035.P17498046056454839886

/-!
# A381036: a(n) = 1 if there is a digit > 1 in the primorial base expansion of n, and the corresponding radix primes of all such digits are also prime factors of n, otherwise 0.

The programs for A381036, there is no canonical definition to state claims against.
-/

/-! ## A381036.P4200258502280162926

`char[A381037(n+1)]`
-/

namespace A381036.P4200258502280162926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A381036.P4200258502280162926

/-! ## A381036.P17653256119800379265

`and(A243927(A381050(n+1)), A381033(n))`
-/

namespace A381036.P17653256119800379265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243927 (A381050 (n + 1)).toNat) (A381033 n)

end

end A381036.P17653256119800379265

/-!
# A381037: Numbers with a digit > 1 in their primorial base expansion that are multiples of the corresponding radix primes of all such digits.

The programs for A381037, there is no canonical definition to state claims against.
-/

/-! ## A381037.P3389481522934818433

`filter[A381034(n+1), A381036(#)]`
-/

namespace A381037.P3389481522934818433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P3389481522934818433

/-! ## A381037.P11776697473160530478

`lt[0, A381036(n)]`
-/

namespace A381037.P11776697473160530478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381037.P11776697473160530478

/-! ## A381037.P4218838413618816692

`eq[A293668(n), A381036(n)]`
-/

namespace A381037.P4218838413618816692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P4218838413618816692

/-! ## A381037.P9137922915371624751

`eq[A369010(n), A381036(n)]`
-/

namespace A381037.P9137922915371624751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P9137922915371624751

/-! ## A381037.P15479590116861028038

`filter[A324584(n+1), A381036(#)]`
-/

namespace A381037.P15479590116861028038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P15479590116861028038

/-! ## A381037.P8415706924430563952

`filter[A138593(n+1), A381036(#)]`
-/

namespace A381037.P8415706924430563952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381036 (f1 j).toNat = 1) n)

end

end A381037.P8415706924430563952

/-! ## A381037.P8710139978240760519

`eq[A005102(n), A381036(n)]`
-/

namespace A381037.P8710139978240760519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P8710139978240760519

/-! ## A381037.P1174881765896452312

`eq[A054977(n), A381036(n)]`
-/

namespace A381037.P1174881765896452312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P1174881765896452312

/-! ## A381037.P11115442409621210621

`eq[A058306(n), A381036(n)]`
-/

namespace A381037.P11115442409621210621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P11115442409621210621

/-! ## A381037.P984523484078544858

`eq[A141044(n), A381036(n)]`
-/

namespace A381037.P984523484078544858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P984523484078544858

/-! ## A381037.P897584397347990955

`eq[A158388(n), A381036(n)]`
-/

namespace A381037.P897584397347990955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P897584397347990955

/-! ## A381037.P17964435765909237471

`eq[A245477(n), A381036(n)]`
-/

namespace A381037.P17964435765909237471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P17964435765909237471

/-! ## A381037.P7538740728972159932

`eq[A261143(n), A381036(n)]`
-/

namespace A381037.P7538740728972159932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P7538740728972159932

/-! ## A381037.P1227882511509137221

`eq[A329684(n), A381036(n)]`
-/

namespace A381037.P1227882511509137221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P1227882511509137221

/-! ## A381037.P32148356818942879

`eq[A373565(n), A381036(n)]`
-/

namespace A381037.P32148356818942879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P32148356818942879

/-! ## A381037.P5894655305142465062

`eq[A008461(n+1), A381036(n)]`
-/

namespace A381037.P5894655305142465062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P5894655305142465062

/-! ## A381037.P11118244015641753373

`eq[A037265(n+1), A381036(n)]`
-/

namespace A381037.P11118244015641753373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P11118244015641753373

/-! ## A381037.P7799772571645430525

`eq[A045496(n+1), A381036(n)]`
-/

namespace A381037.P7799772571645430525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381037.P7799772571645430525

/-!
# A381042: Alternating sum of floor(n^(1/k)), with k >= 2.

The programs for A381042, there is no canonical definition to state claims against.
-/

/-! ## A381042.P12996684872237434847

`∑[A382691(A154272(n+1)+n)]`
-/

namespace A381042.P12996684872237434847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A154272 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P12996684872237434847

/-! ## A381042.P7873698235441318620

`∑[A382691(n+1)]-A382691(n+1)`
-/

namespace A381042.P7873698235441318620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382691 (n + 1)

end

end A381042.P7873698235441318620

/-! ## A381042.P11081889482400251316

`∑[A382691(A151933(n)+n)]`
-/

namespace A381042.P11081889482400251316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A151933 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381042.P11081889482400251316

/-!
# A381043: Centered pentagonal numbers which are squarefree semiprimes.

The programs for A381043, there is no canonical definition to state claims against.
-/

/-! ## A381043.P16786555207514664731

`A382132(A277112(n+1))`
-/

namespace A381043.P16786555207514664731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382132 (A277112 (n + 1)).toNat

end

end A381043.P16786555207514664731

/-! ## A381043.P12392570308683952033

`filter[A005891(n), A280710(#)]`
-/

namespace A381043.P12392570308683952033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A381043.P12392570308683952033

/-! ## A381043.P13593992087854581997

`filter[A005891(n+1), A354927(#)]`
-/

namespace A381043.P13593992087854581997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A381043.P13593992087854581997

/-! ## A381043.P1839190457229913534

`filter[A382132(n+1), A008966(#)]`
-/

namespace A381043.P1839190457229913534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381043.P1839190457229913534

/-! ## A381043.P17359446214193241880

`filter[A382132(n+1), A049240(#)]`
-/

namespace A381043.P17359446214193241880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A381043.P17359446214193241880

/-!
# A381044: Primes prime(k) followed by a gap, prime(k+1)-prime(k), smaller than the local geometric average gap between consecutive primes: log(prime(k))/e^(gamma).

The programs for A381044, there is no canonical definition to state claims against.
-/

/-! ## A381044.P9201189926002160952

`A056239(A057470(n+6))`
-/

namespace A381044.P9201189926002160952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A057470 (n + 6)).toNat

end

end A381044.P9201189926002160952

/-! ## A381044.P15649110327899235442

`or(A001359(n+6), A330887(3*n+5))`
-/

namespace A381044.P15649110327899235442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001359 (n + 6)) (A330887 (3 * n + 5))

end

end A381044.P15649110327899235442

/-! ## A381044.P7033244909038042387

`A001097(lt[A306697(n+1), A306749(n)])`
-/

namespace A381044.P7033244909038042387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381044.P7033244909038042387

/-! ## A381044.P3393043977347970483

`A001097(A293754(2*(n+2))+5)`
-/

namespace A381044.P3393043977347970483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A293754 (2 * (n + 2)) + 5).toNat

end

end A381044.P3393043977347970483

/-! ## A381044.P7885479580930452609

`A001359(n+6)%A133967(n+1)`
-/

namespace A381044.P7885479580930452609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 6)) (A133967 (n + 1))

end

end A381044.P7885479580930452609

/-!
# A381045: Happy cubes: cubes whose trajectory under iteration of sum of squares of digits map includes 1.

The programs for A381045, there is no canonical definition to state claims against.
-/

/-! ## A381045.P14074049558380620487

`∩[A140172(n+1), A000578(n)]`
-/

namespace A381045.P14074049558380620487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P14074049558380620487

/-! ## A381045.P511267124604482020

`∩[A140172(n+1), A109900(n)]`
-/

namespace A381045.P511267124604482020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P511267124604482020

/-! ## A381045.P5170500455253585930

`∩[A053012(n+1), A140172(n+1)]`
-/

namespace A381045.P5170500455253585930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P5170500455253585930

/-! ## A381045.P11336403263067586005

`∩[A140172(n+1), A349201(n+1)]`
-/

namespace A381045.P11336403263067586005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P11336403263067586005

/-! ## A381045.P3871683820624951424

`∩[A054762(n+1), A140172(n+1)]`
-/

namespace A381045.P3871683820624951424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381045.P3871683820624951424

/-!
# A381046: Happy repdigit numbers.

The programs for A381046, there is no canonical definition to state claims against.
-/

/-! ## A381046.P6551805729026409279

`∩[A002113(n+1), A124095(n)]`
-/

namespace A381046.P6551805729026409279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381046.P6551805729026409279

/-! ## A381046.P16489332600069112629

`∩[A216237(n+1), A010785(n)]`
-/

namespace A381046.P16489332600069112629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381046.P16489332600069112629

/-!
# A381048: Elimination order of the first person in a variation of the Josephus problem, where there are n people total. During each round the first person is skipped, and the second and the third person are eliminated. Then the process repeats.

The programs for A381048, there is no canonical definition to state claims against.
-/

/-! ## A381048.P10430543109941414442

`ceil(A327625(2*(n+1))/3)`
-/

namespace A381048.P10430543109941414442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327625 (2 * (n + 1)) : ℚ) / 3⌉

end

end A381048.P10430543109941414442

/-! ## A381048.P2989524295490007241

`ceil(n+1-A038502(n+1)/3)`
-/

namespace A381048.P2989524295490007241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) - (A038502 (n + 1) : ℚ) / 3⌉

end

end A381048.P2989524295490007241

/-! ## A381048.P5115698868215064397

`A166711(A327625(n+1))`
-/

namespace A381048.P5115698868215064397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A327625 (n + 1)).toNat

end

end A381048.P5115698868215064397

/-! ## A381048.P16391513462210588533

`A004396(A327625(n+1)+1)`
-/

namespace A381048.P16391513462210588533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A327625 (n + 1) + 1).toNat

end

end A381048.P16391513462210588533

/-! ## A381048.P7719271935913910344

`A009947(A327625(n+1)+1)`
-/

namespace A381048.P7719271935913910344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A327625 (n + 1) + 1).toNat

end

end A381048.P7719271935913910344

/-! ## A381048.P5637776302712421112

`A008620(A016789(n)-A038502(n+1))`
-/

namespace A381048.P5637776302712421112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A016789 n - A038502 (n + 1)).toNat

end

end A381048.P5637776302712421112

/-! ## A381048.P18038987463983948963

`A008620(3*(n+1))-A008620(A038502(n+1))`
-/

namespace A381048.P18038987463983948963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * (n + 1)) - A008620 (A038502 (n + 1)).toNat

end

end A381048.P18038987463983948963

/-! ## A381048.P779944186811079268

`A114091(3*n+4)-A114091(A038502(n+1))`
-/

namespace A381048.P779944186811079268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114091 (3 * n + 4) - A114091 (A038502 (n + 1)).toNat

end

end A381048.P779944186811079268

/-!
# A381049: Triangle T(n,k) read by rows: where T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where one person is skipped and two people are eliminated.

The programs for A381049, there is no canonical definition to state claims against.
-/

/-! ## A381049.P11904001935170256040

`A246688(n+1)-A212663(A037952(n+1)+1)`
-/

namespace A381049.P11904001935170256040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246688 (n + 1) - A212663 (A037952 (n + 1) + 1).toNat

end

end A381049.P11904001935170256040

/-! ## A381049.P7839780990904629259

`A373212(A204928(n+2))`
-/

namespace A381049.P7839780990904629259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373212 (A204928 (n + 2)).toNat

end

end A381049.P7839780990904629259

/-! ## A381049.P5776995747851736031

`A352964(n)+A010054(A056040(n))`
-/

namespace A381049.P5776995747851736031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352964 n + A010054 (A056040 n).toNat

end

end A381049.P5776995747851736031

/-!
# A381050: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and down-under-down dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A381050, there is no canonical definition to state claims against.
-/

/-! ## A381050.P11983510893048687503

`A330896(n+1)+A010815(A101156(n+5))`
-/

namespace A381050.P11983510893048687503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330896 (n + 1) + A010815 (A101156 (n + 5)).toNat

end

end A381050.P11983510893048687503

/-! ## A381050.P11376238531498324273

`A176206(A375354(n+1))`
-/

namespace A381050.P11376238531498324273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176206 (A375354 (n + 1)).toNat

end

end A381050.P11376238531498324273

/-! ## A381050.P16584556137531921255

`A057058(n+1)-A359429(A124302(n))`
-/

namespace A381050.P16584556137531921255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (n + 1) - A359429 (A124302 n).toNat

end

end A381050.P16584556137531921255

/-! ## A381050.P2740650620998691866

`A286001(A207375(n+1)^A065648(n))`
-/

namespace A381050.P2740650620998691866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286001 (SequenceMachineLib.roundAway ((A207375 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A381050.P2740650620998691866

/-! ## A381050.P17367075664626132230

`A355748(A008517(n+1)%A028415(n+1))`
-/

namespace A381050.P17367075664626132230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355748 (Int.tmod (A008517 (n + 1)) (A028415 (n + 1))).toNat

end

end A381050.P17367075664626132230

/-!
# A381051: A version of the Josephus problem: a(n) is the surviving integer under the eliminate-skip-eliminate version of the elimination process.

The programs for A381051, there is no canonical definition to state claims against.
-/

/-! ## A381051.P10503841967725079722

`(a(n-2)+1)%n+2` with `a(0)=1, a(1)=2`
-/

namespace A381051.P10503841967725079722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + 1) % n + 2

end

end A381051.P10503841967725079722

/-! ## A381051.P18076284319601655096

`floor(A337191(3*n+4)/3)`
-/

namespace A381051.P18076284319601655096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337191 (3 * n + 4) : ℚ) / 3⌋

end

end A381051.P18076284319601655096

/-! ## A381051.P16462499603084551638

`(A337191(3*n+2)+2)/3`
-/

namespace A381051.P16462499603084551638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337191 (3 * n + 2) + 2 : ℚ) / 3

end

end A381051.P16462499603084551638

/-! ## A381051.P7845977078879755652

`A383846(n+2)-1`
-/

namespace A381051.P7845977078879755652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383846 (n + 2) - 1

end

end A381051.P7845977078879755652

/-! ## A381051.P9360739751777140457

`A023443(A383846(n+2))`
-/

namespace A381051.P9360739751777140457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A383846 (n + 2)).toNat

end

end A381051.P9360739751777140457

/-!
# A381052: Expansion of e.g.f. log(1 - x)^2 * exp(3*x) / 2.

The programs for A381052, there is no canonical definition to state claims against.
-/

/-! ## A381052.P9178502541176409607

`∑[A325781(n!)-1]`
-/

namespace A381052.P9178502541176409607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (Nat.factorial n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381052.P9178502541176409607

/-!
# A381053: Integers k such that Fibonacci(k) is odd and divides the sum of the first Fibonacci(k) nonzero Fibonacci numbers.

The programs for A381053, there is no canonical definition to state claims against.
-/

/-! ## A381053.P3400174105574287876

`filter[A383021(n+1), A011655(#)]`
-/

namespace A381053.P3400174105574287876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A381053.P3400174105574287876

/-! ## A381053.P12018488717855735866

`filter[A383021(n+1), A267208(#)]`
-/

namespace A381053.P12018488717855735866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A381053.P12018488717855735866

/-! ## A381053.P13932151326640884387

`∩[A226872(n+1), A383021(n+1)]`
-/

namespace A381053.P13932151326640884387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P13932151326640884387

/-! ## A381053.P14047886225093648060

`∩[A276706(n+1), A383021(n+1)]`
-/

namespace A381053.P14047886225093648060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P14047886225093648060

/-! ## A381053.P9980900974513412434

`∩[A047236(n+1), A383021(n+1)]`
-/

namespace A381053.P9980900974513412434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P9980900974513412434

/-! ## A381053.P6462782696011323077

`∩[A229829(n+1), A383021(n+1)]`
-/

namespace A381053.P6462782696011323077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P6462782696011323077

/-! ## A381053.P12737691132638698276

`∩[A229303(n+1), A383021(n+1)]`
-/

namespace A381053.P12737691132638698276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P12737691132638698276

/-! ## A381053.P5918287768300051811

`∩[A182337(n+1), A383021(n+1)]`
-/

namespace A381053.P5918287768300051811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P5918287768300051811

/-! ## A381053.P9730062233240405541

`∩[A001651(n+1), A383021(n+1)]`
-/

namespace A381053.P9730062233240405541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P9730062233240405541

/-! ## A381053.P9947550578778146148

`∩[A119905(n+1), A383021(n+1)]`
-/

namespace A381053.P9947550578778146148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381053.P9947550578778146148

/-!
# A381055: a(n) = -n/2 if n is even, 3n + 1 if n is odd.

The programs for A381055, the canonical program `A381055.P1611355681851500548` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381055 has offset 0).

The definition of A381055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381055.P1611355681851500548

`1/4*((-1)^(n+1)*(7*n+2)+5*n+2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A381055

/-- `1/4*((-1)^(n+1)*(7*n+2)+5*n+2)` -/
def P1611355681851500548.Spec : Prop :=
  ∀ n, P1611355681851500548.a n = (A381055 n : ℚ)

end A381055

/-! ## A381055.P3251006726827226893

`A006370(n)/(Δ[or(1, n)]-1)`
-/

namespace A381055.P3251006726827226893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006370 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 : ℚ)

end

end A381055.P3251006726827226893

namespace A381055

/-- `A006370(n)/(Δ[or(1, n)]-1)` -/
def P3251006726827226893.Spec : Prop :=
  ∀ n, P3251006726827226893.a n = (A381055 n : ℚ)

end A381055

/-! ## A381055.P9167739123915948538

`A006370(n)-A237420(n)`
-/

namespace A381055.P9167739123915948538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A237420 n

end

end A381055.P9167739123915948538

namespace A381055

/-- `A006370(n)-A237420(n)` -/
def P9167739123915948538.Spec : Prop :=
  ∀ n, P9167739123915948538.a n = A381055 n

end A381055

/-! ## A381055.P7008030011313827439

`A271478(n)-A137501(n)`
-/

namespace A381055.P7008030011313827439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 n - A137501 n

end

end A381055.P7008030011313827439

namespace A381055

/-- `A271478(n)-A137501(n)` -/
def P7008030011313827439.Spec : Prop :=
  ∀ n, P7008030011313827439.a n = A381055 n

end A381055

/-! ## A381055.P16230944581450982639

`A047615(n+1)-A195312(n)`
-/

namespace A381055.P16230944581450982639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) - A195312 n

end

end A381055.P16230944581450982639

namespace A381055

/-- `A047615(n+1)-A195312(n)` -/
def P16230944581450982639.Spec : Prop :=
  ∀ n, P16230944581450982639.a n = A381055 n

end A381055

/-! ## A381055.P7256263171445048655

`A173237(n+1)-A066070(n+1)`
-/

namespace A381055.P7256263171445048655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (n + 1) - A066070 (n + 1)

end

end A381055.P7256263171445048655

namespace A381055

/-- `A173237(n+1)-A066070(n+1)` -/
def P7256263171445048655.Spec : Prop :=
  ∀ n, P7256263171445048655.a n = A381055 n

end A381055

/-! ## A381055.P596354988459332379

`A195031(n+1)-A180486(n+1)`
-/

namespace A381055.P596354988459332379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195031 (n + 1) - A180486 (n + 1)

end

end A381055.P596354988459332379

namespace A381055

/-- `A195031(n+1)-A180486(n+1)` -/
def P596354988459332379.Spec : Prop :=
  ∀ n, P596354988459332379.a n = A381055 n

end A381055

/-! ## A381055.P16393690185241733194

`A228967(n+1)-A168199(n+1)`
-/

namespace A381055.P16393690185241733194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228967 (n + 1) - A168199 (n + 1)

end

end A381055.P16393690185241733194

namespace A381055

/-- `A228967(n+1)-A168199(n+1)` -/
def P16393690185241733194.Spec : Prop :=
  ∀ n, P16393690185241733194.a n = A381055 n

end A381055

/-! ## A381055.P11150866161946123896

`∑[7-a(n-1)]-a(n-1)-A185452(2*(n+2))` with `a(0)=0`
-/

namespace A381055.P11150866161946123896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - A185452 (2 * (n + 2))

end

end A381055.P11150866161946123896

namespace A381055

/-- `∑[7-a(n-1)]-a(n-1)-A185452(2*(n+2))` -/
def P11150866161946123896.Spec : Prop :=
  ∀ n, P11150866161946123896.a n = A381055 n

end A381055

/-!
# A381060: Numbers t which are the sum of some subset of the values of k satisfying the equation (t - floor((t - k)/k)) mod k = 0 (t > 1, 1 <= k < t).

The programs for A381060, there is no canonical definition to state claims against.
-/

/-! ## A381060.P4523001372780412431

`lt[A360457(n+1), A000001(A000005(n+1))]`
-/

namespace A381060.P4523001372780412431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P4523001372780412431

/-! ## A381060.P12378212712021736374

`lt[A124738(n+1), A353260(A037445(n+1))]`
-/

namespace A381060.P12378212712021736374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353260 (A037445 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P12378212712021736374

/-! ## A381060.P6186473372708456555

`lt[A194120(A332488(n+1)), A037445(n+1)]`
-/

namespace A381060.P6186473372708456555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194120 (A332488 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P6186473372708456555

/-! ## A381060.P1927746418354990032

`lt[A365367(n+4), A132393(A000005(n+1))]`
-/

namespace A381060.P1927746418354990032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365367 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381060.P1927746418354990032

/-!
# A381063: Lexicographically earliest sequence of positive integers such that each nonempty subset has a distinct geometric mean.

The programs for A381063, there is no canonical definition to state claims against.
-/

/-! ## A381063.P18270001714245844363

`∩[A066720(n+1), A267215(n+1)]`
-/

namespace A381063.P18270001714245844363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P18270001714245844363

/-! ## A381063.P16476829328628969034

`∩[A066720(n+1), A345913(n+1)]`
-/

namespace A381063.P16476829328628969034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P16476829328628969034

/-! ## A381063.P7613406208426441206

`∩[A066720(n+1), A331995(n+1)]`
-/

namespace A381063.P7613406208426441206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P7613406208426441206

/-! ## A381063.P10460080920877578876

`∩[A066720(n+1), A347457(n+1)]`
-/

namespace A381063.P10460080920877578876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P10460080920877578876

/-! ## A381063.P17785640947640192899

`∩[A066720(n+1), A353866(n+1)]`
-/

namespace A381063.P17785640947640192899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381063.P17785640947640192899

/-!
# A381066: Expansion of e.g.f. log(1-x)^4 * exp(-x) / 24.

The programs for A381066, there is no canonical definition to state claims against.
-/

/-! ## A381066.P17343364475107389708

`A051724(A373759(n)-A353884(n))`
-/

namespace A381066.P17343364475107389708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A373759 n - A353884 n).toNat

end

end A381066.P17343364475107389708

/-! ## A381066.P14362816720953778103

`A214979(A001710(n)-A154258(n+1))`
-/

namespace A381066.P14362816720953778103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A001710 n - A154258 (n + 1)).toNat

end

end A381066.P14362816720953778103

/-! ## A381066.P15727077180716321204

`A214979(A001710(n)-A154263(n+1))`
-/

namespace A381066.P15727077180716321204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A001710 n - A154263 (n + 1)).toNat

end

end A381066.P15727077180716321204

/-! ## A381066.P869537791582153386

`A059995(A267323(n+1))-A335472(n)`
-/

namespace A381066.P869537791582153386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A267323 (n + 1)).toNat - A335472 n

end

end A381066.P869537791582153386

/-!
# A381067: Expansion of e.g.f. log(1-x)^2 * exp(-x) / (2 * (1-x)).

The programs for A381067, there is no canonical definition to state claims against.
-/

/-! ## A381067.P1762511784621101257

`A381065(n)+A381065(n+1)`
-/

namespace A381067.P1762511784621101257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381065 n + A381065 (n + 1)

end

end A381067.P1762511784621101257

/-! ## A381067.P1807718393270267784

`A269954(∑[n+1]+3)`
-/

namespace A381067.P1807718393270267784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269954 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A381067.P1807718393270267784

/-!
# A381068: Expansion of e.g.f. -log(1-x)^3 * exp(-x) / (6 * (1-x)).

The programs for A381068, there is no canonical definition to state claims against.
-/

/-! ## A381068.P3395575177256578092

`A381066(n)+A381066(n+1)`
-/

namespace A381068.P3395575177256578092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381066 n + A381066 (n + 1)

end

end A381068.P3395575177256578092

/-! ## A381068.P13001485363260982787

`A054899(A248871(n)-A345751(n))`
-/

namespace A381068.P13001485363260982787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A248871 n - A345751 n).toNat

end

end A381068.P13001485363260982787

/-! ## A381068.P6754605049295470116

`A064458(A177253(n)*A324743(n))`
-/

namespace A381068.P6754605049295470116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A177253 n * A324743 n).toNat

end

end A381068.P6754605049295470116

/-!
# A381069: Numbers k that have a record number of divisors that have the same binary weight as k.

The programs for A381069, there is no canonical definition to state claims against.
-/

/-! ## A381069.P1078946082825954978

`A102443(A084638(n+1))`
-/

namespace A381069.P1078946082825954978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A084638 (n + 1)).toNat

end

end A381069.P1078946082825954978

/-! ## A381069.P15551717479304297163

`A102443(A117302(n+1))`
-/

namespace A381069.P15551717479304297163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A117302 (n + 1)).toNat

end

end A381069.P15551717479304297163

/-! ## A381069.P16281672771848715517

`A102443(A157021(n+1))`
-/

namespace A381069.P16281672771848715517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A157021 (n + 1)).toNat

end

end A381069.P16281672771848715517

/-! ## A381069.P13323575099130525602

`A102443(A243085(n+1))`
-/

namespace A381069.P13323575099130525602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A243085 (n + 1)).toNat

end

end A381069.P13323575099130525602

/-! ## A381069.P12070900187145154573

`record[A003963(record[A211219(n+3)])]`
-/

namespace A381069.P12070900187145154573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211219 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381069.P12070900187145154573

/-!
# A381073: Numbers k such that k and k+2 are both terms in A380846.

The programs for A381073, there is no canonical definition to state claims against.
-/

/-! ## A381073.P2395755854960120679

`∩[A380846(n+1)-2, A380846(n+1)]`
-/

namespace A381073.P2395755854960120679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380846 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381073.P2395755854960120679

/-!
# A381075: Sorted positions of first appearances in A280292 (sum of prime factors minus sum of distinct prime factors).

The programs for A381075, there is no canonical definition to state claims against.
-/

/-! ## A381075.P16303133330730498634

`∩[A094906(n+1), A243497(n)]`
-/

namespace A381075.P16303133330730498634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P16303133330730498634

/-! ## A381075.P4749487738229237005

`∩[A241010(n+1), A242663(n+1)]`
-/

namespace A381075.P4749487738229237005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P4749487738229237005

/-! ## A381075.P7446763713940246693

`∩[A241010(n+1), A361204(n+1)]`
-/

namespace A381075.P7446763713940246693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P7446763713940246693

/-! ## A381075.P8976594156685223123

`∩[A025475(n+1), A136803(n+1)]`
-/

namespace A381075.P8976594156685223123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P8976594156685223123

/-! ## A381075.P11102669807181185611

`∩[A134611(n+1), A136803(n+1)]`
-/

namespace A381075.P11102669807181185611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381075.P11102669807181185611

/-!
# A381076: Sorted positions of first appearances in A066503 (n minus squarefree kernel of n).

The programs for A381076, there is no canonical definition to state claims against.
-/

/-! ## A381076.P16052807323553085712

`eq[A054973(n+1), A083916(A000041(n))]`
-/

namespace A381076.P16052807323553085712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381076.P16052807323553085712

/-!
# A381077: Sorted positions of first appearances in A380986 (product of prime indices minus product of distinct prime indices).

The programs for A381077, there is no canonical definition to state claims against.
-/

/-! ## A381077.P16566882715018387457

`∩[A085046(n+1), A110262(n+1)]`
-/

namespace A381077.P16566882715018387457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P16566882715018387457

/-! ## A381077.P10051791096503854983

`∩[A085046(n+1), A184421(n+1)]`
-/

namespace A381077.P10051791096503854983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P10051791096503854983

/-! ## A381077.P3318745442849545257

`∩[A227762(n+1), A381950(n+1)]`
-/

namespace A381077.P3318745442849545257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P3318745442849545257

/-! ## A381077.P9762041388622106267

`∩[A324766(n+1), A381950(n+1)]`
-/

namespace A381077.P9762041388622106267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381077.P9762041388622106267

/-!
# A381079: Number of integer partitions of n whose greatest multiplicity is equal to their sum of distinct parts.

The programs for A381079, there is no canonical definition to state claims against.
-/

/-! ## A381079.P14342159101357794660

`A000330(A026392(n+1))%∏{e}[n+1, #+1]`
-/

namespace A381079.P14342159101357794660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000330 (A026392 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A381079.P14342159101357794660

/-! ## A381079.P11830495300037837800

`(∑[A186579(2*n+5)]-2)%A076869(3*n+4)`
-/

namespace A381079.P11830495300037837800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186579 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 2) (A076869 (3 * n + 4))

end

end A381079.P11830495300037837800

/-! ## A381079.P16307308348365456405

`A307744(A164731(n+1)%A092538(n+1))`
-/

namespace A381079.P16307308348365456405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307744 (Int.tmod (A164731 (n + 1)) (A092538 (n + 1))).toNat

end

end A381079.P16307308348365456405

/-! ## A381079.P14515774576517028688

`and(A070039(n+1), A250746(A370591(n+2)))`
-/

namespace A381079.P14515774576517028688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070039 (n + 1)) (A250746 (A370591 (n + 2)).toNat)

end

end A381079.P14515774576517028688

/-! ## A381079.P14818829944362323292

`A179844(A239733(2*n+5))%A037445(n+1)`
-/

namespace A381079.P14818829944362323292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179844 (A239733 (2 * n + 5)).toNat) (A037445 (n + 1))

end

end A381079.P14818829944362323292

/-!
# A381080: a(n) is the number of transitive finite pure sets of depth at most n.

The programs for A381080, there is no canonical definition to state claims against.
-/

/-! ## A381080.P7174212638284256256

`∑[A363137(A000749(n))]`
-/

namespace A381080.P7174212638284256256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363137 (A000749 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381080.P7174212638284256256

/-!
# A381087: The smallest positive integer that produces a product that contains the digit 2 when multiplied by 2 a total of n times.

The programs for A381087, there is no canonical definition to state claims against.
-/

/-! ## A381087.P5356822614062782724

`A378138(A043717(2*n+1)-A000961(n+1))`
-/

namespace A381087.P5356822614062782724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378138 (A043717 (2 * n + 1) - A000961 (n + 1)).toNat

end

end A381087.P5356822614062782724

/-!
# A381088: Decimal expansion of the smallest number greater than 1 whose decimal and ternary expansions have the same succession of digits.

The programs for A381088, there is no canonical definition to state claims against.
-/

/-! ## A381088.P2005090483342648842

`A236998(A392144(n))%3`
-/

namespace A381088.P2005090483342648842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236998 (A392144 n).toNat) 3

end

end A381088.P2005090483342648842

/-! ## A381088.P1077991378367439936

`A054354(A374731(n+1))+A001842(n+1)`
-/

namespace A381088.P1077991378367439936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A374731 (n + 1)).toNat + A001842 (n + 1)

end

end A381088.P1077991378367439936

/-! ## A381088.P9792829122857969559

`A164002(n+1)-A048820(A288605(n+1))`
-/

namespace A381088.P9792829122857969559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164002 (n + 1) - A048820 (A288605 (n + 1)).toNat

end

end A381088.P9792829122857969559

/-! ## A381088.P4851853283371161246

`A191261(A393945(n+1))`
-/

namespace A381088.P4851853283371161246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191261 (A393945 (n + 1)).toNat

end

end A381088.P4851853283371161246

/-!
# A381089: Number of binary relations on n unlabeled points without isolated points.

The programs for A381089, there is no canonical definition to state claims against.
-/

/-! ## A381089.P7116614519384790640

`A005100(A090358(n))*A174407(n+1)`
-/

namespace A381089.P7116614519384790640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A090358 n).toNat * A174407 (n + 1)

end

end A381089.P7116614519384790640

/-!
# A381095: Indices of prime squares in A381019.

The programs for A381095, there is no canonical definition to state claims against.
-/

/-! ## A381095.P11136799287851720318

`A128421(A128657(n+1))+A066872(n+1)`
-/

namespace A381095.P11136799287851720318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128421 (A128657 (n + 1)).toNat + A066872 (n + 1)

end

end A381095.P11136799287851720318

/-!
# A381096: Number of k <= n such that k is neither coprime to n and rad(k) != rad(n), where rad = A007947.

The programs for A381096, the canonical program `A381096.P9367970727555691698` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381096 has offset 1).

The definition of A381096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381096.P9367970727555691698

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)-A032741((n+1)/∏{p}[n+1, #])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A381096

/-- `(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)-A032741((n+1)/∏{p}[n+1, #])` -/
def P9367970727555691698.Spec : Prop :=
  ∀ n, P9367970727555691698.a n = A381096 (n + 1)

theorem P9367970727555691698.correct : P9367970727555691698.Spec := by
  intro n
  simp only [A381096, Nat.add_sub_cancel]

end A381096

/-! ## A381096.P11795226807409392518

`A016035(n+1)-A183094(n+1)`
-/

namespace A381096.P11795226807409392518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) - A183094 (n + 1)

end

end A381096.P11795226807409392518

namespace A381096

/-- `A016035(n+1)-A183094(n+1)` -/
def P11795226807409392518.Spec : Prop :=
  ∀ n, P11795226807409392518.a n = A381096 (n + 1)

end A381096

/-!
# A381097: Consider the polynomial P(m,z) = Sum_{i=1..k} d(i)*z^(i-1) where d(1), d(2), ..., d(k) are the k divisors of m. The sequence lists the numbers m such that P(m,z) is irreducible.

The programs for A381097, there is no canonical definition to state claims against.
-/

/-! ## A381097.P1219692787987007712

`∪[A009087(n+1), A027854(n+1)]`
-/

namespace A381097.P1219692787987007712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P1219692787987007712

/-! ## A381097.P15182669466882598072

`∪[A000040(n+1), A292226(n+1)]`
-/

namespace A381097.P15182669466882598072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P15182669466882598072

/-! ## A381097.P4219989913504788617

`∪[A000430(n+1), A292226(n+1)]`
-/

namespace A381097.P4219989913504788617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P4219989913504788617

/-! ## A381097.P7111849961404705224

`∪[A009087(n+1), A289484(n+1)]`
-/

namespace A381097.P7111849961404705224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P7111849961404705224

/-! ## A381097.P8130437690217322216

`∪[A009087(n+1), A292226(n+1)]`
-/

namespace A381097.P8130437690217322216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P8130437690217322216

/-! ## A381097.P7409088171716362316

`∪[A049551(n+1), A292226(n+1)]`
-/

namespace A381097.P7409088171716362316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P7409088171716362316

/-! ## A381097.P88857447659484403

`∪[A049569(n+1), A292226(n+1)]`
-/

namespace A381097.P88857447659484403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P88857447659484403

/-! ## A381097.P15416681839067843789

`∪[A050376(n+1), A292226(n+1)]`
-/

namespace A381097.P15416681839067843789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P15416681839067843789

/-! ## A381097.P7282565968755922308

`∪[A055398(n+1), A292226(n+1)]`
-/

namespace A381097.P7282565968755922308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P7282565968755922308

/-! ## A381097.P5265169716549744766

`∪[A057448(n+1), A292226(n+1)]`
-/

namespace A381097.P5265169716549744766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381097.P5265169716549744766

/-!
# A381099: a(n) is the smallest prime number that contains Fibonacci(n) as a substring.

The programs for A381099, there is no canonical definition to state claims against.
-/

/-! ## A381099.P872135792145729922

`A062584(A000045(n))`
-/

namespace A381099.P872135792145729922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A000045 n).toNat

end

end A381099.P872135792145729922

/-! ## A381099.P12596173444473769070

`A062584(2-(∑[a(n-1)-(1-a(n-2))]-n))` with `a(0)=2, a(1)=0`
-/

namespace A381099.P12596173444473769070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))).toNat

end

end A381099.P12596173444473769070

/-! ## A381099.P4934976277971486451

`A062584(sqrt(A007598(n)))`
-/

namespace A381099.P4934976277971486451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat

end

end A381099.P4934976277971486451

/-! ## A381099.P10586356622739323744

`A062584(A212804(n+1))`
-/

namespace A381099.P10586356622739323744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A212804 (n + 1)).toNat

end

end A381099.P10586356622739323744

