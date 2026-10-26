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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A305400: a(n) = round(1/(A073918(n)/prime(n)# - 1)), where A073918(n) = min { prime p | omega(p-1) = n } and p# = product of primes <= p.

The programs for A305400, there is no canonical definition to state claims against.
-/

/-! ## A305400.P5662905235293405043

`round(A002110(n)/(A073918(n)-A002110(n)))`
-/

namespace A305400.P5662905235293405043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002110 n : ℚ) / (A073918 n - A002110 n : ℚ))

end

end A305400.P5662905235293405043

/-!
# A305401: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where A(n,k) is Sum_{j=0..floor(n/2)} ((n-j)!/j!)*binomial(n-j,j)*k^(n-2*j).

The programs for A305401, there is no canonical definition to state claims against.
-/

/-! ## A305401.P8776408474566368015

`A309148(n+1)+A162782(A134001(n+2))`
-/

namespace A305401.P8776408474566368015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (n + 1) + A162782 (A134001 (n + 2)).toNat

end

end A305401.P8776408474566368015

/-! ## A305401.P490189627339124951

`A128888(n)-A162782(A265429(n))`
-/

namespace A305401.P490189627339124951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128888 n - A162782 (A265429 n).toNat

end

end A305401.P490189627339124951

/-! ## A305401.P9894846742276928366

`or(A128888(n), A162590(A276999(n)))`
-/

namespace A305401.P9894846742276928366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128888 n) (A162590 (A276999 n).toNat)

end

end A305401.P9894846742276928366

/-! ## A305401.P9537522471688217741

`A309148(n+1)-A162782(A173105(n+1))`
-/

namespace A305401.P9537522471688217741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309148 (n + 1) - A162782 (A173105 (n + 1)).toNat

end

end A305401.P9537522471688217741

/-!
# A305404: Expansion of Sum_{k>=0} (2*k - 1)!!*x^k/Product_{j=1..k} (1 - j*x).

The programs for A305404, there is no canonical definition to state claims against.
-/

/-! ## A305404.P1895006508681170009

`A260701(n+1)+A260701(n)`
-/

namespace A305404.P1895006508681170009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260701 (n + 1) + A260701 n

end

end A305404.P1895006508681170009

/-! ## A305404.P5385011476451708690

`A064789(or(round((n+3)*(n+6)/30), A060912(n)))`
-/

namespace A305404.P5385011476451708690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (Int.lor (SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n + 6 : ℚ) / 30))) (A060912 n)).toNat

end

end A305404.P5385011476451708690

/-!
# A305405: Expansion of Sum_{k>=0} k!!*x^k/Product_{j=1..k} (1 - j*x).

The programs for A305405, there is no canonical definition to state claims against.
-/

/-! ## A305405.P9893425153200979938

`A239495(ceil(2^(n-1)))+A000248(n)`
-/

namespace A305405.P9893425153200979938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239495 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A000248 n

end

end A305405.P9893425153200979938

/-! ## A305405.P8327192491819216966

`A000217(A001006(n))-A165111(A061121(n+1)+n)`
-/

namespace A305405.P8327192491819216966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001006 n).toNat - A165111 (A061121 (n + 1) + (n : ℤ)).toNat

end

end A305405.P8327192491819216966

/-!
# A305406: Expansion of Sum_{k>=0} binomial(2*k,k)*x^k/Product_{j=1..k} (1 - j*x).

The programs for A305406, there is no canonical definition to state claims against.
-/

/-! ## A305406.P17795511087205383285

`A065475(A222472(n+1))-n`
-/

namespace A305406.P17795511087205383285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A222472 (n + 1)).toNat - (n : ℤ)

end

end A305406.P17795511087205383285

/-! ## A305406.P14887234309210373657

`A326178(A222472(n+1)+1)-(n+1)`
-/

namespace A305406.P14887234309210373657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A222472 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A305406.P14887234309210373657

/-!
# A305407: Expansion of e.g.f. 1/(1 + log(1 - x)*exp(x)).

The programs for A305407, there is no canonical definition to state claims against.
-/

/-! ## A305407.P5365794771491269580

`A120733(n)-A337682(A193662(n))`
-/

namespace A305407.P5365794771491269580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 n - A337682 (A193662 n).toNat

end

end A305407.P5365794771491269580

/-! ## A305407.P9364185970498829876

`A309560(or(A113103(n), A158266(n)))`
-/

namespace A305407.P9364185970498829876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309560 (Int.lor (A113103 n) (A158266 n)).toNat

end

end A305407.P9364185970498829876

/-!
# A305408: Arises in the study of A303589, A303590 and A303591. Variant of A303592 with x=3.

The programs for A305408, there is no canonical definition to state claims against.
-/

/-! ## A305408.P1023462788142759273

`A209304(A014105(n)+A001961(n+1))`
-/

namespace A305408.P1023462788142759273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209304 (A014105 n + A001961 (n + 1)).toNat

end

end A305408.P1023462788142759273

/-! ## A305408.P4186826890838849007

`A303590(A187330(n+1))`
-/

namespace A305408.P4186826890838849007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (A187330 (n + 1)).toNat

end

end A305408.P4186826890838849007

/-! ## A305408.P1698463741126188205

`A303590(A187341(n+1)-(n+1))`
-/

namespace A305408.P1698463741126188205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (A187341 (n + 1) - (n + 1 : ℤ)).toNat

end

end A305408.P1698463741126188205

/-! ## A305408.P15660011333766805006

`A303590(4*n+2-A190511(n+1))`
-/

namespace A305408.P15660011333766805006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 ((4 * n + 2 : ℤ) - A190511 (n + 1)).toNat

end

end A305408.P15660011333766805006

/-! ## A305408.P14448755039688338062

`∩[A303590(n+1)-2, A303590(n+1)]`
-/

namespace A305408.P14448755039688338062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305408.P14448755039688338062

/-!
# A305409: Positive numbers that can be expressed as the product of 1 or more binary palindromes (elements of A006995).

The programs for A305409, there is no canonical definition to state claims against.
-/

/-! ## A305409.P16286339776385508653

`∪[A006995(A187829(n+1)+2), A342572(n+1)]`
-/

namespace A305409.P16286339776385508653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A187829 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305409.P16286339776385508653

/-! ## A305409.P13903371687715748296

`∪[A342572(A187829(n+1)), A006995(n+2)]`
-/

namespace A305409.P13903371687715748296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (A187829 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305409.P13903371687715748296

/-! ## A305409.P16676629145733099504

`record[and(A031285(n), A162742(n+1))]`
-/

namespace A305409.P16676629145733099504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031285 n) (A162742 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305409.P16676629145733099504

/-! ## A305409.P8234008669574685889

`eq[A000035(A360039(n+1)), A134451(n)]`
-/

namespace A305409.P8234008669574685889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A360039 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305409.P8234008669574685889

/-! ## A305409.P1581705017897041593

`lt[A222649(A039953(2*n+5)), A070435(3*n+1)]`
-/

namespace A305409.P1581705017897041593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A039953 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070435 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305409.P1581705017897041593

/-!
# A305410: a(1) = 1, and for any n > 0, a(2*n) = a(n) + k(n) and a(2*n+1) = a(n) + 2 * k(n) where k(n) is the least positive integer not leading to a duplicate term.

The programs for A305410, there is no canonical definition to state claims against.
-/

/-! ## A305410.P1338021603952601724

`A059893(n+1)-A185238(A073303(n))`
-/

namespace A305410.P1338021603952601724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A185238 (A073303 n).toNat

end

end A305410.P1338021603952601724

/-! ## A305410.P6418328800657325282

`A059893(n+1)-A198318(A123125(n))`
-/

namespace A305410.P6418328800657325282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A198318 (A123125 n).toNat

end

end A305410.P6418328800657325282

/-! ## A305410.P4617372095120294188

`A059893(n+1)-A185037(A165656(n))`
-/

namespace A305410.P4617372095120294188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A185037 (A165656 n).toNat

end

end A305410.P4617372095120294188

/-! ## A305410.P11531263444075541594

`A059893(n+1)-A185037(A185063(n))`
-/

namespace A305410.P11531263444075541594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1) - A185037 (A185063 n).toNat

end

end A305410.P11531263444075541594

/-! ## A305410.P4381420129862487510

`A331274(n+1)-A185238(A073303(n))`
-/

namespace A305410.P4381420129862487510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (n + 1) - A185238 (A073303 n).toNat

end

end A305410.P4381420129862487510

/-!
# A305411: Prime p numbers for which the sum with any prime number q <= p is not a square.

The programs for A305411, there is no canonical definition to state claims against.
-/

/-! ## A305411.P3950074455054394044

`A000040(A259226(n+1))`
-/

namespace A305411.P3950074455054394044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A259226 (n + 1)).toNat

end

end A305411.P3950074455054394044

/-! ## A305411.P5624457413656424058

`A008578(A259226(n+1)+1)`
-/

namespace A305411.P5624457413656424058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A259226 (n + 1) + 1).toNat

end

end A305411.P5624457413656424058

/-! ## A305411.P12920116311813859213

`A182986(A259226(n+1)+1)`
-/

namespace A305411.P12920116311813859213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A259226 (n + 1) + 1).toNat

end

end A305411.P12920116311813859213

/-! ## A305411.P8239586017418303202

`A065091(A259226(n+1)-1)`
-/

namespace A305411.P8239586017418303202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A259226 (n + 1) - 1).toNat

end

end A305411.P8239586017418303202

/-! ## A305411.P14954820464767643

`A158611(A259226(n+1)+2)`
-/

namespace A305411.P14954820464767643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A259226 (n + 1) + 2).toNat

end

end A305411.P14954820464767643

/-!
# A305412: a(n) = F(n)*F(n+1) + F(n+2), where F = A000045 (Fibonacci numbers).

The programs for A305412, the canonical program `A305412.P8950547441231504860` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305412 has offset 0).

The definition of A305412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(n+1)+A000045(n+2)` (program `A305412.P8950547441231504860`, by `A305412.P8950547441231504860.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305412.P1716667571928278372

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11, a(4)=23`
-/

namespace A305412.P1716667571928278372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 11, 23] fun n a =>
  3 * a (n - 1) + a (n - 2) - 5 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A305412.P1716667571928278372

namespace A305412

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P1716667571928278372.Spec : Prop :=
  ∀ n, P1716667571928278372.a n = A305412 n

end A305412

/-! ## A305412.P8950547441231504860

`A000045(n)*A000045(n+1)+A000045(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305412

/-- `A000045(n)*A000045(n+1)+A000045(n+2)` -/
def P8950547441231504860.Spec : Prop :=
  ∀ n, P8950547441231504860.a n = A305412 n

theorem P8950547441231504860.correct : P8950547441231504860.Spec := by
  intro n
  simp only [A305412]

end A305412

/-! ## A305412.P15386763875427226378

`∑[A059727(n)]+1`
-/

namespace A305412.P15386763875427226378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305412.P15386763875427226378

namespace A305412

/-- `∑[A059727(n)]+1` -/
def P15386763875427226378.Spec : Prop :=
  ∀ n, P15386763875427226378.a n = A305412 n

end A305412

/-! ## A305412.P14265167431740091536

`∑[2*A033192(n)]+1`
-/

namespace A305412.P14265167431740091536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305412.P14265167431740091536

namespace A305412

/-- `∑[2*A033192(n)]+1` -/
def P14265167431740091536.Spec : Prop :=
  ∀ n, P14265167431740091536.a n = A305412 n

end A305412

/-! ## A305412.P2288830119121407634

`A001654(n)+Δ[A001911(n)]`
-/

namespace A305412.P2288830119121407634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A305412.P2288830119121407634

namespace A305412

/-- `A001654(n)+Δ[A001911(n)]` -/
def P2288830119121407634.Spec : Prop :=
  ∀ n, P2288830119121407634.a n = A305412 n

end A305412

/-! ## A305412.P8344350353771390268

`A001654(n)+Δ[A020695(n)]`
-/

namespace A305412.P8344350353771390268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A305412.P8344350353771390268

namespace A305412

/-- `A001654(n)+Δ[A020695(n)]` -/
def P8344350353771390268.Spec : Prop :=
  ∀ n, P8344350353771390268.a n = A305412 n

end A305412

/-! ## A305412.P1012491779626743615

`A001654(n)+record[A212804(n)]`
-/

namespace A305412.P1012491779626743615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305412.P1012491779626743615

namespace A305412

/-- `A001654(n)+record[A212804(n)]` -/
def P1012491779626743615.Spec : Prop :=
  ∀ n, P1012491779626743615.a n = A305412 n

end A305412

/-! ## A305412.P12544082260263324013

`A286983(n+1)+A000045(n)`
-/

namespace A305412.P12544082260263324013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 1) + A000045 n

end

end A305412.P12544082260263324013

namespace A305412

/-- `A286983(n+1)+A000045(n)` -/
def P12544082260263324013.Spec : Prop :=
  ∀ n, P12544082260263324013.a n = A305412 n

end A305412

/-! ## A305412.P12788216013544718443

`A001654(n)+A000045(n+2)`
-/

namespace A305412.P12788216013544718443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A000045 (n + 2)

end

end A305412.P12788216013544718443

namespace A305412

/-- `A001654(n)+A000045(n+2)` -/
def P12788216013544718443.Spec : Prop :=
  ∀ n, P12788216013544718443.a n = A305412 n

end A305412

/-! ## A305412.P17180867041963602595

`A212804(n+3)+A001654(n)`
-/

namespace A305412.P17180867041963602595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) + A001654 n

end

end A305412.P17180867041963602595

namespace A305412

/-- `A212804(n+3)+A001654(n)` -/
def P17180867041963602595.Spec : Prop :=
  ∀ n, P17180867041963602595.a n = A305412 n

end A305412

/-! ## A305412.P1745621345410860372

`A096748(2*n)+A001654(n)`
-/

namespace A305412.P1745621345410860372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n) + A001654 n

end

end A305412.P1745621345410860372

namespace A305412

/-- `A096748(2*n)+A001654(n)` -/
def P1745621345410860372.Spec : Prop :=
  ∀ n, P1745621345410860372.a n = A305412 n

end A305412

/-! ## A305412.P15610538864778825152

`A001654(n)+Δ[Δ[A020701(n)]]`
-/

namespace A305412.P15610538864778825152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A305412.P15610538864778825152

namespace A305412

/-- `A001654(n)+Δ[Δ[A020701(n)]]` -/
def P15610538864778825152.Spec : Prop :=
  ∀ n, P15610538864778825152.a n = A305412 n

end A305412

/-! ## A305412.P3259828307327746228

`∑[A007598(n)+A000045(n)]+1`
-/

namespace A305412.P3259828307327746228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305412.P3259828307327746228

namespace A305412

/-- `∑[A007598(n)+A000045(n)]+1` -/
def P3259828307327746228.Spec : Prop :=
  ∀ n, P3259828307327746228.a n = A305412 n

end A305412

/-! ## A305412.P8203756590296238579

`∑[A000045(n)*A001611(n)]+1`
-/

namespace A305412.P8203756590296238579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A305412.P8203756590296238579

namespace A305412

/-- `∑[A000045(n)*A001611(n)]+1` -/
def P8203756590296238579.Spec : Prop :=
  ∀ n, P8203756590296238579.a n = A305412 n

end A305412

/-! ## A305412.P10845914500682908537

`∑[A152192(2*n)+A000045(n)]`
-/

namespace A305412.P10845914500682908537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (2 * n) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305412.P10845914500682908537

namespace A305412

/-- `∑[A152192(2*n)+A000045(n)]` -/
def P10845914500682908537.Spec : Prop :=
  ∀ n, P10845914500682908537.a n = A305412 n

end A305412

/-! ## A305412.P11358107334619889193

`record[A212804(n)]+∑[A000045(n)²]`
-/

namespace A305412.P11358107334619889193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A305412.P11358107334619889193

namespace A305412

/-- `record[A212804(n)]+∑[A000045(n)²]` -/
def P11358107334619889193.Spec : Prop :=
  ∀ n, P11358107334619889193.a n = A305412 n

end A305412

/-! ## A305412.P16804036820179592930

`A107387(n+2)+A000071(n+2)`
-/

namespace A305412.P16804036820179592930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (n + 2) + A000071 (n + 2)

end

end A305412.P16804036820179592930

namespace A305412

/-- `A107387(n+2)+A000071(n+2)` -/
def P16804036820179592930.Spec : Prop :=
  ∀ n, P16804036820179592930.a n = A305412 n

end A305412

/-! ## A305412.P16510430799417710028

`A053602(2*n+1)+A001654(n)`
-/

namespace A305412.P16510430799417710028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + A001654 n

end

end A305412.P16510430799417710028

namespace A305412

/-- `A053602(2*n+1)+A001654(n)` -/
def P16510430799417710028.Spec : Prop :=
  ∀ n, P16510430799417710028.a n = A305412 n

end A305412

/-! ## A305412.P696443418082953392

`A142975(n+1)+2*A000045(n)`
-/

namespace A305412.P696443418082953392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142975 (n + 1) + 2 * A000045 n

end

end A305412.P696443418082953392

namespace A305412

/-- `A142975(n+1)+2*A000045(n)` -/
def P696443418082953392.Spec : Prop :=
  ∀ n, P696443418082953392.a n = A305412 n

end A305412

/-! ## A305412.P8175187174157880962

`A074677(2*n)+A000045(n+2)`
-/

namespace A305412.P8175187174157880962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n) + A000045 (n + 2)

end

end A305412.P8175187174157880962

namespace A305412

/-- `A074677(2*n)+A000045(n+2)` -/
def P8175187174157880962.Spec : Prop :=
  ∀ n, P8175187174157880962.a n = A305412 n

end A305412

/-!
# A305413: a(n) = Fibonacci(11*n)/89.

The programs for A305413, the canonical program `A305413.P6895180319944270944` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305413 has offset 0).

The definition of A305413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305413.P6895180319944270944

`199*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305413

/-- `199*a(n-1)+a(n-2)` -/
def P6895180319944270944.Spec : Prop :=
  ∀ n, (P6895180319944270944.a n : ℤ) = A305413 n

theorem P6895180319944270944.correct : P6895180319944270944.Spec := by
  intro n
  simp only [A305413]

end A305413

/-! ## A305413.P16640950294700185310

`A167398(n)/89`
-/

namespace A305413.P16640950294700185310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167398 n : ℚ) / 89

end

end A305413.P16640950294700185310

namespace A305413

/-- `A167398(n)/89` -/
def P16640950294700185310.Spec : Prop :=
  ∀ n, P16640950294700185310.a n = (A305413 n : ℚ)

end A305413

/-! ## A305413.P3107479354777849185

`A000045(11*n)/89`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305413.P3107479354777849185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (11 * n) : ℚ) / 89

end

end A305413.P3107479354777849185

namespace A305413

/-- `A000045(11*n)/89` -/
def P3107479354777849185.Spec : Prop :=
  ∀ n, P3107479354777849185.a n = (A305413 n : ℚ)

end A305413

/-! ## A305413.P11636662431944670858

`A053602(22*n)/89`
-/

namespace A305413.P11636662431944670858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (22 * n) : ℚ) / 89

end

end A305413.P11636662431944670858

namespace A305413

/-- `A053602(22*n)/89` -/
def P11636662431944670858.Spec : Prop :=
  ∀ n, P11636662431944670858.a n = (A305413 n : ℚ)

end A305413

/-! ## A305413.P17187112749852295521

`A103609(22*n)/89`
-/

namespace A305413.P17187112749852295521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (22 * n) : ℚ) / 89

end

end A305413.P17187112749852295521

namespace A305413

/-- `A103609(22*n)/89` -/
def P17187112749852295521.Spec : Prop :=
  ∀ n, P17187112749852295521.a n = (A305413 n : ℚ)

end A305413

/-!
# A305415: Numbers k such that F(k)*F(k+1) - F(k+2) is prime, where F = A000045.

The programs for A305415, there is no canonical definition to state claims against.
-/

/-! ## A305415.P8186921307287852948

`lt[A298195(3*n+4), A227523(A000040(n+2))]`
-/

namespace A305415.P8186921307287852948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227523 (A000040 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305415.P8186921307287852948

/-!
# A305416: Negated discriminants of imaginary quadratic number fields whose class group is isomorphic to the Klein 8-group, C_2 x C_2 x C_2.

The programs for A305416, there is no canonical definition to state claims against.
-/

/-! ## A305416.P4851432252751564068

`∩[A003171(n+1), A033993(n+1)]`
-/

namespace A305416.P4851432252751564068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305416.P4851432252751564068

/-! ## A305416.P14696367049674920250

`∩[A003644(n+1), A033993(n+1)]`
-/

namespace A305416.P14696367049674920250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305416.P14696367049674920250

/-! ## A305416.P15912137447294036082

`∩[A003171(n+1), A046005(n+1)]`
-/

namespace A305416.P15912137447294036082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305416.P15912137447294036082

/-! ## A305416.P5092985225467745838

`∩[A003644(n+1), A046005(n+1)]`
-/

namespace A305416.P5092985225467745838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305416.P5092985225467745838

/-! ## A305416.P146574680950696549

`∩[A033993(n+1), A046005(n+1)]`
-/

namespace A305416.P146574680950696549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305416.P146574680950696549

/-!
# A305417: Permutation of natural numbers: a(0) = 1, a(2n) = A305421(a(n)), a(2n+1) = 2*a(n).

The programs for A305417, there is no canonical definition to state claims against.
-/

/-! ## A305417.P7443505093960610069

`A305427(A337909(n+1)-1)`
-/

namespace A305417.P7443505093960610069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (A337909 (n + 1) - 1).toNat

end

end A305417.P7443505093960610069

/-! ## A305417.P6085389242507240619

`A305427(A286546(n)+A233279(n))`
-/

namespace A305417.P6085389242507240619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (A286546 n + A233279 n).toNat

end

end A305417.P6085389242507240619

/-! ## A305417.P17304063888968511855

`A305427(xor(A234025(n), A280507(n)))`
-/

namespace A305417.P17304063888968511855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (Int.xor (A234025 n) (A280507 n)).toNat

end

end A305417.P17304063888968511855

/-! ## A305417.P9400789129842279582

`A305427(xor(A233279(n), A292600(n)))`
-/

namespace A305417.P9400789129842279582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A305417.P9400789129842279582

/-! ## A305417.P11160808431008251320

`A305427(A054429(2*n+1))/2`
-/

namespace A305417.P11160808431008251320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305427 (A054429 (2 * n + 1)).toNat : ℚ) / 2

end

end A305417.P11160808431008251320

/-! ## A305417.P5808968482153159188

`A091202(A005940(n+1))`
-/

namespace A305417.P5808968482153159188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A005940 (n + 1)).toNat

end

end A305417.P5808968482153159188

/-! ## A305417.P5559578878978791116

`A091202(A302024(A052330(n)))`
-/

namespace A305417.P5559578878978791116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A302024 (A052330 n).toNat).toNat

end

end A305417.P5559578878978791116

/-! ## A305417.P10238463624833330612

`A305427(A305418(A305427(n)))`
-/

namespace A305417.P10238463624833330612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 (A305418 (A305427 n).toNat).toNat

end

end A305417.P10238463624833330612

/-!
# A305418: Permutation of nonnegative integers: a(1) = 0, a(2n) = 1 + 2*a(n), a(2n+1) = 2*a(A305422(2n+1)).

The programs for A305418, there is no canonical definition to state claims against.
-/

/-! ## A305418.P4287816720403494770

`A156552(A091203(n+1))`
-/

namespace A305418.P4287816720403494770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A091203 (n + 1)).toNat

end

end A305418.P4287816720403494770

/-! ## A305418.P15695861563208317951

`A305428(A305417(A305428(n+1)))`
-/

namespace A305418.P15695861563208317951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305428 (A305417 (A305428 (n + 1)).toNat).toNat

end

end A305418.P15695861563208317951

/-! ## A305418.P117566088060151012

`A106445(A106442(A156552(A106445(n+1))))`
-/

namespace A305418.P117566088060151012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 (A106442 (A156552 (A106445 (n + 1)).toNat).toNat).toNat

end

end A305418.P117566088060151012

/-!
# A305419: Largest k < n whose binary expansion encodes an irreducible (0,1)-polynomial over GF(2)[X], with a(1) = a(2) = 1.

The programs for A305419, there is no canonical definition to state claims against.
-/

/-! ## A305419.P11212282941116673010

`(a(n-1)-n)*A091247(n)+n` with `a(0)=1`
-/

namespace A305419.P11212282941116673010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℤ)) * A091247 n + (n : ℤ)

end

end A305419.P11212282941116673010

/-! ## A305419.P7917902849069814788

`A305422(A305420(round(sqrt(n²+1))))`
-/

namespace A305419.P7917902849069814788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A305420 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A305419.P7917902849069814788

/-! ## A305419.P12919101494918139284

`A305420(a(n-1)-A091247(n))` with `a(0)=1, a(1)=1`
-/

namespace A305419.P12919101494918139284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A305420 (a (n - 1) - A091247 n).toNat

end

end A305419.P12919101494918139284

/-! ## A305419.P8687550874274213980

`A305422(A014580(A091226(n)+1))`
-/

namespace A305419.P8687550874274213980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A014580 (A091226 n + 1).toNat).toNat

end

end A305419.P8687550874274213980

/-! ## A305419.P791722899128190874

`A305422(A091229(n+1)+n+1)`
-/

namespace A305419.P791722899128190874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A091229 (n + 1) + (n + 1 : ℤ)).toNat

end

end A305419.P791722899128190874

/-! ## A305419.P4574648176653232877

`A305422(A091228(n+1))`
-/

namespace A305419.P4574648176653232877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A091228 (n + 1)).toNat

end

end A305419.P4574648176653232877

/-!
# A305420: Smallest k > n whose binary expansion encodes an irreducible (0,1)-polynomial over GF(2)[X].

The programs for A305420, there is no canonical definition to state claims against.
-/

/-! ## A305420.P17904437493509497269

`A091228(1+n+1)`
-/

namespace A305420.P17904437493509497269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091228 (1 + (n + 1))

end

end A305420.P17904437493509497269

/-! ## A305420.P17389737157977849389

`A014580(∑[A091225(n+1)]+1)`
-/

namespace A305420.P17389737157977849389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A305420.P17389737157977849389

/-! ## A305420.P257538814008804094

`A014580(∑[1-A091247(n+1)])`
-/

namespace A305420.P257538814008804094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P257538814008804094

/-! ## A305420.P5130412099701215852

`A014580(∑[A246201(n+1)%2])`
-/

namespace A305420.P5130412099701215852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246201 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P5130412099701215852

/-! ## A305420.P11056327493837404280

`A014580(∑[A246203(n+1)%2])`
-/

namespace A305420.P11056327493837404280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246203 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P11056327493837404280

/-! ## A305420.P11921866386640908431

`A014580(∑[and(1, A246201(n+1))])`
-/

namespace A305420.P11921866386640908431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A246201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P11921866386640908431

/-! ## A305420.P5245791621479644798

`A014580(∑[and(1, A246203(n+1))])`
-/

namespace A305420.P5245791621479644798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A246203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P5245791621479644798

/-! ## A305420.P10177604348328831574

`A014580(∑[xor(1, A091247(n+1))])`
-/

namespace A305420.P10177604348328831574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A091247 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P10177604348328831574

/-! ## A305420.P6471341213647951210

`A305419(A305421(A305419(n+2))+2)`
-/

namespace A305420.P6471341213647951210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (A305421 (A305419 (n + 2)).toNat + 2).toNat

end

end A305420.P6471341213647951210

/-! ## A305420.P15594915318948293967

`A014580(A091226(n+1)+1)`
-/

namespace A305420.P15594915318948293967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A091226 (n + 1) + 1).toNat

end

end A305420.P15594915318948293967

/-! ## A305420.P6793748290925272866

`A014580(∑[A010060(A246161(n+1))])`
-/

namespace A305420.P6793748290925272866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A246161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305420.P6793748290925272866

/-!
# A305421: GF(2)[X] factorization prime shift towards larger terms.

The programs for A305421, there is no canonical definition to state claims against.
-/

/-! ## A305421.P4869367465001227027

`2*A305423(n+1)-1`
-/

namespace A305421.P4869367465001227027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305423 (n + 1) - 1

end

end A305421.P4869367465001227027

/-! ## A305421.P14667032068087615944

`A305423(n+1)+A305423(n+1)-A285668(A000010(n+1))`
-/

namespace A305421.P14667032068087615944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305423 (n + 1) + (A305423 (n + 1) - A285668 (A000010 (n + 1)).toNat)

end

end A305421.P14667032068087615944

/-! ## A305421.P5929523046926768685

`A004273(A305423(n+1))`
-/

namespace A305421.P5929523046926768685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A305423 (n + 1)).toNat

end

end A305421.P5929523046926768685

/-! ## A305421.P6690542402175840812

`A005408(A305423(n+1)-1)`
-/

namespace A305421.P6690542402175840812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A305423 (n + 1) - 1).toNat

end

end A305421.P6690542402175840812

/-! ## A305421.P2091864348113965166

`A005843(A305423(n+1))-A010685(A005843(n))`
-/

namespace A305421.P2091864348113965166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A305423 (n + 1)).toNat - A010685 (A005843 n).toNat

end

end A305421.P2091864348113965166

/-! ## A305421.P8213107019045892929

`A005843(A305423(n+1))-A285668(A000010(n+1))`
-/

namespace A305421.P8213107019045892929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A305423 (n + 1)).toNat - A285668 (A000010 (n + 1)).toNat

end

end A305421.P8213107019045892929

/-! ## A305421.P7846441916260579561

`A014681(2*A305423(n+1))`
-/

namespace A305421.P7846441916260579561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A305423 (n + 1)).toNat

end

end A305421.P7846441916260579561

/-! ## A305421.P13558766985413971358

`A091202(A003961(A091203(n+1)))`
-/

namespace A305421.P13558766985413971358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A003961 (A091203 (n + 1)).toNat).toNat

end

end A305421.P13558766985413971358

/-! ## A305421.P5534614341560432255

`A305417(2*A305418(n+1))`
-/

namespace A305421.P5534614341560432255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (2 * A305418 (n + 1)).toNat

end

end A305421.P5534614341560432255

/-! ## A305421.P12297133734893211479

`A305417(A305418(n+1)+A305418(n+1))`
-/

namespace A305421.P12297133734893211479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (A305418 (n + 1) + A305418 (n + 1)).toNat

end

end A305421.P12297133734893211479

/-!
# A305422: GF(2)[X] factorization prime shift towards smaller terms.

The programs for A305422, there is no canonical definition to state claims against.
-/

/-! ## A305422.P8260982346803747912

`A305425((n+1)/2^val(n+1, 2))`
-/

namespace A305422.P8260982346803747912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A305422.P8260982346803747912

/-! ## A305422.P16217194931952873581

`A305425(A000265(n+1))`
-/

namespace A305422.P16217194931952873581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A000265 (n + 1)).toNat

end

end A305422.P16217194931952873581

/-! ## A305422.P9564073928735119206

`A305424(A003602(n+1))`
-/

namespace A305422.P9564073928735119206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305424 (A003602 (n + 1)).toNat

end

end A305422.P9564073928735119206

/-! ## A305422.P16900610161313758121

`A305424(A025480(n)+1)`
-/

namespace A305422.P16900610161313758121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305424 (A025480 n + 1).toNat

end

end A305422.P16900610161313758121

/-! ## A305422.P14623397853840977472

`A305425(A153733(n)+1)`
-/

namespace A305422.P14623397853840977472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A153733 n + 1).toNat

end

end A305422.P14623397853840977472

/-! ## A305422.P17998101138629525659

`A305425(A166466(n+1)/3)`
-/

namespace A305422.P17998101138629525659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A305422.P17998101138629525659

/-! ## A305422.P4559953992193403060

`A305425(2*A003602(n+1)-1)`
-/

namespace A305422.P4559953992193403060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (2 * A003602 (n + 1) - 1).toNat

end

end A305422.P4559953992193403060

/-! ## A305422.P2606815396804237714

`A305425(gcd(n+1, A166466(n+1)))`
-/

namespace A305422.P2606815396804237714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (Int.gcd (n + 1 : ℤ) (A166466 (n + 1)))

end

end A305422.P2606815396804237714

/-! ## A305422.P14073067205217723846

`A305425(A003602(n+1)+floor(n/and(n+1, -(n+1)))/2)`
-/

namespace A305422.P14073067205217723846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (SequenceMachineLib.roundAway ((A003602 (n + 1) : ℚ) + (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2)).toNat

end

end A305422.P14073067205217723846

/-! ## A305422.P15190147747792777929

`A305425(A003602(n+1)+and((n+1)/and(n+1, -(n+1)), -2)/2)`
-/

namespace A305422.P15190147747792777929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (SequenceMachineLib.roundAway ((A003602 (n + 1) : ℚ) + (Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (-2) : ℚ) / 2)).toNat

end

end A305422.P15190147747792777929

/-! ## A305422.P6414775736140566497

`A305425(A003602(n+1)+A003602(n+1)-1)`
-/

namespace A305422.P6414775736140566497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A003602 (n + 1) + (A003602 (n + 1) - 1)).toNat

end

end A305422.P6414775736140566497

/-! ## A305422.P3399947516208663313

`A091202(A064989(A091203(n+1)))`
-/

namespace A305422.P3399947516208663313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A064989 (A091203 (n + 1)).toNat).toNat

end

end A305422.P3399947516208663313

/-!
# A305423: Permutation of natural numbers: a(n) = (A305421(n)+1)/2.

The programs for A305423, there is no canonical definition to state claims against.
-/

/-! ## A305423.P8554489108136579500

`(1+A305421(n+1))/2`
-/

namespace A305423.P8554489108136579500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A305421 (n + 1) : ℚ) / 2

end

end A305423.P8554489108136579500

/-! ## A305423.P62628698497037124

`(A305421(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305423.P62628698497037124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305421 (n + 1) + 1 : ℚ) / 2

end

end A305423.P62628698497037124

/-! ## A305423.P2188153877879402124

`ceil(A305421(n+1)/2)`
-/

namespace A305423.P2188153877879402124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305421 (n + 1) : ℚ) / 2⌉

end

end A305423.P2188153877879402124

/-! ## A305423.P14449115052019821199

`A014682(A305421(n+1)+1)`
-/

namespace A305423.P14449115052019821199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A305421 (n + 1) + 1).toNat

end

end A305423.P14449115052019821199

/-! ## A305423.P502799312831237724

`A273943(A305421(n+1)+1)`
-/

namespace A305423.P502799312831237724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A305421 (n + 1) + 1).toNat

end

end A305423.P502799312831237724

/-! ## A305423.P6654724413353727185

`A304529(A305421(n+1)+1)`
-/

namespace A305423.P6654724413353727185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (A305421 (n + 1) + 1).toNat

end

end A305423.P6654724413353727185

/-! ## A305423.P5152093730164703073

`A305425(A305421(n+1)+1)`
-/

namespace A305423.P5152093730164703073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A305421 (n + 1) + 1).toNat

end

end A305423.P5152093730164703073

/-! ## A305423.P17141074206868282575

`A305438(A305421(n+1)+1)`
-/

namespace A305423.P17141074206868282575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305438 (A305421 (n + 1) + 1).toNat

end

end A305423.P17141074206868282575

/-! ## A305423.P13586653844901532554

`A246425(A305421(n+1))`
-/

namespace A305423.P13586653844901532554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A305421 (n + 1)).toNat

end

end A305423.P13586653844901532554

/-! ## A305423.P10265708396333931427

`A175126(A305421(n+1)+1)`
-/

namespace A305423.P10265708396333931427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A305421 (n + 1) + 1).toNat

end

end A305423.P10265708396333931427

/-! ## A305423.P8548921783914775197

`A325641(A305421(n+1)+1)`
-/

namespace A305423.P8548921783914775197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A305421 (n + 1) + 1).toNat

end

end A305423.P8548921783914775197

/-! ## A305423.P9304043530501924574

`A325642(A305421(n+1)+1)`
-/

namespace A305423.P9304043530501924574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A305421 (n + 1) + 1).toNat

end

end A305423.P9304043530501924574

/-! ## A305423.P16122398266320128786

`A004525(A305421(n+1)+1)`
-/

namespace A305423.P16122398266320128786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A305421 (n + 1) + 1).toNat

end

end A305423.P16122398266320128786

/-! ## A305423.P9659238343078170073

`A025480(A305421(n+1)+1)`
-/

namespace A305423.P9659238343078170073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A305421 (n + 1) + 1).toNat

end

end A305423.P9659238343078170073

/-! ## A305423.P17538573781668716515

`A026741(A305421(n+1)+1)`
-/

namespace A305423.P17538573781668716515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A305421 (n + 1) + 1).toNat

end

end A305423.P17538573781668716515

/-! ## A305423.P17716962695170614504

`A252463(A305421(n+1)+1)`
-/

namespace A305423.P17716962695170614504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A305421 (n + 1) + 1).toNat

end

end A305423.P17716962695170614504

/-! ## A305423.P2835841222245909831

`A008619(A305421(n+1)-1)`
-/

namespace A305423.P2835841222245909831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A305421 (n + 1) - 1).toNat

end

end A305423.P2835841222245909831

/-! ## A305423.P4250076831995588522

`A131732(A305421(n+1)-1)`
-/

namespace A305423.P4250076831995588522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A305421 (n + 1) - 1).toNat

end

end A305423.P4250076831995588522

/-! ## A305423.P9472523343831210223

`A008619(or(1, A305421(n+1)))`
-/

namespace A305423.P9472523343831210223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A305421 (n + 1))).toNat

end

end A305423.P9472523343831210223

/-! ## A305423.P5745263260006730459

`A008619(xor(1, A305421(n+1)))`
-/

namespace A305423.P5745263260006730459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 1 (A305421 (n + 1))).toNat

end

end A305423.P5745263260006730459

/-!
# A305424: Permutation of natural numbers: a(n) = A305422(2*n-1).

The programs for A305424, there is no canonical definition to state claims against.
-/

/-! ## A305424.P10328385679516374793

`A305422(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305424.P10328385679516374793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (2 * n + 1)

end

end A305424.P10328385679516374793

/-! ## A305424.P2946301151645407768

`A305422(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305424.P2946301151645407768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (2 * (n + 1) - 1)

end

end A305424.P2946301151645407768

/-! ## A305424.P15511283484173977159

`A305425(Δ[n²])`
-/

namespace A305424.P15511283484173977159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305424.P15511283484173977159

/-! ## A305424.P12986700706396739827

`or(char[3], A305425(2*n+1))`
-/

namespace A305424.P12986700706396739827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305425 (2 * n + 1))

end

end A305424.P12986700706396739827

/-! ## A305424.P10343559491432550527

`A304529(2*A305425(2*n+1))`
-/

namespace A305424.P10343559491432550527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (2 * A305425 (2 * n + 1)).toNat

end

end A305424.P10343559491432550527

/-! ## A305424.P8792086064493874080

`A304529(xor(2*(2*n+1), A005408(n)))`
-/

namespace A305424.P8792086064493874080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (Int.xor (2 * (2 * n + 1) : ℤ) (A005408 n)).toNat

end

end A305424.P8792086064493874080

/-! ## A305424.P370941904157743632

`gcd(2, A166466(n+2))*A305425(2*n+1)`
-/

namespace A305424.P370941904157743632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A166466 (n + 2)) : ℤ) * A305425 (2 * n + 1)

end

end A305424.P370941904157743632

/-! ## A305424.P9969703858565299416

`(A305425(2*(n+1))-n)*A305425(2*n+1)`
-/

namespace A305424.P9969703858565299416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A305425 (2 * (n + 1)) - (n : ℤ)) * A305425 (2 * n + 1)

end

end A305424.P9969703858565299416

/-! ## A305424.P2787141052278468720

`A305422(A005408(n))%A001248(n+1)`
-/

namespace A305424.P2787141052278468720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305422 (A005408 n).toNat) (A001248 (n + 1))

end

end A305424.P2787141052278468720

/-! ## A305424.P3592146833170076939

`A091225(A305419(2*n+3))*A305425(2*n+1)`
-/

namespace A305424.P3592146833170076939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A305419 (2 * n + 3)).toNat * A305425 (2 * n + 1)

end

end A305424.P3592146833170076939

/-! ## A305424.P17777372454533952911

`A305425(A000265(2*n+1))²/A305425(2*n+1)`
-/

namespace A305424.P17777372454533952911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305425 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A305425 (2 * n + 1) : ℚ)

end

end A305424.P17777372454533952911

/-! ## A305424.P14850291189058283114

`gcd(A305425(2*n+1)*A305425(n+2), A305425(2*n+1))`
-/

namespace A305424.P14850291189058283114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305425 (2 * n + 1) * A305425 (n + 2)) (A305425 (2 * n + 1))

end

end A305424.P14850291189058283114

/-! ## A305424.P3193534602624229701

`A305425(A106617(2*n+1))²/A305425(2*n+1)`
-/

namespace A305424.P3193534602624229701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305425 (A106617 (2 * n + 1)).toNat ^ 2 : ℚ) / (A305425 (2 * n + 1) : ℚ)

end

end A305424.P3193534602624229701

/-! ## A305424.P13885082149114329597

`A003602(2*n+1)*A305425(2*n+1)/A305425(2*(n+1))`
-/

namespace A305424.P13885082149114329597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * n + 1) * A305425 (2 * n + 1) : ℚ) / (A305425 (2 * (n + 1)) : ℚ)

end

end A305424.P13885082149114329597

/-! ## A305424.P9671552499995580863

`A305425(2*n+1)/A246277(2*(n+1))*A305425(2*(n+1))`
-/

namespace A305424.P9671552499995580863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305425 (2 * n + 1) : ℚ) / (A246277 (2 * (n + 1)) : ℚ) * (A305425 (2 * (n + 1)) : ℚ)

end

end A305424.P9671552499995580863

/-! ## A305424.P6073478762508481336

`A305425(2*n+1)/A252463(2*(n+1))*A305425(2*(n+1))`
-/

namespace A305424.P6073478762508481336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305425 (2 * n + 1) : ℚ) / (A252463 (2 * (n + 1)) : ℚ) * (A305425 (2 * (n + 1)) : ℚ)

end

end A305424.P6073478762508481336

/-! ## A305424.P14189021091796632494

`A193231(A193231(A305425(2*n+1)))`
-/

namespace A305424.P14189021091796632494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 (A305425 (2 * n + 1)).toNat).toNat

end

end A305424.P14189021091796632494

/-! ## A305424.P963757106094647856

`A054429(A054429(A305422(n+1+n)))`
-/

namespace A305424.P963757106094647856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A054429 (A305422 (n + 1 + n)).toNat).toNat

end

end A305424.P963757106094647856

/-! ## A305424.P7539401196957178264

`A246277(2*A305425(2*n+1))`
-/

namespace A305424.P7539401196957178264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * A305425 (2 * n + 1)).toNat

end

end A305424.P7539401196957178264

/-!
# A305425: a(n) = n/2 for even n, a(n) = A305422(n) for odd n.

The programs for A305425, there is no canonical definition to state claims against.
-/

/-! ## A305425.P10712793638781520049

`A152271(n)*A305422(A141310(n))`
-/

namespace A305425.P10712793638781520049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A305422 (A141310 n).toNat

end

end A305425.P10712793638781520049

/-! ## A305425.P3024136520246537359

`A152271(A028310(n))+A305422(A141310(n))-1`
-/

namespace A305425.P3024136520246537359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A028310 n).toNat + (A305422 (A141310 n).toNat - 1)

end

end A305425.P3024136520246537359

/-! ## A305425.P9071807541107533741

`A305422(n+1)+A152271(n)-A305422(A152271(n))`
-/

namespace A305425.P9071807541107533741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (n + 1) + (A152271 n - A305422 (A152271 n).toNat)

end

end A305425.P9071807541107533741

/-! ## A305425.P6283314554772682698

`A305417(floor(A305418(n+1)/2))`
-/

namespace A305425.P6283314554772682698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 ⌊(A305418 (n + 1) : ℚ) / 2⌋.toNat

end

end A305425.P6283314554772682698

/-! ## A305425.P3700786546138756387

`A305427(floor(A305428(n+1)/2))`
-/

namespace A305425.P3700786546138756387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305427 ⌊(A305428 (n + 1) : ℚ) / 2⌋.toNat

end

end A305425.P3700786546138756387

/-! ## A305425.P6639823830648465488

`A305422(A305427(or(1, A305428(n+1))))`
-/

namespace A305425.P6639823830648465488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A305427 (Int.lor 1 (A305428 (n + 1))).toNat).toNat

end

end A305425.P6639823830648465488

/-!
# A305426: Number of proper divisors of n of the form 2^k - 1 for k >= 1.

The programs for A305426, the canonical program `A305426.P17358610053433426674` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305426 has offset 1).

The definition of A305426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305426.P18277918637596616111

`A154402(n+1)-A036987(n+1)`
-/

namespace A305426.P18277918637596616111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1) - A036987 (n + 1)

end

end A305426.P18277918637596616111

namespace A305426

/-- `A154402(n+1)-A036987(n+1)` -/
def P18277918637596616111.Spec : Prop :=
  ∀ n, P18277918637596616111.a n = A305426 (n + 1)

theorem P18277918637596616111.correct : P18277918637596616111.Spec := by
  intro n
  simp only [A305426, Nat.add_sub_cancel, A305426.P18277918637596616111.a, A305426.P17358610053433426674.f1, A305426.P17358610053433426674.a, A036987, A036987.P1789601236562705309.a, A154402, A154402.P17788350560659442917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305426

/-! ## A305426.P10949494739990432838

`∑{d}[n+1, val(A006530(#%(n+1)+1), 2)]`
-/

namespace A305426.P10949494739990432838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A006530 (d % (n + 1) + 1)).toNat 2

end

end A305426.P10949494739990432838

namespace A305426

/-- `∑{d}[n+1, val(A006530(#%(n+1)+1), 2)]` -/
def P10949494739990432838.Spec : Prop :=
  ∀ n, (P10949494739990432838.a n : ℤ) = A305426 (n + 1)

end A305426

/-! ## A305426.P9013349614085871592

`A154402(n+1)-A209229(n+2)`
-/

namespace A305426.P9013349614085871592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1) - A209229 (n + 2)

end

end A305426.P9013349614085871592

namespace A305426

/-- `A154402(n+1)-A209229(n+2)` -/
def P9013349614085871592.Spec : Prop :=
  ∀ n, P9013349614085871592.a n = A305426 (n + 1)

end A305426

/-! ## A305426.P16452118320025782967

`A154402(n+1)-char[A000225(n)-1]`
-/

namespace A305426.P16452118320025782967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305426.P16452118320025782967

namespace A305426

/-- `A154402(n+1)-char[A000225(n)-1]` -/
def P16452118320025782967.Spec : Prop :=
  ∀ n, P16452118320025782967.a n = A305426 (n + 1)

end A305426

/-! ## A305426.P17358610053433426674

`∑{d}[n+1, A036987(#)]-A036987(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305426

/-- `∑{d}[n+1, A036987(#)]-A036987(n+1)` -/
def P17358610053433426674.Spec : Prop :=
  ∀ n, P17358610053433426674.a n = A305426 (n + 1)

theorem P17358610053433426674.correct : P17358610053433426674.Spec := by
  intro n
  simp only [A305426, Nat.add_sub_cancel]

end A305426

/-! ## A305426.P17045249166950782422

`∑{d}[n+1, A154402(#)*A157658((n+1)/#)]`
-/

namespace A305426.P17045249166950782422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154402 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305426.P17045249166950782422

namespace A305426

/-- `∑{d}[n+1, A154402(#)*A157658((n+1)/#)]` -/
def P17045249166950782422.Spec : Prop :=
  ∀ n, P17045249166950782422.a n = A305426 (n + 1)

end A305426

/-! ## A305426.P13259329222853644263

`A147645(n+1)+A353786(n+1)-A036987(n+1)`
-/

namespace A305426.P13259329222853644263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (n + 1) + (A353786 (n + 1) - A036987 (n + 1))

end

end A305426.P13259329222853644263

namespace A305426

/-- `A147645(n+1)+A353786(n+1)-A036987(n+1)` -/
def P13259329222853644263.Spec : Prop :=
  ∀ n, P13259329222853644263.a n = A305426 (n + 1)

theorem P13259329222853644263.correct : P13259329222853644263.Spec := by
  intro n
  simp only [A305426, Nat.add_sub_cancel, A305426.P13259329222853644263.a, A305426.P17358610053433426674.f1, A305426.P17358610053433426674.a, A036987, A036987.P1789601236562705309.a, A147645, A147645.P18114343884188253420.f1, A147645.P18114343884188253420.a, A353786, A353786.P13595873615884970514.a, A154402, A154402.P17788350560659442917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305426

/-!
# A305427: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = 2*a(n), a(2n+1) = A305421(a(n)).

The programs for A305427, there is no canonical definition to state claims against.
-/

/-! ## A305427.P9003404688862517809

`A305417(A286546(n)+A233279(n))`
-/

namespace A305427.P9003404688862517809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (A286546 n + A233279 n).toNat

end

end A305427.P9003404688862517809

/-! ## A305427.P10081568833607910813

`A305417(xor(A004526(n), A180201(n)))`
-/

namespace A305427.P10081568833607910813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (Int.xor (A004526 n) (A180201 n)).toNat

end

end A305427.P10081568833607910813

/-! ## A305427.P14104462814537326544

`A305417(xor(A234025(n), A280507(n)))`
-/

namespace A305427.P14104462814537326544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (Int.xor (A234025 n) (A280507 n)).toNat

end

end A305427.P14104462814537326544

/-! ## A305427.P1625221464219201590

`A305417(xor(A233279(n), A292600(n)))`
-/

namespace A305427.P1625221464219201590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A305427.P1625221464219201590

/-! ## A305427.P1672404119868819937

`A305417(A233279(xor(2*n, and(n, -2))/2))`
-/

namespace A305427.P1672404119868819937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (A233279 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat).toNat

end

end A305427.P1672404119868819937

/-! ## A305427.P10190131046400346886

`A305417(A233279(xor(2*n+1, or(1, n))/2))`
-/

namespace A305427.P10190131046400346886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (A233279 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2)).toNat).toNat

end

end A305427.P10190131046400346886

/-! ## A305427.P8414591143676813295

`A091202(A163511(n))`
-/

namespace A305427.P8414591143676813295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A163511 n).toNat

end

end A305427.P8414591143676813295

/-! ## A305427.P8726417392289811700

`A305422(A305417(A054429(2*n+1)))`
-/

namespace A305427.P8726417392289811700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A305417 (A054429 (2 * n + 1)).toNat).toNat

end

end A305427.P8726417392289811700

/-! ## A305427.P2083653281265448170

`A305417(A305428(A305417(n)))`
-/

namespace A305427.P2083653281265448170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305417 (A305428 (A305417 n).toNat).toNat

end

end A305427.P2083653281265448170

/-!
# A305428: Permutation of nonnegative integers: a(1) = 0, a(2) = 1, a(2n) = 2*a(n), a(2n+1) = 1 + 2*a(A305422(2n+1)).

The programs for A305428, there is no canonical definition to state claims against.
-/

/-! ## A305428.P16925085749767035621

`A243071(A091203(n+1))`
-/

namespace A305428.P16925085749767035621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A091203 (n + 1)).toNat

end

end A305428.P16925085749767035621

/-! ## A305428.P13276758395759889939

`A305418(A305427(A305418(n+1)))`
-/

namespace A305428.P13276758395759889939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305418 (A305427 (A305418 (n + 1)).toNat).toNat

end

end A305428.P13276758395759889939

/-! ## A305428.P7253941419245591096

`A154437(A184955(A006368(n))+n)`
-/

namespace A305428.P7253941419245591096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A184955 (A006368 n).toNat + (n : ℤ)).toNat

end

end A305428.P7253941419245591096

/-! ## A305428.P18244732602284411652

`or(A014589(A000129(n)), A153152(n))`
-/

namespace A305428.P18244732602284411652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014589 (A000129 n).toNat) (A153152 n)

end

end A305428.P18244732602284411652

/-!
# A305429: Largest k < n whose binary expansion encodes an irreducible (0,1)-polynomial over Q, with a(1) = a(2) = 1.

The programs for A305429, there is no canonical definition to state claims against.
-/

/-! ## A305429.P11483437307349259631

`A028310(n)+1-A305300(A028310(n))`
-/

namespace A305429.P11483437307349259631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A305300 (A028310 n).toNat)

end

end A305429.P11483437307349259631

/-! ## A305429.P690854808594302304

`A004277(n)-(n-1)-A305300(A028310(n))`
-/

namespace A305429.P690854808594302304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - ((n : ℤ) - 1) - A305300 (A028310 n).toNat

end

end A305429.P690854808594302304

/-! ## A305429.P4949812914778675845

`A000007(n)+n-A305300(A000007(n)+n)+1`
-/

namespace A305429.P4949812914778675845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) - A305300 (A000007 n + (n : ℤ)).toNat + 1

end

end A305429.P4949812914778675845

/-! ## A305429.P7240214097542470714

`A028310(2-(n-A004273(n)))-A305300(A028310(n))`
-/

namespace A305429.P7240214097542470714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 - ((n : ℤ) - A004273 n)).toNat - A305300 (A028310 n).toNat

end

end A305429.P7240214097542470714

/-! ## A305429.P4004375043567225140

`A057428(n)*A305300(A233583(n+1))+n+1`
-/

namespace A305429.P4004375043567225140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A305300 (A233583 (n + 1)).toNat + (n + 1 : ℤ)

end

end A305429.P4004375043567225140

/-! ## A305429.P15753870422840859908

`A233583(n+2)-A305300(A233583(n+1))`
-/

namespace A305429.P15753870422840859908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2) - A305300 (A233583 (n + 1)).toNat

end

end A305429.P15753870422840859908

/-! ## A305429.P1484304319885121456

`A186891(A000005(2^A255574(n)))`
-/

namespace A305429.P1484304319885121456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A255574 n : ℤ))).toNat).toNat

end

end A305429.P1484304319885121456

/-!
# A305430: Smallest k > n whose binary expansion encodes an irreducible (0,1)-polynomial over Q.

The programs for A305430, there is no canonical definition to state claims against.
-/

/-! ## A305430.P6486749246006321448

`A206074(A255574(n+1)+1)`
-/

namespace A305430.P6486749246006321448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (A255574 (n + 1) + 1).toNat

end

end A305430.P6486749246006321448

/-! ## A305430.P10027779881819996324

`A206074(∑[char[A206074(n+1)-1]]+1)`
-/

namespace A305430.P10027779881819996324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305430.P10027779881819996324

/-! ## A305430.P534172101132087475

`A206074(∑[A260421(n+1)%2])`
-/

namespace A305430.P534172101132087475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260421 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305430.P534172101132087475

/-! ## A305430.P7097647761737363004

`A206074(∑[and(1, A260421(n+1))])`
-/

namespace A305430.P7097647761737363004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260421 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305430.P7097647761737363004

/-! ## A305430.P8338902920588558589

`A206074(n+1-A255572(n+1))`
-/

namespace A305430.P8338902920588558589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 ((n + 1 : ℤ) - A255572 (n + 1)).toNat

end

end A305430.P8338902920588558589

/-! ## A305430.P3524797091794179719

`A206074(n+2-A255573(n+1))`
-/

namespace A305430.P3524797091794179719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 ((n + 2 : ℤ) - A255573 (n + 1)).toNat

end

end A305430.P3524797091794179719

/-!
# A305431: Restricted growth sequence transform of A278222(A305295(n)), constructed from runlengths of 1-digits in base-3 representation of A245612(n).

The programs for A305431, there is no canonical definition to state claims against.
-/

/-! ## A305431.P3225713871062402931

`A340381(A163511(n)%A216569(n+1))`
-/

namespace A305431.P3225713871062402931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340381 (Int.tmod (A163511 n) (A216569 (n + 1))).toNat

end

end A305431.P3225713871062402931

/-! ## A305431.P10410928911432502149

`A340381(A163511(n))%A237226(n+1)`
-/

namespace A305431.P10410928911432502149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340381 (A163511 n).toNat) (A237226 (n + 1))

end

end A305431.P10410928911432502149

/-! ## A305431.P4459220946700264476

`gcd(A000947(n+7), A241639(n))`
-/

namespace A305431.P4459220946700264476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000947 (n + 7)) (A241639 n)

end

end A305431.P4459220946700264476

/-! ## A305431.P12116704097023168921

`A135010(A050055(2*n+5)-(n+8))`
-/

namespace A305431.P12116704097023168921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A050055 (2 * n + 5) - (n + 8 : ℤ)).toNat

end

end A305431.P12116704097023168921

/-! ## A305431.P7067522233319703996

`A060118(A245355(n)^A214248(n))`
-/

namespace A305431.P7067522233319703996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (SequenceMachineLib.roundAway ((A245355 n : ℚ) ^ (A214248 n : ℤ))).toNat

end

end A305431.P7067522233319703996

/-!
# A305432: Restricted growth sequence transform of A278222(A291763(n)), constructed from runlengths of 2-digits in base-3 representation of A245612(n).

The programs for A305432, there is no canonical definition to state claims against.
-/

/-! ## A305432.P7592656878785381979

`A322868(2^A291763(n))`
-/

namespace A305432.P7592656878785381979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322868 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A291763 n : ℤ))).toNat

end

end A305432.P7592656878785381979

/-! ## A305432.P17134060790987349209

`A000120(A158575(A291763(n)))`
-/

namespace A305432.P17134060790987349209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A158575 (A291763 n).toNat).toNat

end

end A305432.P17134060790987349209

/-! ## A305432.P4085075030915329699

`A000120(A008458(A291763(n))²)`
-/

namespace A305432.P4085075030915329699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008458 (A291763 n).toNat ^ 2).toNat

end

end A305432.P4085075030915329699

/-! ## A305432.P1612557362190837997

`A246029(A291763(n)^A285865(n))`
-/

namespace A305432.P1612557362190837997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.roundAway ((A291763 n : ℚ) ^ (A285865 n : ℤ))).toNat

end

end A305432.P1612557362190837997

/-! ## A305432.P16681535038383465132

`A067029(A172316(n)+A033950(n+1))`
-/

namespace A305432.P16681535038383465132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A172316 n + A033950 (n + 1)).toNat

end

end A305432.P16681535038383465132

/-!
# A305434: Restricted growth sequence transform of A285713, formed from the prime signature of A245612(n).

The programs for A305434, there is no canonical definition to state claims against.
-/

/-! ## A305434.P7817535265308276847

`A018767(A285713(n))%7`
-/

namespace A305434.P7817535265308276847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018767 (A285713 n).toNat) 7

end

end A305434.P7817535265308276847

/-! ## A305434.P180585953110120313

`A333257(A333260(n+2)%A333292(n+1))`
-/

namespace A305434.P180585953110120313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 (Int.tmod (A333260 (n + 2)) (A333292 (n + 1))).toNat

end

end A305434.P180585953110120313

/-! ## A305434.P15739986407812316486

`∑{e}[A127207(A127208(n+1)), #]+1`
-/

namespace A305434.P15739986407812316486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127207 (A127208 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A305434.P15739986407812316486

/-! ## A305434.P9198554135464256473

`A297165(∑{e}[A189021(n+4)+A047102(n)+1, #])`
-/

namespace A305434.P9198554135464256473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (n + 4) + A047102 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297165 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A305434.P9198554135464256473

/-!
# A305435: Number of proper divisors of n of the form 2^k + 1 for k >= 0.

The programs for A305435, the canonical program `A305435.P18152213335711284477` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305435 has offset 1).

The definition of A305435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305435.P15459784306117562165

`A305436(n+1)-A209229(n)`
-/

namespace A305435.P15459784306117562165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (n + 1) - A209229 n

end

end A305435.P15459784306117562165

namespace A305435

/-- `A305436(n+1)-A209229(n)` -/
def P15459784306117562165.Spec : Prop :=
  ∀ n, P15459784306117562165.a n = A305435 (n + 1)

theorem P15459784306117562165.correct : P15459784306117562165.Spec := by
  intro n
  simp only [A305435, Nat.add_sub_cancel, A305435.P15459784306117562165.a, A305435.P18152213335711284477.f1, A305435.P18152213335711284477.a, A057427, A057427.P3058147525557661423.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, A305436, A305436.P441139788158163296.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305435

/-! ## A305435.P12562346774581584682

`A305436(n+1)-char[A344110(n)]`
-/

namespace A305435.P12562346774581584682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344110 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305435.P12562346774581584682

namespace A305435

/-- `A305436(n+1)-char[A344110(n)]` -/
def P12562346774581584682.Spec : Prop :=
  ∀ n, P12562346774581584682.a n = A305435 (n + 1)

end A305435

/-! ## A305435.P5110211729697554631

`A305436(n+1)-char[A317926(n+1)]`
-/

namespace A305435.P5110211729697554631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305435.P5110211729697554631

namespace A305435

/-- `A305436(n+1)-char[A317926(n+1)]` -/
def P5110211729697554631.Spec : Prop :=
  ∀ n, P5110211729697554631.a n = A305435 (n + 1)

end A305435

/-! ## A305435.P1288967114284417768

`∑{d}[n+1, A157658(#)*A305436((n+1)/#)]`
-/

namespace A305435.P1288967114284417768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A305436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305435.P1288967114284417768

namespace A305435

/-- `∑{d}[n+1, A157658(#)*A305436((n+1)/#)]` -/
def P1288967114284417768.Spec : Prop :=
  ∀ n, P1288967114284417768.a n = A305435 (n + 1)

end A305435

/-! ## A305435.P18152213335711284477

`∑{d}[n+1, A057427(#-1)*A209229((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305435

/-- `∑{d}[n+1, A057427(#-1)*A209229((n+1)/#-1)]` -/
def P18152213335711284477.Spec : Prop :=
  ∀ n, P18152213335711284477.a n = A305435 (n + 1)

theorem P18152213335711284477.correct : P18152213335711284477.Spec := by
  intro n
  simp only [A305435, Nat.add_sub_cancel]

end A305435

/-!
# A305436: Number of divisors of n of the form 2^k + 1 for k >= 0.

The programs for A305436, the canonical program `A305436.P441139788158163296` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305436 has offset 1).

The definition of A305436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A305435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305436.P441139788158163296

`A305435(n+1)+A209229(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A305436

/-- `A305435(n+1)+A209229(n)` -/
def P441139788158163296.Spec : Prop :=
  ∀ n, P441139788158163296.a n = A305436 (n + 1)

theorem P441139788158163296.correct : P441139788158163296.Spec := by
  intro n
  simp only [A305436, Nat.add_sub_cancel]

end A305436

/-! ## A305436.P12672366800603908802

`∑{d}[n+1, A209229(#-1)]`
-/

namespace A305436.P12672366800603908802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 (d - 1)

end

end A305436.P12672366800603908802

namespace A305436

/-- `∑{d}[n+1, A209229(#-1)]` -/
def P12672366800603908802.Spec : Prop :=
  ∀ n, P12672366800603908802.a n = A305436 (n + 1)

end A305436

/-! ## A305436.P2130224284492730006

`∑{d}[n+1, A178333(A000120(#-1))]`
-/

namespace A305436.P2130224284492730006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178333 (A000120 (d - 1)).toNat

end

end A305436.P2130224284492730006

namespace A305436

/-- `∑{d}[n+1, A178333(A000120(#-1))]` -/
def P2130224284492730006.Spec : Prop :=
  ∀ n, P2130224284492730006.a n = A305436 (n + 1)

end A305436

/-! ## A305436.P12351349529453066232

`A305435(7*(n+1))`
-/

namespace A305436.P12351349529453066232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (7 * (n + 1))

end

end A305436.P12351349529453066232

namespace A305436

/-- `A305435(7*(n+1))` -/
def P12351349529453066232.Spec : Prop :=
  ∀ n, P12351349529453066232.a n = A305436 (n + 1)

end A305436

/-! ## A305436.P16552129906493838856

`∑{d}[n+1, A151774(#-1+#)]`
-/

namespace A305436.P16552129906493838856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151774 ((d : ℤ) - 1 + (d : ℤ)).toNat

end

end A305436.P16552129906493838856

namespace A305436

/-- `∑{d}[n+1, A151774(#-1+#)]` -/
def P16552129906493838856.Spec : Prop :=
  ∀ n, P16552129906493838856.a n = A305436 (n + 1)

end A305436

/-!
# A305437: Running index for the lexicographically least irreducible factor when (0,1)-polynomial obtained from the binary expansion of n is factored over Q.

The programs for A305437, there is no canonical definition to state claims against.
-/

/-! ## A305437.P17514546885023301467

`A102413(A181154(n))+A055396(n+1)`
-/

namespace A305437.P17514546885023301467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102413 (A181154 n).toNat + A055396 (n + 1)

end

end A305437.P17514546885023301467

/-! ## A305437.P12184714144774251593

`A105535(A186746(n))+A055396(n+1)`
-/

namespace A305437.P12184714144774251593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (A186746 n).toNat + A055396 (n + 1)

end

end A305437.P12184714144774251593

/-! ## A305437.P8079137126567555151

`A165889(A165878(n))+A055396(n+1)`
-/

namespace A305437.P8079137126567555151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165889 (A165878 n).toNat + A055396 (n + 1)

end

end A305437.P8079137126567555151

/-! ## A305437.P9918938263565426397

`A277707(∏{p}[n+1, #])+A165889(A165878(n))`
-/

namespace A305437.P9918938263565426397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n), p) + A165889 (A165878 n).toNat

end

end A305437.P9918938263565426397

/-! ## A305437.P6960761228081542389

`A348039(A171967(2*n+1))+A055396(n+1)`
-/

namespace A305437.P6960761228081542389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 (A171967 (2 * n + 1)).toNat + A055396 (n + 1)

end

end A305437.P6960761228081542389

/-!
# A305438: Number of times the lexicographically least irreducible factor of (0,1)-polynomial (when factored over Q) obtained from the binary expansion of n occurs as the lexicographically least factor for numbers <= n; a(1) = 1.

The programs for A305438, there is no canonical definition to state claims against.
-/

/-! ## A305438.P9934396545656385126

`gcd(A220470(n+1), A246277(n+1))`
-/

namespace A305438.P9934396545656385126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220470 (n + 1)) (A246277 (n + 1))

end

end A305438.P9934396545656385126

/-! ## A305438.P7620232900013178801

`A246277(n+1)^A035444(A239261(n))`
-/

namespace A305438.P7620232900013178801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246277 (n + 1) : ℚ) ^ (A035444 (A239261 n).toNat : ℤ)

end

end A305438.P7620232900013178801

/-! ## A305438.P8562808051596642900

`gcd(A003056(A079981(n)), A246277(n+1))`
-/

namespace A305438.P8562808051596642900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 (A079981 n).toNat) (A246277 (n + 1))

end

end A305438.P8562808051596642900

/-! ## A305438.P10679412264265679787

`A246277(n+1)^A035444(A035444(n)²)`
-/

namespace A305438.P10679412264265679787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246277 (n + 1) : ℚ) ^ (A035444 (A035444 n ^ 2).toNat : ℤ)

end

end A305438.P10679412264265679787

/-! ## A305438.P3775474134522198067

`ceil(gcd(A118038(n), A348717(n+1))/2)`
-/

namespace A305438.P3775474134522198067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd (A118038 n) (A348717 (n + 1)) : ℚ) / 2⌉

end

end A305438.P3775474134522198067

/-!
# A305439: a(n) = A046645(n) - A007949(n); the 2-adic valuation of A317932.

The programs for A305439, the canonical program `A305439.P10396080351550377806` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305439 has offset 1).

The definition of A305439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305439.P10396080351550377806

`A046645(n+1)-A007949(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A305439

/-- `A046645(n+1)-A007949(n+1)` -/
def P10396080351550377806.Spec : Prop :=
  ∀ n, P10396080351550377806.a n = A305439 (n + 1)

theorem P10396080351550377806.correct : P10396080351550377806.Spec := by
  intro n
  simp only [A305439, Nat.add_sub_cancel]

end A305439

/-! ## A305439.P6336753183124593902

`A007814(A317932(n+1))`
-/

namespace A305439.P6336753183124593902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A317932 (n + 1)).toNat

end

end A305439.P6336753183124593902

namespace A305439

/-- `A007814(A317932(n+1))` -/
def P6336753183124593902.Spec : Prop :=
  ∀ n, P6336753183124593902.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P8053816333523926893

`log2(A046644(n+1)/2^val(n+1, 3))`
-/

namespace A305439.P8053816333523926893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A046644 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) : ℝ)

end

end A305439.P8053816333523926893

namespace A305439

/-- `log2(A046644(n+1)/2^val(n+1, 3))` -/
def P8053816333523926893.Spec : Prop :=
  ∀ n, P8053816333523926893.a n = (A305439 (n + 1) : ℝ)

end A305439

/-! ## A305439.P17375225812891203872

`A318315(n+1)+A106799(n+1)`
-/

namespace A305439.P17375225812891203872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (n + 1) + A106799 (n + 1)

end

end A305439.P17375225812891203872

namespace A305439

/-- `A318315(n+1)+A106799(n+1)` -/
def P17375225812891203872.Spec : Prop :=
  ∀ n, P17375225812891203872.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P5569047575867142643

`log2(A046644(n+1))-A007949(n+1)`
-/

namespace A305439.P5569047575867142643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046644 (n + 1) : ℝ) - (A007949 (n + 1) : ℝ)

end

end A305439.P5569047575867142643

namespace A305439

/-- `log2(A046644(n+1))-A007949(n+1)` -/
def P5569047575867142643.Spec : Prop :=
  ∀ n, P5569047575867142643.a n = (A305439 (n + 1) : ℝ)

end A305439

/-! ## A305439.P11243828481933407570

`val(A317932(n+1), A020639(A299150(n+3)))`
-/

namespace A305439.P11243828481933407570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317932 (n + 1)).toNat (A020639 (A299150 (n + 3)).toNat).toNat

end

end A305439.P11243828481933407570

namespace A305439

/-- `val(A317932(n+1), A020639(A299150(n+3)))` -/
def P11243828481933407570.Spec : Prop :=
  ∀ n, (P11243828481933407570.a n : ℤ) = A305439 (n + 1)

end A305439

/-! ## A305439.P11532410008406194202

`A007814(n+1)+A318440(n+1)-A007949(n+1)`
-/

namespace A305439.P11532410008406194202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A318440 (n + 1) - A007949 (n + 1))

end

end A305439.P11532410008406194202

namespace A305439

/-- `A007814(n+1)+A318440(n+1)-A007949(n+1)` -/
def P11532410008406194202.Spec : Prop :=
  ∀ n, P11532410008406194202.a n = A305439 (n + 1)

theorem P11532410008406194202.correct : P11532410008406194202.Spec := by
  intro n
  simp only [A305439, Nat.add_sub_cancel, A305439.P11532410008406194202.a, A305439.P10396080351550377806.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A046645, A046645.P11243749111570164507.a, A318440, A318440.P5886094417818087707.a, A001511, A001511.P17146462531039486101.a, A046644, A046644.P16655248551205198622.f1, A046644.P16655248551205198622.a, A006519, A006519.P10435570611646570274.a, A046161, A046161.P11774724709527425901.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A305439

/-! ## A305439.P7579643841717464104

`A318440(A061898(n+1))`
-/

namespace A305439.P7579643841717464104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A061898 (n + 1)).toNat

end

end A305439.P7579643841717464104

namespace A305439

/-- `A318440(A061898(n+1))` -/
def P7579643841717464104.Spec : Prop :=
  ∀ n, P7579643841717464104.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P13322224019299855859

`A318440(A064614(n+1))`
-/

namespace A305439.P13322224019299855859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A064614 (n + 1)).toNat

end

end A305439.P13322224019299855859

namespace A305439

/-- `A318440(A064614(n+1))` -/
def P13322224019299855859.Spec : Prop :=
  ∀ n, P13322224019299855859.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P13925823903504397351

`A318440(A072027(n+1))`
-/

namespace A305439.P13925823903504397351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A072027 (n + 1)).toNat

end

end A305439.P13925823903504397351

namespace A305439

/-- `A318440(A072027(n+1))` -/
def P13925823903504397351.Spec : Prop :=
  ∀ n, P13925823903504397351.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P9863100631117631192

`A318440(A234747(n+1))`
-/

namespace A305439.P9863100631117631192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A234747 (n + 1)).toNat

end

end A305439.P9863100631117631192

namespace A305439

/-- `A318440(A234747(n+1))` -/
def P9863100631117631192.Spec : Prop :=
  ∀ n, P9863100631117631192.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P9532140192545679750

`∑{d}[A317932(n+1), A001221(#)]`
-/

namespace A305439.P9532140192545679750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A305439.P9532140192545679750

namespace A305439

/-- `∑{d}[A317932(n+1), A001221(#)]` -/
def P9532140192545679750.Spec : Prop :=
  ∀ n, P9532140192545679750.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P13194674627411060417

`val(A317932(n+1), A020639(A317932(2*(n+1))))`
-/

namespace A305439.P13194674627411060417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A317932 (n + 1)).toNat (A020639 (A317932 (2 * (n + 1))).toNat).toNat

end

end A305439.P13194674627411060417

namespace A305439

/-- `val(A317932(n+1), A020639(A317932(2*(n+1))))` -/
def P13194674627411060417.Spec : Prop :=
  ∀ n, (P13194674627411060417.a n : ℤ) = A305439 (n + 1)

end A305439

/-! ## A305439.P15286379616482990417

`A317946((n+1)*A038502(n+1))`
-/

namespace A305439.P15286379616482990417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 ((n + 1 : ℤ) * A038502 (n + 1)).toNat

end

end A305439.P15286379616482990417

namespace A305439

/-- `A317946((n+1)*A038502(n+1))` -/
def P15286379616482990417.Spec : Prop :=
  ∀ n, P15286379616482990417.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P8823897036449331528

`A000120(A317932(n+1)-1)`
-/

namespace A305439.P8823897036449331528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A317932 (n + 1) - 1).toNat

end

end A305439.P8823897036449331528

namespace A305439

/-- `A000120(A317932(n+1)-1)` -/
def P8823897036449331528.Spec : Prop :=
  ∀ n, P8823897036449331528.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P15751220509508040759

`A002487(A317932(n+1)-1)`
-/

namespace A305439.P15751220509508040759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A317932 (n + 1) - 1).toNat

end

end A305439.P15751220509508040759

namespace A305439

/-- `A002487(A317932(n+1)-1)` -/
def P15751220509508040759.Spec : Prop :=
  ∀ n, P15751220509508040759.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P15842041847928321438

`A283997(A317932(n+1)-1)`
-/

namespace A305439.P15842041847928321438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283997 (A317932 (n + 1) - 1).toNat

end

end A305439.P15842041847928321438

namespace A305439

/-- `A283997(A317932(n+1)-1)` -/
def P15842041847928321438.Spec : Prop :=
  ∀ n, P15842041847928321438.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P8676598737680508299

`A000120(A046644(n+1)-A318666(n+1))`
-/

namespace A305439.P8676598737680508299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A046644 (n + 1) - A318666 (n + 1)).toNat

end

end A305439.P8676598737680508299

namespace A305439

/-- `A000120(A046644(n+1)-A318666(n+1))` -/
def P8676598737680508299.Spec : Prop :=
  ∀ n, P8676598737680508299.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P17119299443409127216

`A318440(A234748(n+1))`
-/

namespace A305439.P17119299443409127216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A234748 (n + 1)).toNat

end

end A305439.P17119299443409127216

namespace A305439

/-- `A318440(A234748(n+1))` -/
def P17119299443409127216.Spec : Prop :=
  ∀ n, P17119299443409127216.a n = A305439 (n + 1)

end A305439

/-! ## A305439.P17493363749723803873

`A318440(A234743(n+1))`
-/

namespace A305439.P17493363749723803873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A234743 (n + 1)).toNat

end

end A305439.P17493363749723803873

namespace A305439

/-- `A318440(A234743(n+1))` -/
def P17493363749723803873.Spec : Prop :=
  ∀ n, P17493363749723803873.a n = A305439 (n + 1)

end A305439

/-!
# A305440: Indices k such that A292518(k) = 0.

The programs for A305440, there is no canonical definition to state claims against.
-/

/-! ## A305440.P9660984068864181434

`eq[0, A292518(n)]`
-/

namespace A305440.P9660984068864181434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305440.P9660984068864181434

/-! ## A305440.P18177408612506188505

`record[gcd(n, A292518(n+1))+1]`
-/

namespace A305440.P18177408612506188505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292518 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305440.P18177408612506188505

/-! ## A305440.P5872814852035181889

`lt[abs(A292518(n)), A057427(n)]`
-/

namespace A305440.P5872814852035181889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292518 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305440.P5872814852035181889

/-! ## A305440.P8750905578954826813

`lt[abs(A267259(n)*A292518(n)), 1]`
-/

namespace A305440.P8750905578954826813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267259 n * A292518 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305440.P8750905578954826813

/-! ## A305440.P14515701592401870301

`lt[A037127(abs(A292518(n)))-2, 1]`
-/

namespace A305440.P14515701592401870301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 |A292518 n|.toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305440.P14515701592401870301

/-! ## A305440.P14848367483351389092

`lt[A057427(A292518(n)²), 1]`
-/

namespace A305440.P14848367483351389092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A292518 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305440.P14848367483351389092

/-! ## A305440.P1757465841520655081

`lt[A267259(A292518(n)²), 2]`
-/

namespace A305440.P1757465841520655081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 (A292518 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305440.P1757465841520655081

/-!
# A305441: Indices k such that A305355(k) = 0.

The programs for A305441, there is no canonical definition to state claims against.
-/

/-! ## A305441.P7975798745013085525

`eq[0, A305355(n)]`
-/

namespace A305441.P7975798745013085525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305441.P7975798745013085525

/-! ## A305441.P2082027468214683648

`record[gcd(n, A305355(n+1))+1]`
-/

namespace A305441.P2082027468214683648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A305355 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305441.P2082027468214683648

/-! ## A305441.P14264194889393585963

`lt[abs(A305355(n)), A057427(n)]`
-/

namespace A305441.P14264194889393585963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305355 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305441.P14264194889393585963

/-! ## A305441.P11072124470235749769

`lt[A305355(n)², A054977(n+1)]`
-/

namespace A305441.P11072124470235749769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305355 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305441.P11072124470235749769

/-! ## A305441.P4945490046072183447

`lt[A305355(n)², A057427(n+1)]`
-/

namespace A305441.P4945490046072183447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305355 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305441.P4945490046072183447

/-! ## A305441.P9106527237429307788

`lt[A054977(n), 2-A305355(n)²]`
-/

namespace A305441.P9106527237429307788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A305355 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305441.P9106527237429307788

/-! ## A305441.P2362909777346079597

`lt[abs(A305355(n)), A054977(2*(n+2))]`
-/

namespace A305441.P2362909777346079597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305355 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305441.P2362909777346079597

/-! ## A305441.P2240575149846285832

`lt[A057427(A305355(n)²), 1]`
-/

namespace A305441.P2240575149846285832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A305355 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305441.P2240575149846285832

/-! ## A305441.P12020774971462254648

`lt[A054977(n), A054977(A305355(n)²)]`
-/

namespace A305441.P12020774971462254648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A305355 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305441.P12020774971462254648

/-! ## A305441.P78354566496984792

`lt[A072272(A305355(n)²), 2]`
-/

namespace A305441.P78354566496984792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072272 (A305355 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305441.P78354566496984792

/-!
# A305442: Number of subsets of {1, 2, ..., n} such that the sum of the reciprocals is strictly less than 1.

The programs for A305442, there is no canonical definition to state claims against.
-/

/-! ## A305442.P2356289087113015647

`A092669(n+1)+A212657(n)-A092670(n+1)`
-/

namespace A305442.P2356289087113015647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (n + 1) + (A212657 n - A092670 (n + 1))

end

end A305442.P2356289087113015647

/-! ## A305442.P16231989956148186706

`A212657(A028310(n))-A092670(A028310(n))`
-/

namespace A305442.P16231989956148186706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212657 (A028310 n).toNat - A092670 (A028310 n).toNat

end

end A305442.P16231989956148186706

/-! ## A305442.P3412312669782981280

`A000073(n+2)-A216600(A005177(n))`
-/

namespace A305442.P3412312669782981280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A216600 (A005177 n).toNat

end

end A305442.P3412312669782981280

/-! ## A305442.P18161829709596147692

`A000073(n+2)-A373974(A035052(n))`
-/

namespace A305442.P18161829709596147692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A373974 (A035052 n).toNat

end

end A305442.P18161829709596147692

/-! ## A305442.P6570931925798247837

`A000073(n+2)-A284977(A157147(n))`
-/

namespace A305442.P6570931925798247837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A284977 (A157147 n).toNat

end

end A305442.P6570931925798247837

/-!
# A305444: a(n) = Product_{p is odd and prime and divisor of n} (p - 2).

The programs for A305444, the canonical program `A305444.P14506373320273389600` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305444 has offset 1).

The definition of A305444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305444.P14506373320273389600

`∏{p}[n+1, or(1, #-2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305444

/-- `∏{p}[n+1, or(1, #-2)]` -/
def P14506373320273389600.Spec : Prop :=
  ∀ n, P14506373320273389600.a n = A305444 (n + 1)

theorem P14506373320273389600.correct : P14506373320273389600.Spec := by
  intro n
  simp only [A305444, Nat.add_sub_cancel]

end A305444

/-! ## A305444.P11251427441420092251

`∏{p}[n+1, and(#, -2)-1]`
-/

namespace A305444.P11251427441420092251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.land (p : ℤ) (-2) - 1)

end

end A305444.P11251427441420092251

namespace A305444

/-- `∏{p}[n+1, and(#, -2)-1]` -/
def P11251427441420092251.Spec : Prop :=
  ∀ n, P11251427441420092251.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P3729442738966438060

`A002472(∏{p}[n+1, #])`
-/

namespace A305444.P3729442738966438060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A305444.P3729442738966438060

namespace A305444

/-- `A002472(∏{p}[n+1, #])` -/
def P3729442738966438060.Spec : Prop :=
  ∀ n, P3729442738966438060.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P4043376190142456748

`∏{p}[n+1, A075861(#)]`
-/

namespace A305444.P4043376190142456748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A075861 p

end

end A305444.P4043376190142456748

namespace A305444

/-- `∏{p}[n+1, A075861(#)]` -/
def P4043376190142456748.Spec : Prop :=
  ∀ n, P4043376190142456748.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P2066716584757493992

`∏{p}[n+1, A076363(#)]`
-/

namespace A305444.P2066716584757493992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A076363 p

end

end A305444.P2066716584757493992

namespace A305444

/-- `∏{p}[n+1, A076363(#)]` -/
def P2066716584757493992.Spec : Prop :=
  ∀ n, P2066716584757493992.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P9148210425379971261

`∏{p}[n+1, A171950(#)]`
-/

namespace A305444.P9148210425379971261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A171950 p

end

end A305444.P9148210425379971261

namespace A305444

/-- `∏{p}[n+1, A171950(#)]` -/
def P9148210425379971261.Spec : Prop :=
  ∀ n, P9148210425379971261.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P8174091374733451015

`A184997(∏{p}[n+1, #])`
-/

namespace A305444.P8174091374733451015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A305444.P8174091374733451015

namespace A305444

/-- `A184997(∏{p}[n+1, #])` -/
def P8174091374733451015.Spec : Prop :=
  ∀ n, P8174091374733451015.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P12320601285119650839

`∏{p}[n+1, A214750(#)]`
-/

namespace A305444.P12320601285119650839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A214750 p

end

end A305444.P12320601285119650839

namespace A305444

/-- `∏{p}[n+1, A214750(#)]` -/
def P12320601285119650839.Spec : Prop :=
  ∀ n, P12320601285119650839.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P10713535442761323813

`∏{p}[n+1, A267458(#)]`
-/

namespace A305444.P10713535442761323813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A267458 p

end

end A305444.P10713535442761323813

namespace A305444

/-- `∏{p}[n+1, A267458(#)]` -/
def P10713535442761323813.Spec : Prop :=
  ∀ n, P10713535442761323813.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P16515557323511415398

`∏{p}[n+1, A307410(#)]`
-/

namespace A305444.P16515557323511415398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A307410 p

end

end A305444.P16515557323511415398

namespace A305444

/-- `∏{p}[n+1, A307410(#)]` -/
def P16515557323511415398.Spec : Prop :=
  ∀ n, P16515557323511415398.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P9770310793926756898

`∏{p}[n+1, A345990(#)]`
-/

namespace A305444.P9770310793926756898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A345990 p

end

end A305444.P9770310793926756898

namespace A305444

/-- `∏{p}[n+1, A345990(#)]` -/
def P9770310793926756898.Spec : Prop :=
  ∀ n, P9770310793926756898.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P8263445015513835389

`∏{p}[n+1, A347286(#)]`
-/

namespace A305444.P8263445015513835389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A347286 p

end

end A305444.P8263445015513835389

namespace A305444

/-- `∏{p}[n+1, A347286(#)]` -/
def P8263445015513835389.Spec : Prop :=
  ∀ n, P8263445015513835389.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P9389463975217903008

`∏{p}[A000265(n+1), #-2]`
-/

namespace A305444.P9389463975217903008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A305444.P9389463975217903008

namespace A305444

/-- `∏{p}[A000265(n+1), #-2]` -/
def P9389463975217903008.Spec : Prop :=
  ∀ n, P9389463975217903008.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P15955262722042134027

`∏{p}[A065330(n+1), #-2]`
-/

namespace A305444.P15955262722042134027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A305444.P15955262722042134027

namespace A305444

/-- `∏{p}[A065330(n+1), #-2]` -/
def P15955262722042134027.Spec : Prop :=
  ∀ n, P15955262722042134027.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P16817969518537264393

`∏{p}[A166466(n+1), #-2]`
-/

namespace A305444.P16817969518537264393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A305444.P16817969518537264393

namespace A305444

/-- `∏{p}[A166466(n+1), #-2]` -/
def P16817969518537264393.Spec : Prop :=
  ∀ n, P16817969518537264393.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P6197402821909346149

`∏{p}[A204455(n+1), #-2]`
-/

namespace A305444.P6197402821909346149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A305444.P6197402821909346149

namespace A305444

/-- `∏{p}[A204455(n+1), #-2]` -/
def P6197402821909346149.Spec : Prop :=
  ∀ n, P6197402821909346149.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P3780310728631121509

`∏{p}[n+1, A000010(2*#)-1]`
-/

namespace A305444.P3780310728631121509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000010 (2 * p) - 1)

end

end A305444.P3780310728631121509

namespace A305444

/-- `∏{p}[n+1, A000010(2*#)-1]` -/
def P3780310728631121509.Spec : Prop :=
  ∀ n, P3780310728631121509.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P12618750387664269311

`∏{p}[n+1, A006530(3*#)-2]`
-/

namespace A305444.P12618750387664269311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A006530 (3 * p) - 2)

end

end A305444.P12618750387664269311

namespace A305444

/-- `∏{p}[n+1, A006530(3*#)-2]` -/
def P12618750387664269311.Spec : Prop :=
  ∀ n, P12618750387664269311.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P851515607997801929

`∏{p}[n+1, #-A020639(#-1)]`
-/

namespace A305444.P851515607997801929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - A020639 (p - 1))

end

end A305444.P851515607997801929

namespace A305444

/-- `∏{p}[n+1, #-A020639(#-1)]` -/
def P851515607997801929.Spec : Prop :=
  ∀ n, P851515607997801929.a n = A305444 (n + 1)

end A305444

/-! ## A305444.P17414796631214524377

`∏{p}[n+1, #-A001221(2*#)]`
-/

namespace A305444.P17414796631214524377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - A001221 (2 * p))

end

end A305444.P17414796631214524377

namespace A305444

/-- `∏{p}[n+1, #-A001221(2*#)]` -/
def P17414796631214524377.Spec : Prop :=
  ∀ n, P17414796631214524377.a n = A305444 (n + 1)

end A305444

/-!
# A305445: Minimum number of bit inversions to convert n into a prime.

The programs for A305445, there is no canonical definition to state claims against.
-/

/-! ## A305445.P18347373930833659213

`A102425(A245714(n+1))%A143813(n+1)`
-/

namespace A305445.P18347373930833659213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102425 (A245714 (n + 1)).toNat) (A143813 (n + 1))

end

end A305445.P18347373930833659213

/-! ## A305445.P16691708581047362425

`A097196(A245714(n+1))+C(n, A276112(n+1))`
-/

namespace A305445.P16691708581047362425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097196 (A245714 (n + 1)).toNat + (Nat.choose n (A276112 (n + 1)).toNat : ℤ)

end

end A305445.P16691708581047362425

/-! ## A305445.P4871237600325762836

`A318326(A136070(n+1))+A097196(A245714(n+1))`
-/

namespace A305445.P4871237600325762836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (A136070 (n + 1)).toNat + A097196 (A245714 (n + 1)).toNat

end

end A305445.P4871237600325762836

/-! ## A305445.P16111920579622036565

`A102425(A245714(n+1))%A118751(n)`
-/

namespace A305445.P16111920579622036565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102425 (A245714 (n + 1)).toNat) (A118751 n)

end

end A305445.P16111920579622036565

/-! ## A305445.P6951573420828494277

`A025474(A127340(n+1))*A097196(A245714(n+1))`
-/

namespace A305445.P6951573420828494277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (A127340 (n + 1)).toNat * A097196 (A245714 (n + 1)).toNat

end

end A305445.P6951573420828494277

/-!
# A305446: Number of nXn 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305446, there is no canonical definition to state claims against.
-/

/-! ## A305446.P1514040109883673751

`A305452(∑[4*n]+1)`
-/

namespace A305446.P1514040109883673751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305446.P1514040109883673751

/-! ## A305446.P265434320713654710

`and(-1, A305452(A001844(n)))`
-/

namespace A305446.P265434320713654710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305452 (A001844 n).toNat)

end

end A305446.P265434320713654710

/-! ## A305446.P11738600076632316596

`record[A305452(A272267(n+1))]`
-/

namespace A305446.P11738600076632316596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305446.P11738600076632316596

/-! ## A305446.P5738802509898593643

`record[A010052(2*n+1)*A305452(n+1)]`
-/

namespace A305446.P5738802509898593643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A305452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305446.P5738802509898593643

/-! ## A305446.P8375490149651723045

`A305452(A001844(n))+A006927(n)`
-/

namespace A305446.P8375490149651723045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A001844 n).toNat + A006927 n

end

end A305446.P8375490149651723045

/-!
# A305447: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305447, there is no canonical definition to state claims against.
-/

/-! ## A305447.P14922727263596072210

`A305452(∑[n+2]+4)`
-/

namespace A305447.P14922727263596072210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305447.P14922727263596072210

/-! ## A305447.P7913383866378004288

`and(-1, A305452(A167614(n+1)))`
-/

namespace A305447.P7913383866378004288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305452 (A167614 (n + 1)).toNat)

end

end A305447.P7913383866378004288

/-! ## A305447.P2794808941937700329

`A305452(A000124(n+2)+2)+char[19]`
-/

namespace A305447.P2794808941937700329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305447.P2794808941937700329

/-! ## A305447.P10566845451876936994

`gcd(A000038(n), A305452(A167614(n+1)))`
-/

namespace A305447.P10566845451876936994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A305452 (A167614 (n + 1)).toNat)

end

end A305447.P10566845451876936994

/-! ## A305447.P9629785605074961549

`or(A118682(n), A305452(A167614(n+1)))`
-/

namespace A305447.P9629785605074961549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118682 n) (A305452 (A167614 (n + 1)).toNat)

end

end A305447.P9629785605074961549

/-!
# A305448: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305448, there is no canonical definition to state claims against.
-/

/-! ## A305448.P8138188384677353906

`A305452(∑[n+3]+7)`
-/

namespace A305448.P8138188384677353906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305448.P8138188384677353906

/-! ## A305448.P45173565946622103

`A305452(A052905(n)+9)%A304055(n+1)`
-/

namespace A305448.P45173565946622103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305452 (A052905 n + 9).toNat) (A304055 (n + 1))

end

end A305448.P45173565946622103

/-! ## A305448.P15844142179427136175

`A305452(A055998(n+2))+char[32]`
-/

namespace A305448.P15844142179427136175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305448.P15844142179427136175

/-! ## A305448.P16596596583182569344

`A305452(A055998(n+2))%A016880(n)`
-/

namespace A305448.P16596596583182569344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305452 (A055998 (n + 2)).toNat) (A016880 n)

end

end A305448.P16596596583182569344

/-! ## A305448.P11048540265806777809

`or(A305452(A055998(n+2)), A316865(n))`
-/

namespace A305448.P11048540265806777809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305452 (A055998 (n + 2)).toNat) (A316865 n)

end

end A305448.P11048540265806777809

/-!
# A305449: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305449, there is no canonical definition to state claims against.
-/

/-! ## A305449.P2660911294331926342

`A305452(∑[n+4]+11)`
-/

namespace A305449.P2660911294331926342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305449.P2660911294331926342

/-! ## A305449.P7033698616707723161

`A305452(A374005(n+1))%A046325(n+1)`
-/

namespace A305449.P7033698616707723161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305452 (A374005 (n + 1)).toNat) (A046325 (n + 1))

end

end A305449.P7033698616707723161

/-!
# A305450: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305450, there is no canonical definition to state claims against.
-/

/-! ## A305450.P2687512674379890508

`A305452(A374007(n+1))`
-/

namespace A305450.P2687512674379890508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A374007 (n + 1)).toNat

end

end A305450.P2687512674379890508

/-! ## A305450.P16494936498001740429

`A305452(A056115(n)+21)`
-/

namespace A305450.P16494936498001740429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A056115 n + 21).toNat

end

end A305450.P16494936498001740429

/-! ## A305450.P956488654103298036

`A305452(∑[A020710(n)]+16)`
-/

namespace A305450.P956488654103298036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A305450.P956488654103298036

/-! ## A305450.P1946432420257860677

`A305452(A167499(n+4)+1)`
-/

namespace A305450.P1946432420257860677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A167499 (n + 4) + 1).toNat

end

end A305450.P1946432420257860677

/-! ## A305450.P8471854325292088549

`A305452(A167614(n+4)+3)`
-/

namespace A305450.P8471854325292088549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A167614 (n + 4) + 3).toNat

end

end A305450.P8471854325292088549

/-!
# A305451: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305451, there is no canonical definition to state claims against.
-/

/-! ## A305451.P2350263096304168127

`A305452(A374008(n+1))`
-/

namespace A305451.P2350263096304168127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A374008 (n + 1)).toNat

end

end A305451.P2350263096304168127

/-! ## A305451.P2075238155256945220

`A305452(A056119(n)+28)`
-/

namespace A305451.P2075238155256945220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A056119 n + 28).toNat

end

end A305451.P2075238155256945220

/-! ## A305451.P10358738782180747258

`A305452(eq[11, A066657(n)])`
-/

namespace A305451.P10358738782180747258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305451.P10358738782180747258

/-! ## A305451.P9712587791900716753

`A305452(A167499(n+5)+2)`
-/

namespace A305451.P9712587791900716753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A167499 (n + 5) + 2).toNat

end

end A305451.P9712587791900716753

/-! ## A305451.P3519923353002953101

`A305452(A167614(n+5)+4)`
-/

namespace A305451.P3519923353002953101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A167614 (n + 5) + 4).toNat

end

end A305451.P3519923353002953101

/-!
# A305452: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305452, there is no canonical definition to state claims against.
-/

/-! ## A305452.P9414826199892980354

`A304058(n+1)+A186034(A022167(n))`
-/

namespace A305452.P9414826199892980354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (n + 1) + A186034 (A022167 n).toNat

end

end A305452.P9414826199892980354

/-! ## A305452.P18286686410442606808

`A304058(n+1)+A184159(A099594(n))`
-/

namespace A305452.P18286686410442606808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (n + 1) + A184159 (A099594 n).toNat

end

end A305452.P18286686410442606808

/-! ## A305452.P361164062208678439

`A304058(n+1)+A173920(A173917(n))`
-/

namespace A305452.P361164062208678439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (n + 1) + A173920 (A173917 n).toNat

end

end A305452.P361164062208678439

/-! ## A305452.P16332631755835662095

`A304704(n+1)-A124761(A124731(n))`
-/

namespace A305452.P16332631755835662095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) - A124761 (A124731 n).toNat

end

end A305452.P16332631755835662095

/-! ## A305452.P818473341564402562

`A304704(n+1)-A244415(A168549(n))`
-/

namespace A305452.P818473341564402562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304704 (n + 1) - A244415 (A168549 n).toNat

end

end A305452.P818473341564402562

/-!
# A305453: Number of nXn 0..1 arrays with every element unequal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305453, there is no canonical definition to state claims against.
-/

/-! ## A305453.P116137613287995855

`A305457(∑[4*n]+1)`
-/

namespace A305453.P116137613287995855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305453.P116137613287995855

/-! ## A305453.P15183930679546786167

`and(-1, A305457(A001844(n)))`
-/

namespace A305453.P15183930679546786167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305457 (A001844 n).toNat)

end

end A305453.P15183930679546786167

/-! ## A305453.P9293260956332002928

`A305457(A001844(n))+A185238(n)`
-/

namespace A305453.P9293260956332002928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A001844 n).toNat + A185238 n

end

end A305453.P9293260956332002928

/-! ## A305453.P2076039362885804804

`A057427(n)*A305457(A001844(n))`
-/

namespace A305453.P2076039362885804804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A305457 (A001844 n).toNat

end

end A305453.P2076039362885804804

/-! ## A305453.P10258754369256642450

`A178489(n)*A305457(A001844(n))`
-/

namespace A305453.P10258754369256642450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A305457 (A001844 n).toNat

end

end A305453.P10258754369256642450

/-!
# A305454: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305454, there is no canonical definition to state claims against.
-/

/-! ## A305454.P14133413548930523471

`A305457(A374005(n+1))`
-/

namespace A305454.P14133413548930523471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A374005 (n + 1)).toNat

end

end A305454.P14133413548930523471

/-! ## A305454.P14115461862141699518

`A305457(A167499(n+3))`
-/

namespace A305454.P14115461862141699518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A167499 (n + 3)).toNat

end

end A305454.P14115461862141699518

/-! ## A305454.P9654468033032499352

`A305457(A155212(n)+13)`
-/

namespace A305454.P9654468033032499352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A155212 n + 13).toNat

end

end A305454.P9654468033032499352

/-! ## A305454.P1296076544755852858

`A305457(A141214(n+1)+8)`
-/

namespace A305454.P1296076544755852858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A141214 (n + 1) + 8).toNat

end

end A305454.P1296076544755852858

/-! ## A305454.P1732863220553623917

`A305457(Δ[A264443(n)])`
-/

namespace A305454.P1732863220553623917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (f1 (n + 1) - f1 n).toNat

end

end A305454.P1732863220553623917

/-!
# A305455: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305455, there is no canonical definition to state claims against.
-/

/-! ## A305455.P15595366335181041876

`A305457(A374007(n+1))`
-/

namespace A305455.P15595366335181041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A374007 (n + 1)).toNat

end

end A305455.P15595366335181041876

/-! ## A305455.P3777792263509342095

`A305457(Δ[A264443(n)]+10)`
-/

namespace A305455.P3777792263509342095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (f1 (n + 1) - f1 n + 10).toNat

end

end A305455.P3777792263509342095

/-! ## A305455.P1983065932732733290

`A305457(eq[7, A131818(n+1)])`
-/

namespace A305455.P1983065932732733290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305455.P1983065932732733290

/-! ## A305455.P9055664362806702215

`A305457(A052905(n+3))`
-/

namespace A305455.P9055664362806702215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A052905 (n + 3)).toNat

end

end A305455.P9055664362806702215

/-! ## A305455.P2081934935428458516

`A305457(eq[5, A193592(n)])`
-/

namespace A305455.P2081934935428458516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305455.P2081934935428458516

/-!
# A305456: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305456, there is no canonical definition to state claims against.
-/

/-! ## A305456.P4854061276360878192

`A305457(A374008(n+1))`
-/

namespace A305456.P4854061276360878192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A374008 (n + 1)).toNat

end

end A305456.P4854061276360878192

/-! ## A305456.P1447470883568698822

`A305457(eq[8, A131818(n+1)])`
-/

namespace A305456.P1447470883568698822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305456.P1447470883568698822

/-! ## A305456.P7244594346552244023

`A305457(Δ[A023551(n+1)]+13)`
-/

namespace A305456.P7244594346552244023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (f1 (n + 1) - f1 n + 13).toNat

end

end A305456.P7244594346552244023

/-! ## A305456.P17575374739348348274

`A305457(eq[6, A193592(n)])`
-/

namespace A305456.P17575374739348348274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305456.P17575374739348348274

/-! ## A305456.P5574935989352144026

`A305457(Δ[A023551(n+2)])`
-/

namespace A305456.P5574935989352144026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (f1 (n + 1) - f1 n).toNat

end

end A305456.P5574935989352144026

/-!
# A305459: a(0) = 1, a(1) = 3, a(n) = 3*n*a(n-1) + a(n-2).

The programs for A305459, the canonical program `A305459.P8436602144237426038` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305459 has offset 0).

The definition of A305459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*a(n-1)+a(n-2)` (program `A305459.P8436602144237426038`, by `A305459.P8436602144237426038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305459.P8436602144237426038

`3*n*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305459

/-- `3*n*a(n-1)+a(n-2)` -/
def P8436602144237426038.Spec : Prop :=
  ∀ n, (P8436602144237426038.a n : ℤ) = A305459 n

theorem P8436602144237426038.correct : P8436602144237426038.Spec := by
  intro n
  simp only [A305459]

end A305459

/-! ## A305459.P10737630314588992290

`a(n-2)-(n-4*n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A305459.P10737630314588992290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - ((n : ℤ) - (4 * n : ℤ)) * a (n - 1)

end

end A305459.P10737630314588992290

namespace A305459

/-- `a(n-2)-(n-4*n)*a(n-1)` -/
def P10737630314588992290.Spec : Prop :=
  ∀ n, P10737630314588992290.a n = A305459 n

end A305459

/-! ## A305459.P8117254799197202037

`a(n-2)+a(n-1)*A008486(n)` with `a(0)=1, a(1)=3`
-/

namespace A305459.P8117254799197202037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A008486 n

end

end A305459.P8117254799197202037

namespace A305459

/-- `a(n-2)+a(n-1)*A008486(n)` -/
def P8117254799197202037.Spec : Prop :=
  ∀ n, P8117254799197202037.a n = A305459 n

end A305459

/-! ## A305459.P3834787295333877550

`A305401(∑[n+3]+n+3)`
-/

namespace A305459.P3834787295333877550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A305459.P3834787295333877550

namespace A305459

/-- `A305401(∑[n+3]+n+3)` -/
def P3834787295333877550.Spec : Prop :=
  ∀ n, P3834787295333877550.a n = A305459 n

end A305459

/-! ## A305459.P4100792680476328362

`record[A305401(abs(A046691(n)))]`
-/

namespace A305459.P4100792680476328362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305459.P4100792680476328362

namespace A305459

/-- `record[A305401(abs(A046691(n)))]` -/
def P4100792680476328362.Spec : Prop :=
  ∀ n, P4100792680476328362.a n = A305459 n

end A305459

/-!
# A305460: a(0) = 1, a(1) = 3, a(n) = 3*n*a(n-1) + 2*a(n-2).

The programs for A305460, the canonical program `A305460.P7441715758061069225` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305460 has offset 0).

The definition of A305460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*a(n-1)+2*a(n-2)` (program `A305460.P7441715758061069225`, by `A305460.P7441715758061069225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305460.P7441715758061069225

`3*n*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305460

/-- `3*n*a(n-1)+2*a(n-2)` -/
def P7441715758061069225.Spec : Prop :=
  ∀ n, (P7441715758061069225.a n : ℤ) = A305460 n

theorem P7441715758061069225.correct : P7441715758061069225.Spec := by
  intro n
  simp only [A305460]

end A305460

/-!
# A305461: The number of one-digit numbers, k, in base n such that k^2 and k^3 end in the same digit.

The programs for A305461, the canonical program `A305461.P8154523107859240476` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305461 has offset 1).

The definition of A305461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, A365404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305461.P8154523107859240476

`A056671(n+1)*A365404(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A305461

/-- `A056671(n+1)*A365404(n+1)` -/
def P8154523107859240476.Spec : Prop :=
  ∀ n, P8154523107859240476.a n = A305461 (n + 1)

theorem P8154523107859240476.correct : P8154523107859240476.Spec := by
  intro n
  simp only [A305461, Nat.add_sub_cancel]

end A305461

/-! ## A305461.P3760235044989530814

`A117658(A355261(n+1))`
-/

namespace A305461.P3760235044989530814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A355261 (n + 1)).toNat

end

end A305461.P3760235044989530814

namespace A305461

/-- `A117658(A355261(n+1))` -/
def P3760235044989530814.Spec : Prop :=
  ∀ n, P3760235044989530814.a n = A305461 (n + 1)

end A305461

/-! ## A305461.P12763552487509385116

`∑{d}[n+1, A008966(#)*A071974((n+1)/#)]`
-/

namespace A305461.P12763552487509385116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A071974 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305461.P12763552487509385116

namespace A305461

/-- `∑{d}[n+1, A008966(#)*A071974((n+1)/#)]` -/
def P12763552487509385116.Spec : Prop :=
  ∀ n, P12763552487509385116.a n = A305461 (n + 1)

end A305461

/-! ## A305461.P7693364099229960093

`A034448(A000188(n+1))*A056671(n+1)`
-/

namespace A305461.P7693364099229960093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000188 (n + 1)).toNat * A056671 (n + 1)

end

end A305461.P7693364099229960093

namespace A305461

/-- `A034448(A000188(n+1))*A056671(n+1)` -/
def P7693364099229960093.Spec : Prop :=
  ∀ n, P7693364099229960093.a n = A305461 (n + 1)

theorem P7693364099229960093.correct : P7693364099229960093.Spec := by
  intro n
  simp only [A305461, Nat.add_sub_cancel, A305461.P7693364099229960093.a, A305461.P8154523107859240476.a, A000188, A000188.P7486858720566838181.a, A034448, A034448.P17017727775393200719.a, A056671, A056671.P15517418660735312830.a, A365404, A365404.P8504261663982695233.a, A008833, A008833.P18388074464065390543.a, A056169, A056169.P17430176249366647977.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A001221, A001221.P10258181745752134128.a, A007913, A007913.P8131970495124731496.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A055231, A055231.P8962300905713718501.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P7264174615531153985.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A305461

/-! ## A305461.P14253222392725726258

`A117658(A000188(n+1)*A007947(n+1))`
-/

namespace A305461.P14253222392725726258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A000188 (n + 1) * A007947 (n + 1)).toNat

end

end A305461.P14253222392725726258

namespace A305461

/-- `A117658(A000188(n+1)*A007947(n+1))` -/
def P14253222392725726258.Spec : Prop :=
  ∀ n, P14253222392725726258.a n = A305461 (n + 1)

end A305461

/-! ## A305461.P7485067403538310663

`A117658(A019554(n+1)*A336643(n+1))`
-/

namespace A305461.P7485067403538310663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A019554 (n + 1) * A336643 (n + 1)).toNat

end

end A305461.P7485067403538310663

namespace A305461

/-- `A117658(A019554(n+1)*A336643(n+1))` -/
def P7485067403538310663.Spec : Prop :=
  ∀ n, P7485067403538310663.a n = A305461 (n + 1)

end A305461

/-! ## A305461.P6296403275372865297

`A117658(A064549(n+1)/A019554(n+1))`
-/

namespace A305461.P6296403275372865297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A305461.P6296403275372865297

namespace A305461

/-- `A117658(A064549(n+1)/A019554(n+1))` -/
def P6296403275372865297.Spec : Prop :=
  ∀ n, P6296403275372865297.a n = A305461 (n + 1)

end A305461

/-! ## A305461.P11763130181911182873

`∑{d}[A268385(n+1), A346612(A003557(#))]`
-/

namespace A305461.P11763130181911182873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346612 (A003557 d).toNat

end

end A305461.P11763130181911182873

namespace A305461

/-- `∑{d}[A268385(n+1), A346612(A003557(#))]` -/
def P11763130181911182873.Spec : Prop :=
  ∀ n, P11763130181911182873.a n = A305461 (n + 1)

end A305461

/-!
# A305462: Fixed points of A305458.

The programs for A305462, there is no canonical definition to state claims against.
-/

/-! ## A305462.P3756482644022654603

`eq[n, A305458(n)]`
-/

namespace A305462.P3756482644022654603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305462.P3756482644022654603

/-! ## A305462.P16980678369472742928

`eq[n, A305463(n)]`
-/

namespace A305462.P16980678369472742928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305462.P16980678369472742928

/-! ## A305462.P387211316599572703

`record[gcd(A008585(n), A305458(n))]`
-/

namespace A305462.P387211316599572703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008585 n) (A305458 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305462.P387211316599572703

/-! ## A305462.P7585008144458375692

`lt[A065202(A276086(n)), 1]`
-/

namespace A305462.P7585008144458375692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A276086 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305462.P7585008144458375692

/-! ## A305462.P16813760743330293712

`lt[A268242(A375476(n)), 3]`
-/

namespace A305462.P16813760743330293712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268242 (A375476 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305462.P16813760743330293712

/-!
# A305464: Largest prime modulus p such that there exists a multiplicative-coset Ramsey algebra in n colors over Z/pZ, or 0 if no such prime exists.

The programs for A305464, there is no canonical definition to state claims against.
-/

/-! ## A305464.P17878410700206614757

`A124662(A295061(n))`
-/

namespace A305464.P17878410700206614757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124662 (A295061 n).toNat

end

end A305464.P17878410700206614757

/-!
# A305465: a(n) = Sum_{k=0..floor(n/2)} ((n-k)!/k!)*binomial(n-k,k)*n^(n-2*k).

The programs for A305465, there is no canonical definition to state claims against.
-/

/-! ## A305465.P4976928038412416537

`A305401(∑[4*n])`
-/

namespace A305465.P4976928038412416537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305465.P4976928038412416537

/-! ## A305465.P3445940876552985261

`A305401(A046092(n))+A185284(n)`
-/

namespace A305465.P3445940876552985261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 (A046092 n).toNat + A185284 n

end

end A305465.P3445940876552985261

/-! ## A305465.P487275362545998035

`A305401(A046092(n))%A012938(n)`
-/

namespace A305465.P487275362545998035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305401 (A046092 n).toNat) (A012938 n)

end

end A305465.P487275362545998035

/-! ## A305465.P15487428695786328303

`lcm(A165326(n), A305401(A046092(n)))`
-/

namespace A305465.P15487428695786328303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A305401 (A046092 n).toNat)

end

end A305465.P15487428695786328303

/-! ## A305465.P6479512760370474409

`gcd(A000038(n), A305401(A106232(n+1)))`
-/

namespace A305465.P6479512760370474409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A305401 (A106232 (n + 1)).toNat)

end

end A305465.P6479512760370474409

/-!
# A305466: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where A(n,k) is Sum_{j=0..floor(n/2)} ((n-j)!/j!)*binomial(n-j,j)*k^(n-2*j)*(-1)^j.

The programs for A305466, there is no canonical definition to state claims against.
-/

/-! ## A305466.P13607415280139489703

`A322836(n)+A240467(floor(sqrt(5^(2*n/3))))`
-/

namespace A305466.P13607415280139489703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 n + A240467 ⌊Real.sqrt ((5 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌋.toNat

end

end A305466.P13607415280139489703

/-! ## A305466.P4287064303494639832

`A322836(n)+A025466(A090809(n))`
-/

namespace A305466.P4287064303494639832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 n + A025466 (A090809 n).toNat

end

end A305466.P4287064303494639832

/-! ## A305466.P11523710385164682859

`A322836(n)+A034332(A122848(n))`
-/

namespace A305466.P11523710385164682859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 n + A034332 (A122848 n).toNat

end

end A305466.P11523710385164682859

/-! ## A305466.P4432625469818303731

`A326474(A102480(n))+A322836(n)`
-/

namespace A305466.P4432625469818303731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (A102480 n).toNat + A322836 n

end

end A305466.P4432625469818303731

/-!
# A305467: a(n) = Sum_{k=0..floor(n/2)} ((n-k)!/k!)*binomial(n-k,k)*n^(n-2*k)*(-1)^k.

The programs for A305467, there is no canonical definition to state claims against.
-/

/-! ## A305467.P14621007201639814706

`A305466(∑[4*n])`
-/

namespace A305467.P14621007201639814706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305467.P14621007201639814706

/-! ## A305467.P2917779004768885079

`abs(A305466(2*A002378(n)))`
-/

namespace A305467.P2917779004768885079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305466 (2 * A002378 n).toNat|

end

end A305467.P2917779004768885079

/-! ## A305467.P16718573845965593635

`abs(A305466(eq[0, A114327(n)]))`
-/

namespace A305467.P16718573845965593635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A305467.P16718573845965593635

/-! ## A305467.P12641621771591540727

`abs(A305466(eq[n, A061579(n)]))`
-/

namespace A305467.P12641621771591540727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A305466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A305467.P12641621771591540727

/-! ## A305467.P6662046265243095270

`A007318(C(2, n))*A305466(2*A002378(n))`
-/

namespace A305467.P6662046265243095270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305466 (2 * A002378 n).toNat

end

end A305467.P6662046265243095270

/-!
# A305468: Positive integers that can be expressed as the quotient of two binary palindromic numbers (that is, terms of A006995).

The programs for A305468, there is no canonical definition to state claims against.
-/

/-! ## A305468.P7952910176742039642

`eq[char[A305469(n+1)], A027656(n)]`
-/

namespace A305468.P7952910176742039642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305469 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305468.P7952910176742039642

/-! ## A305468.P16655011647014222904

`eq[char[A305469(n+1)], A035363(n)]`
-/

namespace A305468.P16655011647014222904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305469 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305468.P16655011647014222904

/-! ## A305468.P2305483390877451523

`eq[char[A305469(n+1)], A318517(n+1)]`
-/

namespace A305468.P2305483390877451523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305469 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305468.P2305483390877451523

/-! ## A305468.P3203941795293038044

`eq[char[A305469(n+1)], A265829(n)]`
-/

namespace A305468.P3203941795293038044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305469 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305468.P3203941795293038044

/-! ## A305468.P1928198356592504740

`eq[char[A305469(n+1)], A126869(n)]`
-/

namespace A305468.P1928198356592504740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305469 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A305468.P1928198356592504740

/-!
# A305469: Odd positive integers that cannot be expressed as the quotient of two binary palindromic numbers (that is, terms of A006995).

The programs for A305469, there is no canonical definition to state claims against.
-/

/-! ## A305469.P13963213303931668040

`∩[comp[A305468(n+1)], Δ[n²]]`
-/

namespace A305469.P13963213303931668040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A305469.P13963213303931668040

/-! ## A305469.P11180161832402596715

`A351870(A073681(n+1)+18)`
-/

namespace A305469.P11180161832402596715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A073681 (n + 1) + 18).toNat

end

end A305469.P11180161832402596715

/-! ## A305469.P17559947743593432808

`A073681(n+1)+A040072(A127540(n+1))`
-/

namespace A305469.P17559947743593432808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) + A040072 (A127540 (n + 1)).toNat

end

end A305469.P17559947743593432808

/-! ## A305469.P7293522486032070523

`A073681(n+1)+A010169(A020714(n+3))`
-/

namespace A305469.P7293522486032070523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) + A010169 (A020714 (n + 3)).toNat

end

end A305469.P7293522486032070523

/-! ## A305469.P3843714212143574954

`A073681(n+1)+A040072(A000581(n+8))`
-/

namespace A305469.P3843714212143574954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1) + A040072 (A000581 (n + 8)).toNat

end

end A305469.P3843714212143574954

/-!
# A305471: a(0) = 1, a(1) = 3, a(n) = 3*n*a(n-1) - a(n-2).

The programs for A305471, the canonical program `A305471.P6576404801430257575` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305471 has offset 0).

The definition of A305471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*a(n-1)-a(n-2)` (program `A305471.P6576404801430257575`, by `A305471.P6576404801430257575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305471.P6576404801430257575

`3*n*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305471

/-- `3*n*a(n-1)-a(n-2)` -/
def P6576404801430257575.Spec : Prop :=
  ∀ n, P6576404801430257575.a n = A305471 n

theorem P6576404801430257575.correct : P6576404801430257575.Spec := by
  intro n
  simp only [A305471]

end A305471

/-! ## A305471.P6819634285166256192

`a(n-1)*A008486(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A305471.P6819634285166256192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A008486 n - a (n - 2)

end

end A305471.P6819634285166256192

namespace A305471

/-- `a(n-1)*A008486(n)-a(n-2)` -/
def P6819634285166256192.Spec : Prop :=
  ∀ n, P6819634285166256192.a n = A305471 n

end A305471

/-! ## A305471.P7235428042999465333

`A305466(∑[n+3]+n+3)`
-/

namespace A305471.P7235428042999465333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A305471.P7235428042999465333

namespace A305471

/-- `A305466(∑[n+3]+n+3)` -/
def P7235428042999465333.Spec : Prop :=
  ∀ n, P7235428042999465333.a n = A305471 n

end A305471

/-! ## A305471.P15215438099584117736

`record[A305466(abs(A046691(n)))]`
-/

namespace A305471.P15215438099584117736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305471.P15215438099584117736

namespace A305471

/-- `record[A305466(abs(A046691(n)))]` -/
def P15215438099584117736.Spec : Prop :=
  ∀ n, P15215438099584117736.a n = A305471 n

end A305471

/-! ## A305471.P10908798202419320901

`record[A305466(A046691(n)%A052905(n))]`
-/

namespace A305471.P10908798202419320901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 (Int.tmod (A046691 n) (A052905 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305471.P10908798202419320901

namespace A305471

/-- `record[A305466(A046691(n)%A052905(n))]` -/
def P10908798202419320901.Spec : Prop :=
  ∀ n, P10908798202419320901.a n = A305471 n

end A305471

/-!
# A305472: a(0) = 1, a(1) = 3, a(n) = 3*n*a(n-1) - 2*a(n-2).

The programs for A305472, the canonical program `A305472.P11518219143411310294` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305472 has offset 0).

The definition of A305472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*a(n-1)-2*a(n-2)` (program `A305472.P11518219143411310294`, by `A305472.P11518219143411310294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305472.P11518219143411310294

`3*n*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305472

/-- `3*n*a(n-1)-2*a(n-2)` -/
def P11518219143411310294.Spec : Prop :=
  ∀ n, P11518219143411310294.a n = A305472 n

theorem P11518219143411310294.correct : P11518219143411310294.Spec := by
  intro n
  simp only [A305472]

end A305472

/-!
# A305475: Constant of Hilbert class polynomial H_D(x) as D runs through the numbers -3, -4, -7, -8, -11, -12, ... .

The programs for A305475, there is no canonical definition to state claims against.
-/

/-! ## A305475.P17884148545465539705

`A305474(eq[1, A305474(abs(2-n)+1)])`
-/

namespace A305475.P17884148545465539705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305475.P17884148545465539705

/-! ## A305475.P3895671326893124695

`A305474(A351987(n+1)+A077739(n+1))`
-/

namespace A305475.P3895671326893124695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (A351987 (n + 1) + A077739 (n + 1)).toNat

end

end A305475.P3895671326893124695

/-!
# A305476: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305476, there is no canonical definition to state claims against.
-/

/-! ## A305476.P1104570108133993647

`A305482(∑[4*n]+1)`
-/

namespace A305476.P1104570108133993647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305476.P1104570108133993647

/-! ## A305476.P1674821790622824705

`record[A305482(Δ[A235355(n)])]`
-/

namespace A305476.P1674821790622824705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305476.P1674821790622824705

/-! ## A305476.P8780991595985805095

`xor(char[37], A305482(A001844(n)))`
-/

namespace A305476.P8780991595985805095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305482 (A001844 n).toNat)

end

end A305476.P8780991595985805095

/-! ## A305476.P16039173756174821614

`record[A003982(n)*A305482(n+1)]`
-/

namespace A305476.P16039173756174821614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305476.P16039173756174821614

/-! ## A305476.P11799210011095248983

`record[A214505(n)*A305482(n+1)]`
-/

namespace A305476.P11799210011095248983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A305482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305476.P11799210011095248983

/-!
# A305477: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305477, the canonical program `A305477.P2345460448365935127` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305477 has offset 1).

The definition of A305477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305477.P2345460448365935127

`a(n-1)+3*a(n-3)-2*a(n-6)` with `a(0)=3, a(1)=7, a(2)=10, a(3)=21, a(4)=40, a(5)=70, a(6)=125, a(7)=231, a(8)=419`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305477

/-- `a(n-1)+3*a(n-3)-2*a(n-6)` -/
def P2345460448365935127.Spec : Prop :=
  ∀ n, P2345460448365935127.a n = A305477 (n + 1)

theorem P2345460448365935127.correct : P2345460448365935127.Spec := by
  intro n
  simp only [A305477, Nat.add_sub_cancel]

end A305477

/-! ## A305477.P11080064240029784911

`A305482(∑[n+2]+4)`
-/

namespace A305477.P11080064240029784911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305477.P11080064240029784911

namespace A305477

/-- `A305482(∑[n+2]+4)` -/
def P11080064240029784911.Spec : Prop :=
  ∀ n, P11080064240029784911.a n = A305477 (n + 1)

end A305477

/-! ## A305477.P3449740750777544140

`or(char[1], A305482(A046691(n)+7))`
-/

namespace A305477.P3449740750777544140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305482 (A046691 n + 7).toNat)

end

end A305477.P3449740750777544140

namespace A305477

/-- `or(char[1], A305482(A046691(n)+7))` -/
def P3449740750777544140.Spec : Prop :=
  ∀ n, P3449740750777544140.a n = A305477 (n + 1)

end A305477

/-! ## A305477.P5114367815433264815

`lcm((-1)^n, A305482(A167614(n+1)))`
-/

namespace A305477.P5114367815433264815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A305482 (A167614 (n + 1)).toNat)

end

end A305477.P5114367815433264815

namespace A305477

/-- `lcm((-1)^n, A305482(A167614(n+1)))` -/
def P5114367815433264815.Spec : Prop :=
  ∀ n, (P5114367815433264815.a n : ℤ) = A305477 (n + 1)

end A305477

/-! ## A305477.P16024487163760396872

`A305482(A167614(n+1))+A025444(n)`
-/

namespace A305477.P16024487163760396872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A167614 (n + 1)).toNat + A025444 n

end

end A305477.P16024487163760396872

namespace A305477

/-- `A305482(A167614(n+1))+A025444(n)` -/
def P16024487163760396872.Spec : Prop :=
  ∀ n, P16024487163760396872.a n = A305477 (n + 1)

end A305477

/-!
# A305478: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305478, there is no canonical definition to state claims against.
-/

/-! ## A305478.P15464364527281223145

`A305482(∑[n+3]+7)`
-/

namespace A305478.P15464364527281223145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305478.P15464364527281223145

/-! ## A305478.P9001482689102386186

`or(char[1], A305482(A055999(n)+10))`
-/

namespace A305478.P9001482689102386186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305482 (A055999 n + 10).toNat)

end

end A305478.P9001482689102386186

/-! ## A305478.P2834521674978435506

`record[A305482(n+5)/A064189(n)]`
-/

namespace A305478.P2834521674978435506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305482 (n + 5) : ℚ) / (A064189 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305478.P2834521674978435506

/-! ## A305478.P7221733680581282029

`A305482(A055999(n)+10)+A008683(4*(n+1))`
-/

namespace A305478.P7221733680581282029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A055999 n + 10).toNat + A008683 (4 * (n + 1))

end

end A305478.P7221733680581282029

/-! ## A305478.P15604426190265296805

`A014963(6*(n+1))*A305482(A055999(n)+10)`
-/

namespace A305478.P15604426190265296805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A305482 (A055999 n + 10).toNat

end

end A305478.P15604426190265296805

/-!
# A305479: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305479, there is no canonical definition to state claims against.
-/

/-! ## A305479.P16816751634060199518

`A305482(∑[n+4]+11)`
-/

namespace A305479.P16816751634060199518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305479.P16816751634060199518

/-!
# A305480: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305480, there is no canonical definition to state claims against.
-/

/-! ## A305480.P12658923859899069379

`A305482(C(n+7, 2)-n)`
-/

namespace A305480.P12658923859899069379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (Nat.choose (n + 7) 2 - n)

end

end A305480.P12658923859899069379

/-! ## A305480.P9360506375379894762

`A305482(A374007(n+1))`
-/

namespace A305480.P9360506375379894762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A374007 (n + 1)).toNat

end

end A305480.P9360506375379894762

/-! ## A305480.P9740609773900108322

`A305482(A166136(n+4))`
-/

namespace A305480.P9740609773900108322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A166136 (n + 4)).toNat

end

end A305480.P9740609773900108322

/-! ## A305480.P4919895411282714059

`A305482(A056115(n)+21)`
-/

namespace A305480.P4919895411282714059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A056115 n + 21).toNat

end

end A305480.P4919895411282714059

/-! ## A305480.P996539436848166874

`A305482(Δ[A264443(n)]+10)`
-/

namespace A305480.P996539436848166874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (f1 (n + 1) - f1 n + 10).toNat

end

end A305480.P996539436848166874

/-!
# A305481: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305481, there is no canonical definition to state claims against.
-/

/-! ## A305481.P15839435109777997259

`A305482(A374008(n+1))`
-/

namespace A305481.P15839435109777997259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A374008 (n + 1)).toNat

end

end A305481.P15839435109777997259

/-! ## A305481.P4129355092344165810

`A305482(A056119(n)+28)`
-/

namespace A305481.P4129355092344165810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A056119 n + 28).toNat

end

end A305481.P4129355092344165810

/-! ## A305481.P5330732016327782995

`A305482(A166136(n+5)+1)`
-/

namespace A305481.P5330732016327782995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A166136 (n + 5) + 1).toNat

end

end A305481.P5330732016327782995

/-! ## A305481.P4391562366455993254

`A305482(A167499(n+5)+2)`
-/

namespace A305481.P4391562366455993254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A167499 (n + 5) + 2).toNat

end

end A305481.P4391562366455993254

/-! ## A305481.P207136187701688633

`A305482(A133263(n+6)+5)`
-/

namespace A305481.P207136187701688633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (A133263 (n + 6) + 5).toNat

end

end A305481.P207136187701688633

/-!
# A305482: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305482, there is no canonical definition to state claims against.
-/

/-! ## A305482.P3412253711625862602

`A304133(n+1)+A184159(A099594(n))`
-/

namespace A305482.P3412253711625862602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (n + 1) + A184159 (A099594 n).toNat

end

end A305482.P3412253711625862602

/-! ## A305482.P15500060064344165984

`A304133(n+1)+A163510(A157273(n))`
-/

namespace A305482.P15500060064344165984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (n + 1) + A163510 (A157273 n).toNat

end

end A305482.P15500060064344165984

/-! ## A305482.P12490180837693765244

`A304221(n+1)+A065040(A296548(n))`
-/

namespace A305482.P12490180837693765244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304221 (n + 1) + A065040 (A296548 n).toNat

end

end A305482.P12490180837693765244

/-! ## A305482.P13265831281028896826

`A304133(n+1)+A178498(A255256(n))`
-/

namespace A305482.P13265831281028896826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304133 (n + 1) + A178498 (A255256 n).toNat

end

end A305482.P13265831281028896826

/-!
# A305483: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305483, there is no canonical definition to state claims against.
-/

/-! ## A305483.P4471134435648102807

`A305489(∑[4*n]+1)`
-/

namespace A305483.P4471134435648102807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305483.P4471134435648102807

/-! ## A305483.P13713955939792596070

`record[A305489(Δ[A235355(n)])]`
-/

namespace A305483.P13713955939792596070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305483.P13713955939792596070

/-! ## A305483.P11938644609420091810

`record[A305489(A330613(n+1))]`
-/

namespace A305483.P11938644609420091810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305483.P11938644609420091810

/-! ## A305483.P11099228810158046372

`A305489(A001844(n))+char[11]`
-/

namespace A305483.P11099228810158046372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305483.P11099228810158046372

/-! ## A305483.P6346981201101591333

`record[A003982(n)*A305489(n+1)]`
-/

namespace A305483.P6346981201101591333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305483.P6346981201101591333

/-!
# A305484: Number of n X 3 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305484, there is no canonical definition to state claims against.
-/

/-! ## A305484.P9245016762592161492

`A305489(∑[n+2]+4)`
-/

namespace A305484.P9245016762592161492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305484.P9245016762592161492

/-! ## A305484.P8465955212431133137

`A305489(A167614(n+1))+char[20]`
-/

namespace A305484.P8465955212431133137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305484.P8465955212431133137

/-! ## A305484.P16342438301418958508

`A326678(n)+A305489(A167614(n+1))`
-/

namespace A305484.P16342438301418958508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A305489 (A167614 (n + 1)).toNat

end

end A305484.P16342438301418958508

/-! ## A305484.P4157626579662773010

`A305489(A167614(n+1))%A291016(n)`
-/

namespace A305484.P4157626579662773010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305489 (A167614 (n + 1)).toNat) (A291016 n)

end

end A305484.P4157626579662773010

/-! ## A305484.P5842745222718511384

`gcd(A243832(n), A305489(A167614(n+1)))`
-/

namespace A305484.P5842745222718511384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243832 n) (A305489 (A167614 (n + 1)).toNat)

end

end A305484.P5842745222718511384

/-!
# A305485: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305485, there is no canonical definition to state claims against.
-/

/-! ## A305485.P3248139766839788779

`A305489(∑[n+3]+7)`
-/

namespace A305485.P3248139766839788779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305485.P3248139766839788779

/-! ## A305485.P5869254942655790358

`A305489(A141214(n)+7)+char[23]`
-/

namespace A305485.P5869254942655790358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305485.P5869254942655790358

/-! ## A305485.P7591267026274497797

`A007318(C(n, 2))*A305489(A141214(n)+7)`
-/

namespace A305485.P7591267026274497797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A305489 (A141214 n + 7).toNat

end

end A305485.P7591267026274497797

/-! ## A305485.P11357571468481247594

`A000041(C(n, 41))*A305489(A141214(n)+7)`
-/

namespace A305485.P11357571468481247594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 41) * A305489 (A141214 n + 7).toNat

end

end A305485.P11357571468481247594

/-! ## A305485.P6907057363170766676

`A305489(A141214(n)+7)/A007318(C(n, 64))`
-/

namespace A305485.P6907057363170766676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305489 (A141214 n + 7).toNat : ℚ) / (A007318 (Nat.choose n 64) : ℚ)

end

end A305485.P6907057363170766676

/-!
# A305486: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305486, there is no canonical definition to state claims against.
-/

/-! ## A305486.P4193071675480261160

`A305489(A167499(n+3))`
-/

namespace A305486.P4193071675480261160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A167499 (n + 3)).toNat

end

end A305486.P4193071675480261160

/-! ## A305486.P14865397043662694572

`A305489(A155212(n)+13)`
-/

namespace A305486.P14865397043662694572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A155212 n + 13).toNat

end

end A305486.P14865397043662694572

/-! ## A305486.P6601955639794811862

`A305489(A056000(n)+15)`
-/

namespace A305486.P6601955639794811862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A056000 n + 15).toNat

end

end A305486.P6601955639794811862

/-! ## A305486.P13524234390585691290

`A305489(eq[7, A066657(n)])`
-/

namespace A305486.P13524234390585691290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305486.P13524234390585691290

/-! ## A305486.P11783205273337424665

`A305489(A000124(n+4)+4)`
-/

namespace A305486.P11783205273337424665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A000124 (n + 4) + 4).toNat

end

end A305486.P11783205273337424665

/-!
# A305487: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305487, there is no canonical definition to state claims against.
-/

/-! ## A305487.P11254725230322286233

`A305489(∑[n+5]+16)`
-/

namespace A305487.P11254725230322286233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A305487.P11254725230322286233

/-! ## A305487.P3044929464262828571

`A305489(A000217(n+5)+6)+char[17]`
-/

namespace A305487.P3044929464262828571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305487.P3044929464262828571

/-! ## A305487.P4839040708758230418

`A305489(A000124(n+5)+5)+char[19]`
-/

namespace A305487.P4839040708758230418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305487.P4839040708758230418

/-! ## A305487.P8760828595905648099

`A007318(C(2, n))*A305489(A000124(n+5)+5)`
-/

namespace A305487.P8760828595905648099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305489 (A000124 (n + 5) + 5).toNat

end

end A305487.P8760828595905648099

/-! ## A305487.P5675758875478773763

`A305489(A000217(n+5)+6)/A007318(A007318(2*n))`
-/

namespace A305487.P5675758875478773763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305489 (A000217 (n + 5) + 6).toNat : ℚ) / (A007318 (A007318 (2 * n)).toNat : ℚ)

end

end A305487.P5675758875478773763

/-!
# A305488: Number of n X 7 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305488, there is no canonical definition to state claims against.
-/

/-! ## A305488.P3994930753790378603

`A305489(A056119(n)+28)`
-/

namespace A305488.P3994930753790378603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A056119 n + 28).toNat

end

end A305488.P3994930753790378603

/-! ## A305488.P17644309528751383044

`A305489(eq[11, A066657(n)])`
-/

namespace A305488.P17644309528751383044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305488.P17644309528751383044

/-! ## A305488.P14146830752469364478

`A305489(A166136(n+5)+1)`
-/

namespace A305488.P14146830752469364478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A166136 (n + 5) + 1).toNat

end

end A305488.P14146830752469364478

/-! ## A305488.P3011439689791978946

`A305489(A167499(n+5)+2)`
-/

namespace A305488.P3011439689791978946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A167499 (n + 5) + 2).toNat

end

end A305488.P3011439689791978946

/-! ## A305488.P16045165328873639454

`A305489(A167614(n+5)+4)`
-/

namespace A305488.P16045165328873639454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305489 (A167614 (n + 5) + 4).toNat

end

end A305488.P16045165328873639454

/-!
# A305489: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305489, there is no canonical definition to state claims against.
-/

/-! ## A305489.P14623391659173359947

`or(A081603(A022167(n)), A304149(n+1))`
-/

namespace A305489.P14623391659173359947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081603 (A022167 n).toNat) (A304149 (n + 1))

end

end A305489.P14623391659173359947

/-! ## A305489.P14413563198942206783

`or(A081603(A172339(n)), A304149(n+1))`
-/

namespace A305489.P14413563198942206783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081603 (A172339 n).toNat) (A304149 (n + 1))

end

end A305489.P14413563198942206783

/-! ## A305489.P5946565597460961695

`A304149(n+1)+A037800(A188910(n+1))`
-/

namespace A305489.P5946565597460961695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (n + 1) + A037800 (A188910 (n + 1)).toNat

end

end A305489.P5946565597460961695

/-! ## A305489.P13463369107459760530

`A304149(n+1)+A037800(A189111(n+1))`
-/

namespace A305489.P13463369107459760530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304149 (n + 1) + A037800 (A189111 (n + 1)).toNat

end

end A305489.P13463369107459760530

/-! ## A305489.P10833821636229883927

`A326291(A173881(n))+A304149(n+1)`
-/

namespace A305489.P10833821636229883927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A173881 n).toNat + A304149 (n + 1)

end

end A305489.P10833821636229883927

/-!
# A305490: Fixed point of the morphism 0->120, 1->110, 2->100.

The programs for A305490, there is no canonical definition to state claims against.
-/

/-! ## A305490.P16952352745908719122

`A017353(n)-A265389(n+1)`
-/

namespace A305490.P16952352745908719122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A265389 (n + 1)

end

end A305490.P16952352745908719122

/-! ## A305490.P4989369850900253486

`A297469(2*n+1)-A265389(n+1)`
-/

namespace A305490.P4989369850900253486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 (2 * n + 1) - A265389 (n + 1)

end

end A305490.P4989369850900253486

/-! ## A305490.P4075753445468992759

`A016897(A005408(n))-(A265389(n+1)+2)`
-/

namespace A305490.P4075753445468992759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (A005408 n).toNat - (A265389 (n + 1) + 2)

end

end A305490.P4075753445468992759

/-! ## A305490.P3966384173865067342

`A356982(n+1)+A186759(floor(1/A260301(2*n+1))²)`
-/

namespace A305490.P3966384173865067342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356982 (n + 1) + A186759 (⌊1 / (A260301 (2 * n + 1) : ℚ)⌋ ^ 2).toNat

end

end A305490.P3966384173865067342

/-! ## A305490.P2210080199100438322

`A356982(n+1)+A351008(floor(1/A260301(2*n+1))²)`
-/

namespace A305490.P2210080199100438322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356982 (n + 1) + A351008 (⌊1 / (A260301 (2 * n + 1) : ℚ)⌋ ^ 2).toNat

end

end A305490.P2210080199100438322

/-! ## A305490.P14719846021681742741

`A265389(3*n+2)%3`
-/

namespace A305490.P14719846021681742741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265389 (3 * n + 2)) 3

end

end A305490.P14719846021681742741

/-! ## A305490.P3011602320484396885

`A005408(A016897(n))%(A265389(n+1)+2)`
-/

namespace A305490.P3011602320484396885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A016897 n).toNat) (A265389 (n + 1) + 2)

end

end A305490.P3011602320484396885

/-! ## A305490.P17397556857383709658

`A014681(A017365(n))-A265389(n+1)`
-/

namespace A305490.P17397556857383709658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A017365 n).toNat - A265389 (n + 1)

end

end A305490.P17397556857383709658

/-!
# A305491: a(n) = numerator(r(n)) where r(n) = (((1/2)*(sqrt(3) + 1))^n - ((1/2)*(sqrt(3) - 1))^n * cos(Pi*n))/sqrt(3).

The programs for A305491, the canonical program `A305491.P13852021593725893787` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305491 has offset 0).

The definition of A305491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305491.P13852021593725893787

`A048788(n)/gcd(A016116(n), A048788(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305491

/-- `A048788(n)/gcd(A016116(n), A048788(n))` -/
def P13852021593725893787.Spec : Prop :=
  ∀ n, P13852021593725893787.a n = (A305491 n : ℚ)

end A305491

/-! ## A305491.P16167525717532906018

`A002605(n)/gcd(A002605(n), A011782(n))`
-/

namespace A305491.P16167525717532906018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 n : ℚ) / (Int.gcd (A002605 n) (A011782 n) : ℚ)

end

end A305491.P16167525717532906018

namespace A305491

/-- `A002605(n)/gcd(A002605(n), A011782(n))` -/
def P16167525717532906018.Spec : Prop :=
  ∀ n, P16167525717532906018.a n = (A305491 n : ℚ)

end A305491

/-! ## A305491.P11536643792989136709

`A002530(n)/gcd(A002530(n), A052945(n))`
-/

namespace A305491.P11536643792989136709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002530 n : ℚ) / (Int.gcd (A002530 n) (A052945 n) : ℚ)

end

end A305491.P11536643792989136709

namespace A305491

/-- `A002530(n)/gcd(A002530(n), A052945(n))` -/
def P11536643792989136709.Spec : Prop :=
  ∀ n, P11536643792989136709.a n = (A305491 n : ℚ)

end A305491

/-! ## A305491.P3186880271690292053

`A001353(n)/gcd(A001353(n), A026150(n))`
-/

namespace A305491.P3186880271690292053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 n : ℚ) / (Int.gcd (A001353 n) (A026150 n) : ℚ)

end

end A305491.P3186880271690292053

namespace A305491

/-- `A001353(n)/gcd(A001353(n), A026150(n))` -/
def P3186880271690292053.Spec : Prop :=
  ∀ n, P3186880271690292053.a n = (A305491 n : ℚ)

end A305491

/-! ## A305491.P1090636857736246495

`lcm(A003945(n), A083337(n))/A003945(n)`
-/

namespace A305491.P1090636857736246495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003945 n) (A083337 n) : ℚ) / (A003945 n : ℚ)

end

end A305491.P1090636857736246495

namespace A305491

/-- `lcm(A003945(n), A083337(n))/A003945(n)` -/
def P1090636857736246495.Spec : Prop :=
  ∀ n, P1090636857736246495.a n = (A305491 n : ℚ)

end A305491

/-!
# A305492: a(n) = ((1 + y)^n - (1 - y)^n)/y with y = sqrt(8).

The programs for A305492, the canonical program `A305492.P17229186852061839285` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305492 has offset 0).

The definition of A305492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305492.P17229186852061839285

`2*a(n-1)+7*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A305492

/-- `2*a(n-1)+7*a(n-2)` -/
def P17229186852061839285.Spec : Prop :=
  ∀ n, (P17229186852061839285.a n : ℤ) = A305492 n

theorem P17229186852061839285.correct : P17229186852061839285.Spec := by
  intro n
  simp only [A305492]

end A305492

/-! ## A305492.P5828209038577901574

`ogf(2x/(1-2x-7x^2))`
-/

namespace A305492.P5828209038577901574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -7] n

end

end A305492.P5828209038577901574

namespace A305492

/-- `ogf(2x/(1-2x-7x^2))` -/
def P5828209038577901574.Spec : Prop :=
  ∀ n, P5828209038577901574.a n = A305492 n

end A305492

/-! ## A305492.P7442335529256958726

`2*A015519(n)`
-/

namespace A305492.P7442335529256958726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015519 n

end

end A305492.P7442335529256958726

namespace A305492

/-- `2*A015519(n)` -/
def P7442335529256958726.Spec : Prop :=
  ∀ n, P7442335529256958726.a n = A305492 n

end A305492

/-! ## A305492.P649927647382176146

`Δ[2*A084150(n)]`
-/

namespace A305492.P649927647382176146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305492.P649927647382176146

namespace A305492

/-- `Δ[2*A084150(n)]` -/
def P649927647382176146.Spec : Prop :=
  ∀ n, P649927647382176146.a n = A305492 n

end A305492

/-! ## A305492.P5807876284274172350

`A015519(A005843(n)/2)+A015519(n)`
-/

namespace A305492.P5807876284274172350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A015519 n

end

end A305492.P5807876284274172350

namespace A305492

/-- `A015519(A005843(n)/2)+A015519(n)` -/
def P5807876284274172350.Spec : Prop :=
  ∀ n, P5807876284274172350.a n = A305492 n

end A305492

/-! ## A305492.P10115702400480004097

`A015519(A005843(n)-n)+A015519(n)`
-/

namespace A305492.P10115702400480004097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (A005843 n - (n : ℤ)).toNat + A015519 n

end

end A305492.P10115702400480004097

namespace A305492

/-- `A015519(A005843(n)-n)+A015519(n)` -/
def P10115702400480004097.Spec : Prop :=
  ∀ n, P10115702400480004097.a n = A305492 n

end A305492

/-! ## A305492.P12396816928481621838

`A084150(n+1)+A015519(n)-A084150(n)`
-/

namespace A305492.P12396816928481621838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084150 (n + 1) + (A015519 n - A084150 n)

end

end A305492.P12396816928481621838

namespace A305492

/-- `A084150(n+1)+A015519(n)-A084150(n)` -/
def P12396816928481621838.Spec : Prop :=
  ∀ n, P12396816928481621838.a n = A305492 n

end A305492

/-! ## A305492.P6933995481062943472

`A015519(n)+A015519(n%A047228(n+1))`
-/

namespace A305492.P6933995481062943472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 n + A015519 (Int.tmod (n : ℤ) (A047228 (n + 1))).toNat

end

end A305492.P6933995481062943472

namespace A305492

/-- `A015519(n)+A015519(n%A047228(n+1))` -/
def P6933995481062943472.Spec : Prop :=
  ∀ n, P6933995481062943472.a n = A305492 n

end A305492

/-! ## A305492.P13746881037876821477

`A291001(n)/4`
-/

namespace A305492.P13746881037876821477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291001 n : ℚ) / 4

end

end A305492.P13746881037876821477

namespace A305492

/-- `A291001(n)/4` -/
def P13746881037876821477.Spec : Prop :=
  ∀ n, P13746881037876821477.a n = (A305492 n : ℚ)

end A305492

/-! ## A305492.P10568506442003389784

`Δ[A084136(n)/2]`
-/

namespace A305492.P10568506442003389784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084136 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305492.P10568506442003389784

namespace A305492

/-- `Δ[A084136(n)/2]` -/
def P10568506442003389784.Spec : Prop :=
  ∀ n, P10568506442003389784.a n = (A305492 n : ℚ)

end A305492

/-! ## A305492.P12304875325407999928

`Δ[A084058(n)/4]`
-/

namespace A305492.P12304875325407999928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084058 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305492.P12304875325407999928

namespace A305492

/-- `Δ[A084058(n)/4]` -/
def P12304875325407999928.Spec : Prop :=
  ∀ n, P12304875325407999928.a n = (A305492 n : ℚ)

end A305492

/-! ## A305492.P3658189383407608152

`A083100(n)-A164544(n)`
-/

namespace A305492.P3658189383407608152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n - A164544 n

end

end A305492.P3658189383407608152

namespace A305492

/-- `A083100(n)-A164544(n)` -/
def P3658189383407608152.Spec : Prop :=
  ∀ n, P3658189383407608152.a n = A305492 n

end A305492

/-! ## A305492.P10418372667480807202

`A164544(n)-A096980(n)`
-/

namespace A305492.P10418372667480807202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164544 n - A096980 n

end

end A305492.P10418372667480807202

namespace A305492

/-- `A164544(n)-A096980(n)` -/
def P10418372667480807202.Spec : Prop :=
  ∀ n, P10418372667480807202.a n = A305492 n

end A305492

/-! ## A305492.P9169156282695979605

`A164589(n)-A015519(n+1)`
-/

namespace A305492.P9169156282695979605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164589 n - A015519 (n + 1)

end

end A305492.P9169156282695979605

namespace A305492

/-- `A164589(n)-A015519(n+1)` -/
def P9169156282695979605.Spec : Prop :=
  ∀ n, P9169156282695979605.a n = A305492 n

end A305492

/-! ## A305492.P10124148441136676633

`2*(A096980(n)-A164589(n))`
-/

namespace A305492.P10124148441136676633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096980 n - A164589 n)

end

end A305492.P10124148441136676633

namespace A305492

/-- `2*(A096980(n)-A164589(n))` -/
def P10124148441136676633.Spec : Prop :=
  ∀ n, P10124148441136676633.a n = A305492 n

end A305492

/-! ## A305492.P461846921551821499

`(A096980(n)-A084058(n))/2`
-/

namespace A305492.P461846921551821499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096980 n - A084058 n : ℚ) / 2

end

end A305492.P461846921551821499

namespace A305492

/-- `(A096980(n)-A084058(n))/2` -/
def P461846921551821499.Spec : Prop :=
  ∀ n, P461846921551821499.a n = (A305492 n : ℚ)

end A305492

/-! ## A305492.P13596665682902671307

`A015519(n+1)+A015519(n)-A084058(n)`
-/

namespace A305492.P13596665682902671307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + (A015519 n - A084058 n)

end

end A305492.P13596665682902671307

namespace A305492

/-- `A015519(n+1)+A015519(n)-A084058(n)` -/
def P13596665682902671307.Spec : Prop :=
  ∀ n, P13596665682902671307.a n = A305492 n

end A305492

/-! ## A305492.P6200041669924419698

`A096980(n)-(A015519(n+1)+A015519(n))`
-/

namespace A305492.P6200041669924419698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n - (A015519 (n + 1) + A015519 n)

end

end A305492.P6200041669924419698

namespace A305492

/-- `A096980(n)-(A015519(n+1)+A015519(n))` -/
def P6200041669924419698.Spec : Prop :=
  ∀ n, P6200041669924419698.a n = A305492 n

end A305492

/-! ## A305492.P14496827301129283711

`(A164539(n)-A083100(n))/2`
-/

namespace A305492.P14496827301129283711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164539 n - A083100 n : ℚ) / 2

end

end A305492.P14496827301129283711

namespace A305492

/-- `(A164539(n)-A083100(n))/2` -/
def P14496827301129283711.Spec : Prop :=
  ∀ n, P14496827301129283711.a n = (A305492 n : ℚ)

end A305492

/-!
# A305493: A binary encoding of the decimal representation of a number: for any number n >= 0, consider its decimal representation and replace each 9 with "111111111" and each other digit d with a "0" followed by d "1"s and interpret the result as a binary string.

The programs for A305493, there is no canonical definition to state claims against.
-/

/-! ## A305493.P15901605886660153430

`A277711(A054842(n))-1`
-/

namespace A305493.P15901605886660153430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (A054842 n).toNat - 1

end

end A305493.P15901605886660153430

/-!
# A305494: Let s(D) = Sum_{(a,b,c)} j((-b+sqrt(D))/(2*a)) where (a,b,c) is taken over all the primitive reduced binary quadratic forms a*x^2+b*xy+c*y^2 with b^2-4*ac = D. This sequence is s(D) as D runs through the numbers -3, -4, -7, -8, -11, -12, ... .

The programs for A305494, there is no canonical definition to state claims against.
-/

/-! ## A305494.P1244267899056854958

`-A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P1244267899056854958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P1244267899056854958

/-! ## A305494.P17377835769446304232

`A057428(n)*A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P17377835769446304232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P17377835769446304232

/-! ## A305494.P10459493145762209241

`A028326(n)%2-A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P10459493145762209241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028326 n) 2 - A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P10459493145762209241

/-! ## A305494.P10791105880226727104

`A168237(n)%3-A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P10791105880226727104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168237 n) 3 - A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P10791105880226727104

/-! ## A305494.P6280576905626940995

`1-(A305474(eq[1, A305474(n+1)])+A057979(2*n))`
-/

namespace A305494.P6280576905626940995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A057979 (2 * n))

end

end A305494.P6280576905626940995

/-! ## A305494.P2753447533327154103

`A285125(2*(n+1))-A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P2753447533327154103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (2 * (n + 1)) - A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P2753447533327154103

/-! ## A305494.P4388715996517382261

`(2*A180671(n))%2-A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P4388715996517382261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A180671 n) 2 - A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P4388715996517382261

/-! ## A305494.P2276625522376337686

`(A001478(n+1)+n)*A305474(eq[1, A305474(n+1)])`
-/

namespace A305494.P2276625522376337686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) + (n : ℤ)) * A305474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305494.P2276625522376337686

/-!
# A305495: Positions of 0 in the fixed point of the morphism 0->120, 1->110, 2->100 applied to 1 (as in A305490).

The programs for A305495, the canonical program `A305495.P6842332430008839682` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305495 has offset 1).

The definition of A305495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305495.P11027834743086562709

`ceil(A305496(n+1)/3)`
-/

namespace A305495.P11027834743086562709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305496 (n + 1) : ℚ) / 3⌉

end

end A305495.P11027834743086562709

namespace A305495

/-- `ceil(A305496(n+1)/3)` -/
def P11027834743086562709.Spec : Prop :=
  ∀ n, P11027834743086562709.a n = A305495 (n + 1)

end A305495

/-! ## A305495.P11345217842399083302

`∩[A189637(n+1), A189708(n+1)]`
-/

namespace A305495.P11345217842399083302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305495.P11345217842399083302

namespace A305495

/-- `∩[A189637(n+1), A189708(n+1)]` -/
def P11345217842399083302.Spec : Prop :=
  ∀ n, (P11345217842399083302.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P6842332430008839682

`∩[A189637(n+1), A189669(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A305495

/-- `∩[A189637(n+1), A189669(n+1)]` -/
def P6842332430008839682.Spec : Prop :=
  ∀ n, (P6842332430008839682.a n : ℤ) = A305495 (n + 1)

theorem P6842332430008839682.correct : P6842332430008839682.Spec := by
  intro n
  simp only [A305495, Nat.add_sub_cancel]

end A305495

/-! ## A305495.P10687085425104856682

`∩[A189637(n+1), A189725(n+1)]`
-/

namespace A305495.P10687085425104856682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305495.P10687085425104856682

namespace A305495

/-- `∩[A189637(n+1), A189725(n+1)]` -/
def P10687085425104856682.Spec : Prop :=
  ∀ n, (P10687085425104856682.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P11237983282691691439

`lt[A305490(n+1), 1]+1`
-/

namespace A305495.P11237983282691691439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A305495.P11237983282691691439

namespace A305495

/-- `lt[A305490(n+1), 1]+1` -/
def P11237983282691691439.Spec : Prop :=
  ∀ n, (P11237983282691691439.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P12726185381034295753

`eq[0, A305490(n+3)]+3`
-/

namespace A305495.P12726185381034295753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A305495.P12726185381034295753

namespace A305495

/-- `eq[0, A305490(n+3)]+3` -/
def P12726185381034295753.Spec : Prop :=
  ∀ n, (P12726185381034295753.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P10027670496420450911

`lt[A305490(A028310(n)), 1]`
-/

namespace A305495.P10027670496420450911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305495.P10027670496420450911

namespace A305495

/-- `lt[A305490(A028310(n)), 1]` -/
def P10027670496420450911.Spec : Prop :=
  ∀ n, (P10027670496420450911.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P13686642195512331095

`filter[A189637(n+1), A189706(#)]`
-/

namespace A305495.P13686642195512331095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189706 (f1 j).toNat = 1) n)

end

end A305495.P13686642195512331095

namespace A305495

/-- `filter[A189637(n+1), A189706(#)]` -/
def P13686642195512331095.Spec : Prop :=
  ∀ n, P13686642195512331095.a n = A305495 (n + 1)

end A305495

/-! ## A305495.P14823474130232920023

`filter[A189637(n+1), A189723(#)]`
-/

namespace A305495.P14823474130232920023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189723 (f1 j).toNat = 1) n)

end

end A305495.P14823474130232920023

namespace A305495

/-- `filter[A189637(n+1), A189723(#)]` -/
def P14823474130232920023.Spec : Prop :=
  ∀ n, P14823474130232920023.a n = A305495 (n + 1)

end A305495

/-! ## A305495.P8466152002009912282

`eq[A224822(2*n+1), 0]+1`
-/

namespace A305495.P8466152002009912282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A305495.P8466152002009912282

namespace A305495

/-- `eq[A224822(2*n+1), 0]+1` -/
def P8466152002009912282.Spec : Prop :=
  ∀ n, (P8466152002009912282.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P5990450301944741101

`eq[0, A246927(2*n+1)]+1`
-/

namespace A305495.P5990450301944741101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305495.P5990450301944741101

namespace A305495

/-- `eq[0, A246927(2*n+1)]+1` -/
def P5990450301944741101.Spec : Prop :=
  ∀ n, (P5990450301944741101.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P2653849341364650121

`eq[0, A246928(2*n+1)]+1`
-/

namespace A305495.P2653849341364650121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305495.P2653849341364650121

namespace A305495

/-- `eq[0, A246928(2*n+1)]+1` -/
def P2653849341364650121.Spec : Prop :=
  ∀ n, (P2653849341364650121.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P9735261583209803054

`lt[A189673(2*(n+1)), A189727(2*n+1)]+1`
-/

namespace A305495.P9735261583209803054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A305495.P9735261583209803054

namespace A305495

/-- `lt[A189673(2*(n+1)), A189727(2*n+1)]+1` -/
def P9735261583209803054.Spec : Prop :=
  ∀ n, (P9735261583209803054.a n : ℤ) = A305495 (n + 1)

end A305495

/-! ## A305495.P780850990302697398

`A008611(A305496(n+1))`
-/

namespace A305495.P780850990302697398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A305496 (n + 1)).toNat

end

end A305495.P780850990302697398

namespace A305495

/-- `A008611(A305496(n+1))` -/
def P780850990302697398.Spec : Prop :=
  ∀ n, P780850990302697398.a n = A305495 (n + 1)

end A305495

/-! ## A305495.P4442638077372615405

`A189631(A305496(n+1)+1)`
-/

namespace A305495.P4442638077372615405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A305496 (n + 1) + 1).toNat

end

end A305495.P4442638077372615405

namespace A305495

/-- `A189631(A305496(n+1)+1)` -/
def P4442638077372615405.Spec : Prop :=
  ∀ n, P4442638077372615405.a n = A305495 (n + 1)

end A305495

/-!
# A305496: Positions of 2 in the fixed point of the morphism 0->120, 1->110, 2->100 applied to 1 (as in A305490).

The programs for A305496, the canonical program `A305496.P3717088161974094757` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305496 has offset 1).

The definition of A305496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305496.P3717088161974094757

`3*A305495(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A305496

/-- `3*A305495(n+1)-1` -/
def P3717088161974094757.Spec : Prop :=
  ∀ n, P3717088161974094757.a n = A305496 (n + 1)

theorem P3717088161974094757.correct : P3717088161974094757.Spec := by
  intro n
  simp only [A305496, Nat.add_sub_cancel]

end A305496

/-! ## A305496.P5120048030818434520

`A061570(A305495(n+1))`
-/

namespace A305496.P5120048030818434520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (A305495 (n + 1)).toNat

end

end A305496.P5120048030818434520

namespace A305496

/-- `A061570(A305495(n+1))` -/
def P5120048030818434520.Spec : Prop :=
  ∀ n, P5120048030818434520.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P16861588988330586200

`A016789(A305495(n+1)-1)`
-/

namespace A305496.P16861588988330586200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A305495 (n + 1) - 1).toNat

end

end A305496.P16861588988330586200

namespace A305496

/-- `A016789(A305495(n+1)-1)` -/
def P16861588988330586200.Spec : Prop :=
  ∀ n, P16861588988330586200.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P6498894507157065686

`A016789(eq[0, A305490(n+1)])`
-/

namespace A305496.P6498894507157065686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305496.P6498894507157065686

namespace A305496

/-- `A016789(eq[0, A305490(n+1)])` -/
def P6498894507157065686.Spec : Prop :=
  ∀ n, P6498894507157065686.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P9401108587604085350

`∩[A189637(n+1), A189670(n+1)]`
-/

namespace A305496.P9401108587604085350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305496.P9401108587604085350

namespace A305496

/-- `∩[A189637(n+1), A189670(n+1)]` -/
def P9401108587604085350.Spec : Prop :=
  ∀ n, (P9401108587604085350.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P323988937250224990

`∩[A189637(n+1), A189707(n+1)]`
-/

namespace A305496.P323988937250224990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305496.P323988937250224990

namespace A305496

/-- `∩[A189637(n+1), A189707(n+1)]` -/
def P323988937250224990.Spec : Prop :=
  ∀ n, (P323988937250224990.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P18444995766755272143

`∩[A189637(n+1), A189724(n+1)]`
-/

namespace A305496.P18444995766755272143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A305496.P18444995766755272143

namespace A305496

/-- `∩[A189637(n+1), A189724(n+1)]` -/
def P18444995766755272143.Spec : Prop :=
  ∀ n, (P18444995766755272143.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P5543884243765879228

`A153151(3*A305495(n+1))`
-/

namespace A305496.P5543884243765879228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (3 * A305495 (n + 1)).toNat

end

end A305496.P5543884243765879228

namespace A305496

/-- `A153151(3*A305495(n+1))` -/
def P5543884243765879228.Spec : Prop :=
  ∀ n, P5543884243765879228.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P10599075258977492496

`filter[A189637(n+1), A189668(#)]`
-/

namespace A305496.P10599075258977492496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189668 (f1 j).toNat = 1) n)

end

end A305496.P10599075258977492496

namespace A305496

/-- `filter[A189637(n+1), A189668(#)]` -/
def P10599075258977492496.Spec : Prop :=
  ∀ n, P10599075258977492496.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P7000376407720873165

`filter[A189637(n+1), A356982(#)]`
-/

namespace A305496.P7000376407720873165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356982 (f1 j).toNat = 1) n)

end

end A305496.P7000376407720873165

namespace A305496

/-- `filter[A189637(n+1), A356982(#)]` -/
def P7000376407720873165.Spec : Prop :=
  ∀ n, P7000376407720873165.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P7895732822028313362

`filter[A189707(n+1), A356982(#)]`
-/

namespace A305496.P7895732822028313362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356982 (f1 j).toNat = 1) n)

end

end A305496.P7895732822028313362

namespace A305496

/-- `filter[A189707(n+1), A356982(#)]` -/
def P7895732822028313362.Spec : Prop :=
  ∀ n, P7895732822028313362.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P12811801945708122449

`A133223(2*A305495(n+1))`
-/

namespace A305496.P12811801945708122449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (2 * A305495 (n + 1)).toNat

end

end A305496.P12811801945708122449

namespace A305496

/-- `A133223(2*A305495(n+1))` -/
def P12811801945708122449.Spec : Prop :=
  ∀ n, P12811801945708122449.a n = A305496 (n + 1)

end A305496

/-! ## A305496.P2425172494682975675

`eq[A000122(n+1), A014453(2*n+1)]+1`
-/

namespace A305496.P2425172494682975675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P2425172494682975675

namespace A305496

/-- `eq[A000122(n+1), A014453(2*n+1)]+1` -/
def P2425172494682975675.Spec : Prop :=
  ∀ n, (P2425172494682975675.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P5262597615261137399

`eq[A002448(n+1), A014453(2*n+1)]+1`
-/

namespace A305496.P5262597615261137399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P5262597615261137399

namespace A305496

/-- `eq[A002448(n+1), A014453(2*n+1)]+1` -/
def P5262597615261137399.Spec : Prop :=
  ∀ n, (P5262597615261137399.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P6269245728932833522

`eq[A004016(n+1), A014453(2*n+1)]+1`
-/

namespace A305496.P6269245728932833522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P6269245728932833522

namespace A305496

/-- `eq[A004016(n+1), A014453(2*n+1)]+1` -/
def P6269245728932833522.Spec : Prop :=
  ∀ n, (P6269245728932833522.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P5570771624955538051

`eq[A007949(n+1), A033721(2*n+1)]+1`
-/

namespace A305496.P5570771624955538051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P5570771624955538051

namespace A305496

/-- `eq[A007949(n+1), A033721(2*n+1)]+1` -/
def P5570771624955538051.Spec : Prop :=
  ∀ n, (P5570771624955538051.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P3390364169681228144

`eq[A011655(n+2), A033721(2*n+1)]+1`
-/

namespace A305496.P3390364169681228144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P3390364169681228144

namespace A305496

/-- `eq[A011655(n+2), A033721(2*n+1)]+1` -/
def P3390364169681228144.Spec : Prop :=
  ∀ n, (P3390364169681228144.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P13542800620310250277

`eq[2-A010872(n+1), A033721(2*n+1)]+1`
-/

namespace A305496.P13542800620310250277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P13542800620310250277

namespace A305496

/-- `eq[2-A010872(n+1), A033721(2*n+1)]+1` -/
def P13542800620310250277.Spec : Prop :=
  ∀ n, (P13542800620310250277.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P13841836734481034350

`eq[A010872(2*n+1), A033721(2*n+1)]+1`
-/

namespace A305496.P13841836734481034350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P13841836734481034350

namespace A305496

/-- `eq[A010872(2*n+1), A033721(2*n+1)]+1` -/
def P13841836734481034350.Spec : Prop :=
  ∀ n, (P13841836734481034350.a n : ℤ) = A305496 (n + 1)

end A305496

/-! ## A305496.P2622401116103474616

`eq[A014453(2*n+1), A229062(2*n+1)]+1`
-/

namespace A305496.P2622401116103474616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305496.P2622401116103474616

namespace A305496

/-- `eq[A014453(2*n+1), A229062(2*n+1)]+1` -/
def P2622401116103474616.Spec : Prop :=
  ∀ n, (P2622401116103474616.a n : ℤ) = A305496 (n + 1)

end A305496

/-!
# A305497: The largest positive even integer that can be represented with n digits in base 3/2.

The programs for A305497, the canonical program `A305497.P10714311008206007693` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305497 has offset 1).

The definition of A305497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305497.P486628082891637222

`A305498(n+2)-2`
-/

namespace A305497.P486628082891637222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305498 (n + 2) - 2

end

end A305497.P486628082891637222

namespace A305497

/-- `A305498(n+2)-2` -/
def P486628082891637222.Spec : Prop :=
  ∀ n, P486628082891637222.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P10714311008206007693

`2*A061419(n+2)-2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305497

/-- `2*A061419(n+2)-2` -/
def P10714311008206007693.Spec : Prop :=
  ∀ n, P10714311008206007693.a n = A305497 (n + 1)

theorem P10714311008206007693.correct : P10714311008206007693.Spec := by
  intro n
  simp only [A305497, Nat.add_sub_cancel]

end A305497

/-! ## A305497.P11683480445983573002

`2*(floor(3/4*a(n-1))+1)` with `a(0)=2`
-/

namespace A305497.P11683480445983573002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (⌊(3 : ℚ) / 4 * (a (n - 1) : ℚ)⌋ + 1)

end

end A305497.P11683480445983573002

namespace A305497

/-- `2*(floor(3/4*a(n-1))+1)` -/
def P11683480445983573002.Spec : Prop :=
  ∀ n, P11683480445983573002.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P8998451976903804224

`2*(a(n-1)-floor((a(n-1)-1)/4))` with `a(0)=2`
-/

namespace A305497.P8998451976903804224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - ⌊(a (n - 1) - 1 : ℚ) / 4⌋)

end

end A305497.P8998451976903804224

namespace A305497

/-- `2*(a(n-1)-floor((a(n-1)-1)/4))` -/
def P8998451976903804224.Spec : Prop :=
  ∀ n, P8998451976903804224.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P12779165403536798526

`gcd(2, a(n-1)/2)+a(n-1)+a(n-1)/2` with `a(0)=2`
-/

namespace A305497.P12779165403536798526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1) / 2)) : ℚ) + (a (n - 1) + a (n - 1) / 2)

end

end A305497.P12779165403536798526

namespace A305497

/-- `gcd(2, a(n-1)/2)+a(n-1)+a(n-1)/2` -/
def P12779165403536798526.Spec : Prop :=
  ∀ n, P12779165403536798526.a n = (A305497 (n + 1) : ℚ)

end A305497

/-! ## A305497.P12107155529209360424

`∑[2*A005428(n)]`
-/

namespace A305497.P12107155529209360424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305497.P12107155529209360424

namespace A305497

/-- `∑[2*A005428(n)]` -/
def P12107155529209360424.Spec : Prop :=
  ∀ n, P12107155529209360424.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P8815908781280818517

`2*A006999(n+1)`
-/

namespace A305497.P8815908781280818517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006999 (n + 1)

end

end A305497.P8815908781280818517

namespace A305497

/-- `2*A006999(n+1)` -/
def P8815908781280818517.Spec : Prop :=
  ∀ n, P8815908781280818517.a n = A305497 (n + 1)

theorem P8815908781280818517.correct : P8815908781280818517.Spec := by
  intro n
  simp only [A305497, Nat.add_sub_cancel, A305497.P8815908781280818517.a, A305497.P10714311008206007693.a, A006999, A006999.P3401224636589051846.a, A061419, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305497

/-! ## A305497.P16391364828074929310

`∑[2*A073941(n+2)]`
-/

namespace A305497.P16391364828074929310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305497.P16391364828074929310

namespace A305497

/-- `∑[2*A073941(n+2)]` -/
def P16391364828074929310.Spec : Prop :=
  ∀ n, P16391364828074929310.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P16538680313578677004

`2*(A061418(n+2)-2)`
-/

namespace A305497.P16538680313578677004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061418 (n + 2) - 2)

end

end A305497.P16538680313578677004

namespace A305497

/-- `2*(A061418(n+2)-2)` -/
def P16538680313578677004.Spec : Prop :=
  ∀ n, P16538680313578677004.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P16463352425883039321

`2*(A003312(n+2)-3)`
-/

namespace A305497.P16463352425883039321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003312 (n + 2) - 3)

end

end A305497.P16463352425883039321

namespace A305497

/-- `2*(A003312(n+2)-3)` -/
def P16463352425883039321.Spec : Prop :=
  ∀ n, P16463352425883039321.a n = A305497 (n + 1)

theorem P16463352425883039321.correct : P16463352425883039321.Spec := by
  intro n
  simp only [A305497, Nat.add_sub_cancel, A305497.P16463352425883039321.a, A305497.P10714311008206007693.a, A003312, A003312.P15694996587841724422.a, A061419, A061419.P18372017784538588970.a, A006999, A006999.P3401224636589051846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305497

/-! ## A305497.P12183709223528063436

`∑[2*Δ[A061418(n+1)]]`
-/

namespace A305497.P12183709223528063436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305497.P12183709223528063436

namespace A305497

/-- `∑[2*Δ[A061418(n+1)]]` -/
def P12183709223528063436.Spec : Prop :=
  ∀ n, P12183709223528063436.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P15242515288065515811

`∑[A073941(n+2)+A005428(n)]`
-/

namespace A305497.P15242515288065515811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 2) + A005428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305497.P15242515288065515811

namespace A305497

/-- `∑[A073941(n+2)+A005428(n)]` -/
def P15242515288065515811.Spec : Prop :=
  ∀ n, P15242515288065515811.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P6278513769834450730

`A304025(n+1)-A356556(n+1)`
-/

namespace A305497.P6278513769834450730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304025 (n + 1) - A356556 (n + 1)

end

end A305497.P6278513769834450730

namespace A305497

/-- `A304025(n+1)-A356556(n+1)` -/
def P6278513769834450730.Spec : Prop :=
  ∀ n, P6278513769834450730.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P3410393856386336555

`A006999(n+1)+A061418(n+2)-2`
-/

namespace A305497.P3410393856386336555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (n + 1) + (A061418 (n + 2) - 2)

end

end A305497.P3410393856386336555

namespace A305497

/-- `A006999(n+1)+A061418(n+2)-2` -/
def P3410393856386336555.Spec : Prop :=
  ∀ n, P3410393856386336555.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P14825401894797500893

`A070885(n+2)+A205083(n+2)-2`
-/

namespace A305497.P14825401894797500893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 2) + (A205083 (n + 2) - 2)

end

end A305497.P14825401894797500893

namespace A305497

/-- `A070885(n+2)+A205083(n+2)-2` -/
def P14825401894797500893.Spec : Prop :=
  ∀ n, P14825401894797500893.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P2247026667642278376

`A070885(n+2)+A304273(n+2)-2`
-/

namespace A305497.P2247026667642278376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 2) + (A304273 (n + 2) - 2)

end

end A305497.P2247026667642278376

namespace A305497

/-- `A070885(n+2)+A304273(n+2)-2` -/
def P2247026667642278376.Spec : Prop :=
  ∀ n, P2247026667642278376.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P13706605379513980880

`A006999(n+1)+A006999(n)+A005428(n)`
-/

namespace A305497.P13706605379513980880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (n + 1) + (A006999 n + A005428 n)

end

end A305497.P13706605379513980880

namespace A305497

/-- `A006999(n+1)+A006999(n)+A005428(n)` -/
def P13706605379513980880.Spec : Prop :=
  ∀ n, P13706605379513980880.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P12660139063728638209

`A006999(n+1)+A073941(n+2)+A006999(n)`
-/

namespace A305497.P12660139063728638209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 (n + 1) + (A073941 (n + 2) + A006999 n)

end

end A305497.P12660139063728638209

namespace A305497

/-- `A006999(n+1)+A073941(n+2)+A006999(n)` -/
def P12660139063728638209.Spec : Prop :=
  ∀ n, P12660139063728638209.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P18073587074845784424

`A070885(n+2)+A081848(n+2)-A003312(n+2)`
-/

namespace A305497.P18073587074845784424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 2) + (A081848 (n + 2) - A003312 (n + 2))

end

end A305497.P18073587074845784424

namespace A305497

/-- `A070885(n+2)+A081848(n+2)-A003312(n+2)` -/
def P18073587074845784424.Spec : Prop :=
  ∀ n, P18073587074845784424.a n = A305497 (n + 1)

end A305497

/-! ## A305497.P3819377415921016425

`(gcd(4, a(n-1))+3*a(n-1))/2` with `a(0)=2`
-/

namespace A305497.P3819377415921016425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((Int.gcd 4 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + 3 * a (n - 1)) / 2

end

end A305497.P3819377415921016425

namespace A305497

/-- `(gcd(4, a(n-1))+3*a(n-1))/2` -/
def P3819377415921016425.Spec : Prop :=
  ∀ n, P3819377415921016425.a n = (A305497 (n + 1) : ℚ)

end A305497

/-!
# A305498: The smallest positive even integer that can be represented with n digits in base 3/2.

The programs for A305498, the canonical program `A305498.P10132958174563949694` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305498 has offset 1).

The definition of A305498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305498.P10132958174563949694

`2*A061419(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A305498

/-- `2*A061419(n+1)` -/
def P10132958174563949694.Spec : Prop :=
  ∀ n, P10132958174563949694.a n = A305498 (n + 1)

theorem P10132958174563949694.correct : P10132958174563949694.Spec := by
  intro n
  simp only [A305498, Nat.add_sub_cancel]

end A305498

/-! ## A305498.P3470891404412779375

`2*ceil(3/4*a(n-1))` with `a(0)=2`
-/

namespace A305498.P3470891404412779375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ⌈(3 : ℚ) / 4 * (a (n - 1) : ℚ)⌉

end

end A305498.P3470891404412779375

namespace A305498

/-- `2*ceil(3/4*a(n-1))` -/
def P3470891404412779375.Spec : Prop :=
  ∀ n, P3470891404412779375.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P1612499216607226784

`and(3/2*a(n-1)+1, -2)` with `a(0)=2`
-/

namespace A305498.P1612499216607226784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land (SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (a (n - 1) : ℚ) + 1)) (-2)

end

end A305498.P1612499216607226784

namespace A305498

/-- `and(3/2*a(n-1)+1, -2)` -/
def P1612499216607226784.Spec : Prop :=
  ∀ n, P1612499216607226784.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P17305834041612312430

`2*floor(3*(a(n-1)+1)/4)` with `a(0)=2`
-/

namespace A305498.P17305834041612312430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ⌊3 * ((a (n - 1) + 1 : ℚ) / 4)⌋

end

end A305498.P17305834041612312430

namespace A305498

/-- `2*floor(3*(a(n-1)+1)/4)` -/
def P17305834041612312430.Spec : Prop :=
  ∀ n, P17305834041612312430.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P979562371572227472

`2*(a(n-1)-floor(a(n-1)/4))` with `a(0)=2`
-/

namespace A305498.P979562371572227472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - ⌊(a (n - 1) : ℚ) / 4⌋)

end

end A305498.P979562371572227472

namespace A305498

/-- `2*(a(n-1)-floor(a(n-1)/4))` -/
def P979562371572227472.Spec : Prop :=
  ∀ n, P979562371572227472.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P17627891927731870330

`a(n-1)+(a(n-1)+a(n-1)%4)/2` with `a(0)=2`
-/

namespace A305498.P17627891927731870330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 4 : ℚ)) / 2

end

end A305498.P17627891927731870330

namespace A305498

/-- `a(n-1)+(a(n-1)+a(n-1)%4)/2` -/
def P17627891927731870330.Spec : Prop :=
  ∀ n, P17627891927731870330.a n = (A305498 (n + 1) : ℚ)

end A305498

/-! ## A305498.P7344126605202082856

`2*(A006999(n)+1)`
-/

namespace A305498.P7344126605202082856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006999 n + 1)

end

end A305498.P7344126605202082856

namespace A305498

/-- `2*(A006999(n)+1)` -/
def P7344126605202082856.Spec : Prop :=
  ∀ n, P7344126605202082856.a n = A305498 (n + 1)

theorem P7344126605202082856.correct : P7344126605202082856.Spec := by
  intro n
  simp only [A305498, Nat.add_sub_cancel, A305498.P7344126605202082856.a, A305498.P10132958174563949694.a, A006999, A006999.P3401224636589051846.a, A061419, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305498

/-! ## A305498.P17027064076482824415

`∑[2*A073941(n+1)]`
-/

namespace A305498.P17027064076482824415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305498.P17027064076482824415

namespace A305498

/-- `∑[2*A073941(n+1)]` -/
def P17027064076482824415.Spec : Prop :=
  ∀ n, P17027064076482824415.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P4897174762025415024

`2*(A061418(n+1)-1)`
-/

namespace A305498.P4897174762025415024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061418 (n + 1) - 1)

end

end A305498.P4897174762025415024

namespace A305498

/-- `2*(A061418(n+1)-1)` -/
def P4897174762025415024.Spec : Prop :=
  ∀ n, P4897174762025415024.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P10751367497643360629

`2*(A003312(n+1)-2)`
-/

namespace A305498.P10751367497643360629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003312 (n + 1) - 2)

end

end A305498.P10751367497643360629

namespace A305498

/-- `2*(A003312(n+1)-2)` -/
def P10751367497643360629.Spec : Prop :=
  ∀ n, P10751367497643360629.a n = A305498 (n + 1)

theorem P10751367497643360629.correct : P10751367497643360629.Spec := by
  intro n
  simp only [A305498, Nat.add_sub_cancel, A305498.P10751367497643360629.a, A305498.P10132958174563949694.a, A003312, A003312.P15694996587841724422.a, A061419, A061419.P18372017784538588970.a, A006999, A006999.P3401224636589051846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305498

/-! ## A305498.P1181257942860072864

`∑[2*A005428(abs(1-n))]`
-/

namespace A305498.P1181257942860072864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005428 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305498.P1181257942860072864

namespace A305498

/-- `∑[2*A005428(abs(1-n))]` -/
def P1181257942860072864.Spec : Prop :=
  ∀ n, P1181257942860072864.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P3489320934365023598

`A061418(n+1)+A006999(n)`
-/

namespace A305498.P3489320934365023598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + A006999 n

end

end A305498.P3489320934365023598

namespace A305498

/-- `A061418(n+1)+A006999(n)` -/
def P3489320934365023598.Spec : Prop :=
  ∀ n, P3489320934365023598.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P1955193223380083888

`A061419(n+1)+A006999(n)+1`
-/

namespace A305498.P1955193223380083888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + (A006999 n + 1)

end

end A305498.P1955193223380083888

namespace A305498

/-- `A061419(n+1)+A006999(n)+1` -/
def P1955193223380083888.Spec : Prop :=
  ∀ n, P1955193223380083888.a n = A305498 (n + 1)

theorem P1955193223380083888.correct : P1955193223380083888.Spec := by
  intro n
  simp only [A305498, Nat.add_sub_cancel, A305498.P1955193223380083888.a, A305498.P10132958174563949694.a, A006999, A006999.P3401224636589051846.a, A061419, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305498

/-! ## A305498.P14713017639726098511

`A205083(n+1)+A070885(n+1)`
-/

namespace A305498.P14713017639726098511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1) + A070885 (n + 1)

end

end A305498.P14713017639726098511

namespace A305498

/-- `A205083(n+1)+A070885(n+1)` -/
def P14713017639726098511.Spec : Prop :=
  ∀ n, P14713017639726098511.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P3468158733654841076

`A061418(n+1)+A061419(n+1)-1`
-/

namespace A305498.P3468158733654841076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + (A061419 (n + 1) - 1)

end

end A305498.P3468158733654841076

namespace A305498

/-- `A061418(n+1)+A061419(n+1)-1` -/
def P3468158733654841076.Spec : Prop :=
  ∀ n, P3468158733654841076.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P11893425995633762689

`A003312(n+1)+A061419(n+1)-2`
-/

namespace A305498.P11893425995633762689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 1) + (A061419 (n + 1) - 2)

end

end A305498.P11893425995633762689

namespace A305498

/-- `A003312(n+1)+A061419(n+1)-2` -/
def P11893425995633762689.Spec : Prop :=
  ∀ n, P11893425995633762689.a n = A305498 (n + 1)

theorem P11893425995633762689.correct : P11893425995633762689.Spec := by
  intro n
  simp only [A305498, Nat.add_sub_cancel, A305498.P11893425995633762689.a, A305498.P10132958174563949694.a, A003312, A003312.P15694996587841724422.a, A061419, A061419.P18372017784538588970.a, A006999, A006999.P3401224636589051846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305498

/-! ## A305498.P8996567713863258441

`2*(A081848(n+1)-A304273(n+1))`
-/

namespace A305498.P8996567713863258441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081848 (n + 1) - A304273 (n + 1))

end

end A305498.P8996567713863258441

namespace A305498

/-- `2*(A081848(n+1)-A304273(n+1))` -/
def P8996567713863258441.Spec : Prop :=
  ∀ n, P8996567713863258441.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P3390245707849022561

`A061419(A000027(n+1))+A061419(n+1)`
-/

namespace A305498.P3390245707849022561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (A000027 (n + 1)).toNat + A061419 (n + 1)

end

end A305498.P3390245707849022561

namespace A305498

/-- `A061419(A000027(n+1))+A061419(n+1)` -/
def P3390245707849022561.Spec : Prop :=
  ∀ n, P3390245707849022561.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P16774200196125785488

`A061419(n+1)+A061419(n+2)-A005428(n)`
-/

namespace A305498.P16774200196125785488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + (A061419 (n + 2) - A005428 n)

end

end A305498.P16774200196125785488

namespace A305498

/-- `A061419(n+1)+A061419(n+2)-A005428(n)` -/
def P16774200196125785488.Spec : Prop :=
  ∀ n, P16774200196125785488.a n = A305498 (n + 1)

end A305498

/-! ## A305498.P14712917947324427162

`A061419(n+1)+A061419(n+2)-A073941(n+2)`
-/

namespace A305498.P14712917947324427162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + (A061419 (n + 2) - A073941 (n + 2))

end

end A305498.P14712917947324427162

namespace A305498

/-- `A061419(n+1)+A061419(n+2)-A073941(n+2)` -/
def P14712917947324427162.Spec : Prop :=
  ∀ n, P14712917947324427162.a n = A305498 (n + 1)

end A305498

/-!
# A305499: Square array A(n,k), n > 0 and k > 0, read by antidiagonals, with initial values A(1,k) = k and recurrence equations A(n+1,k) = A(n,k) for 0 < k <= n and A(n+1,k) = A(n,k) - A000035(n+k) for 0 < n < k.

The programs for A305499, there is no canonical definition to state claims against.
-/

/-! ## A305499.P9227765534662867854

`A010783(n+1)+A007814(A297708(A287214(n)))`
-/

namespace A305499.P9227765534662867854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) + A007814 (A297708 (A287214 n).toNat).toNat

end

end A305499.P9227765534662867854

/-! ## A305499.P13746292221646769903

`A302052(A323837(n))+A002262(n)`
-/

namespace A305499.P13746292221646769903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (A323837 n).toNat + A002262 n

end

end A305499.P13746292221646769903

/-! ## A305499.P80727757952799582

`A277446(A293515(n+1)+A023758(n+1))`
-/

namespace A305499.P80727757952799582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277446 (A293515 (n + 1) + A023758 (n + 1)).toNat

end

end A305499.P80727757952799582

/-! ## A305499.P17323620301261706406

`A210873(n+1)%A001222(A234728(n+1))`
-/

namespace A305499.P17323620301261706406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210873 (n + 1)) (A001222 (A234728 (n + 1)).toNat)

end

end A305499.P17323620301261706406

/-! ## A305499.P1984176786706215299

`A167439(A307665(n))`
-/

namespace A305499.P1984176786706215299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A307665 n).toNat

end

end A305499.P1984176786706215299

