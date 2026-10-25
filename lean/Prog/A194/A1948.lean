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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A194801: Square array read by antidiagonals: T(n,k) = k*((n+1)*k-n+1)/2, k = 0, +- 1, +- 2,..., n >= 0.

The programs for A194801, there is no canonical definition to state claims against.
-/

/-! ## A194801.P6502445385146263200

`A303301(lt[2, A025581(n)])`
-/

namespace A194801.P6502445385146263200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194801.P6502445385146263200

/-! ## A194801.P4106624151624880941

`A303301(lt[2, val(A036561(n), 2)])`
-/

namespace A194801.P4106624151624880941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194801.P4106624151624880941

/-! ## A194801.P2076626771872221298

`A303301(lt[∑[n+2]-2, A096334(n)])`
-/

namespace A194801.P2076626771872221298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A194801.P2076626771872221298

/-! ## A194801.P3097851619323339560

`A303301(lt[3*n+2, A191539(n+1)])`
-/

namespace A194801.P3097851619323339560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194801.P3097851619323339560

/-! ## A194801.P3528272618273209809

`A303301(lt[A000124(n), A143543(n+1)])`
-/

namespace A194801.P3528272618273209809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194801.P3528272618273209809

/-! ## A194801.P5434139386708459281

`A303301(lt[A133263(n), A143543(n+1)])`
-/

namespace A194801.P5434139386708459281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194801.P5434139386708459281

/-! ## A194801.P11122994292173831362

`A303301(lt[A152950(n+1), A143543(n+1)])`
-/

namespace A194801.P11122994292173831362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194801.P11122994292173831362

/-!
# A194803: Number of parts that are visible in one of the three views of the modular table of partitions version "Tree" with n sections.

The programs for A194803, there is no canonical definition to state claims against.
-/

/-! ## A194803.P338281457427605434

`A210979(n)-(A194805(n)+A006128(n))`
-/

namespace A194803.P338281457427605434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210979 n - (A194805 n + A006128 n)

end

end A194803.P338281457427605434

/-! ## A194803.P1894527152360004094

`∑[A004257(∑[A245168(2*n)])]`
-/

namespace A194803.P1894527152360004094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245168 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004257 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194803.P1894527152360004094

/-! ## A194803.P15539730301632396703

`A293137(A094960(n+1)+2^n-2)`
-/

namespace A194803.P15539730301632396703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A094960 (n + 1) + ((2 ^ n : ℤ) - 2)).toNat

end

end A194803.P15539730301632396703

/-! ## A194803.P14335493599485632452

`round((A120401(∑[A029747(n+1)])-1)/2)`
-/

namespace A194803.P14335493599485632452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A120401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1 : ℚ) / 2)

end

end A194803.P14335493599485632452

/-! ## A194803.P18434851330515239720

`A261101(n)+A180613(A120400(n))`
-/

namespace A194803.P18434851330515239720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 n + A180613 (A120400 n).toNat

end

end A194803.P18434851330515239720

/-!
# A194804: Sum of parts that are visible in one of the three views of the modular table of partitions version "tree" with n sections.

The programs for A194804, there is no canonical definition to state claims against.
-/

/-! ## A194804.P6918771366036002002

`A210980(n)-(A194805(n)+A066186(n))`
-/

namespace A194804.P6918771366036002002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210980 n - (A194805 n + A066186 n)

end

end A194804.P6918771366036002002

/-! ## A194804.P8218103819249429794

`A103128(∑[(n+2)*2^n]-1)-∏{e}[n+1, #+1]`
-/

namespace A194804.P8218103819249429794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A194804.P8218103819249429794

/-! ## A194804.P13253561962688284618

`∑[lt[A133256(n+1), A178244(2*(n+2))]]`
-/

namespace A194804.P13253561962688284618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194804.P13253561962688284618

/-!
# A194805: Number of parts that are visible in one of the three views of the modular table of partitions version "tree" with n sections.

The programs for A194805, there is no canonical definition to state claims against.
-/

/-! ## A194805.P13982731626169931081

`A084376(n)-1`
-/

namespace A194805.P13982731626169931081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n - 1

end

end A194805.P13982731626169931081

/-! ## A194805.P3660252073271459292

`∑[A027336(n)]-1`
-/

namespace A194805.P3660252073271459292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194805.P3660252073271459292

/-! ## A194805.P16699735129390061627

`∑[∑[A008483(n)]]-1`
-/

namespace A194805.P16699735129390061627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194805.P16699735129390061627

/-! ## A194805.P10222991217863788809

`∑[A320689(n)-a(n-1)]-1` with `a(0)=1`
-/

namespace A194805.P10222991217863788809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A320689 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194805.P10222991217863788809

/-! ## A194805.P17174499055434920246

`A139582(n)-(A002865(n)+1)`
-/

namespace A194805.P17174499055434920246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n - (A002865 n + 1)

end

end A194805.P17174499055434920246

/-! ## A194805.P5910392891050143713

`a(n-1)+A085811(n+2)+A002865(n)` with `a(0)=0`
-/

namespace A194805.P5910392891050143713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A085811 (n + 2) + A002865 n)

end

end A194805.P5910392891050143713

/-! ## A194805.P7104025672198030325

`a(n-1)+A000041(n)-A000041(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A194805.P7104025672198030325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (A000041 n - A000041 (n - 2))

end

end A194805.P7104025672198030325

/-! ## A194805.P17189631894293370787

`A000041(n)+A000065(n)-A002865(n)`
-/

namespace A194805.P17189631894293370787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A000065 n - A002865 n)

end

end A194805.P17189631894293370787

/-! ## A194805.P1655922290446727300

`∑[A027336(n)%A002865(3*(n+1))]`
-/

namespace A194805.P1655922290446727300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027336 n) (A002865 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194805.P1655922290446727300

/-! ## A194805.P2851422654299892839

`∑[A264401(A075349(n+2))]-1`
-/

namespace A194805.P2851422654299892839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264401 (A075349 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194805.P2851422654299892839

/-! ## A194805.P15529556664363246600

`∑[A027336(n)%A214727(n)]`
-/

namespace A194805.P15529556664363246600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027336 n) (A214727 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194805.P15529556664363246600

/-! ## A194805.P5660408628786004201

`∑[A116599(∑[A110654(n)])]-1`
-/

namespace A194805.P5660408628786004201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116599 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194805.P5660408628786004201

/-! ## A194805.P6082219025701869000

`∑[A116599(A002620(n+1))]-1`
-/

namespace A194805.P6082219025701869000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116599 (A002620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194805.P6082219025701869000

/-!
# A194806: Size of the smallest subset S of T = {1,2,3,...,n} such that S*S contains T, where S*S is the set of all products of elements of S.

The programs for A194806, there is no canonical definition to state claims against.
-/

/-! ## A194806.P5833208414608753288

`∑[floor(1/A002260(A096780(n+1)))]`
-/

namespace A194806.P5833208414608753288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A002260 (A096780 (n + 1)).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P5833208414608753288

/-! ## A194806.P6700318058773245319

`∑[A033683(A002260(A096780(n+1)))]`
-/

namespace A194806.P6700318058773245319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A002260 (A096780 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P6700318058773245319

/-! ## A194806.P15899486160948352344

`∑[A010054(A096780(n+1)-1)]`
-/

namespace A194806.P15899486160948352344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A096780 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P15899486160948352344

/-! ## A194806.P5075578808714727962

`∑[C(A075384(A096776(n+1)), n)/(n+1)]`
-/

namespace A194806.P5075578808714727962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A075384 (A096776 (n + 1)).toNat).toNat n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P5075578808714727962

/-! ## A194806.P15284058509145384504

`∑[∏{digits}[6-A319118(n+1), A298246(#)]]`
-/

namespace A194806.P15284058509145384504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A319118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A298246 x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P15284058509145384504

/-! ## A194806.P15579734716435168401

`∑[A010054(A057723(A319118(n+1)))]`
-/

namespace A194806.P15579734716435168401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A057723 (A319118 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P15579734716435168401

/-! ## A194806.P12244896525361714834

`∑[A010052(A048266(A032742(n+1)))]`
-/

namespace A194806.P12244896525361714834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A048266 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P12244896525361714834

/-! ## A194806.P5045703957667048088

`∑[A000035(A128558(n+1)+A069157(n+1))]`
-/

namespace A194806.P5045703957667048088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A128558 (n + 1) + A069157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194806.P5045703957667048088

/-!
# A194808: Twin primes modulo 5.

The programs for A194808, the canonical program `A194808.P16755719884403907359` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194808 has offset 1).

The definition of A194808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194808.P16755719884403907359

`A001097(n+1)%5`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A194808

/-- `A001097(n+1)%5` -/
def P16755719884403907359.Spec : Prop :=
  ∀ n, P16755719884403907359.a n = A194808 (n + 1)

theorem P16755719884403907359.correct : P16755719884403907359.Spec := by
  intro n
  simp only [A194808, Nat.add_sub_cancel]

end A194808

/-! ## A194808.P922126369556706523

`A171821(n+2)%5`
-/

namespace A194808.P922126369556706523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171821 (n + 2)) 5

end

end A194808.P922126369556706523

namespace A194808

/-- `A171821(n+2)%5` -/
def P922126369556706523.Spec : Prop :=
  ∀ n, P922126369556706523.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P13375438598529208128

`record[A077800(A300827(n+1))]%5`
-/

namespace A194808.P13375438598529208128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (A300827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5

end

end A194808.P13375438598529208128

namespace A194808

/-- `record[A077800(A300827(n+1))]%5` -/
def P13375438598529208128.Spec : Prop :=
  ∀ n, P13375438598529208128.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P4159380647467996609

`A039703(A334142(n+1))`
-/

namespace A194808.P4159380647467996609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (A334142 (n + 1)).toNat

end

end A194808.P4159380647467996609

namespace A194808

/-- `A039703(A334142(n+1))` -/
def P4159380647467996609.Spec : Prop :=
  ∀ n, P4159380647467996609.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P13387595891734210666

`p?[A062505(n+1)]%5`
-/

namespace A194808.P13387595891734210666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 5

end

end A194808.P13387595891734210666

namespace A194808

/-- `p?[A062505(n+1)]%5` -/
def P13387595891734210666.Spec : Prop :=
  ∀ n, P13387595891734210666.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P1169247518200303087

`A006530(A278972(n+1))%5`
-/

namespace A194808.P1169247518200303087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A278972 (n + 1)).toNat) 5

end

end A194808.P1169247518200303087

namespace A194808

/-- `A006530(A278972(n+1))%5` -/
def P1169247518200303087.Spec : Prop :=
  ∀ n, P1169247518200303087.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P153245589367102116

`record[A284599(n+3)]%5`
-/

namespace A194808.P153245589367102116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 5

end

end A194808.P153245589367102116

namespace A194808

/-- `record[A284599(n+3)]%5` -/
def P153245589367102116.Spec : Prop :=
  ∀ n, P153245589367102116.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P7292791273935305979

`A010874(A001097(n+1))`
-/

namespace A194808.P7292791273935305979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A001097 (n + 1)).toNat

end

end A194808.P7292791273935305979

namespace A194808

/-- `A010874(A001097(n+1))` -/
def P7292791273935305979.Spec : Prop :=
  ∀ n, P7292791273935305979.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P11049591855081581246

`A010874(A171821(n+2))`
-/

namespace A194808.P11049591855081581246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A171821 (n + 2)).toNat

end

end A194808.P11049591855081581246

namespace A194808

/-- `A010874(A171821(n+2))` -/
def P11049591855081581246.Spec : Prop :=
  ∀ n, P11049591855081581246.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P1378067873533673627

`eq[A061358(A093074(n+1)), A226378(n)]%5`
-/

namespace A194808.P1378067873533673627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A093074 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 5

end

end A194808.P1378067873533673627

namespace A194808

/-- `eq[A061358(A093074(n+1)), A226378(n)]%5` -/
def P1378067873533673627.Spec : Prop :=
  ∀ n, (P1378067873533673627.a n : ℤ) = A194808 (n + 1)

end A194808

/-! ## A194808.P2730317748906160534

`A082116(A278972(n+1))`
-/

namespace A194808.P2730317748906160534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 (A278972 (n + 1)).toNat

end

end A194808.P2730317748906160534

namespace A194808

/-- `A082116(A278972(n+1))` -/
def P2730317748906160534.Spec : Prop :=
  ∀ n, P2730317748906160534.a n = A194808 (n + 1)

end A194808

/-! ## A194808.P9396911938729236879

`lt[A171400(n), A061358(A093074(n+1))]%5`
-/

namespace A194808.P9396911938729236879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A093074 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 5

end

end A194808.P9396911938729236879

namespace A194808

/-- `lt[A171400(n), A061358(A093074(n+1))]%5` -/
def P9396911938729236879.Spec : Prop :=
  ∀ n, (P9396911938729236879.a n : ℤ) = A194808 (n + 1)

end A194808

/-!
# A194809: Imbalance of the sum of largest parts of all partitions of n.

The programs for A194809, there is no canonical definition to state claims against.
-/

/-! ## A194809.P13425937931474183495

`∑[(-1)^n*A138137(n+1)]-1`
-/

namespace A194809.P13425937931474183495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194809.P13425937931474183495

/-! ## A194809.P15297247422462673164

`∑[-(A062157(n)*A138137(n+1))]`
-/

namespace A194809.P15297247422462673164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A062157 n * A138137 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194809.P15297247422462673164

/-! ## A194809.P6465979598403549273

`∑[Δ[A006128(n)]*A033999(n)]-1`
-/

namespace A194809.P6465979598403549273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194809.P6465979598403549273

/-! ## A194809.P11459947392493858024

`∑[(n-A014681(n))*A138137(n+1)]`
-/

namespace A194809.P11459947392493858024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014681 n) * A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194809.P11459947392493858024

/-! ## A194809.P13336903580786778433

`∑[(A006128(n+1)-A006128(n))*(-1)^n]-1`
-/

namespace A194809.P13336903580786778433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006128 (n + 1) - A006128 n) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194809.P13336903580786778433

/-!
# A194810: Indices k such that A139250(k) = A000979(n).

The programs for A194810, there is no canonical definition to state claims against.
-/

/-! ## A194810.P15859992373891566067

`2^A127936(n+1)`
-/

namespace A194810.P15859992373891566067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127936 (n + 1) : ℤ)

end

end A194810.P15859992373891566067

/-! ## A194810.P9184686927229268128

`2^floor(A000978(n+1)/2)`
-/

namespace A194810.P9184686927229268128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(A000978 (n + 1) : ℚ) / 2⌋ : ℤ)

end

end A194810.P9184686927229268128

/-! ## A194810.P3847574062943049389

`2^(A127964(n+1)+1)`
-/

namespace A194810.P3847574062943049389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127964 (n + 1) + 1 : ℤ)

end

end A194810.P3847574062943049389

/-! ## A194810.P10391130629695688936

`2^(A127963(n+1)-1)`
-/

namespace A194810.P10391130629695688936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127963 (n + 1) - 1 : ℤ)

end

end A194810.P10391130629695688936

/-! ## A194810.P13303775117774918335

`2^(A127965(n+1)/2)`
-/

namespace A194810.P13303775117774918335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A127965 (n + 1) : ℚ) / 2 : ℝ)

end

end A194810.P13303775117774918335

/-!
# A194811: Number of grid points that are covered after n-th stage of A139250 version "Tree", starting with a(0) = 1 and assuming the toothpicks have length 4, 3, and 2.

The programs for A194811, there is no canonical definition to state claims against.
-/

/-! ## A194811.P17906705799260837340

`1+A159795(n)`
-/

namespace A194811.P17906705799260837340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A159795 n

end

end A194811.P17906705799260837340

/-! ## A194811.P972746455491850145

`1+4*A153006(n)`
-/

namespace A194811.P972746455491850145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A153006 n

end

end A194811.P972746455491850145

/-! ## A194811.P1692804455906862778

`2*A159793(n)+1`
-/

namespace A194811.P1692804455906862778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159793 n + 1

end

end A194811.P1692804455906862778

/-! ## A194811.P4572756113794013189

`A147646(n)+a(n-1)` with `a(0)=1`
-/

namespace A194811.P4572756113794013189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147646 n + a (n - 1)

end

end A194811.P4572756113794013189

/-! ## A194811.P9539684259073693753

`4*(∑[n]-A153007(n))+1`
-/

namespace A194811.P9539684259073693753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153007 n) + 1

end

end A194811.P9539684259073693753

/-! ## A194811.P6844284045352703026

`∑[A139251(A004760(n+2))]`
-/

namespace A194811.P6844284045352703026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A004760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194811.P6844284045352703026

/-! ## A194811.P7699642454927144098

`A160164(n)+A139250(n+1)`
-/

namespace A194811.P7699642454927144098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 n + A139250 (n + 1)

end

end A194811.P7699642454927144098

/-! ## A194811.P2802979063232673077

`A153006(n)+A159794(n)+1`
-/

namespace A194811.P2802979063232673077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n + (A159794 n + 1)

end

end A194811.P2802979063232673077

/-! ## A194811.P16108400453499932983

`2*A246336(n)-A151548(n)`
-/

namespace A194811.P16108400453499932983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246336 n - A151548 n

end

end A194811.P16108400453499932983

/-! ## A194811.P1466194884819203420

`A139250(n+1)+2*A139250(n)`
-/

namespace A194811.P1466194884819203420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + 2 * A139250 n

end

end A194811.P1466194884819203420

/-! ## A194811.P11490623188064120606

`A187220(n+1)+2*A152998(n)`
-/

namespace A194811.P11490623188064120606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 (n + 1) + 2 * A152998 n

end

end A194811.P11490623188064120606

/-! ## A194811.P9391898731125971902

`2*(A152998(n)+∑[A139251(n)])+1`
-/

namespace A194811.P9391898731125971902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152998 n + ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A194811.P9391898731125971902

/-! ## A194811.P11404897812324248208

`∑[A147646(n+1)]+1-A147646(n+1)`
-/

namespace A194811.P11404897812324248208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A147646 (n + 1))

end

end A194811.P11404897812324248208

/-! ## A194811.P155335736800858221

`A246336(n+1)+A246336(n)-A147646(n+1)`
-/

namespace A194811.P155335736800858221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 (n + 1) + (A246336 n - A147646 (n + 1))

end

end A194811.P155335736800858221

/-! ## A194811.P14953619983008583923

`A016813(A153006(n))`
-/

namespace A194811.P14953619983008583923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A153006 n).toNat

end

end A194811.P14953619983008583923

/-! ## A194811.P12317620130923416913

`xor(A007318(∑[n]), A159795(n))`
-/

namespace A194811.P12317620130923416913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A159795 n)

end

end A194811.P12317620130923416913

/-! ## A194811.P4682868336943178961

`A139250(n+1)+A005843(A139250(n))`
-/

namespace A194811.P4682868336943178961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + A005843 (A139250 n).toNat

end

end A194811.P4682868336943178961

/-! ## A194811.P7010301040261333592

`A266530(2*n+3)+A064680(∑[A139251(n)])`
-/

namespace A194811.P7010301040261333592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 3) + A064680 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194811.P7010301040261333592

/-! ## A194811.P8016625054178490736

`A266530(2*n+3)+A064680(A266530(Δ[n²]))`
-/

namespace A194811.P8016625054178490736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 3) + A064680 (A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A194811.P8016625054178490736

/-! ## A194811.P8984654959878584789

`A103832(A159793(n))`
-/

namespace A194811.P8984654959878584789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 (A159793 n).toNat

end

end A194811.P8984654959878584789

/-!
# A194812: Square array read by antidiagonals: T(n,k) = number of parts of size k in the last section of the set of partitions of n.

The programs for A194812, there is no canonical definition to state claims against.
-/

/-! ## A194812.P9097675804677500276

`A000045(A220645(n)^A072815(n))`
-/

namespace A194812.P9097675804677500276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A220645 n : ℚ) ^ (A072815 n : ℤ))).toNat

end

end A194812.P9097675804677500276

/-! ## A194812.P8166107016949285538

`A000045(A220645(n)^A008835(n+1))`
-/

namespace A194812.P8166107016949285538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A220645 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A194812.P8166107016949285538

/-! ## A194812.P16603152323982878501

`A202452(n+1)%A337227(A250120(n))`
-/

namespace A194812.P16603152323982878501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202452 (n + 1)) (A337227 (A250120 n).toNat)

end

end A194812.P16603152323982878501

/-! ## A194812.P9452908989572308244

`A000045(A220645(n))%A019012(n+2)`
-/

namespace A194812.P9452908989572308244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A220645 n).toNat) (A019012 (n + 2))

end

end A194812.P9452908989572308244

/-! ## A194812.P1516335833169378308

`A202452(n+1)*A204177(A008292(2*n+3))`
-/

namespace A194812.P1516335833169378308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (n + 1) * A204177 (A008292 (2 * n + 3)).toNat

end

end A194812.P1516335833169378308

/-!
# A194813: Number of integers k in [1,n] such that {n*r + k*r} < {n*r - k*r}, where { } = fractional part and r = (1+sqrt(5))/2 (the golden ratio).

The programs for A194813, the canonical program `A194813.P15364618294108284325` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194813 has offset 1).

The definition of A194813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194813.P11799907335136510228

`∑[A327174(n)]`
-/

namespace A194813.P11799907335136510228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P11799907335136510228

namespace A194813

/-- `∑[A327174(n)]` -/
def P11799907335136510228.Spec : Prop :=
  ∀ n, P11799907335136510228.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P15781982482050668236

`∑[char[A327176(n+1)]]`
-/

namespace A194813.P15781982482050668236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P15781982482050668236

namespace A194813

/-- `∑[char[A327176(n+1)]]` -/
def P15781982482050668236.Spec : Prop :=
  ∀ n, (P15781982482050668236.a n : ℤ) = A194813 (n + 1)

end A194813

/-! ## A194813.P5122904744969390201

`1-A194814(n+1)+n`
-/

namespace A194813.P5122904744969390201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194814 (n + 1) + (n : ℤ)

end

end A194813.P5122904744969390201

namespace A194813

/-- `1-A194814(n+1)+n` -/
def P5122904744969390201.Spec : Prop :=
  ∀ n, P5122904744969390201.a n = A194813 (n + 1)

theorem P5122904744969390201.correct : P5122904744969390201.Spec := by
  intro n
  simp only [A194813, Nat.add_sub_cancel, A194813.P5122904744969390201.a, A194813.P15364618294108284325.f1, A194813.P15364618294108284325.a, A001468, A001468.P12360075344960480253.a, A001966, A001966.P7022639990780230216.a, A194814, A194814.P16521420712131060021.a, A001965, A001965.P8161936400494253645.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194813

/-! ## A194813.P10238412820609792143

`n-∑[char[A327175(n+1)]]`
-/

namespace A194813.P10238412820609792143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194813.P10238412820609792143

namespace A194813

/-- `n-∑[char[A327175(n+1)]]` -/
def P10238412820609792143.Spec : Prop :=
  ∀ n, P10238412820609792143.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P15304724507281336896

`A327174(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A194813.P15304724507281336896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327174 n + a (A023443 n).toNat

end

end A194813.P15304724507281336896

namespace A194813

/-- `A327174(n)+a(A023443(n))` -/
def P15304724507281336896.Spec : Prop :=
  ∀ n, P15304724507281336896.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P15364618294108284325

`∑[1-(A001966(n)+A001468(n))%2]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A194813

/-- `∑[1-(A001966(n)+A001468(n))%2]` -/
def P15364618294108284325.Spec : Prop :=
  ∀ n, P15364618294108284325.a n = A194813 (n + 1)

theorem P15364618294108284325.correct : P15364618294108284325.Spec := by
  intro n
  simp only [A194813, Nat.add_sub_cancel]

end A194813

/-! ## A194813.P1764141913084501979

`∑[A096270(A004937(n)-A005206(n))]`
-/

namespace A194813.P1764141913084501979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A004937 n - A005206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P1764141913084501979

namespace A194813

/-- `∑[A096270(A004937(n)-A005206(n))]` -/
def P1764141913084501979.Spec : Prop :=
  ∀ n, P1764141913084501979.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P11226524194776108247

`∑[A000201(2*n+1)-floor(floor(ϕ*(n+1))+ϕ*n)]`
-/

namespace A194813.P11226524194776108247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * n + 1) - ⌊(⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℝ) + Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P11226524194776108247

namespace A194813

/-- `∑[A000201(2*n+1)-floor(floor(ϕ*(n+1))+ϕ*n)]` -/
def P11226524194776108247.Spec : Prop :=
  ∀ n, P11226524194776108247.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P6014156590147922367

`∑[A188432(floor((n+1)/ϕ)+ceil(n*ϕ²)+1)]`
-/

namespace A194813.P6014156590147922367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (⌊(n + 1 : ℝ) / Real.goldenRatio⌋ + (⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P6014156590147922367

namespace A194813

/-- `∑[A188432(floor((n+1)/ϕ)+ceil(n*ϕ²)+1)]` -/
def P6014156590147922367.Spec : Prop :=
  ∀ n, P6014156590147922367.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P3362481973464154090

`∑[A056594(A001966(n)-A001468(n))²]`
-/

namespace A194813.P3362481973464154090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A001966 n - A001468 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P3362481973464154090

namespace A194813

/-- `∑[A056594(A001966(n)-A001468(n))²]` -/
def P3362481973464154090.Spec : Prop :=
  ∀ n, P3362481973464154090.a n = A194813 (n + 1)

end A194813

/-! ## A194813.P14430909182526356373

`∑[A003849(A284395(n+1)+3*floor(ϕ*(n+1))+2+n)]`
-/

namespace A194813.P14430909182526356373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A284395 (n + 1) + (3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 2 + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194813.P14430909182526356373

namespace A194813

/-- `∑[A003849(A284395(n+1)+3*floor(ϕ*(n+1))+2+n)]` -/
def P14430909182526356373.Spec : Prop :=
  ∀ n, P14430909182526356373.a n = A194813 (n + 1)

end A194813

/-!
# A194814: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=(1+sqrt(5))/2 (the golden ratio).

The programs for A194814, the canonical program `A194814.P16521420712131060021` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194814 has offset 1).

The definition of A194814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194814.P859722872766715742

`∑[1-A327174(n)]`
-/

namespace A194814.P859722872766715742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194814.P859722872766715742

namespace A194814

/-- `∑[1-A327174(n)]` -/
def P859722872766715742.Spec : Prop :=
  ∀ n, P859722872766715742.a n = A194814 (n + 1)

end A194814

/-! ## A194814.P2247587640096425880

`∑[char[comp[A327176(n+1)]]]`
-/

namespace A194814.P2247587640096425880
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194814.P2247587640096425880

namespace A194814

/-- `∑[char[comp[A327176(n+1)]]]` -/
def P2247587640096425880.Spec : Prop :=
  ∀ n, (P2247587640096425880.a n : ℤ) = A194814 (n + 1)

end A194814

/-! ## A194814.P16521420712131060021

`1-A194813(n+1)+n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194814

/-- `1-A194813(n+1)+n` -/
def P16521420712131060021.Spec : Prop :=
  ∀ n, P16521420712131060021.a n = A194814 (n + 1)

theorem P16521420712131060021.correct : P16521420712131060021.Spec := by
  intro n
  simp only [A194814, Nat.add_sub_cancel]

end A194814

/-! ## A194814.P15498469581160961719

`∑[char[A327175(n+1)]]+1`
-/

namespace A194814.P15498469581160961719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194814.P15498469581160961719

namespace A194814

/-- `∑[char[A327175(n+1)]]+1` -/
def P15498469581160961719.Spec : Prop :=
  ∀ n, (P15498469581160961719.a n : ℤ) = A194814 (n + 1)

end A194814

/-! ## A194814.P722414896615323406

`∑[char[lt[A327174(n+1), 1]+1]]+1`
-/

namespace A194814.P722414896615323406
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194814.P722414896615323406

namespace A194814

/-- `∑[char[lt[A327174(n+1), 1]+1]]+1` -/
def P722414896615323406.Spec : Prop :=
  ∀ n, (P722414896615323406.a n : ℤ) = A194814 (n + 1)

end A194814

/-! ## A194814.P4662036832210880749

`ϕ²-(ϕ-n)-A194813(ϕ²-(ϕ-n))`
-/

namespace A194814.P4662036832210880749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)) - (A194813 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)

end

end A194814.P4662036832210880749

namespace A194814

/-- `ϕ²-(ϕ-n)-A194813(ϕ²-(ϕ-n))` -/
def P4662036832210880749.Spec : Prop :=
  ∀ n, P4662036832210880749.a n = (A194814 (n + 1) : ℝ)

end A194814

/-! ## A194814.P11673946616882813035

`∑[xor(1, A327174(n))^A000005(n+1)]`
-/

namespace A194814.P11673946616882813035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327174 n) : ℚ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194814.P11673946616882813035

namespace A194814

/-- `∑[xor(1, A327174(n))^A000005(n+1)]` -/
def P11673946616882813035.Spec : Prop :=
  ∀ n, P11673946616882813035.a n = (A194814 (n + 1) : ℚ)

end A194814

/-! ## A194814.P17671806454672536859

`∑[xor(1, A327174(n))^A000040(n+1)]`
-/

namespace A194814.P17671806454672536859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327174 n) : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194814.P17671806454672536859

namespace A194814

/-- `∑[xor(1, A327174(n))^A000040(n+1)]` -/
def P17671806454672536859.Spec : Prop :=
  ∀ n, P17671806454672536859.a n = (A194814 (n + 1) : ℚ)

end A194814

/-! ## A194814.P16110510120764810750

`∑[xor(1, A327174(n))^A018252(n+1)]`
-/

namespace A194814.P16110510120764810750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327174 n) : ℚ) ^ (A018252 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194814.P16110510120764810750

namespace A194814

/-- `∑[xor(1, A327174(n))^A018252(n+1)]` -/
def P16110510120764810750.Spec : Prop :=
  ∀ n, P16110510120764810750.a n = (A194814 (n + 1) : ℚ)

end A194814

/-! ## A194814.P5956160241860018402

`∑[xor(1, A327174(n))^A000041(n)]`
-/

namespace A194814.P5956160241860018402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327174 n) : ℚ) ^ (A000041 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194814.P5956160241860018402

namespace A194814

/-- `∑[xor(1, A327174(n))^A000041(n)]` -/
def P5956160241860018402.Spec : Prop :=
  ∀ n, P5956160241860018402.a n = (A194814 (n + 1) : ℚ)

end A194814

/-!
# A194815: Number of integers k in [1,n] such that {n*r+k*r} < {n*r-k*r}, where { } = fractional part and r=sqrt(2).

The programs for A194815, the canonical program `A194815.P10897451695732251232` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194815 has offset 1).

The definition of A194815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194815.P14216470903734802688

`∑[floor(sqrt(2)*comp[2*n])-floor(floor((n+1)*sqrt(2))+n*sqrt(2))]`
-/

namespace A194815.P14216470903734802688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℝ)⌋ - ⌊(⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℝ) + (n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194815.P14216470903734802688

namespace A194815

/-- `∑[floor(sqrt(2)*comp[2*n])-floor(floor((n+1)*sqrt(2))+n*sqrt(2))]` -/
def P14216470903734802688.Spec : Prop :=
  ∀ n, P14216470903734802688.a n = A194815 (n + 1)

end A194815

/-! ## A194815.P3648610126950555098

`2*∑[A327177(n)/2]`
-/

namespace A194815.P3648610126950555098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327177 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194815.P3648610126950555098

namespace A194815

/-- `2*∑[A327177(n)/2]` -/
def P3648610126950555098.Spec : Prop :=
  ∀ n, P3648610126950555098.a n = (A194815 (n + 1) : ℚ)

end A194815

/-! ## A194815.P8370695319589192499

`1-A194816(n+1)+n`
-/

namespace A194815.P8370695319589192499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194816 (n + 1) + (n : ℤ)

end

end A194815.P8370695319589192499

namespace A194815

/-- `1-A194816(n+1)+n` -/
def P8370695319589192499.Spec : Prop :=
  ∀ n, P8370695319589192499.a n = A194815 (n + 1)

end A194815

/-! ## A194815.P3719371738367821890

`n-∑[char[A327178(n+1)]]`
-/

namespace A194815.P3719371738367821890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194815.P3719371738367821890

namespace A194815

/-- `n-∑[char[A327178(n+1)]]` -/
def P3719371738367821890.Spec : Prop :=
  ∀ n, P3719371738367821890.a n = A194815 (n + 1)

end A194815

/-! ## A194815.P13276327304747906097

`n+1-∑[char[comp[A327179(n+1)]]]`
-/

namespace A194815.P13276327304747906097
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194815.P13276327304747906097

namespace A194815

/-- `n+1-∑[char[comp[A327179(n+1)]]]` -/
def P13276327304747906097.Spec : Prop :=
  ∀ n, P13276327304747906097.a n = A194815 (n + 1)

end A194815

/-! ## A194815.P10897451695732251232

`abs(A001489(∑[A327177(n)]))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194815

/-- `abs(A001489(∑[A327177(n)]))` -/
def P10897451695732251232.Spec : Prop :=
  ∀ n, P10897451695732251232.a n = A194815 (n + 1)

theorem P10897451695732251232.correct : P10897451695732251232.Spec := by
  intro n
  simp only [A194815, Nat.add_sub_cancel]

end A194815

/-! ## A194815.P13731868820380080263

`abs(A038608(∑[A327177(n)]))`
-/

namespace A194815.P13731868820380080263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A194815.P13731868820380080263

namespace A194815

/-- `abs(A038608(∑[A327177(n)]))` -/
def P13731868820380080263.Spec : Prop :=
  ∀ n, P13731868820380080263.a n = A194815 (n + 1)

end A194815

/-! ## A194815.P16235857141514288707

`∑[A327177(n+1)]-A327177(n+1)`
-/

namespace A194815.P16235857141514288707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A327177 (n + 1)

end

end A194815.P16235857141514288707

namespace A194815

/-- `∑[A327177(n+1)]-A327177(n+1)` -/
def P16235857141514288707.Spec : Prop :=
  ∀ n, P16235857141514288707.a n = A194815 (n + 1)

end A194815

/-! ## A194815.P11612551235344424541

`lcm(A008683(A014963(n+2)), ∑[A327177(n)])`
-/

namespace A194815.P11612551235344424541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A014963 (n + 2)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194815.P11612551235344424541

namespace A194815

/-- `lcm(A008683(A014963(n+2)), ∑[A327177(n)])` -/
def P11612551235344424541.Spec : Prop :=
  ∀ n, (P11612551235344424541.a n : ℤ) = A194815 (n + 1)

end A194815

/-! ## A194815.P1926587593285232069

`∑[A327177(n)]+A008683(12*n+4)`
-/

namespace A194815.P1926587593285232069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (12 * n + 4)

end

end A194815.P1926587593285232069

namespace A194815

/-- `∑[A327177(n)]+A008683(12*n+4)` -/
def P1926587593285232069.Spec : Prop :=
  ∀ n, P1926587593285232069.a n = A194815 (n + 1)

end A194815

/-!
# A194816: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=sqrt(2).

The programs for A194816, the canonical program `A194816.P12578202600685302847` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194816 has offset 1).

The definition of A194816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194816.P12578202600685302847

`∑[1-A327177(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194816

/-- `∑[1-A327177(n)]` -/
def P12578202600685302847.Spec : Prop :=
  ∀ n, P12578202600685302847.a n = A194816 (n + 1)

theorem P12578202600685302847.correct : P12578202600685302847.Spec := by
  intro n
  simp only [A194816, Nat.add_sub_cancel]

end A194816

/-! ## A194816.P5871472940410715085

`∑[char[comp[A327179(n+1)]]]`
-/

namespace A194816.P5871472940410715085
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P5871472940410715085

namespace A194816

/-- `∑[char[comp[A327179(n+1)]]]` -/
def P5871472940410715085.Spec : Prop :=
  ∀ n, (P5871472940410715085.a n : ℤ) = A194816 (n + 1)

end A194816

/-! ## A194816.P10753076724423266654

`1-A194815(n+1)+n`
-/

namespace A194816.P10753076724423266654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194815 (n + 1) + (n : ℤ)

end

end A194816.P10753076724423266654

namespace A194816

/-- `1-A194815(n+1)+n` -/
def P10753076724423266654.Spec : Prop :=
  ∀ n, P10753076724423266654.a n = A194816 (n + 1)

end A194816

/-! ## A194816.P154371790451919721

`∑[char[A327178(n+1)]]+1`
-/

namespace A194816.P154371790451919721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194816.P154371790451919721

namespace A194816

/-- `∑[char[A327178(n+1)]]+1` -/
def P154371790451919721.Spec : Prop :=
  ∀ n, (P154371790451919721.a n : ℤ) = A194816 (n + 1)

end A194816

/-! ## A194816.P359629632394978158

`n-A023443(A194815(n+1))`
-/

namespace A194816.P359629632394978158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194815 (n + 1)).toNat

end

end A194816.P359629632394978158

namespace A194816

/-- `n-A023443(A194815(n+1))` -/
def P359629632394978158.Spec : Prop :=
  ∀ n, P359629632394978158.a n = A194816 (n + 1)

end A194816

/-! ## A194816.P5252662892958752849

`∑[xor(1, A327177(n))^A007318(n)]`
-/

namespace A194816.P5252662892958752849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327177 n) : ℚ) ^ (A007318 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P5252662892958752849

namespace A194816

/-- `∑[xor(1, A327177(n))^A007318(n)]` -/
def P5252662892958752849.Spec : Prop :=
  ∀ n, P5252662892958752849.a n = (A194816 (n + 1) : ℚ)

end A194816

/-! ## A194816.P11756945127867514444

`∑[xor(1, A327177(n))^A000040(n+1)]`
-/

namespace A194816.P11756945127867514444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327177 n) : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P11756945127867514444

namespace A194816

/-- `∑[xor(1, A327177(n))^A000040(n+1)]` -/
def P11756945127867514444.Spec : Prop :=
  ∀ n, P11756945127867514444.a n = (A194816 (n + 1) : ℚ)

end A194816

/-! ## A194816.P13313742839345108484

`∑[xor(1, A327177(n))^A000203(n+1)]`
-/

namespace A194816.P13313742839345108484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327177 n) : ℚ) ^ (A000203 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P13313742839345108484

namespace A194816

/-- `∑[xor(1, A327177(n))^A000203(n+1)]` -/
def P13313742839345108484.Spec : Prop :=
  ∀ n, P13313742839345108484.a n = (A194816 (n + 1) : ℚ)

end A194816

/-! ## A194816.P8515109897474849986

`∑[xor(1, A327177(n))^A000041(n)]`
-/

namespace A194816.P8515109897474849986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327177 n) : ℚ) ^ (A000041 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P8515109897474849986

namespace A194816

/-- `∑[xor(1, A327177(n))^A000041(n)]` -/
def P8515109897474849986.Spec : Prop :=
  ∀ n, P8515109897474849986.a n = (A194816 (n + 1) : ℚ)

end A194816

/-! ## A194816.P7224504542680557786

`∑[xor(1, A327177(n))^A000032(n)]`
-/

namespace A194816.P7224504542680557786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327177 n) : ℚ) ^ (A000032 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194816.P7224504542680557786

namespace A194816

/-- `∑[xor(1, A327177(n))^A000032(n)]` -/
def P7224504542680557786.Spec : Prop :=
  ∀ n, P7224504542680557786.a n = (A194816 (n + 1) : ℚ)

end A194816

/-!
# A194817: Number of integers k in [1,n] such that {n*r+k*r} < {n*r-k*r}, where { } = fractional part and r=sqrt(3).

The programs for A194817, the canonical program `A194817.P12896036413848016526` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194817 has offset 1).

The definition of A194817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194817.P12896036413848016526

`∑[A327180(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A194817

/-- `∑[A327180(n)]` -/
def P12896036413848016526.Spec : Prop :=
  ∀ n, P12896036413848016526.a n = A194817 (n + 1)

theorem P12896036413848016526.correct : P12896036413848016526.Spec := by
  intro n
  simp only [A194817, Nat.add_sub_cancel]

end A194817

/-! ## A194817.P1841386039090426030

`∑[char[A327182(n+1)]]`
-/

namespace A194817.P1841386039090426030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194817.P1841386039090426030

namespace A194817

/-- `∑[char[A327182(n+1)]]` -/
def P1841386039090426030.Spec : Prop :=
  ∀ n, (P1841386039090426030.a n : ℤ) = A194817 (n + 1)

end A194817

/-! ## A194817.P17857534116641617100

`1-A194818(n+1)+n`
-/

namespace A194817.P17857534116641617100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194818 (n + 1) + (n : ℤ)

end

end A194817.P17857534116641617100

namespace A194817

/-- `1-A194818(n+1)+n` -/
def P17857534116641617100.Spec : Prop :=
  ∀ n, P17857534116641617100.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P3690354441243902380

`n-∑[char[A327181(n+1)]]`
-/

namespace A194817.P3690354441243902380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194817.P3690354441243902380

namespace A194817

/-- `n-∑[char[A327181(n+1)]]` -/
def P3690354441243902380.Spec : Prop :=
  ∀ n, P3690354441243902380.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P7413040671708220790

`1-(A194818(ϕ²-(ϕ-n))-n)`
-/

namespace A194817.P7413040671708220790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A194818 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - (n : ℤ))

end

end A194817.P7413040671708220790

namespace A194817

/-- `1-(A194818(ϕ²-(ϕ-n))-n)` -/
def P7413040671708220790.Spec : Prop :=
  ∀ n, P7413040671708220790.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P12682679708366186483

`n-A023443(A194818(n+1))`
-/

namespace A194817.P12682679708366186483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194818 (n + 1)).toNat

end

end A194817.P12682679708366186483

namespace A194817

/-- `n-A023443(A194818(n+1))` -/
def P12682679708366186483.Spec : Prop :=
  ∀ n, P12682679708366186483.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P3823767080474410651

`floor(∑[A110654(n)]/A194818(n+1))`
-/

namespace A194817.P3823767080474410651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A194818 (n + 1) : ℚ)⌋

end

end A194817.P3823767080474410651

namespace A194817

/-- `floor(∑[A110654(n)]/A194818(n+1))` -/
def P3823767080474410651.Spec : Prop :=
  ∀ n, P3823767080474410651.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P8816804335718853003

`abs(A194818(n+1)+A001478(n+1))`
-/

namespace A194817.P8816804335718853003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194818 (n + 1) + A001478 (n + 1)|

end

end A194817.P8816804335718853003

namespace A194817

/-- `abs(A194818(n+1)+A001478(n+1))` -/
def P8816804335718853003.Spec : Prop :=
  ∀ n, P8816804335718853003.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P5230511517701817590

`∑[A188068(2*n+1)*A188068(n+2)]`
-/

namespace A194817.P5230511517701817590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 * n + 1) * A188068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194817.P5230511517701817590

namespace A194817

/-- `∑[A188068(2*n+1)*A188068(n+2)]` -/
def P5230511517701817590.Spec : Prop :=
  ∀ n, P5230511517701817590.a n = A194817 (n + 1)

end A194817

/-! ## A194817.P15616911729793046255

`∑[gcd(A080757(2*n), A080757(n+1))-1]`
-/

namespace A194817.P15616911729793046255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A080757 (2 * n)) (A080757 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194817.P15616911729793046255

namespace A194817

/-- `∑[gcd(A080757(2*n), A080757(n+1))-1]` -/
def P15616911729793046255.Spec : Prop :=
  ∀ n, P15616911729793046255.a n = A194817 (n + 1)

end A194817

/-!
# A194818: Number of integers k in [1,n] such that {n*r+k*r} > {n*r-k*r}, where { } = fractional part and r=sqrt(3).

The programs for A194818, the canonical program `A194818.P8981448949594921892` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194818 has offset 1).

The definition of A194818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194818.P8981448949594921892

`∑[1-A327180(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A194818

/-- `∑[1-A327180(n)]` -/
def P8981448949594921892.Spec : Prop :=
  ∀ n, P8981448949594921892.a n = A194818 (n + 1)

theorem P8981448949594921892.correct : P8981448949594921892.Spec := by
  intro n
  simp only [A194818, Nat.add_sub_cancel]

end A194818

/-! ## A194818.P7300722021571688990

`∑[char[comp[A327182(n+1)]]]`
-/

namespace A194818.P7300722021571688990
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P7300722021571688990

namespace A194818

/-- `∑[char[comp[A327182(n+1)]]]` -/
def P7300722021571688990.Spec : Prop :=
  ∀ n, (P7300722021571688990.a n : ℤ) = A194818 (n + 1)

end A194818

/-! ## A194818.P1332032528093736996

`1-A194817(n+1)+n`
-/

namespace A194818.P1332032528093736996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194817 (n + 1) + (n : ℤ)

end

end A194818.P1332032528093736996

namespace A194818

/-- `1-A194817(n+1)+n` -/
def P1332032528093736996.Spec : Prop :=
  ∀ n, P1332032528093736996.a n = A194818 (n + 1)

end A194818

/-! ## A194818.P14807771034095420175

`∑[char[A327181(n+1)]]+1`
-/

namespace A194818.P14807771034095420175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194818.P14807771034095420175

namespace A194818

/-- `∑[char[A327181(n+1)]]+1` -/
def P14807771034095420175.Spec : Prop :=
  ∀ n, (P14807771034095420175.a n : ℤ) = A194818 (n + 1)

end A194818

/-! ## A194818.P2769339741785366945

`Δ[n²]-n-A194817(Δ[n²]-n)`
-/

namespace A194818.P2769339741785366945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A194817 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A194818.P2769339741785366945

namespace A194818

/-- `Δ[n²]-n-A194817(Δ[n²]-n)` -/
def P2769339741785366945.Spec : Prop :=
  ∀ n, P2769339741785366945.a n = A194818 (n + 1)

end A194818

/-! ## A194818.P9553590588900955869

`∑[xor(1, A327180(n))^A000005(n+1)]`
-/

namespace A194818.P9553590588900955869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327180 n) : ℚ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P9553590588900955869

namespace A194818

/-- `∑[xor(1, A327180(n))^A000005(n+1)]` -/
def P9553590588900955869.Spec : Prop :=
  ∀ n, P9553590588900955869.a n = (A194818 (n + 1) : ℚ)

end A194818

/-! ## A194818.P14121786488408991494

`∑[xor(1, A327180(n))^A000040(n+1)]`
-/

namespace A194818.P14121786488408991494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327180 n) : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P14121786488408991494

namespace A194818

/-- `∑[xor(1, A327180(n))^A000040(n+1)]` -/
def P14121786488408991494.Spec : Prop :=
  ∀ n, P14121786488408991494.a n = (A194818 (n + 1) : ℚ)

end A194818

/-! ## A194818.P7637113526311358995

`∑[xor(1, A327180(n))^A000041(n)]`
-/

namespace A194818.P7637113526311358995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327180 n) : ℚ) ^ (A000041 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P7637113526311358995

namespace A194818

/-- `∑[xor(1, A327180(n))^A000041(n)]` -/
def P7637113526311358995.Spec : Prop :=
  ∀ n, P7637113526311358995.a n = (A194818 (n + 1) : ℚ)

end A194818

/-! ## A194818.P12708148729482349448

`∑[xor(1, A327180(n))^A000045(n)]`
-/

namespace A194818.P12708148729482349448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327180 n) : ℚ) ^ (A000045 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P12708148729482349448

namespace A194818

/-- `∑[xor(1, A327180(n))^A000045(n)]` -/
def P12708148729482349448.Spec : Prop :=
  ∀ n, P12708148729482349448.a n = (A194818 (n + 1) : ℚ)

end A194818

/-! ## A194818.P2343169340717254226

`∑[xor(1, A327180(n))^A000032(n+1)]`
-/

namespace A194818.P2343169340717254226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327180 n) : ℚ) ^ (A000032 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194818.P2343169340717254226

namespace A194818

/-- `∑[xor(1, A327180(n))^A000032(n+1)]` -/
def P2343169340717254226.Spec : Prop :=
  ∀ n, P2343169340717254226.a n = (A194818 (n + 1) : ℚ)

end A194818

/-!
# A194819: Number of integers k in [1,n] such that {n*e+k*e} < {n*e-k*e}, where { } = fractional part.

The programs for A194819, the canonical program `A194819.P10994413339944497895` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194819 has offset 1).

The definition of A194819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194819.P10994413339944497895

`∑[A327183(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194819

/-- `∑[A327183(n)]` -/
def P10994413339944497895.Spec : Prop :=
  ∀ n, P10994413339944497895.a n = A194819 (n + 1)

theorem P10994413339944497895.correct : P10994413339944497895.Spec := by
  intro n
  simp only [A194819, Nat.add_sub_cancel]

end A194819

/-! ## A194819.P8295185820533271530

`∑[char[A327185(n+1)]]`
-/

namespace A194819.P8295185820533271530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194819.P8295185820533271530

namespace A194819

/-- `∑[char[A327185(n+1)]]` -/
def P8295185820533271530.Spec : Prop :=
  ∀ n, (P8295185820533271530.a n : ℤ) = A194819 (n + 1)

end A194819

/-! ## A194819.P3724844420721084659

`1-A194820(n+1)+n`
-/

namespace A194819.P3724844420721084659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194820 (n + 1) + (n : ℤ)

end

end A194819.P3724844420721084659

namespace A194819

/-- `1-A194820(n+1)+n` -/
def P3724844420721084659.Spec : Prop :=
  ∀ n, P3724844420721084659.a n = A194819 (n + 1)

end A194819

/-! ## A194819.P14575490861780210350

`n-∑[char[A327184(n+1)]]`
-/

namespace A194819.P14575490861780210350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194819.P14575490861780210350

namespace A194819

/-- `n-∑[char[A327184(n+1)]]` -/
def P14575490861780210350.Spec : Prop :=
  ∀ n, P14575490861780210350.a n = A194819 (n + 1)

end A194819

/-! ## A194819.P7162474974042673858

`a(n-1)+1-A000007(n*A327183(n))` with `a(0)=0, a(1)=1`
-/

namespace A194819.P7162474974042673858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 1 - A000007 ((n : ℤ) * A327183 n).toNat

end

end A194819.P7162474974042673858

namespace A194819

/-- `a(n-1)+1-A000007(n*A327183(n))` -/
def P7162474974042673858.Spec : Prop :=
  ∀ n, P7162474974042673858.a n = A194819 (n + 1)

end A194819

/-! ## A194819.P7949247646956335909

`a(n-1)+A327183(n)+char[A076336(n+1)]` with `a(0)=0`
-/

namespace A194819.P7949247646956335909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A327183 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A194819.P7949247646956335909

namespace A194819

/-- `a(n-1)+A327183(n)+char[A076336(n+1)]` -/
def P7949247646956335909.Spec : Prop :=
  ∀ n, P7949247646956335909.a n = A194819 (n + 1)

end A194819

/-! ## A194819.P419810871286849249

`a(n-1)+A327183(n)/gcd(3, A000040(n+2))` with `a(0)=0, a(1)=1`
-/

namespace A194819.P419810871286849249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (A327183 n : ℚ) / (Int.gcd 3 (A000040 (n + 2)) : ℚ)

end

end A194819.P419810871286849249

namespace A194819

/-- `a(n-1)+A327183(n)/gcd(3, A000040(n+2))` -/
def P419810871286849249.Spec : Prop :=
  ∀ n, P419810871286849249.a n = (A194819 (n + 1) : ℚ)

end A194819

/-! ## A194819.P17322481283602508361

`a(n-1)+A327183(n)+A000035(2*n)` with `a(0)=0`
-/

namespace A194819.P17322481283602508361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A327183 n + A000035 (2 * n))

end

end A194819.P17322481283602508361

namespace A194819

/-- `a(n-1)+A327183(n)+A000035(2*n)` -/
def P17322481283602508361.Spec : Prop :=
  ∀ n, P17322481283602508361.a n = A194819 (n + 1)

end A194819

/-!
# A194820: Number of integers k in [1,n] such that {n*e+k*e} > {n*e-k*e}, where { } = fractional part.

The programs for A194820, the canonical program `A194820.P8632114547582103611` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194820 has offset 1).

The definition of A194820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194820.P8632114547582103611

`∑[1-A327183(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194820

/-- `∑[1-A327183(n)]` -/
def P8632114547582103611.Spec : Prop :=
  ∀ n, P8632114547582103611.a n = A194820 (n + 1)

theorem P8632114547582103611.correct : P8632114547582103611.Spec := by
  intro n
  simp only [A194820, Nat.add_sub_cancel]

end A194820

/-! ## A194820.P13072303193149971940

`∑[char[comp[A327185(n+1)]]]`
-/

namespace A194820.P13072303193149971940
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327185 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194820.P13072303193149971940

namespace A194820

/-- `∑[char[comp[A327185(n+1)]]]` -/
def P13072303193149971940.Spec : Prop :=
  ∀ n, (P13072303193149971940.a n : ℤ) = A194820 (n + 1)

end A194820

/-! ## A194820.P15815515344314366868

`1-A194819(n+1)+n`
-/

namespace A194820.P15815515344314366868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194819 (n + 1) + (n : ℤ)

end

end A194820.P15815515344314366868

namespace A194820

/-- `1-A194819(n+1)+n` -/
def P15815515344314366868.Spec : Prop :=
  ∀ n, P15815515344314366868.a n = A194820 (n + 1)

end A194820

/-! ## A194820.P3756825301976234974

`∑[char[A327184(n+1)]]+1`
-/

namespace A194820.P3756825301976234974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194820.P3756825301976234974

namespace A194820

/-- `∑[char[A327184(n+1)]]+1` -/
def P3756825301976234974.Spec : Prop :=
  ∀ n, (P3756825301976234974.a n : ℤ) = A194820 (n + 1)

end A194820

/-! ## A194820.P12997181072786759527

`Δ[n²]-n-A194819(Δ[n²]-n)`
-/

namespace A194820.P12997181072786759527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A194819 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A194820.P12997181072786759527

namespace A194820

/-- `Δ[n²]-n-A194819(Δ[n²]-n)` -/
def P12997181072786759527.Spec : Prop :=
  ∀ n, P12997181072786759527.a n = A194820 (n + 1)

end A194820

/-! ## A194820.P6342282406984193653

`A000027(∑[xor(1, A327183(n))])`
-/

namespace A194820.P6342282406984193653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A327183 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194820.P6342282406984193653

namespace A194820

/-- `A000027(∑[xor(1, A327183(n))])` -/
def P6342282406984193653.Spec : Prop :=
  ∀ n, P6342282406984193653.a n = A194820 (n + 1)

end A194820

/-! ## A194820.P11778998075780683947

`∑[A000007(n*A327183(n))]`
-/

namespace A194820.P11778998075780683947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A327183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194820.P11778998075780683947

namespace A194820

/-- `∑[A000007(n*A327183(n))]` -/
def P11778998075780683947.Spec : Prop :=
  ∀ n, P11778998075780683947.a n = A194820 (n + 1)

end A194820

/-! ## A194820.P9621974950259191888

`n-A023443(A194819(n+1))`
-/

namespace A194820.P9621974950259191888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A194819 (n + 1)).toNat

end

end A194820.P9621974950259191888

namespace A194820

/-- `n-A023443(A194819(n+1))` -/
def P9621974950259191888.Spec : Prop :=
  ∀ n, P9621974950259191888.a n = A194820 (n + 1)

end A194820

/-! ## A194820.P16820331097100493668

`∑[xor(1, A327183(n))^(2*A000010(n+1))]`
-/

namespace A194820.P16820331097100493668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327183 n) : ℚ) ^ (2 * A000010 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194820.P16820331097100493668

namespace A194820

/-- `∑[xor(1, A327183(n))^(2*A000010(n+1))]` -/
def P16820331097100493668.Spec : Prop :=
  ∀ n, P16820331097100493668.a n = (A194820 (n + 1) : ℚ)

end A194820

/-! ## A194820.P10448376464445819574

`∑[xor(1, A327183(n))^A000045(n)]`
-/

namespace A194820.P10448376464445819574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A327183 n) : ℚ) ^ (A000045 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194820.P10448376464445819574

namespace A194820

/-- `∑[xor(1, A327183(n))^A000045(n)]` -/
def P10448376464445819574.Spec : Prop :=
  ∀ n, P10448376464445819574.a n = (A194820 (n + 1) : ℚ)

end A194820

/-!
# A194821: a(n) = 1+floor(Sum_{k=1..n} <((-1)^k)*k*sqrt(2)>), where < > = fractional part.

The programs for A194821, there is no canonical definition to state claims against.
-/

/-! ## A194821.P12194274245703822319

`A190248(A098547(n)+A049811(n+1))`
-/

namespace A194821.P12194274245703822319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (A098547 n + A049811 (n + 1)).toNat

end

end A194821.P12194274245703822319

/-! ## A194821.P7365554774152841778

`A037830(A111553(n)+A032645(n+1))`
-/

namespace A194821.P7365554774152841778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A111553 n + A032645 (n + 1)).toNat

end

end A194821.P7365554774152841778

/-! ## A194821.P2740377528433341508

`A288508(A104449(n))+A104451(A104477(n+1))`
-/

namespace A194821.P2740377528433341508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (A104449 n).toNat + A104451 (A104477 (n + 1)).toNat

end

end A194821.P2740377528433341508

/-!
# A194822: a(n) = 3+floor( Sum_{k=1..n} <((-1)^k)*k*(1+sqrt(5))/2> ), where < > = fractional part.

The programs for A194822, there is no canonical definition to state claims against.
-/

/-! ## A194822.P2150865654522136826

`A107800(A084382(n)-A265431(n))`
-/

namespace A194822.P2150865654522136826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107800 (A084382 n - A265431 n).toNat

end

end A194822.P2150865654522136826

/-! ## A194822.P11878046448865124466

`A001222(∏{p}[xor(n, A065220(n+7)), #])`
-/

namespace A194822.P11878046448865124466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A065220 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A194822.P11878046448865124466

/-! ## A194822.P7480299750418729456

`A353627(2*n+5)+A281007(A028364(n))`
-/

namespace A194822.P7480299750418729456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (2 * n + 5) + A281007 (A028364 n).toNat

end

end A194822.P7480299750418729456

/-!
# A194823: a(n) = 2+floor(Sum_{k=1..n} <((-1)^k)*k*e>), where < > = fractional part.

The programs for A194823, there is no canonical definition to state claims against.
-/

/-! ## A194823.P13782256187217612657

`A040001(A043433(n+1)*A043449(n+1))`
-/

namespace A194823.P13782256187217612657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A043433 (n + 1) * A043449 (n + 1)).toNat

end

end A194823.P13782256187217612657

/-! ## A194823.P2749924836249435985

`A134451(A043433(n+1)*A043449(n+1))`
-/

namespace A194823.P2749924836249435985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A043433 (n + 1) * A043449 (n + 1)).toNat

end

end A194823.P2749924836249435985

/-! ## A194823.P14754985458627427085

`A040001(lcm(A043433(n+1), A043449(n+1)))`
-/

namespace A194823.P14754985458627427085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.lcm (A043433 (n + 1)) (A043449 (n + 1)))

end

end A194823.P14754985458627427085

/-! ## A194823.P2530087239162074397

`A040001(and(A053438(n), A098511(n)))`
-/

namespace A194823.P2530087239162074397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.land (A053438 n) (A098511 n)).toNat

end

end A194823.P2530087239162074397

/-! ## A194823.P7846248046163690669

`A014675(A047969(n)*A085558(n+2))`
-/

namespace A194823.P7846248046163690669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A047969 n * A085558 (n + 2)).toNat

end

end A194823.P7846248046163690669

/-!
# A194824: a(n) = 2+floor(Sum_{k=1..n} <((-1)^k)*k*sqrt(3)>), where < > = fractional part.

The programs for A194824, there is no canonical definition to state claims against.
-/

/-! ## A194824.P360411480649084616

`A090822(A133809(ceil((n+1)²/or(5, 2*n)))²)`
-/

namespace A194824.P360411480649084616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A133809 ⌈((n + 1) ^ 2 : ℚ) / (Nat.lor 5 (2 * n) : ℚ)⌉.toNat ^ 2).toNat

end

end A194824.P360411480649084616

/-! ## A194824.P7842717171226458296

`A132157(A008611(A024642(n))+3)`
-/

namespace A194824.P7842717171226458296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132157 (A008611 (A024642 n).toNat + 3).toNat

end

end A194824.P7842717171226458296

/-! ## A194824.P3186254498057027409

`A344339(A029256(n)+A008574(n))`
-/

namespace A194824.P3186254498057027409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (A029256 n + A008574 n).toNat

end

end A194824.P3186254498057027409

/-! ## A194824.P15810783068868583032

`A351014(A350559(n+1)+A224418(n+1))`
-/

namespace A194824.P15810783068868583032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A350559 (n + 1) + A224418 (n + 1)).toNat

end

end A194824.P15810783068868583032

/-! ## A194824.P4755751929388370451

`gcd(A000005(A210531(n+4)), A104196(n+1))`
-/

namespace A194824.P4755751929388370451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A210531 (n + 4)).toNat) (A104196 (n + 1))

end

end A194824.P4755751929388370451

/-!
# A194825: Digital roots of the nonzero 9-gonal (nonagonal) numbers.

The programs for A194825, the canonical program `A194825.P8695730534425028483` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194825 has offset 1).

The definition of A194825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194825.P8695730534425028483

`a(n-9)` with `a(0)=1, a(1)=9, a(2)=6, a(3)=1, a(4)=3, a(5)=3, a(6)=1, a(7)=6, a(8)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A194825

/-- `a(n-9)` -/
def P8695730534425028483.Spec : Prop :=
  ∀ n, (P8695730534425028483.a n : ℤ) = A194825 (n + 1)

theorem P8695730534425028483.correct : P8695730534425028483.Spec := by
  intro n
  simp only [A194825, Nat.add_sub_cancel]

end A194825

/-!
# A194826: Units' digits of the nonzero 9-gonal (nonagonal) numbers.

The programs for A194826, the canonical program `A194826.P5724564547271806074` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194826 has offset 1).

The definition of A194826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194826.P5724564547271806074

`((n+1)*(7*(n+1)-5)/2)%10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A194826

/-- `((n+1)*(7*(n+1)-5)/2)%10` -/
def P5724564547271806074.Spec : Prop :=
  ∀ n, P5724564547271806074.a n = A194826 (n + 1)

theorem P5724564547271806074.correct : P5724564547271806074.Spec := by
  intro n
  simp only [A194826, Nat.add_sub_cancel]

end A194826

/-!
# A194827: 2-adic valuation of the number of n X n Alternating Sign Matrices (A005130(n)).

The programs for A194827, the canonical program `A194827.P12693509753425005756` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194827 has offset 1).

The definition of A194827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194827.P12693509753425005756

`∑[A000120(n)-A240883(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194827

/-- `∑[A000120(n)-A240883(n)]` -/
def P12693509753425005756.Spec : Prop :=
  ∀ n, P12693509753425005756.a n = A194827 (n + 1)

theorem P12693509753425005756.correct : P12693509753425005756.Spec := by
  intro n
  simp only [A194827, Nat.add_sub_cancel]

end A194827

/-! ## A194827.P17942818787848299491

`A000788(n)-∑[A240883(n)]`
-/

namespace A194827.P17942818787848299491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P17942818787848299491

namespace A194827

/-- `A000788(n)-∑[A240883(n)]` -/
def P17942818787848299491.Spec : Prop :=
  ∀ n, P17942818787848299491.a n = A194827 (n + 1)

end A194827

/-! ## A194827.P14337815012203261862

`∑[A000120(n)+1-A046818(n)]`
-/

namespace A194827.P14337815012203261862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (1 - A046818 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P14337815012203261862

namespace A194827

/-- `∑[A000120(n)+1-A046818(n)]` -/
def P14337815012203261862.Spec : Prop :=
  ∀ n, P14337815012203261862.a n = A194827 (n + 1)

theorem P14337815012203261862.correct : P14337815012203261862.Spec := by
  intro n
  simp only [A194827, Nat.add_sub_cancel, A194827.P14337815012203261862.f1, A194827.P14337815012203261862.a, A194827.P12693509753425005756.f1, A194827.P12693509753425005756.a, A000120, A000120.P2816527436160941581.a, A046818, A046818.P4833358550115723064.a, A240883, A240883.P5378419761383427474.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194827

/-! ## A194827.P1654892419117371584

`A000788(n)+∑[1-A046818(n)]`
-/

namespace A194827.P1654892419117371584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P1654892419117371584

namespace A194827

/-- `A000788(n)+∑[1-A046818(n)]` -/
def P1654892419117371584.Spec : Prop :=
  ∀ n, P1654892419117371584.a n = A194827 (n + 1)

end A194827

/-! ## A194827.P15170154172652742718

`∑[A000523(A001316(n))-A240883(n)]`
-/

namespace A194827.P15170154172652742718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 n).toNat - A240883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P15170154172652742718

namespace A194827

/-- `∑[A000523(A001316(n))-A240883(n)]` -/
def P15170154172652742718.Spec : Prop :=
  ∀ n, P15170154172652742718.a n = A194827 (n + 1)

end A194827

/-! ## A194827.P12745746798993062934

`∑[A048881(2*n)-A240883(n)]`
-/

namespace A194827.P12745746798993062934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n) - A240883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P12745746798993062934

namespace A194827

/-- `∑[A048881(2*n)-A240883(n)]` -/
def P12745746798993062934.Spec : Prop :=
  ∀ n, P12745746798993062934.a n = A194827 (n + 1)

end A194827

/-! ## A194827.P12147384948059752665

`∑[log2(A048896(2*n)/A048896(3*n))]`
-/

namespace A194827.P12147384948059752665
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A048896 (2 * n) : ℚ) / (A048896 (3 * n) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194827.P12147384948059752665

namespace A194827

/-- `∑[log2(A048896(2*n)/A048896(3*n))]` -/
def P12147384948059752665.Spec : Prop :=
  ∀ n, P12147384948059752665.a n = (A194827 (n + 1) : ℝ)

end A194827

/-!
# A194829: Records of primes q in the representation of odd n>5 by n=2*p+q, p, q prime, q minimal. A194828 gives the values of n at which an increase of q is required.

The programs for A194829, there is no canonical definition to state claims against.
-/

/-! ## A194829.P3223680503574420478

`record[A103506(n+4)]`
-/

namespace A194829.P3223680503574420478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194829.P3223680503574420478

/-! ## A194829.P13117295487686121703

`p?[record[A103506(A028310(n))]]`
-/

namespace A194829.P13117295487686121703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194829.P13117295487686121703

/-! ## A194829.P2996324142864053666

`p?[record[A103506(A348553(n))]]`
-/

namespace A194829.P2996324142864053666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (A348553 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194829.P2996324142864053666

/-! ## A194829.P18407590793321797803

`p?[A008578(record[A103509(n+1)+1])]`
-/

namespace A194829.P18407590793321797803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194829.P18407590793321797803

/-! ## A194829.P1653546250826153683

`record[A008578(A103509(n+1)+1)+A000038(n)]`
-/

namespace A194829.P1653546250826153683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103509 (n + 1) + 1).toNat + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194829.P1653546250826153683

/-!
# A194831: Records in the number of ways to express an odd number as a sum 2*p+q, with p, q primes.

The programs for A194831, there is no canonical definition to state claims against.
-/

/-! ## A194831.P7998559537532945186

`record[A046927(n+3)]`
-/

namespace A194831.P7998559537532945186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194831.P7998559537532945186

/-! ## A194831.P17389342387768299988

`A046927(floor(A194830(n+1)/2))`
-/

namespace A194831.P17389342387768299988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 ⌊(A194830 (n + 1) : ℚ) / 2⌋.toNat

end

end A194831.P17389342387768299988

/-! ## A194831.P17882101506961929840

`A046927((A194830(n+1)-1)/2)`
-/

namespace A194831.P17882101506961929840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (SequenceMachineLib.roundAway ((A194830 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A194831.P17882101506961929840

/-! ## A194831.P16707075268666671866

`A046927(xor(1, A194830(n+1))/2)`
-/

namespace A194831.P16707075268666671866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (SequenceMachineLib.roundAway ((Int.xor 1 (A194830 (n + 1)) : ℚ) / 2)).toNat

end

end A194831.P16707075268666671866

/-! ## A194831.P5839159128400314005

`A046926(A194830(n+1))`
-/

namespace A194831.P5839159128400314005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A194830 (n + 1)).toNat

end

end A194831.P5839159128400314005

/-!
# A194832: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r= -tau = -(1+sqrt(5))/2.

The programs for A194832, there is no canonical definition to state claims against.
-/

/-! ## A194832.P9291042033408114346

`A002260(A194834(n+1))`
-/

namespace A194832.P9291042033408114346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194834 (n + 1)).toNat

end

end A194832.P9291042033408114346

/-! ## A194832.P6286235027578917159

`A194834(n+1)-A057944(n)`
-/

namespace A194832.P6286235027578917159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) - A057944 n

end

end A194832.P6286235027578917159

/-! ## A194832.P999625988688373109

`A054073(n+1)+A194834(n+1)-A054076(n+1)`
-/

namespace A194832.P999625988688373109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + (A194834 (n + 1) - A054076 (n + 1))

end

end A194832.P999625988688373109

/-! ## A194832.P12325928822908427431

`A194834(n+1)+A194835(n+1)-A194837(n+1)`
-/

namespace A194832.P12325928822908427431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194835 (n + 1) - A194837 (n + 1))

end

end A194832.P12325928822908427431

/-! ## A194832.P12871013380996890894

`A194834(n+1)+A194838(n+1)-A194840(n+1)`
-/

namespace A194832.P12871013380996890894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194838 (n + 1) - A194840 (n + 1))

end

end A194832.P12871013380996890894

/-! ## A194832.P12069511610252051977

`A194834(n+1)+A194844(n+1)-A194846(n+1)`
-/

namespace A194832.P12069511610252051977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194844 (n + 1) - A194846 (n + 1))

end

end A194832.P12069511610252051977

/-! ## A194832.P125931448485609386

`A194834(n+1)+A194856(n+1)-A194858(n+1)`
-/

namespace A194832.P125931448485609386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194856 (n + 1) - A194858 (n + 1))

end

end A194832.P125931448485609386

/-! ## A194832.P18299033514565766131

`A194834(n+1)+A194859(n+1)-A194861(n+1)`
-/

namespace A194832.P18299033514565766131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194859 (n + 1) - A194861 (n + 1))

end

end A194832.P18299033514565766131

/-! ## A194832.P17226043480344701259

`A194834(n+1)+A194862(n+1)-A194867(n+1)`
-/

namespace A194832.P17226043480344701259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194862 (n + 1) - A194867 (n + 1))

end

end A194832.P17226043480344701259

/-! ## A194832.P12017837619068170308

`A194834(n+1)+A194865(n+1)-A194864(n+1)`
-/

namespace A194832.P12017837619068170308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194865 (n + 1) - A194864 (n + 1))

end

end A194832.P12017837619068170308

/-! ## A194832.P13357938161776414221

`A194834(n+1)+A194868(n+1)-A194870(n+1)`
-/

namespace A194832.P13357938161776414221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194868 (n + 1) - A194870 (n + 1))

end

end A194832.P13357938161776414221

/-! ## A194832.P2811882963084337662

`A194834(n+1)+A194871(n+1)-A194873(n+1)`
-/

namespace A194832.P2811882963084337662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194871 (n + 1) - A194873 (n + 1))

end

end A194832.P2811882963084337662

/-! ## A194832.P18368667893219864681

`A194834(n+1)+A194874(n+1)-A194876(n+1)`
-/

namespace A194832.P18368667893219864681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194874 (n + 1) - A194876 (n + 1))

end

end A194832.P18368667893219864681

/-! ## A194832.P6115045636317058510

`A194834(n+1)+A194877(n+1)-A194879(n+1)`
-/

namespace A194832.P6115045636317058510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194877 (n + 1) - A194879 (n + 1))

end

end A194832.P6115045636317058510

/-! ## A194832.P6101417257365497791

`A194834(n+1)+A194896(n+1)-A194898(n+1)`
-/

namespace A194832.P6101417257365497791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194896 (n + 1) - A194898 (n + 1))

end

end A194832.P6101417257365497791

/-! ## A194832.P1824724359781600432

`A194834(n+1)+A194899(n+1)-A194901(n+1)`
-/

namespace A194832.P1824724359781600432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194899 (n + 1) - A194901 (n + 1))

end

end A194832.P1824724359781600432

/-! ## A194832.P6277143840161408396

`A194834(n+1)+A194902(n+1)-A194904(n+1)`
-/

namespace A194832.P6277143840161408396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194902 (n + 1) - A194904 (n + 1))

end

end A194832.P6277143840161408396

/-! ## A194832.P15542501284467516469

`A194834(n+1)+A194905(n+1)-A194907(n+1)`
-/

namespace A194832.P15542501284467516469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194905 (n + 1) - A194907 (n + 1))

end

end A194832.P15542501284467516469

/-! ## A194832.P16983412530532032288

`A194834(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A194832.P16983412530532032288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A194832.P16983412530532032288

/-! ## A194832.P15790823413627630256

`A194841(A194842(A194834(A194843(A194842(n+1)))))`
-/

namespace A194832.P15790823413627630256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (A194842 (A194834 (A194843 (A194842 (n + 1)).toNat).toNat).toNat).toNat

end

end A194832.P15790823413627630256

/-!
# A194833: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194832; an interspersion.

The programs for A194833, there is no canonical definition to state claims against.
-/

/-! ## A194833.P8772254715695358779

`∑[char[∑[n]]]²+1-A054069(n+1)`
-/

namespace A194833.P8772254715695358779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A054069 (n + 1))

end

end A194833.P8772254715695358779

/-! ## A194833.P13331549984754434559

`A038722(A054069(n+1))`
-/

namespace A194833.P13331549984754434559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A054069 (n + 1)).toNat

end

end A194833.P13331549984754434559

/-! ## A194833.P9178208302721242208

`A265129(n+1)-A054069(n+1)`
-/

namespace A194833.P9178208302721242208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A054069 (n + 1)

end

end A194833.P9178208302721242208

/-! ## A194833.P18423860086239145592

`A093995(n+1)+1-A054069(n+1)`
-/

namespace A194833.P18423860086239145592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A054069 (n + 1)

end

end A194833.P18423860086239145592

/-! ## A194833.P15208640327040067798

`A185869(n+1)-(A054069(n+1)+2*n)`
-/

namespace A194833.P15208640327040067798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1) - (A054069 (n + 1) + (2 * n : ℤ))

end

end A194833.P15208640327040067798

/-! ## A194833.P14904405649728248334

`A061579(A054069(n+1)-1)+1`
-/

namespace A194833.P14904405649728248334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A054069 (n + 1) - 1).toNat + 1

end

end A194833.P14904405649728248334

/-! ## A194833.P791613999673008908

`A057944(n)+A004736(A054069(n+1))`
-/

namespace A194833.P791613999673008908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A054069 (n + 1)).toNat

end

end A194833.P791613999673008908

/-! ## A194833.P12290952395731810814

`A093995(n+1)-A023443(A054069(n+1))`
-/

namespace A194833.P12290952395731810814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A054069 (n + 1)).toNat

end

end A194833.P12290952395731810814

/-! ## A194833.P6381432350821111036

`A194866(A194861(A054069(A194861(A194860(n+1)))))`
-/

namespace A194833.P6381432350821111036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194866 (A194861 (A054069 (A194861 (A194860 (n + 1)).toNat).toNat).toNat).toNat

end

end A194833.P6381432350821111036

/-! ## A194833.P11461495737584517040

`A194909(A194907(A054069(A194910(A194909(n+1)))))`
-/

namespace A194833.P11461495737584517040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194909 (A194907 (A054069 (A194910 (A194909 (n + 1)).toNat).toNat).toNat).toNat

end

end A194833.P11461495737584517040

/-!
# A194834: Inverse permutation of A194833; every positive integer occurs exactly once.

The programs for A194834, there is no canonical definition to state claims against.
-/

/-! ## A194834.P1566904940924179278

`A194832(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194834.P1566904940924179278
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194834.P1566904940924179278

/-! ## A194834.P6663001919916121730

`A194832(n+1)+A057944(n)`
-/

namespace A194834.P6663001919916121730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + A057944 n

end

end A194834.P6663001919916121730

/-! ## A194834.P18151955327658594538

`A194832(n+1)+n-A002262(n)`
-/

namespace A194834.P18151955327658594538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194834.P18151955327658594538

/-! ## A194834.P10312748287788348559

`A194832(n+1)+A061885(n)-n`
-/

namespace A194834.P10312748287788348559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A061885 n - (n : ℤ))

end

end A194834.P10312748287788348559

/-! ## A194834.P12609610253839959066

`A194832(n+1)+n+1-A002260(n+1)`
-/

namespace A194834.P12609610253839959066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194834.P12609610253839959066

/-! ## A194834.P16145195375040879204

`A194832(n+1)+A000217(A003056(n))`
-/

namespace A194834.P16145195375040879204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + A000217 (A003056 n).toNat

end

end A194834.P16145195375040879204

/-! ## A194834.P5832993218500437642

`A054068(n+1)+A194832(n+1)-A054065(n+1)`
-/

namespace A194834.P5832993218500437642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A194832 (n + 1) - A054065 (n + 1))

end

end A194834.P5832993218500437642

/-! ## A194834.P2083038534907654601

`A054076(n+1)+A194832(n+1)-A054073(n+1)`
-/

namespace A194834.P2083038534907654601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194832 (n + 1) - A054073 (n + 1))

end

end A194834.P2083038534907654601

/-! ## A194834.P12557706439150040247

`A194832(n+1)+A194837(n+1)-A194835(n+1)`
-/

namespace A194834.P12557706439150040247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194837 (n + 1) - A194835 (n + 1))

end

end A194834.P12557706439150040247

/-! ## A194834.P2965811031711679545

`A194832(n+1)+A194840(n+1)-A194838(n+1)`
-/

namespace A194834.P2965811031711679545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194840 (n + 1) - A194838 (n + 1))

end

end A194834.P2965811031711679545

/-! ## A194834.P16144259198699003096

`A194832(n+1)+A194843(n+1)-A194841(n+1)`
-/

namespace A194834.P16144259198699003096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194843 (n + 1) - A194841 (n + 1))

end

end A194834.P16144259198699003096

/-! ## A194834.P18418855741034765314

`A194832(n+1)+A194846(n+1)-A194844(n+1)`
-/

namespace A194834.P18418855741034765314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194846 (n + 1) - A194844 (n + 1))

end

end A194834.P18418855741034765314

/-! ## A194834.P12742045772008569324

`A194832(n+1)+A194858(n+1)-A194856(n+1)`
-/

namespace A194834.P12742045772008569324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194858 (n + 1) - A194856 (n + 1))

end

end A194834.P12742045772008569324

/-! ## A194834.P14487644013582852160

`A194832(n+1)+A194861(n+1)-A194859(n+1)`
-/

namespace A194834.P14487644013582852160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194861 (n + 1) - A194859 (n + 1))

end

end A194834.P14487644013582852160

/-! ## A194834.P9459357708787826973

`A194832(n+1)+A194864(n+1)-A194865(n+1)`
-/

namespace A194834.P9459357708787826973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194864 (n + 1) - A194865 (n + 1))

end

end A194834.P9459357708787826973

/-! ## A194834.P11362367443124753723

`A194832(n+1)+A194867(n+1)-A194862(n+1)`
-/

namespace A194834.P11362367443124753723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194867 (n + 1) - A194862 (n + 1))

end

end A194834.P11362367443124753723

/-! ## A194834.P10118333782883009029

`A194832(n+1)+A194870(n+1)-A194868(n+1)`
-/

namespace A194834.P10118333782883009029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194870 (n + 1) - A194868 (n + 1))

end

end A194834.P10118333782883009029

/-! ## A194834.P9353259072673778785

`A194832(n+1)+A194873(n+1)-A194871(n+1)`
-/

namespace A194834.P9353259072673778785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194873 (n + 1) - A194871 (n + 1))

end

end A194834.P9353259072673778785

/-! ## A194834.P1895414391232170152

`A194832(n+1)+A194876(n+1)-A194874(n+1)`
-/

namespace A194834.P1895414391232170152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194876 (n + 1) - A194874 (n + 1))

end

end A194834.P1895414391232170152

/-! ## A194834.P13541697159586091088

`A194832(n+1)+A194879(n+1)-A194877(n+1)`
-/

namespace A194834.P13541697159586091088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194879 (n + 1) - A194877 (n + 1))

end

end A194834.P13541697159586091088

/-!
# A194835: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-sqrt(2).

The programs for A194835, there is no canonical definition to state claims against.
-/

/-! ## A194835.P11815298184009758947

`A002260(A194837(n+1))`
-/

namespace A194835.P11815298184009758947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194837 (n + 1)).toNat

end

end A194835.P11815298184009758947

/-! ## A194835.P12307349777197159388

`A194837(n+1)-A057944(n)`
-/

namespace A194835.P12307349777197159388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) - A057944 n

end

end A194835.P12307349777197159388

/-! ## A194835.P6966576193872664140

`A194832(n+1)+A194837(n+1)-A194834(n+1)`
-/

namespace A194835.P6966576193872664140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194837 (n + 1) - A194834 (n + 1))

end

end A194835.P6966576193872664140

/-! ## A194835.P5998945927476501089

`A194837(n+1)+A194838(n+1)-A194840(n+1)`
-/

namespace A194835.P5998945927476501089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194838 (n + 1) - A194840 (n + 1))

end

end A194835.P5998945927476501089

/-! ## A194835.P12606572289557718887

`A194837(n+1)+A194844(n+1)-A194846(n+1)`
-/

namespace A194835.P12606572289557718887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194844 (n + 1) - A194846 (n + 1))

end

end A194835.P12606572289557718887

/-! ## A194835.P13483684067990817489

`A194837(n+1)+A194856(n+1)-A194858(n+1)`
-/

namespace A194835.P13483684067990817489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194856 (n + 1) - A194858 (n + 1))

end

end A194835.P13483684067990817489

/-! ## A194835.P13613893189498049230

`A194837(n+1)+A194859(n+1)-A194861(n+1)`
-/

namespace A194835.P13613893189498049230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194859 (n + 1) - A194861 (n + 1))

end

end A194835.P13613893189498049230

/-! ## A194835.P4226061518657664581

`A194837(n+1)+A194862(n+1)-A194867(n+1)`
-/

namespace A194835.P4226061518657664581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194862 (n + 1) - A194867 (n + 1))

end

end A194835.P4226061518657664581

/-! ## A194835.P10444383022385716359

`A194837(n+1)+A194865(n+1)-A194864(n+1)`
-/

namespace A194835.P10444383022385716359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194865 (n + 1) - A194864 (n + 1))

end

end A194835.P10444383022385716359

/-! ## A194835.P3976946309981703112

`A194837(n+1)+A194868(n+1)-A194870(n+1)`
-/

namespace A194835.P3976946309981703112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194868 (n + 1) - A194870 (n + 1))

end

end A194835.P3976946309981703112

/-! ## A194835.P14198199572914198245

`A194837(n+1)+A194871(n+1)-A194873(n+1)`
-/

namespace A194835.P14198199572914198245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194871 (n + 1) - A194873 (n + 1))

end

end A194835.P14198199572914198245

/-! ## A194835.P15044358858264812598

`A194837(n+1)+A194874(n+1)-A194876(n+1)`
-/

namespace A194835.P15044358858264812598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194874 (n + 1) - A194876 (n + 1))

end

end A194835.P15044358858264812598

/-! ## A194835.P12548127357045652440

`A194837(n+1)+A194877(n+1)-A194879(n+1)`
-/

namespace A194835.P12548127357045652440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194877 (n + 1) - A194879 (n + 1))

end

end A194835.P12548127357045652440

/-! ## A194835.P996549887956852659

`A194837(n+1)+A194896(n+1)-A194898(n+1)`
-/

namespace A194835.P996549887956852659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194896 (n + 1) - A194898 (n + 1))

end

end A194835.P996549887956852659

/-! ## A194835.P16528285019419642941

`A194837(n+1)+A194899(n+1)-A194901(n+1)`
-/

namespace A194835.P16528285019419642941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194899 (n + 1) - A194901 (n + 1))

end

end A194835.P16528285019419642941

/-! ## A194835.P7087478855812100830

`A194837(n+1)+A194902(n+1)-A194904(n+1)`
-/

namespace A194835.P7087478855812100830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194902 (n + 1) - A194904 (n + 1))

end

end A194835.P7087478855812100830

/-! ## A194835.P4585550669599314596

`A194837(n+1)+A194905(n+1)-A194907(n+1)`
-/

namespace A194835.P4585550669599314596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194905 (n + 1) - A194907 (n + 1))

end

end A194835.P4585550669599314596

/-! ## A194835.P4790271981700434042

`A194837(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A194835.P4790271981700434042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A194835.P4790271981700434042

/-! ## A194835.P13371267749051299113

`A194838(A194839(A194837(A194840(A194839(n+1)))))`
-/

namespace A194835.P13371267749051299113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (A194839 (A194837 (A194840 (A194839 (n + 1)).toNat).toNat).toNat).toNat

end

end A194835.P13371267749051299113

/-! ## A194835.P15356008136206854756

`A194862(A194863(A194837(A194867(A194863(n+1)))))`
-/

namespace A194835.P15356008136206854756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (A194863 (A194837 (A194867 (A194863 (n + 1)).toNat).toNat).toNat).toNat

end

end A194835.P15356008136206854756

/-!
# A194836: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194835; an interspersion.

The programs for A194836, there is no canonical definition to state claims against.
-/

/-! ## A194836.P10094009359070297745

`∑[char[∑[n]]]²+1-A054077(n+1)`
-/

namespace A194836.P10094009359070297745
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A054077 (n + 1))

end

end A194836.P10094009359070297745

/-! ## A194836.P11483227958170223553

`A038722(A054077(n+1))`
-/

namespace A194836.P11483227958170223553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A054077 (n + 1)).toNat

end

end A194836.P11483227958170223553

/-! ## A194836.P5118650818206201505

`A265129(n+1)-A054077(n+1)`
-/

namespace A194836.P5118650818206201505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A054077 (n + 1)

end

end A194836.P5118650818206201505

/-! ## A194836.P6460865084682099363

`A093995(n+1)+1-A054077(n+1)`
-/

namespace A194836.P6460865084682099363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A054077 (n + 1)

end

end A194836.P6460865084682099363

/-! ## A194836.P14044958672054148012

`A061579(A054077(n+1)-1)+1`
-/

namespace A194836.P14044958672054148012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A054077 (n + 1) - 1).toNat + 1

end

end A194836.P14044958672054148012

/-! ## A194836.P696727657131918637

`A057944(n)+A004736(A054077(n+1))`
-/

namespace A194836.P696727657131918637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A054077 (n + 1)).toNat

end

end A194836.P696727657131918637

/-! ## A194836.P3594108421564374341

`A093995(n+1)-A023443(A054077(n+1))`
-/

namespace A194836.P3594108421564374341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A054077 (n + 1)).toNat

end

end A194836.P3594108421564374341

/-! ## A194836.P7320556334308188278

`A004736(A054077(n+1))+A001971(A131507(n))`
-/

namespace A194836.P7320556334308188278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A054077 (n + 1)).toNat + A001971 (A131507 n).toNat

end

end A194836.P7320556334308188278

/-!
# A194837: Inverse permutation of A194836; every positive integer occurs exactly once.

The programs for A194837, there is no canonical definition to state claims against.
-/

/-! ## A194837.P6688536352217840915

`A194835(n+1)+C(comp[∑[n-1]]-n, 2)`
-/

namespace A194837.P6688536352217840915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194837.P6688536352217840915

/-! ## A194837.P6121932714188306211

`A194835(n+1)+A057944(n)`
-/

namespace A194837.P6121932714188306211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (n + 1) + A057944 n

end

end A194837.P6121932714188306211

/-! ## A194837.P9899568726446668464

`A194835(n+1)+n-A002262(n)`
-/

namespace A194837.P9899568726446668464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194837.P9899568726446668464

/-! ## A194837.P16593286102671733943

`A194835(n+1)+A061885(n)-n`
-/

namespace A194837.P16593286102671733943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (n + 1) + (A061885 n - (n : ℤ))

end

end A194837.P16593286102671733943

/-! ## A194837.P10921432976698863399

`A194834(n+1)+A194835(n+1)-A194832(n+1)`
-/

namespace A194837.P10921432976698863399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194835 (n + 1) - A194832 (n + 1))

end

end A194837.P10921432976698863399

/-! ## A194837.P3450214326704180774

`A054076(∑[char[∑[n]]]²-n)`
-/

namespace A194837.P3450214326704180774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194837.P3450214326704180774

/-! ## A194837.P16274423585180598978

`A057944(n)+A054073(A038722(n+1))`
-/

namespace A194837.P16274423585180598978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A054073 (A038722 (n + 1)).toNat

end

end A194837.P16274423585180598978

/-! ## A194837.P3327315508961015621

`A057944(n)+A054073(A061579(n)+1)`
-/

namespace A194837.P3327315508961015621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A054073 (A061579 n + 1).toNat

end

end A194837.P3327315508961015621

/-! ## A194837.P16116644938779194396

`∑{d}[A054076(A038722(n+1)), A000010(#)]`
-/

namespace A194837.P16116644938779194396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194837.P16116644938779194396

/-!
# A194838: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=sqrt(3).

The programs for A194838, there is no canonical definition to state claims against.
-/

/-! ## A194838.P3550507423921171971

`A002260(A194840(n+1))`
-/

namespace A194838.P3550507423921171971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194840 (n + 1)).toNat

end

end A194838.P3550507423921171971

/-! ## A194838.P15741157449460906237

`A194840(n+1)-A057944(n)`
-/

namespace A194838.P15741157449460906237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (n + 1) - A057944 n

end

end A194838.P15741157449460906237

/-! ## A194838.P8496796333173979041

`A194832(n+1)+A194840(n+1)-A194834(n+1)`
-/

namespace A194838.P8496796333173979041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194840 (n + 1) - A194834 (n + 1))

end

end A194838.P8496796333173979041

/-! ## A194838.P11990635560606601000

`A194840(n+1)+A194868(n+1)-A194870(n+1)`
-/

namespace A194838.P11990635560606601000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (n + 1) + (A194868 (n + 1) - A194870 (n + 1))

end

end A194838.P11990635560606601000

/-! ## A194838.P1472490369525942296

`A194840(n+1)+A194896(n+1)-A194898(n+1)`
-/

namespace A194838.P1472490369525942296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (n + 1) + (A194896 (n + 1) - A194898 (n + 1))

end

end A194838.P1472490369525942296

/-! ## A194838.P3305502853737714241

`A194896(A194897(A194840(A194897(A194898(n+1)))))`
-/

namespace A194838.P3305502853737714241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (A194897 (A194840 (A194897 (A194898 (n + 1)).toNat).toNat).toNat).toNat

end

end A194838.P3305502853737714241

/-! ## A194838.P7801985290882162673

`A194841(∑[char[∑[n]]]²-n)`
-/

namespace A194838.P7801985290882162673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194838.P7801985290882162673

/-! ## A194838.P899443105689804243

`∑{d}[A194841(A038722(n+1)), A000010(#)]`
-/

namespace A194838.P899443105689804243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194838.P899443105689804243

/-! ## A194838.P15336204640041240486

`A007318(C(2, n))*A194841(A038722(n+1))`
-/

namespace A194838.P15336204640041240486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194841 (A038722 (n + 1)).toNat

end

end A194838.P15336204640041240486

/-! ## A194838.P17236989557792193676

`∑{d}[A194841(A114327(n)+1+n), A000010(#)]`
-/

namespace A194838.P17236989557792193676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (A114327 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194838.P17236989557792193676

/-! ## A194838.P12696199369541645250

`A194841(A038722(n+1))+A008683(8*(n+1))`
-/

namespace A194838.P12696199369541645250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (A038722 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A194838.P12696199369541645250

/-! ## A194838.P1652809609240413746

`A020639(2*(n+1))+A194841(A038722(n+1))-2`
-/

namespace A194838.P1652809609240413746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A194841 (A038722 (n + 1)).toNat - 2)

end

end A194838.P1652809609240413746

/-! ## A194838.P16924064670663664475

`gcd(A008683(2*(n+1)²), A194841(A114327(n)+1+n))`
-/

namespace A194838.P16924064670663664475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (2 * (n + 1) ^ 2)) (A194841 (A114327 n + 1 + (n : ℤ)).toNat)

end

end A194838.P16924064670663664475

/-!
# A194839: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194838; an interspersion.

The programs for A194839, there is no canonical definition to state claims against.
-/

/-! ## A194839.P14152158056763227639

`∑[char[∑[n]]]²+1-A194842(n+1)`
-/

namespace A194839.P14152158056763227639
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194842 (n + 1))

end

end A194839.P14152158056763227639

/-! ## A194839.P18002376013743554993

`A038722(A194842(n+1))`
-/

namespace A194839.P18002376013743554993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194842 (n + 1)).toNat

end

end A194839.P18002376013743554993

/-! ## A194839.P6348900132900603567

`A265129(n+1)-A194842(n+1)`
-/

namespace A194839.P6348900132900603567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194842 (n + 1)

end

end A194839.P6348900132900603567

/-! ## A194839.P14256704075848428625

`∑[A198954(n)]+1-A194842(n+1)`
-/

namespace A194839.P14256704075848428625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A194842 (n + 1)

end

end A194839.P14256704075848428625

/-! ## A194839.P12437502331586732807

`A093995(n+1)+1-A194842(n+1)`
-/

namespace A194839.P12437502331586732807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194842 (n + 1)

end

end A194839.P12437502331586732807

/-! ## A194839.P14892425724872075728

`A061579(A194842(n+1)-1)+1`
-/

namespace A194839.P14892425724872075728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194842 (n + 1) - 1).toNat + 1

end

end A194839.P14892425724872075728

/-! ## A194839.P9746574937752391447

`A057944(n)+A004736(A194842(n+1))`
-/

namespace A194839.P9746574937752391447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194842 (n + 1)).toNat

end

end A194839.P9746574937752391447

/-! ## A194839.P12352048129706025255

`A093995(n+1)+A024000(A194842(n+1))`
-/

namespace A194839.P12352048129706025255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194842 (n + 1)).toNat

end

end A194839.P12352048129706025255

/-! ## A194839.P15731952466187535480

`A194860(n+1)%A171988(A138929(n+1))`
-/

namespace A194839.P15731952466187535480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194860 (n + 1)) (A171988 (A138929 (n + 1)).toNat)

end

end A194839.P15731952466187535480

/-!
# A194840: Inverse permutation of A194839; every positive integer occurs exactly once.

The programs for A194840, there is no canonical definition to state claims against.
-/

/-! ## A194840.P16972681364902958518

`A194838(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194840.P16972681364902958518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194840.P16972681364902958518

/-! ## A194840.P3942014515996918626

`A194838(n+1)+A057944(n)`
-/

namespace A194840.P3942014515996918626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + A057944 n

end

end A194840.P3942014515996918626

/-! ## A194840.P4061257783377202272

`A194838(n+1)+n-A002262(n)`
-/

namespace A194840.P4061257783377202272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194840.P4061257783377202272

/-! ## A194840.P2837851018548577128

`A194838(n+1)+A061885(n)-n`
-/

namespace A194840.P2837851018548577128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A061885 n - (n : ℤ))

end

end A194840.P2837851018548577128

/-! ## A194840.P18239801677114197922

`A194838(n+1)+n+1-A002260(n+1)`
-/

namespace A194840.P18239801677114197922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194840.P18239801677114197922

/-! ## A194840.P14608551053929764913

`A194838(n+1)+A000217(A003056(n))`
-/

namespace A194840.P14608551053929764913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + A000217 (A003056 n).toNat

end

end A194840.P14608551053929764913

/-! ## A194840.P365783487135126132

`A194838(n+1)+A001971(A131507(n))`
-/

namespace A194840.P365783487135126132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + A001971 (A131507 n).toNat

end

end A194840.P365783487135126132

/-! ## A194840.P17316489539046537736

`A194838(n+1)+∑[A004526(A198954(n))]`
-/

namespace A194840.P17316489539046537736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194840.P17316489539046537736

/-! ## A194840.P13226764560020341853

`A194834(n+1)+A194838(n+1)-A194832(n+1)`
-/

namespace A194840.P13226764560020341853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194838 (n + 1) - A194832 (n + 1))

end

end A194840.P13226764560020341853

/-! ## A194840.P6316776672247179616

`A194838(n+1)+A194846(n+1)-A194844(n+1)`
-/

namespace A194840.P6316776672247179616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194846 (n + 1) - A194844 (n + 1))

end

end A194840.P6316776672247179616

/-! ## A194840.P17312843677954292804

`A194838(n+1)+A194858(n+1)-A194856(n+1)`
-/

namespace A194840.P17312843677954292804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194858 (n + 1) - A194856 (n + 1))

end

end A194840.P17312843677954292804

/-! ## A194840.P12011643541008157737

`A194838(n+1)+A194861(n+1)-A194859(n+1)`
-/

namespace A194840.P12011643541008157737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194861 (n + 1) - A194859 (n + 1))

end

end A194840.P12011643541008157737

/-! ## A194840.P8703052429883947595

`A194838(n+1)+A194870(n+1)-A194868(n+1)`
-/

namespace A194840.P8703052429883947595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194870 (n + 1) - A194868 (n + 1))

end

end A194840.P8703052429883947595

/-! ## A194840.P14907479424691315302

`A194838(n+1)+A194873(n+1)-A194871(n+1)`
-/

namespace A194840.P14907479424691315302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194873 (n + 1) - A194871 (n + 1))

end

end A194840.P14907479424691315302

/-! ## A194840.P11709628051601623032

`A194838(n+1)+A194898(n+1)-A194896(n+1)`
-/

namespace A194840.P11709628051601623032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194898 (n + 1) - A194896 (n + 1))

end

end A194840.P11709628051601623032

/-! ## A194840.P7808124933213362874

`A194838(n+1)+A194901(n+1)-A194899(n+1)`
-/

namespace A194840.P7808124933213362874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194901 (n + 1) - A194899 (n + 1))

end

end A194840.P7808124933213362874

/-! ## A194840.P16936446134589367674

`A194838(n+1)+A194904(n+1)-A194902(n+1)`
-/

namespace A194840.P16936446134589367674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194904 (n + 1) - A194902 (n + 1))

end

end A194840.P16936446134589367674

/-! ## A194840.P15734239872044130562

`A194838(n+1)+A194907(n+1)-A194905(n+1)`
-/

namespace A194840.P15734239872044130562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194907 (n + 1) - A194905 (n + 1))

end

end A194840.P15734239872044130562

/-! ## A194840.P6302215973374405867

`A194838(n+1)+A194910(n+1)-A194908(n+1)`
-/

namespace A194840.P6302215973374405867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (n + 1) + (A194910 (n + 1) - A194908 (n + 1))

end

end A194840.P6302215973374405867

/-! ## A194840.P18078061584478359201

`A194841(∑[char[∑[n]]]²-n)+C(∑[char[∑[n]]], 2)`
-/

namespace A194840.P18078061584478359201
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A194840.P18078061584478359201

/-!
# A194841: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-sqrt(3).

The programs for A194841, there is no canonical definition to state claims against.
-/

/-! ## A194841.P14695656368641298335

`A002260(A194843(n+1))`
-/

namespace A194841.P14695656368641298335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194843 (n + 1)).toNat

end

end A194841.P14695656368641298335

/-! ## A194841.P17969301180238872327

`A194843(n+1)-A057944(n)`
-/

namespace A194841.P17969301180238872327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194843 (n + 1) - A057944 n

end

end A194841.P17969301180238872327

/-! ## A194841.P4970936996123424168

`A194843(n+1)+A194911(n+1)-A194913(n+1)`
-/

namespace A194841.P4970936996123424168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194843 (n + 1) + (A194911 (n + 1) - A194913 (n + 1))

end

end A194841.P4970936996123424168

/-! ## A194841.P16591032125466616078

`A194838(∑[char[∑[n]]]²-n)`
-/

namespace A194841.P16591032125466616078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194841.P16591032125466616078

/-! ## A194841.P10096740362453244153

`gcd(A000038(n), A194838(A038722(n+1)))`
-/

namespace A194841.P10096740362453244153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194838 (A038722 (n + 1)).toNat)

end

end A194841.P10096740362453244153

/-! ## A194841.P853001488168100766

`lcm(A020985(n), A194838(A038722(n+1)))`
-/

namespace A194841.P853001488168100766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194838 (A038722 (n + 1)).toNat)

end

end A194841.P853001488168100766

/-! ## A194841.P9207237917100010478

`or(A000007(n), A194838(A038722(n+1)))`
-/

namespace A194841.P9207237917100010478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194838 (A038722 (n + 1)).toNat)

end

end A194841.P9207237917100010478

/-! ## A194841.P10337094371576916351

`∑{d}[A194838(A038722(n+1)), A000010(#)]`
-/

namespace A194841.P10337094371576916351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194841.P10337094371576916351

/-! ## A194841.P890081837880899811

`∏{d}[A194838(A038722(n+1)), A014963(#)]`
-/

namespace A194841.P890081837880899811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A194841.P890081837880899811

/-! ## A194841.P11873612797299783537

`A194838(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A194841.P11873612797299783537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A194841.P11873612797299783537

/-! ## A194841.P8500230105322085986

`∏{e}[A000040(n+1), #]*A194838(A038722(n+1))`
-/

namespace A194841.P8500230105322085986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A194838 (A038722 (n + 1)).toNat

end

end A194841.P8500230105322085986

/-! ## A194841.P7857373532510537290

`gcd(A081125(n), A194911(n+1))`
-/

namespace A194841.P7857373532510537290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081125 n) (A194911 (n + 1))

end

end A194841.P7857373532510537290

/-!
# A194842: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194841; an interspersion.

The programs for A194842, there is no canonical definition to state claims against.
-/

/-! ## A194842.P11471259946574990369

`∑[char[∑[n]]]²+1-A194839(n+1)`
-/

namespace A194842.P11471259946574990369
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194839 (n + 1))

end

end A194842.P11471259946574990369

/-! ## A194842.P14933856268291020810

`A038722(A194839(n+1))`
-/

namespace A194842.P14933856268291020810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194839 (n + 1)).toNat

end

end A194842.P14933856268291020810

/-! ## A194842.P17570350424758592294

`A265129(n+1)-A194839(n+1)`
-/

namespace A194842.P17570350424758592294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194839 (n + 1)

end

end A194842.P17570350424758592294

/-! ## A194842.P14338768994325349843

`A093995(n+1)+1-A194839(n+1)`
-/

namespace A194842.P14338768994325349843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194839 (n + 1)

end

end A194842.P14338768994325349843

/-! ## A194842.P4208440063829788082

`A061579(A194839(n+1)-1)+1`
-/

namespace A194842.P4208440063829788082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194839 (n + 1) - 1).toNat + 1

end

end A194842.P4208440063829788082

/-! ## A194842.P17154396168795851491

`A057944(n)+A004736(A194839(n+1))`
-/

namespace A194842.P17154396168795851491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194839 (n + 1)).toNat

end

end A194842.P17154396168795851491

/-! ## A194842.P7133461980149885850

`A093995(n+1)-A023443(A194839(n+1))`
-/

namespace A194842.P7133461980149885850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194839 (n + 1)).toNat

end

end A194842.P7133461980149885850

/-! ## A194842.P18300927566177194479

`A004736(A194839(n+1))+n+1-A002260(n+1)`
-/

namespace A194842.P18300927566177194479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194839 (n + 1)).toNat + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194842.P18300927566177194479

/-! ## A194842.P7086886214364236393

`A194909(A194907(A194839(A194909(A194910(n+1)))))`
-/

namespace A194842.P7086886214364236393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194909 (A194907 (A194839 (A194909 (A194910 (n + 1)).toNat).toNat).toNat).toNat

end

end A194842.P7086886214364236393

/-! ## A194842.P15923298159934101187

`and(A058000(n+1), A194912(n+1))`
-/

namespace A194842.P15923298159934101187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A194912 (n + 1))

end

end A194842.P15923298159934101187

/-!
# A194843: Inverse permutation of A194842; every positive integer occurs exactly once.

The programs for A194843, there is no canonical definition to state claims against.
-/

/-! ## A194843.P16427377540847975539

`A194841(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194843.P16427377540847975539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194843.P16427377540847975539

/-! ## A194843.P16669938424527043068

`A194841(n+1)+A057944(n)`
-/

namespace A194843.P16669938424527043068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + A057944 n

end

end A194843.P16669938424527043068

/-! ## A194843.P16482342675769547403

`A194841(n+1)+n-A002262(n)`
-/

namespace A194843.P16482342675769547403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194843.P16482342675769547403

/-! ## A194843.P12309288752481578870

`A194841(n+1)+A061885(n)-n`
-/

namespace A194843.P12309288752481578870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + (A061885 n - (n : ℤ))

end

end A194843.P12309288752481578870

/-! ## A194843.P8184491281234886060

`A194841(n+1)+n+1-A002260(n+1)`
-/

namespace A194843.P8184491281234886060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194843.P8184491281234886060

/-! ## A194843.P2485905253577361750

`A004201(n+1)+A194841(n+1)-(n+1)`
-/

namespace A194843.P2485905253577361750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) + (A194841 (n + 1) - (n + 1 : ℤ))

end

end A194843.P2485905253577361750

/-! ## A194843.P13223754484342491098

`A194841(n+1)+A000217(A003056(n))`
-/

namespace A194843.P13223754484342491098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + A000217 (A003056 n).toNat

end

end A194843.P13223754484342491098

/-! ## A194843.P14315192746467102293

`A194841(n+1)+A161680(A002024(n+1))`
-/

namespace A194843.P14315192746467102293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194843.P14315192746467102293

/-! ## A194843.P17101219198258405254

`A194841(n+1)+A194913(n+1)-A194911(n+1)`
-/

namespace A194843.P17101219198258405254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1) + (A194913 (n + 1) - A194911 (n + 1))

end

end A194843.P17101219198258405254

/-! ## A194843.P6525022931490097786

`A194838(∑[char[∑[n]]]²-n)+C(∑[char[∑[n]]], 2)`
-/

namespace A194843.P6525022931490097786
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A194843.P6525022931490097786

/-! ## A194843.P9278293536379915548

`A194840(A038722(n+1))`
-/

namespace A194843.P9278293536379915548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (A038722 (n + 1)).toNat

end

end A194843.P9278293536379915548

/-! ## A194843.P6160664644831167439

`A194840(A194842(A194840(n+1)))`
-/

namespace A194843.P6160664644831167439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (A194842 (A194840 (n + 1)).toNat).toNat

end

end A194843.P6160664644831167439

/-! ## A194843.P11079483500772117512

`A194840(A194900(A194904(n+1)))`
-/

namespace A194843.P11079483500772117512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (A194900 (A194904 (n + 1)).toNat).toNat

end

end A194843.P11079483500772117512

/-! ## A194843.P784458686942715682

`A194838(A038722(n+1))+A057944(n)`
-/

namespace A194843.P784458686942715682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194838 (A038722 (n + 1)).toNat + A057944 n

end

end A194843.P784458686942715682

/-!
# A194844: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=sqrt(5).

The programs for A194844, there is no canonical definition to state claims against.
-/

/-! ## A194844.P10551742499071095519

`A002260(A194846(n+1))`
-/

namespace A194844.P10551742499071095519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194846 (n + 1)).toNat

end

end A194844.P10551742499071095519

/-! ## A194844.P5944530006268520315

`A194846(n+1)-A057944(n)`
-/

namespace A194844.P5944530006268520315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (n + 1) - A057944 n

end

end A194844.P5944530006268520315

/-! ## A194844.P1138377361996627046

`A194832(n+1)+A194846(n+1)-A194834(n+1)`
-/

namespace A194844.P1138377361996627046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194846 (n + 1) - A194834 (n + 1))

end

end A194844.P1138377361996627046

/-! ## A194844.P18020171309672351320

`A194856(∑[char[∑[n]]]²-n)`
-/

namespace A194844.P18020171309672351320
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194844.P18020171309672351320

/-! ## A194844.P6513690925310465407

`gcd(A000038(n), A194856(A038722(n+1)))`
-/

namespace A194844.P6513690925310465407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194856 (A038722 (n + 1)).toNat)

end

end A194844.P6513690925310465407

/-! ## A194844.P12986315783831366463

`lcm(A020985(n), A194856(A038722(n+1)))`
-/

namespace A194844.P12986315783831366463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194856 (A038722 (n + 1)).toNat)

end

end A194844.P12986315783831366463

/-! ## A194844.P8061476446715881909

`∑{d}[A194856(A038722(n+1)), A000010(#)]`
-/

namespace A194844.P8061476446715881909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194844.P8061476446715881909

/-! ## A194844.P16586008525859402328

`A007318(and(1, -n))*A194856(A038722(n+1))`
-/

namespace A194844.P16586008525859402328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A194856 (A038722 (n + 1)).toNat

end

end A194844.P16586008525859402328

/-! ## A194844.P8796639270413755098

`A194856(A038722(n+1))+A008683(9*(n+1))`
-/

namespace A194844.P8796639270413755098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (A038722 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A194844.P8796639270413755098

/-! ## A194844.P1839251731683169610

`A194856(A038722(n+1))+A000045(C(n, n+2))`
-/

namespace A194844.P1839251731683169610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (A038722 (n + 1)).toNat + A000045 (Nat.choose n (n + 2))

end

end A194844.P1839251731683169610

/-!
# A194845: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194844; an interspersion.

The programs for A194845, there is no canonical definition to state claims against.
-/

/-! ## A194845.P5436105929302467549

`∑[char[∑[n]]]²+1-A194857(n+1)`
-/

namespace A194845.P5436105929302467549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194857 (n + 1))

end

end A194845.P5436105929302467549

/-! ## A194845.P149537967074648398

`A038722(A194857(n+1))`
-/

namespace A194845.P149537967074648398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194857 (n + 1)).toNat

end

end A194845.P149537967074648398

/-! ## A194845.P471680008249659864

`A265129(n+1)-A194857(n+1)`
-/

namespace A194845.P471680008249659864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194857 (n + 1)

end

end A194845.P471680008249659864

/-! ## A194845.P5623429018999539731

`∑[A198954(n)]-(A194857(n+1)-1)`
-/

namespace A194845.P5623429018999539731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A194857 (n + 1) - 1)

end

end A194845.P5623429018999539731

/-! ## A194845.P4218293315886534706

`A093995(n+1)+1-A194857(n+1)`
-/

namespace A194845.P4218293315886534706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194857 (n + 1)

end

end A194845.P4218293315886534706

/-! ## A194845.P16538125922568695051

`A061579(A194857(n+1)-1)+1`
-/

namespace A194845.P16538125922568695051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194857 (n + 1) - 1).toNat + 1

end

end A194845.P16538125922568695051

/-! ## A194845.P759307226738379114

`A057944(n)+A004736(A194857(n+1))`
-/

namespace A194845.P759307226738379114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194857 (n + 1)).toNat

end

end A194845.P759307226738379114

/-! ## A194845.P9168874080101080708

`A024000(A194857(n+1))+∑[A198954(n)]`
-/

namespace A194845.P9168874080101080708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194857 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194845.P9168874080101080708

/-! ## A194845.P11302487349299775596

`A093995(n+1)+A024000(A194857(n+1))`
-/

namespace A194845.P11302487349299775596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194857 (n + 1)).toNat

end

end A194845.P11302487349299775596

/-! ## A194845.P16327742475897002681

`A002024(n+1)²-A023443(A194857(n+1))`
-/

namespace A194845.P16327742475897002681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - A023443 (A194857 (n + 1)).toNat

end

end A194845.P16327742475897002681

/-!
# A194846: Inverse permutation to A194845; every positive integer occurs exactly once.

The programs for A194846, there is no canonical definition to state claims against.
-/

/-! ## A194846.P14221876989898775937

`A194844(n+1)+C(comp[∑[n-1]]-n, 2)`
-/

namespace A194846.P14221876989898775937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194846.P14221876989898775937

/-! ## A194846.P7547616047232558007

`A194844(n+1)+A057944(n)`
-/

namespace A194846.P7547616047232558007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + A057944 n

end

end A194846.P7547616047232558007

/-! ## A194846.P7820718931969581487

`A194844(n+1)+n-A002262(n)`
-/

namespace A194846.P7820718931969581487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194846.P7820718931969581487

/-! ## A194846.P18092063275939049861

`n+1+A194844(n+1)-A002260(n+1)`
-/

namespace A194846.P18092063275939049861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A194844 (n + 1) - A002260 (n + 1))

end

end A194846.P18092063275939049861

/-! ## A194846.P9905702786994432917

`A194844(n+1)+A000217(A003056(n))`
-/

namespace A194846.P9905702786994432917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + A000217 (A003056 n).toNat

end

end A194846.P9905702786994432917

/-! ## A194846.P1733943256346795635

`A194844(n+1)+A001971(A131507(n))`
-/

namespace A194846.P1733943256346795635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + A001971 (A131507 n).toNat

end

end A194846.P1733943256346795635

/-! ## A194846.P8409821456551770218

`A194844(n+1)+A161680(A002024(n+1))`
-/

namespace A194846.P8409821456551770218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194846.P8409821456551770218

/-! ## A194846.P6739008450135448285

`A194834(n+1)+A194844(n+1)-A194832(n+1)`
-/

namespace A194846.P6739008450135448285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194844 (n + 1) - A194832 (n + 1))

end

end A194846.P6739008450135448285

/-! ## A194846.P12495036739198989252

`A194844(n+1)+A194904(n+1)-A194902(n+1)`
-/

namespace A194846.P12495036739198989252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + (A194904 (n + 1) - A194902 (n + 1))

end

end A194846.P12495036739198989252

/-! ## A194846.P8548244273312426816

`A194856(∑[char[∑[n]]]²-n)+C(∑[char[∑[n]]], 2)`
-/

namespace A194846.P8548244273312426816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A194846.P8548244273312426816

/-! ## A194846.P14172202592858480623

`A194858(A038722(n+1))`
-/

namespace A194846.P14172202592858480623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194858 (A038722 (n + 1)).toNat

end

end A194846.P14172202592858480623

/-! ## A194846.P12172727521262412331

`A194856(∑[char[∑[n]]]²-n)+A057944(n)`
-/

namespace A194846.P12172727521262412331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + A057944 n

end

end A194846.P12172727521262412331

/-! ## A194846.P1302617761316747670

`A194858(A194872(A194876(n+1)))`
-/

namespace A194846.P1302617761316747670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194858 (A194872 (A194876 (n + 1)).toNat).toNat

end

end A194846.P1302617761316747670

/-! ## A194846.P1537000663576433627

`A238952(A137688(n))+A194844(n+1)`
-/

namespace A194846.P1537000663576433627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A137688 n).toNat + A194844 (n + 1)

end

end A194846.P1537000663576433627

/-!
# A194847: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives i values.

The programs for A194847, the canonical program `A194847.P15779347047936523882` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194847 has offset 0).

The definition of A194847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194847.P15779347047936523882

`A056556(n)+2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A194847

/-- `A056556(n)+2` -/
def P15779347047936523882.Spec : Prop :=
  ∀ n, P15779347047936523882.a n = A194847 n

theorem P15779347047936523882.correct : P15779347047936523882.Spec := by
  intro n
  simp only [A194847]

end A194847

/-! ## A194847.P17800244217844532781

`∑[char[C(n, 3)]]+1`
-/

namespace A194847.P17800244217844532781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194847.P17800244217844532781

namespace A194847

/-- `∑[char[C(n, 3)]]+1` -/
def P17800244217844532781.Spec : Prop :=
  ∀ n, (P17800244217844532781.a n : ℤ) = A194847 n

end A194847

/-! ## A194847.P14630503153146062255

`∑[char[∑[∑[n]]]]+1`
-/

namespace A194847.P14630503153146062255
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194847.P14630503153146062255

namespace A194847

/-- `∑[char[∑[∑[n]]]]+1` -/
def P14630503153146062255.Spec : Prop :=
  ∀ n, (P14630503153146062255.a n : ℤ) = A194847 n

end A194847

/-! ## A194847.P14259301877323421847

`-xor(-1, ∑[char[C(n, 3)]])`
-/

namespace A194847.P14259301877323421847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194847.P14259301877323421847

namespace A194847

/-- `-xor(-1, ∑[char[C(n, 3)]])` -/
def P14259301877323421847.Spec : Prop :=
  ∀ n, P14259301877323421847.a n = A194847 n

end A194847

/-! ## A194847.P11861790176143112061

`log2(2*2^∑[char[C(n, 3)]])`
-/

namespace A194847.P11861790176143112061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (2 * 2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A194847.P11861790176143112061

namespace A194847

/-- `log2(2*2^∑[char[C(n, 3)]])` -/
def P11861790176143112061.Spec : Prop :=
  ∀ n, P11861790176143112061.a n = (A194847 n : ℝ)

end A194847

/-! ## A194847.P12405837772916262505

`abs(comp[∑[C(n, 2)]+n]-n)`
-/

namespace A194847.P12405837772916262505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)|

end

end A194847.P12405837772916262505

namespace A194847

/-- `abs(comp[∑[C(n, 2)]+n]-n)` -/
def P12405837772916262505.Spec : Prop :=
  ∀ n, P12405837772916262505.a n = A194847 n

end A194847

/-! ## A194847.P12669626503312918043

`abs(comp[C(n, 3)+n-2]+1-n)`
-/

namespace A194847.P12669626503312918043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) + ((n : ℤ) - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)|

end

end A194847.P12669626503312918043

namespace A194847

/-- `abs(comp[C(n, 3)+n-2]+1-n)` -/
def P12669626503312918043.Spec : Prop :=
  ∀ n, P12669626503312918043.a n = A194847 n

end A194847

/-! ## A194847.P2464325288075304792

`floor(log2(A014311(n+1)))`
-/

namespace A194847.P2464325288075304792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A014311 (n + 1)).toNat

end

end A194847.P2464325288075304792

namespace A194847

/-- `floor(log2(A014311(n+1)))` -/
def P2464325288075304792.Spec : Prop :=
  ∀ n, (P2464325288075304792.a n : ℤ) = A194847 n

end A194847

/-! ## A194847.P8858210853483851522

`floor(log2(A043570(n+1)))`
-/

namespace A194847.P8858210853483851522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A043570 (n + 1)).toNat

end

end A194847.P8858210853483851522

namespace A194847

/-- `floor(log2(A043570(n+1)))` -/
def P8858210853483851522.Spec : Prop :=
  ∀ n, (P8858210853483851522.a n : ℤ) = A194847 n

end A194847

/-! ## A194847.P12630316388539808253

`ceil(log2(A151757(n+1)))`
-/

namespace A194847.P12630316388539808253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A151757 (n + 1) : ℝ)⌉

end

end A194847.P12630316388539808253

namespace A194847

/-- `ceil(log2(A151757(n+1)))` -/
def P12630316388539808253.Spec : Prop :=
  ∀ n, P12630316388539808253.a n = A194847 n

end A194847

/-! ## A194847.P13152575208796121582

`ceil(log2(A087118(n+3)))`
-/

namespace A194847.P13152575208796121582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A087118 (n + 3) : ℝ)⌉

end

end A194847.P13152575208796121582

namespace A194847

/-- `ceil(log2(A087118(n+3)))` -/
def P13152575208796121582.Spec : Prop :=
  ∀ n, P13152575208796121582.a n = A194847 n

end A194847

/-! ## A194847.P2779414580380022106

`A131922(A108581(n+1))`
-/

namespace A194847.P2779414580380022106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131922 (A108581 (n + 1)).toNat

end

end A194847.P2779414580380022106

namespace A194847

/-- `A131922(A108581(n+1))` -/
def P2779414580380022106.Spec : Prop :=
  ∀ n, P2779414580380022106.a n = A194847 n

end A194847

/-! ## A194847.P7152376266726473205

`A002024(A274079(n+1))`
-/

namespace A194847.P7152376266726473205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A274079 (n + 1)).toNat

end

end A194847.P7152376266726473205

namespace A194847

/-- `A002024(A274079(n+1))` -/
def P7152376266726473205.Spec : Prop :=
  ∀ n, P7152376266726473205.a n = A194847 n

end A194847

/-! ## A194847.P8913247128580472768

`A002024(A108581(n+1)+1)`
-/

namespace A194847.P8913247128580472768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A108581 (n + 1) + 1).toNat

end

end A194847.P8913247128580472768

namespace A194847

/-- `A002024(A108581(n+1)+1)` -/
def P8913247128580472768.Spec : Prop :=
  ∀ n, P8913247128580472768.a n = A194847 n

end A194847

/-! ## A194847.P1395567075755941030

`A075362(A108581(n+1)+1)`
-/

namespace A194847.P1395567075755941030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A108581 (n + 1) + 1).toNat

end

end A194847.P1395567075755941030

namespace A194847

/-- `A075362(A108581(n+1)+1)` -/
def P1395567075755941030.Spec : Prop :=
  ∀ n, P1395567075755941030.a n = A194847 n

end A194847

/-! ## A194847.P9916142561549105218

`A131821(A108581(n+1)+1)`
-/

namespace A194847.P9916142561549105218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (A108581 (n + 1) + 1).toNat

end

end A194847.P9916142561549105218

namespace A194847

/-- `A131821(A108581(n+1)+1)` -/
def P9916142561549105218.Spec : Prop :=
  ∀ n, P9916142561549105218.a n = A194847 n

end A194847

/-! ## A194847.P15414448957771180505

`A028242(2*A360010(n+1))`
-/

namespace A194847.P15414448957771180505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A360010 (n + 1)).toNat

end

end A194847.P15414448957771180505

namespace A194847

/-- `A028242(2*A360010(n+1))` -/
def P15414448957771180505.Spec : Prop :=
  ∀ n, P15414448957771180505.a n = A194847 n

end A194847

/-! ## A194847.P3923326233299419420

`A227177(A227177(2*n+1)+2*n+1)`
-/

namespace A194847.P3923326233299419420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A227177 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A194847.P3923326233299419420

namespace A194847

/-- `A227177(A227177(2*n+1)+2*n+1)` -/
def P3923326233299419420.Spec : Prop :=
  ∀ n, P3923326233299419420.a n = A194847 n

end A194847

/-! ## A194847.P6417227616676105974

`A074279(A108581(n+1)+2*n+1)`
-/

namespace A194847.P6417227616676105974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A108581 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A194847.P6417227616676105974

namespace A194847

/-- `A074279(A108581(n+1)+2*n+1)` -/
def P6417227616676105974.Spec : Prop :=
  ∀ n, P6417227616676105974.a n = A194847 n

end A194847

/-! ## A194847.P550286319262801466

`A074279(A345018(2*n+1)+2*n+1)`
-/

namespace A194847.P550286319262801466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A345018 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A194847.P550286319262801466

namespace A194847

/-- `A074279(A345018(2*n+1)+2*n+1)` -/
def P550286319262801466.Spec : Prop :=
  ∀ n, P550286319262801466.a n = A194847 n

end A194847

/-!
# A194848: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; sequence gives j values.

The programs for A194848, the canonical program `A194848.P4641627590667546157` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194848 has offset 0).

The definition of A194848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194848.P4641627590667546157

`A056557(n)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194848

/-- `A056557(n)+1` -/
def P4641627590667546157.Spec : Prop :=
  ∀ n, P4641627590667546157.a n = A194848 n

theorem P4641627590667546157.correct : P4641627590667546157.Spec := by
  intro n
  simp only [A194848]

end A194848

/-! ## A194848.P8847588443853667087

`∑[char[C(n, 3)]]-A056559(n)`
-/

namespace A194848.P8847588443853667087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056559 n

end

end A194848.P8847588443853667087

namespace A194848

/-- `∑[char[C(n, 3)]]-A056559(n)` -/
def P8847588443853667087.Spec : Prop :=
  ∀ n, P8847588443853667087.a n = A194848 n

end A194848

/-! ## A194848.P16389510907243022476

`A002260(A123579(n+1))`
-/

namespace A194848.P16389510907243022476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A123579 (n + 1)).toNat

end

end A194848.P16389510907243022476

namespace A194848

/-- `A002260(A123579(n+1))` -/
def P16389510907243022476.Spec : Prop :=
  ∀ n, P16389510907243022476.a n = A194848 n

end A194848

/-! ## A194848.P233984538952275691

`∑[A023533(n)]-A056559(n)`
-/

namespace A194848.P233984538952275691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056559 n

end

end A194848.P233984538952275691

namespace A194848

/-- `∑[A023533(n)]-A056559(n)` -/
def P233984538952275691.Spec : Prop :=
  ∀ n, P233984538952275691.a n = A194848 n

theorem P233984538952275691.correct : P233984538952275691.Spec := by
  intro n
  simp only [A194848, Nat.add_sub_cancel, A194848.P233984538952275691.f1, A194848.P233984538952275691.a, A194848.P4641627590667546157.a, A023533, A023533.P16553737014273247425.a, A056557, A056557.P17486820174551382648.a, A056559, A056559.P3524647608024188451.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194848

/-! ## A194848.P3827859466021925158

`A056558(n)+A056560(n)+1`
-/

namespace A194848.P3827859466021925158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + (A056560 n + 1)

end

end A194848.P3827859466021925158

namespace A194848

/-- `A056558(n)+A056560(n)+1` -/
def P3827859466021925158.Spec : Prop :=
  ∀ n, P3827859466021925158.a n = A194848 n

theorem P3827859466021925158.correct : P3827859466021925158.Spec := by
  intro n
  simp only [A194848, Nat.add_sub_cancel, A194848.P3827859466021925158.a, A194848.P4641627590667546157.a, A056557, A056557.P17486820174551382648.a, A056558, A056558.P9838016409462188239.a, A056560, A056560.P14693903049238240332.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194848

/-! ## A194848.P14138682999564877914

`A056556(n)+1-A056559(n)`
-/

namespace A194848.P14138682999564877914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + (1 - A056559 n)

end

end A194848.P14138682999564877914

namespace A194848

/-- `A056556(n)+1-A056559(n)` -/
def P14138682999564877914.Spec : Prop :=
  ∀ n, P14138682999564877914.a n = A194848 n

theorem P14138682999564877914.correct : P14138682999564877914.Spec := by
  intro n
  simp only [A194848, Nat.add_sub_cancel, A194848.P14138682999564877914.a, A194848.P4641627590667546157.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A056557, A056557.P17486820174551382648.a, A056559, A056559.P3524647608024188451.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194848

/-! ## A194848.P15777959804167077115

`A194847(n)-(A056559(n)+1)`
-/

namespace A194848.P15777959804167077115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 n - (A056559 n + 1)

end

end A194848.P15777959804167077115

namespace A194848

/-- `A194847(n)-(A056559(n)+1)` -/
def P15777959804167077115.Spec : Prop :=
  ∀ n, P15777959804167077115.a n = A194848 n

theorem P15777959804167077115.correct : P15777959804167077115.Spec := by
  intro n
  simp only [A194848, Nat.add_sub_cancel, A194848.P15777959804167077115.a, A194848.P4641627590667546157.a, A056557, A056557.P17486820174551382648.a, A056559, A056559.P3524647608024188451.a, A194847, A194847.P15779347047936523882.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194848

/-! ## A194848.P15305786098170671137

`A360010(n+1)-A056559(n)`
-/

namespace A194848.P15305786098170671137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1) - A056559 n

end

end A194848.P15305786098170671137

namespace A194848

/-- `A360010(n+1)-A056559(n)` -/
def P15305786098170671137.Spec : Prop :=
  ∀ n, P15305786098170671137.a n = A194848 n

theorem P15305786098170671137.correct : P15305786098170671137.Spec := by
  intro n
  simp only [A194848, Nat.add_sub_cancel, A194848.P15305786098170671137.a, A194848.P4641627590667546157.a, A056557, A056557.P17486820174551382648.a, A056559, A056559.P3524647608024188451.a, A360010, A360010.P17961547097730859062.a, A000292, A000292.P18322089543142633594.a, A003056, A003056.P5318256527314048597.a, A056556, A056556.P11335361665985267770.f1, A056556.P11335361665985267770.a, A023533, A023533.P16553737014273247425.a, A014306, A014306.P10618753585715922645.f2, A014306.P10618753585715922645.f1, A014306.P10618753585715922645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A194848

/-! ## A194848.P6265291772208498531

`A002260(∑[char[A111138(n+1)]])`
-/

namespace A194848.P6265291772208498531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194848.P6265291772208498531

namespace A194848

/-- `A002260(∑[char[A111138(n+1)]])` -/
def P6265291772208498531.Spec : Prop :=
  ∀ n, P6265291772208498531.a n = A194848 n

end A194848

/-! ## A194848.P18200849417864835673

`A056557(lt[1-A056558(n), 1])`
-/

namespace A194848.P18200849417864835673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056558 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A194848.P18200849417864835673

namespace A194848

/-- `A056557(lt[1-A056558(n), 1])` -/
def P18200849417864835673.Spec : Prop :=
  ∀ n, P18200849417864835673.a n = A194848 n

end A194848

/-! ## A194848.P4212863496485806205

`A056557(lt[1-A056560(n), 1])`
-/

namespace A194848.P4212863496485806205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056560 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A194848.P4212863496485806205

namespace A194848

/-- `A056557(lt[1-A056560(n), 1])` -/
def P4212863496485806205.Spec : Prop :=
  ∀ n, P4212863496485806205.a n = A194848 n

end A194848

/-! ## A194848.P13828918658482690822

`A056557(lt[1, 2*A056558(n)])`
-/

namespace A194848.P13828918658482690822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A194848.P13828918658482690822

namespace A194848

/-- `A056557(lt[1, 2*A056558(n)])` -/
def P13828918658482690822.Spec : Prop :=
  ∀ n, P13828918658482690822.a n = A194848 n

end A194848

/-! ## A194848.P5230950494227882498

`A056557(lt[A056558(n), A056557(n)])`
-/

namespace A194848.P5230950494227882498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194848.P5230950494227882498

namespace A194848

/-- `A056557(lt[A056558(n), A056557(n)])` -/
def P5230950494227882498.Spec : Prop :=
  ∀ n, P5230950494227882498.a n = A194848 n

end A194848

/-! ## A194848.P18203138597829844437

`A056557(lt[A056560(n), A056557(n)])`
-/

namespace A194848.P18203138597829844437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194848.P18203138597829844437

namespace A194848

/-- `A056557(lt[A056560(n), A056557(n)])` -/
def P18203138597829844437.Spec : Prop :=
  ∀ n, P18203138597829844437.a n = A194848 n

end A194848

/-! ## A194848.P15406286209977137253

`A002024(A332662(2*n)+1)`
-/

namespace A194848.P15406286209977137253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A332662 (2 * n) + 1).toNat

end

end A194848.P15406286209977137253

namespace A194848

/-- `A002024(A332662(2*n)+1)` -/
def P15406286209977137253.Spec : Prop :=
  ∀ n, P15406286209977137253.a n = A194848 n

end A194848

/-! ## A194848.P13053285388317725356

`A331195(3*n+1)+1`
-/

namespace A194848.P13053285388317725356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (3 * n + 1) + 1

end

end A194848.P13053285388317725356

namespace A194848

/-- `A331195(3*n+1)+1` -/
def P13053285388317725356.Spec : Prop :=
  ∀ n, P13053285388317725356.a n = A194848 n

end A194848

/-! ## A194848.P13295352937907191120

`A000005(2^A056557(n))`
-/

namespace A194848.P13295352937907191120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A056557 n : ℤ))).toNat

end

end A194848.P13295352937907191120

namespace A194848

/-- `A000005(2^A056557(n))` -/
def P13295352937907191120.Spec : Prop :=
  ∀ n, P13295352937907191120.a n = A194848 n

end A194848

/-! ## A194848.P8020994261128964080

`A000005(A261357(n)/A046816(n))`
-/

namespace A194848.P8020994261128964080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A261357 n : ℚ) / (A046816 n : ℚ))).toNat

end

end A194848.P8020994261128964080

namespace A194848

/-- `A000005(A261357(n)/A046816(n))` -/
def P8020994261128964080.Spec : Prop :=
  ∀ n, P8020994261128964080.a n = A194848 n

end A194848

/-! ## A194848.P8854263591104959190

`A002024(A124171(n+1))`
-/

namespace A194848.P8854263591104959190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A124171 (n + 1)).toNat

end

end A194848.P8854263591104959190

namespace A194848

/-- `A002024(A124171(n+1))` -/
def P8854263591104959190.Spec : Prop :=
  ∀ n, P8854263591104959190.a n = A194848 n

end A194848

/-! ## A194848.P7323028193592420816

`A001222(2*2^A056557(n))`
-/

namespace A194848.P7323028193592420816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A056557 n : ℤ))).toNat

end

end A194848.P7323028193592420816

namespace A194848

/-- `A001222(2*2^A056557(n))` -/
def P7323028193592420816.Spec : Prop :=
  ∀ n, P7323028193592420816.a n = A194848 n

end A194848

/-!
# A194849: Write n = C(i,3)+C(j,2)+C(k,1) with i>j>k>=0; let L[n] = [i,j,k]; sequence gives list of triples L[n], n >= 0.

The programs for A194849, there is no canonical definition to state claims against.
-/

/-! ## A194849.P2307492964179405882

`A331195(n)+2-n%3`
-/

namespace A194849.P2307492964179405882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 n + (2 - ((n % 3 : ℕ) : ℤ))

end

end A194849.P2307492964179405882

/-! ## A194849.P12772450554133853696

`A330350(A135600(n+2))`
-/

namespace A194849.P12772450554133853696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330350 (A135600 (n + 2)).toNat

end

end A194849.P12772450554133853696

/-! ## A194849.P18065348765983664596

`A330350(A000027(n+2)+99)`
-/

namespace A194849.P18065348765983664596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330350 (A000027 (n + 2) + 99).toNat

end

end A194849.P18065348765983664596

/-! ## A194849.P10770647896537424114

`A057078(n)+A331195(n)+1`
-/

namespace A194849.P10770647896537424114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n + (A331195 n + 1)

end

end A194849.P10770647896537424114

/-! ## A194849.P8081500304296572643

`A331195(n)+A080425(n+1)`
-/

namespace A194849.P8081500304296572643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 n + A080425 (n + 1)

end

end A194849.P8081500304296572643

/-! ## A194849.P4608551197142771091

`A331195(n)+A131026(2*n+1)`
-/

namespace A194849.P4608551197142771091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 n + A131026 (2 * n + 1)

end

end A194849.P4608551197142771091

/-! ## A194849.P2594684801630568008

`A360240(n+1)+A057078(n)`
-/

namespace A194849.P2594684801630568008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360240 (n + 1) + A057078 n

end

end A194849.P2594684801630568008

/-!
# A194850: Number of prefix normal words of length n.

The programs for A194850, there is no canonical definition to state claims against.
-/

/-! ## A194850.P12717349096830814190

`A261104(A024537(n+2)-A215936(n))`
-/

namespace A194850.P12717349096830814190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A024537 (n + 2) - A215936 n).toNat

end

end A194850.P12717349096830814190

/-! ## A194850.P16615674153736415746

`A004788(ceil(sqrt(A243039(n+1))))`
-/

namespace A194850.P16615674153736415746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 ⌈Real.sqrt (A243039 (n + 1) : ℝ)⌉.toNat

end

end A194850.P16615674153736415746

/-! ## A194850.P2984591020928063965

`A004788(round(sqrt(A243039(n+1))))`
-/

namespace A194850.P2984591020928063965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (SequenceMachineLib.roundAway (Real.sqrt (A243039 (n + 1) : ℝ))).toNat

end

end A194850.P2984591020928063965

/-! ## A194850.P12212778916827092053

`∑[A052414(A057574(n))+1]+1`
-/

namespace A194850.P12212778916827092053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (A057574 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194850.P12212778916827092053

/-! ## A194850.P2074731283276767057

`A003056(A001405(n)*A097280(n))`
-/

namespace A194850.P2074731283276767057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001405 n * A097280 n).toNat

end

end A194850.P2074731283276767057

/-!
# A194851: List of the 14 blocks in the Reed-Muller version of the Steiner System S(3,4,8) written as decimal numbers.

The programs for A194851, there is no canonical definition to state claims against.
-/

/-! ## A194851.P14801463680999692376

`A075928(n+1)`
-/

namespace A194851.P14801463680999692376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 (n + 1)

end

end A194851.P14801463680999692376

/-! ## A194851.P5658394872242740834

`∑[abs(Δ[A075928(n)])]`
-/

namespace A194851.P5658394872242740834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194851.P5658394872242740834

/-! ## A194851.P2714254742764868772

`record[A075928(abs(1-n))]`
-/

namespace A194851.P2714254742764868772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194851.P2714254742764868772

/-! ## A194851.P15631956272985635038

`lt[2, gcd(n, A207676(n))]`
-/

namespace A194851.P15631956272985635038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A207676 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194851.P15631956272985635038

/-! ## A194851.P14702446848533783171

`eq[0, A207676(n+2)]+2`
-/

namespace A194851.P14702446848533783171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207676 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A194851.P14702446848533783171

/-!
# A194852: Number of primes in the interval [ sqrt(n^3) , sqrt((n+1)^3) ].

The programs for A194852, there is no canonical definition to state claims against.
-/

/-! ## A194852.P1214732180582493331

`Δ[A000720(floor((n+1)^(3/2)))]`
-/

namespace A194852.P1214732180582493331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(n + 1 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194852.P1214732180582493331

/-! ## A194852.P10932799660488926391

`Δ[A230980(floor((n+1)*sqrt(n+1)))]`
-/

namespace A194852.P10932799660488926391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(n + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194852.P10932799660488926391

/-! ## A194852.P8642775107093492378

`Δ[A036234(A000093(n+1))]`
-/

namespace A194852.P8642775107093492378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A000093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194852.P8642775107093492378

/-! ## A194852.P8340613158671563924

`Δ[A055679(A135061(n+1))]`
-/

namespace A194852.P8340613158671563924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A135061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194852.P8340613158671563924

/-! ## A194852.P17927061772097370886

`Δ[A000720(A000093(n+1))]%A000041(n+2)`
-/

namespace A194852.P17927061772097370886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 (n + 2))

end

end A194852.P17927061772097370886

/-! ## A194852.P6908280825621519896

`Δ[A000720(A000093(n+1))+A020639(2*(n+1))]`
-/

namespace A194852.P6908280825621519896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000093 (n + 1)).toNat + A020639 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194852.P6908280825621519896

/-! ## A194852.P4658896749575003194

`A014963(60*(n+1))*Δ[A000720(A000093(n+1))]`
-/

namespace A194852.P4658896749575003194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (60 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A194852.P4658896749575003194

/-!
# A194855: Numbers n such that phi(n) divides Sum_{k=1..n} phi(k).

The programs for A194855, there is no canonical definition to state claims against.
-/

/-! ## A194855.P12980603669273540527

`record[gcd(n+1, A002088(n)%A000010(n+1))]`
-/

namespace A194855.P12980603669273540527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A002088 n) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194855.P12980603669273540527

/-! ## A194855.P13325632532531100968

`eq[1, A002088(n+1)%A000010(n+1)+1]+1`
-/

namespace A194855.P13325632532531100968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002088 (n + 1)) (A000010 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194855.P13325632532531100968

/-! ## A194855.P3213235793767438858

`eq[A002088(n)%A225530(n), A010057(n)]`
-/

namespace A194855.P3213235793767438858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002088 n) (A225530 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194855.P3213235793767438858

/-!
# A194856: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-sqrt(5).

The programs for A194856, there is no canonical definition to state claims against.
-/

/-! ## A194856.P7875096488013706230

`A002260(A194858(n+1))`
-/

namespace A194856.P7875096488013706230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194858 (n + 1)).toNat

end

end A194856.P7875096488013706230

/-! ## A194856.P11139403313289526173

`A194858(n+1)-A057944(n)`
-/

namespace A194856.P11139403313289526173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194858 (n + 1) - A057944 n

end

end A194856.P11139403313289526173

/-! ## A194856.P17693111673457805638

`A194832(n+1)+A194858(n+1)-A194834(n+1)`
-/

namespace A194856.P17693111673457805638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194858 (n + 1) - A194834 (n + 1))

end

end A194856.P17693111673457805638

/-! ## A194856.P8596509647288839735

`A194844(∑[char[∑[n]]]²-n)`
-/

namespace A194856.P8596509647288839735
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194856.P8596509647288839735

/-! ## A194856.P14560740668624977615

`gcd(A000038(n), A194844(A038722(n+1)))`
-/

namespace A194856.P14560740668624977615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194844 (A038722 (n + 1)).toNat)

end

end A194856.P14560740668624977615

/-! ## A194856.P16883378118785472219

`lcm(A033999(n), A194844(A038722(n+1)))`
-/

namespace A194856.P16883378118785472219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194844 (A038722 (n + 1)).toNat)

end

end A194856.P16883378118785472219

/-! ## A194856.P12711437897931715497

`or(A000007(n), A194844(A038722(n+1)))`
-/

namespace A194856.P12711437897931715497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194844 (A038722 (n + 1)).toNat)

end

end A194856.P12711437897931715497

/-! ## A194856.P5186246825954926074

`∑{d}[A194844(A038722(n+1)), A000010(#)]`
-/

namespace A194856.P5186246825954926074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194856.P5186246825954926074

/-! ## A194856.P5070046985708488827

`A194844(A038722(n+1))+A008683(9*(n+1))`
-/

namespace A194856.P5070046985708488827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (A038722 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A194856.P5070046985708488827

/-!
# A194857: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194856; an interspersion.

The programs for A194857, there is no canonical definition to state claims against.
-/

/-! ## A194857.P18241908047919352171

`∑[char[∑[n]]]²+1-A194845(n+1)`
-/

namespace A194857.P18241908047919352171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194845 (n + 1))

end

end A194857.P18241908047919352171

/-! ## A194857.P17256634026810320187

`A038722(A194845(n+1))`
-/

namespace A194857.P17256634026810320187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194845 (n + 1)).toNat

end

end A194857.P17256634026810320187

/-! ## A194857.P15410802759654722676

`A265129(n+1)-A194845(n+1)`
-/

namespace A194857.P15410802759654722676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194845 (n + 1)

end

end A194857.P15410802759654722676

/-! ## A194857.P17387849552216682263

`A093995(n+1)+1-A194845(n+1)`
-/

namespace A194857.P17387849552216682263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194845 (n + 1)

end

end A194857.P17387849552216682263

/-! ## A194857.P6710301700925106859

`A002024(n+1)²-(A194845(n+1)-1)`
-/

namespace A194857.P6710301700925106859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - (A194845 (n + 1) - 1)

end

end A194857.P6710301700925106859

/-! ## A194857.P13921669371286013568

`A002522(A002024(n+1))-A194845(n+1)`
-/

namespace A194857.P13921669371286013568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194845 (n + 1)

end

end A194857.P13921669371286013568

/-! ## A194857.P15009658128588942928

`A168038(n+1)-(A194845(n+1)-1)`
-/

namespace A194857.P15009658128588942928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (n + 1) - (A194845 (n + 1) - 1)

end

end A194857.P15009658128588942928

/-! ## A194857.P10146611176442986961

`A123578(n+1)²-(A194845(n+1)-1)`
-/

namespace A194857.P10146611176442986961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) ^ 2 - (A194845 (n + 1) - 1)

end

end A194857.P10146611176442986961

/-! ## A194857.P3747426146991644227

`A061579(A194845(n+1)-1)+1`
-/

namespace A194857.P3747426146991644227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194845 (n + 1) - 1).toNat + 1

end

end A194857.P3747426146991644227

/-! ## A194857.P6708272089248291217

`A093995(n+1)+A024000(A194845(n+1))`
-/

namespace A194857.P6708272089248291217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194845 (n + 1)).toNat

end

end A194857.P6708272089248291217

/-!
# A194858: Inverse permutation to A194857; every positive integer occurs exactly once.

The programs for A194858, there is no canonical definition to state claims against.
-/

/-! ## A194858.P11339973202684708221

`A194856(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194858.P11339973202684708221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194858.P11339973202684708221

/-! ## A194858.P10854720151074680254

`A194856(n+1)+A057944(n)`
-/

namespace A194858.P10854720151074680254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + A057944 n

end

end A194858.P10854720151074680254

/-! ## A194858.P9514231822224513238

`A194856(n+1)+n-A002262(n)`
-/

namespace A194858.P9514231822224513238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194858.P9514231822224513238

/-! ## A194858.P5120991332442266582

`A194856(n+1)-A002260(n+1)+n+1`
-/

namespace A194858.P5120991332442266582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) - A002260 (n + 1) + (n : ℤ) + 1

end

end A194858.P5120991332442266582

/-! ## A194858.P11857678671640900381

`A194856(n+1)+A000217(A003056(n))`
-/

namespace A194858.P11857678671640900381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + A000217 (A003056 n).toNat

end

end A194858.P11857678671640900381

/-! ## A194858.P12214586557074767994

`A194856(n+1)+A001971(A131507(n))`
-/

namespace A194858.P12214586557074767994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + A001971 (A131507 n).toNat

end

end A194858.P12214586557074767994

/-! ## A194858.P4033158256012775555

`A194856(n+1)+A161680(A002024(n+1))`
-/

namespace A194858.P4033158256012775555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194858.P4033158256012775555

/-! ## A194858.P12764024761588914442

`A054068(n+1)+A194856(n+1)-A054065(n+1)`
-/

namespace A194858.P12764024761588914442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A194856 (n + 1) - A054065 (n + 1))

end

end A194858.P12764024761588914442

/-! ## A194858.P1534834497403107491

`A194834(n+1)+A194856(n+1)-A194832(n+1)`
-/

namespace A194858.P1534834497403107491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194856 (n + 1) - A194832 (n + 1))

end

end A194858.P1534834497403107491

/-! ## A194858.P4159167724837522484

`A194846(A038722(n+1))`
-/

namespace A194858.P4159167724837522484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (A038722 (n + 1)).toNat

end

end A194858.P4159167724837522484

/-! ## A194858.P1781463832026172601

`A194844(∑[char[∑[n]]]²-n)+A057944(n)`
-/

namespace A194858.P1781463832026172601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + A057944 n

end

end A194858.P1781463832026172601

/-! ## A194858.P604452957857867372

`A194846(A194872(A194876(n+1)))`
-/

namespace A194858.P604452957857867372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (A194872 (A194876 (n + 1)).toNat).toNat

end

end A194858.P604452957857867372

/-! ## A194858.P17568704010769721497

`A238952(A137688(n))+A194856(n+1)`
-/

namespace A194858.P17568704010769721497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A137688 n).toNat + A194856 (n + 1)

end

end A194858.P17568704010769721497

/-!
# A194859: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {e}, {2e}, ..., {ne}.

The programs for A194859, there is no canonical definition to state claims against.
-/

/-! ## A194859.P15997588072961980757

`A002260(A194861(n+1))`
-/

namespace A194859.P15997588072961980757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194861 (n + 1)).toNat

end

end A194859.P15997588072961980757

/-! ## A194859.P16454113478444193136

`A194861(n+1)-A057944(n)`
-/

namespace A194859.P16454113478444193136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194861 (n + 1) - A057944 n

end

end A194859.P16454113478444193136

/-! ## A194859.P3086754765149387604

`A194832(n+1)+A194861(n+1)-A194834(n+1)`
-/

namespace A194859.P3086754765149387604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194861 (n + 1) - A194834 (n + 1))

end

end A194859.P3086754765149387604

/-! ## A194859.P13734972197721927306

`A194865(∑[char[∑[n]]]²-n)`
-/

namespace A194859.P13734972197721927306
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194859.P13734972197721927306

/-! ## A194859.P3827876059471061463

`A194865(∑[2*n]%comp[∑[n]]+1)%(n+2)`
-/

namespace A194859.P3827876059471061463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194865 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)) (n + 2 : ℤ)

end

end A194859.P3827876059471061463

/-! ## A194859.P2665125726608428000

`∑{d}[A194865(A038722(n+1)), A000010(#)]`
-/

namespace A194859.P2665125726608428000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194859.P2665125726608428000

/-! ## A194859.P15366040784004608997

`A007318(and(1, -n))*A194865(A061579(n)+1)`
-/

namespace A194859.P15366040784004608997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A194865 (A061579 n + 1).toNat

end

end A194859.P15366040784004608997

/-! ## A194859.P2594324397437537720

`A194865(A038722(n+1))/A000041(C(n, n²))`
-/

namespace A194859.P2594324397437537720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194865 (A038722 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose n (n ^ 2)) : ℚ)

end

end A194859.P2594324397437537720

/-! ## A194859.P15961797822265479732

`A194865(A038722(n+1))^A007318(C(n, n²))`
-/

namespace A194859.P15961797822265479732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194865 (A038722 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose n (n ^ 2)) : ℤ)

end

end A194859.P15961797822265479732

/-!
# A194860: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194859; an interspersion.

The programs for A194860, there is no canonical definition to state claims against.
-/

/-! ## A194860.P2799452326424202294

`∑[char[∑[n]]]²+1-A194866(n+1)`
-/

namespace A194860.P2799452326424202294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194866 (n + 1))

end

end A194860.P2799452326424202294

/-! ## A194860.P3210859289973010978

`A038722(A194866(n+1))`
-/

namespace A194860.P3210859289973010978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194866 (n + 1)).toNat

end

end A194860.P3210859289973010978

/-! ## A194860.P16486345344537177543

`A265129(n+1)-A194866(n+1)`
-/

namespace A194860.P16486345344537177543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194866 (n + 1)

end

end A194860.P16486345344537177543

/-! ## A194860.P13676362615866908969

`A093995(n+1)+1-A194866(n+1)`
-/

namespace A194860.P13676362615866908969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194866 (n + 1)

end

end A194860.P13676362615866908969

/-! ## A194860.P9233546065056521575

`A061579(A194866(n+1)-1)+1`
-/

namespace A194860.P9233546065056521575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194866 (n + 1) - 1).toNat + 1

end

end A194860.P9233546065056521575

/-! ## A194860.P12242334938535524178

`A057944(n)+A004736(A194866(n+1))`
-/

namespace A194860.P12242334938535524178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194866 (n + 1)).toNat

end

end A194860.P12242334938535524178

/-! ## A194860.P6450008893815825534

`A093995(n+1)-A023443(A194866(n+1))`
-/

namespace A194860.P6450008893815825534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194866 (n + 1)).toNat

end

end A194860.P6450008893815825534

/-!
# A194861: Inverse permutation to A194860; every positive integer occurs exactly once.

The programs for A194861, there is no canonical definition to state claims against.
-/

/-! ## A194861.P3418467342528560616

`A194859(n+1)+A057944(n)`
-/

namespace A194861.P3418467342528560616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + A057944 n

end

end A194861.P3418467342528560616

/-! ## A194861.P5951856018162376461

`A194859(n+1)+n-A002262(n)`
-/

namespace A194861.P5951856018162376461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194861.P5951856018162376461

/-! ## A194861.P11264813452076069963

`A194859(n+1)+A061885(n)-n`
-/

namespace A194861.P11264813452076069963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + (A061885 n - (n : ℤ))

end

end A194861.P11264813452076069963

/-! ## A194861.P16305882865595886517

`A194859(n+1)+n-log2(A059268(n))`
-/

namespace A194861.P16305882865595886517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194859 (n + 1) : ℝ) + ((n : ℝ) - Real.logb 2 (A059268 n : ℝ))

end

end A194861.P16305882865595886517

/-! ## A194861.P4561820417805847410

`A194859(n+1)+C(A002024(n+1), 2)`
-/

namespace A194861.P4561820417805847410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + (Nat.choose (A002024 (n + 1)).toNat 2 : ℤ)

end

end A194861.P4561820417805847410

/-! ## A194861.P16400707789573902051

`A194859(n+1)+n+1-A002260(n+1)`
-/

namespace A194861.P16400707789573902051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194861.P16400707789573902051

/-! ## A194861.P11010209149213237305

`A194859(n+1)+A004201(n+1)-1-n`
-/

namespace A194861.P11010209149213237305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + (A004201 (n + 1) - 1) - (n : ℤ)

end

end A194861.P11010209149213237305

/-! ## A194861.P5881128701480787989

`A194859(n+1)+A000217(A003056(n))`
-/

namespace A194861.P5881128701480787989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + A000217 (A003056 n).toNat

end

end A194861.P5881128701480787989

/-! ## A194861.P16509037308395008476

`A194834(n+1)+A194859(n+1)-A194832(n+1)`
-/

namespace A194861.P16509037308395008476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194859 (n + 1) - A194832 (n + 1))

end

end A194861.P16509037308395008476

/-! ## A194861.P17920889118436567384

`A194864(A194909(A194907(n+1)))`
-/

namespace A194861.P17920889118436567384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194864 (A194909 (A194907 (n + 1)).toNat).toNat

end

end A194861.P17920889118436567384

/-! ## A194861.P6013612945628119606

`A194864(A194906(A194910(n+1)))`
-/

namespace A194861.P6013612945628119606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194864 (A194906 (A194910 (n + 1)).toNat).toNat

end

end A194861.P6013612945628119606

/-! ## A194861.P5528825062572975811

`A194865(A038722(n+1))+A057944(n)`
-/

namespace A194861.P5528825062572975811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (A038722 (n + 1)).toNat + A057944 n

end

end A194861.P5528825062572975811

/-!
# A194862: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=(1+sqrt(3))/2.

The programs for A194862, there is no canonical definition to state claims against.
-/

/-! ## A194862.P12843403698721555943

`A002260(A194867(n+1))`
-/

namespace A194862.P12843403698721555943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194867 (n + 1)).toNat

end

end A194862.P12843403698721555943

/-! ## A194862.P507926475182524168

`A194867(n+1)-A057944(n)`
-/

namespace A194862.P507926475182524168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194867 (n + 1) - A057944 n

end

end A194862.P507926475182524168

/-! ## A194862.P5293499002403856639

`A194832(n+1)+A194867(n+1)-A194834(n+1)`
-/

namespace A194862.P5293499002403856639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194867 (n + 1) - A194834 (n + 1))

end

end A194862.P5293499002403856639

/-! ## A194862.P15992144993043557695

`A194835(n+1)+A194867(n+1)-A194837(n+1)`
-/

namespace A194862.P15992144993043557695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194835 (n + 1) + (A194867 (n + 1) - A194837 (n + 1))

end

end A194862.P15992144993043557695

/-! ## A194862.P5465574371636861690

`A194867(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A194862.P5465574371636861690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194867 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A194862.P5465574371636861690

/-! ## A194862.P17625137838170067207

`A194868(∑[char[∑[n]]]²-n)`
-/

namespace A194862.P17625137838170067207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194862.P17625137838170067207

/-! ## A194862.P4374966430107075007

`A194868(A038722(char[2]+1+n))-char[2]`
-/

namespace A194862.P4374966430107075007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (A038722 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194862.P4374966430107075007

/-! ## A194862.P12204561228862316873

`gcd(A000038(n), A194868(A038722(n+1)))`
-/

namespace A194862.P12204561228862316873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194868 (A038722 (n + 1)).toNat)

end

end A194862.P12204561228862316873

/-! ## A194862.P15403662364862254135

`or(A000007(n), A194868(A038722(n+1)))`
-/

namespace A194862.P15403662364862254135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194868 (A038722 (n + 1)).toNat)

end

end A194862.P15403662364862254135

/-! ## A194862.P17046357938023642615

`∑{d}[A194868(A038722(n+1)), A000010(#)]`
-/

namespace A194862.P17046357938023642615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194862.P17046357938023642615

/-! ## A194862.P18434235054654055149

`∏{d}[A194868(A038722(n+1)), A014963(#)]`
-/

namespace A194862.P18434235054654055149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A194862.P18434235054654055149

/-! ## A194862.P3254234549759809771

`A194868(A038722(n+1))/∑{e}[A000040(n+1), #]`
-/

namespace A194862.P3254234549759809771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194868 (A038722 (n + 1)).toNat : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A194862.P3254234549759809771

/-! ## A194862.P7141200796960371920

`gcd(n, A006530(n+1))²*A194868(A038722(n+1))`
-/

namespace A194862.P7141200796960371920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A006530 (n + 1)) ^ 2 : ℤ) * A194868 (A038722 (n + 1)).toNat

end

end A194862.P7141200796960371920

/-!
# A194863: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194862; an interspersion.

The programs for A194863, there is no canonical definition to state claims against.
-/

/-! ## A194863.P1275341161052046772

`∑[char[∑[n]]]²+1-A194869(n+1)`
-/

namespace A194863.P1275341161052046772
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194869 (n + 1))

end

end A194863.P1275341161052046772

/-! ## A194863.P3377352346586966489

`A038722(A194869(n+1))`
-/

namespace A194863.P3377352346586966489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194869 (n + 1)).toNat

end

end A194863.P3377352346586966489

/-! ## A194863.P18389208448290264490

`A265129(n+1)-A194869(n+1)`
-/

namespace A194863.P18389208448290264490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194869 (n + 1)

end

end A194863.P18389208448290264490

/-! ## A194863.P12994010043885328609

`A093995(n+1)+1-A194869(n+1)`
-/

namespace A194863.P12994010043885328609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194869 (n + 1)

end

end A194863.P12994010043885328609

/-! ## A194863.P7228133815342809936

`A185869(n+1)-(A194869(n+1)+2*n)`
-/

namespace A194863.P7228133815342809936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1) - (A194869 (n + 1) + (2 * n : ℤ))

end

end A194863.P7228133815342809936

/-! ## A194863.P13580735135939873206

`A061579(A194869(n+1)-1)+1`
-/

namespace A194863.P13580735135939873206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194869 (n + 1) - 1).toNat + 1

end

end A194863.P13580735135939873206

/-! ## A194863.P10592275265438451945

`A057944(n)+A004736(A194869(n+1))`
-/

namespace A194863.P10592275265438451945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194869 (n + 1)).toNat

end

end A194863.P10592275265438451945

/-! ## A194863.P12225545244586545979

`A093995(n+1)-A023443(A194869(n+1))`
-/

namespace A194863.P12225545244586545979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194869 (n + 1)).toNat

end

end A194863.P12225545244586545979

/-! ## A194863.P7362733386260438811

`A055396(p?[A091265(A194869(n+1))])`
-/

namespace A194863.P7362733386260438811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091265 (A194869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A194863.P7362733386260438811

/-!
# A194864: Inverse permutation of A194866; every positive integer occurs exactly once.

The programs for A194864, there is no canonical definition to state claims against.
-/

/-! ## A194864.P15655608419262967353

`A194865(n+1)+A057944(n)`
-/

namespace A194864.P15655608419262967353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + A057944 n

end

end A194864.P15655608419262967353

/-! ## A194864.P9547220869144435961

`A194865(n+1)+n-A002262(n)`
-/

namespace A194864.P9547220869144435961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194864.P9547220869144435961

/-! ## A194864.P10135400798679408904

`A194865(n+1)+A061885(n)-n`
-/

namespace A194864.P10135400798679408904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + (A061885 n - (n : ℤ))

end

end A194864.P10135400798679408904

/-! ## A194864.P4620383669398474921

`A194865(n+1)+n-log2(A059268(n))`
-/

namespace A194864.P4620383669398474921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194865 (n + 1) : ℝ) + ((n : ℝ) - Real.logb 2 (A059268 n : ℝ))

end

end A194864.P4620383669398474921

/-! ## A194864.P13357690283305331728

`A194865(n+1)+C(A002024(n+1), 2)`
-/

namespace A194864.P13357690283305331728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + (Nat.choose (A002024 (n + 1)).toNat 2 : ℤ)

end

end A194864.P13357690283305331728

/-! ## A194864.P2184709637109048017

`A194865(n+1)+1+n-A002260(n+1)`
-/

namespace A194864.P2184709637109048017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + 1 + (n : ℤ) - A002260 (n + 1)

end

end A194864.P2184709637109048017

/-! ## A194864.P13197992910559465979

`A194865(n+1)+A004201(n+1)-1-n`
-/

namespace A194864.P13197992910559465979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + (A004201 (n + 1) - 1) - (n : ℤ)

end

end A194864.P13197992910559465979

/-! ## A194864.P7932731872801795175

`A194865(n+1)+A000217(A003056(n))`
-/

namespace A194864.P7932731872801795175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + A000217 (A003056 n).toNat

end

end A194864.P7932731872801795175

/-! ## A194864.P13767419686139304273

`A054076(n+1)+A194865(n+1)-A054073(n+1)`
-/

namespace A194864.P13767419686139304273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194865 (n + 1) - A054073 (n + 1))

end

end A194864.P13767419686139304273

/-! ## A194864.P331322177586545110

`A194834(n+1)+A194865(n+1)-A194832(n+1)`
-/

namespace A194864.P331322177586545110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194865 (n + 1) - A194832 (n + 1))

end

end A194864.P331322177586545110

/-! ## A194864.P14487998912049651201

`A194865(n+1)+A194907(n+1)-A194905(n+1)`
-/

namespace A194864.P14487998912049651201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + (A194907 (n + 1) - A194905 (n + 1))

end

end A194864.P14487998912049651201

/-! ## A194864.P7474019450065305043

`A194865(n+1)+A194913(n+1)-A194911(n+1)`
-/

namespace A194864.P7474019450065305043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1) + (A194913 (n + 1) - A194911 (n + 1))

end

end A194864.P7474019450065305043

/-! ## A194864.P4989091206210596242

`A194861(A194866(A194861(n+1)))`
-/

namespace A194864.P4989091206210596242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194861 (A194866 (A194861 (n + 1)).toNat).toNat

end

end A194864.P4989091206210596242

/-! ## A194864.P1293673040490433141

`A194861(A194872(A194876(n+1)))`
-/

namespace A194864.P1293673040490433141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194861 (A194872 (A194876 (n + 1)).toNat).toNat

end

end A194864.P1293673040490433141

/-! ## A194864.P5334221024639203683

`A194859(A038722(n+1))+A057944(n)`
-/

namespace A194864.P5334221024639203683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (A038722 (n + 1)).toNat + A057944 n

end

end A194864.P5334221024639203683

/-!
# A194865: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {-e}, {-2e}, ..., {-ne}.

The programs for A194865, there is no canonical definition to state claims against.
-/

/-! ## A194865.P1815150538015734233

`A002260(A194864(n+1))`
-/

namespace A194865.P1815150538015734233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194864 (n + 1)).toNat

end

end A194865.P1815150538015734233

/-! ## A194865.P12460727241440734502

`A194864(n+1)-A057944(n)`
-/

namespace A194865.P12460727241440734502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194864 (n + 1) - A057944 n

end

end A194865.P12460727241440734502

/-! ## A194865.P15719452158916365576

`A194859(∑[char[∑[n]]]²-n)`
-/

namespace A194865.P15719452158916365576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194865.P15719452158916365576

/-! ## A194865.P8736599870739226857

`A194859(∑[2*n]%comp[∑[n]]+1)%(n+2)`
-/

namespace A194865.P8736599870739226857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194859 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)) (n + 2 : ℤ)

end

end A194865.P8736599870739226857

/-! ## A194865.P8361281207913465643

`∑{d}[A194859(A061579(n)+1), A000010(#)]`
-/

namespace A194865.P8361281207913465643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194865.P8361281207913465643

/-! ## A194865.P13543648429571345457

`A007318(C(2, n))*A194859(A038722(n+1))`
-/

namespace A194865.P13543648429571345457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194859 (A038722 (n + 1)).toNat

end

end A194865.P13543648429571345457

/-! ## A194865.P3176573609650672406

`A000041(and(1, n-1))*A194859(A038722(n+1))`
-/

namespace A194865.P3176573609650672406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 ((n : ℤ) - 1)).toNat * A194859 (A038722 (n + 1)).toNat

end

end A194865.P3176573609650672406

/-! ## A194865.P10028471904226102994

`A194859(A038722(n+1))-A020639(2*(n+1))+2`
-/

namespace A194865.P10028471904226102994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (A038722 (n + 1)).toNat - A020639 (2 * (n + 1)) + 2

end

end A194865.P10028471904226102994

/-! ## A194865.P14249684151726911191

`and(1, A000041(n))!*A194859(A038722(n+1))`
-/

namespace A194865.P14249684151726911191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A194859 (A038722 (n + 1)).toNat

end

end A194865.P14249684151726911191

/-!
# A194866: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194865; an interspersion.

The programs for A194866, there is no canonical definition to state claims against.
-/

/-! ## A194866.P5228827649745592539

`∑[char[∑[n]]]²+1-A194860(n+1)`
-/

namespace A194866.P5228827649745592539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194860 (n + 1))

end

end A194866.P5228827649745592539

/-! ## A194866.P7701853235302635734

`A038722(A194860(n+1))`
-/

namespace A194866.P7701853235302635734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194860 (n + 1)).toNat

end

end A194866.P7701853235302635734

/-! ## A194866.P9100970393945342036

`A265129(n+1)-A194860(n+1)`
-/

namespace A194866.P9100970393945342036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194860 (n + 1)

end

end A194866.P9100970393945342036

/-! ## A194866.P10729059180498109843

`∑[A198954(n)]+1-A194860(n+1)`
-/

namespace A194866.P10729059180498109843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A194860 (n + 1)

end

end A194866.P10729059180498109843

/-! ## A194866.P4642505134972061044

`A002522(A002024(n+1))-A194860(n+1)`
-/

namespace A194866.P4642505134972061044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194860 (n + 1)

end

end A194866.P4642505134972061044

/-! ## A194866.P10211409256551139574

`A061579(A194860(n+1)-1)+1`
-/

namespace A194866.P10211409256551139574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194860 (n + 1) - 1).toNat + 1

end

end A194866.P10211409256551139574

/-! ## A194866.P17948693643722206444

`A057944(n)+A004736(A194860(n+1))`
-/

namespace A194866.P17948693643722206444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194860 (n + 1)).toNat

end

end A194866.P17948693643722206444

/-! ## A194866.P14635078851781389882

`A093995(n+1)-A023443(A194860(n+1))`
-/

namespace A194866.P14635078851781389882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194860 (n + 1)).toNat

end

end A194866.P14635078851781389882

/-!
# A194867: Inverse permutation of A194863; every positive integer occurs exactly once.

The programs for A194867, there is no canonical definition to state claims against.
-/

/-! ## A194867.P8459799983213170524

`A194862(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194867.P8459799983213170524
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194867.P8459799983213170524

/-! ## A194867.P10186787353875506917

`A194862(n+1)+A057944(n)`
-/

namespace A194867.P10186787353875506917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + A057944 n

end

end A194867.P10186787353875506917

/-! ## A194867.P14328176423348773442

`A194862(n+1)+n-A002262(n)`
-/

namespace A194867.P14328176423348773442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194867.P14328176423348773442

/-! ## A194867.P7029449309181098832

`A194862(n+1)+A061885(n)-n`
-/

namespace A194867.P7029449309181098832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + (A061885 n - (n : ℤ))

end

end A194867.P7029449309181098832

/-! ## A194867.P13950954883722076366

`A194862(n+1)+n+1-A002260(n+1)`
-/

namespace A194867.P13950954883722076366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194867.P13950954883722076366

/-! ## A194867.P8850585181272462254

`A194862(n+1)+A000217(A003056(n))`
-/

namespace A194867.P8850585181272462254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + A000217 (A003056 n).toNat

end

end A194867.P8850585181272462254

/-! ## A194867.P3618953946900375503

`A194862(n+1)+A001971(A131507(n))`
-/

namespace A194867.P3618953946900375503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (n + 1) + A001971 (A131507 n).toNat

end

end A194867.P3618953946900375503

/-! ## A194867.P9709213573531857363

`A194834(n+1)+A194862(n+1)-A194832(n+1)`
-/

namespace A194867.P9709213573531857363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194862 (n + 1) - A194832 (n + 1))

end

end A194867.P9709213573531857363

/-! ## A194867.P3717590779653496504

`A194870(A038722(n+1))`
-/

namespace A194867.P3717590779653496504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (A038722 (n + 1)).toNat

end

end A194867.P3717590779653496504

/-! ## A194867.P11759022033200089952

`A194870(A194872(A194876(n+1)))`
-/

namespace A194867.P11759022033200089952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (A194872 (A194876 (n + 1)).toNat).toNat

end

end A194867.P11759022033200089952

/-! ## A194867.P2500790565893582124

`A194868(A038722(n+1))+A057944(n)`
-/

namespace A194867.P2500790565893582124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (A038722 (n + 1)).toNat + A057944 n

end

end A194867.P2500790565893582124

/-! ## A194867.P3784333842356746350

`A238952(A137688(n))+A194862(n+1)`
-/

namespace A194867.P3784333842356746350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A137688 n).toNat + A194862 (n + 1)

end

end A194867.P3784333842356746350

/-!
# A194868: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-(1+sqrt(3))/2.

The programs for A194868, there is no canonical definition to state claims against.
-/

/-! ## A194868.P7524364913371671704

`A002260(A194870(n+1))`
-/

namespace A194868.P7524364913371671704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194870 (n + 1)).toNat

end

end A194868.P7524364913371671704

/-! ## A194868.P15253070498765427253

`A194870(n+1)-A057944(n)`
-/

namespace A194868.P15253070498765427253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) - A057944 n

end

end A194868.P15253070498765427253

/-! ## A194868.P12911981515856911455

`A054073(n+1)+A194870(n+1)-A054076(n+1)`
-/

namespace A194868.P12911981515856911455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (n + 1) + (A194870 (n + 1) - A054076 (n + 1))

end

end A194868.P12911981515856911455

/-! ## A194868.P17594344439811626482

`A194832(n+1)+A194870(n+1)-A194834(n+1)`
-/

namespace A194868.P17594344439811626482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194870 (n + 1) - A194834 (n + 1))

end

end A194868.P17594344439811626482

/-! ## A194868.P5578548812464452589

`A194844(n+1)+A194870(n+1)-A194846(n+1)`
-/

namespace A194868.P5578548812464452589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + (A194870 (n + 1) - A194846 (n + 1))

end

end A194868.P5578548812464452589

/-! ## A194868.P3700050476226558737

`A194856(n+1)+A194870(n+1)-A194858(n+1)`
-/

namespace A194868.P3700050476226558737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + (A194870 (n + 1) - A194858 (n + 1))

end

end A194868.P3700050476226558737

/-! ## A194868.P5801752828204390837

`A194859(n+1)+A194870(n+1)-A194861(n+1)`
-/

namespace A194868.P5801752828204390837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + (A194870 (n + 1) - A194861 (n + 1))

end

end A194868.P5801752828204390837

/-! ## A194868.P3152514011577738717

`A194870(n+1)+A194871(n+1)-A194873(n+1)`
-/

namespace A194868.P3152514011577738717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194871 (n + 1) - A194873 (n + 1))

end

end A194868.P3152514011577738717

/-! ## A194868.P5689656575814362705

`A194870(n+1)+A194896(n+1)-A194898(n+1)`
-/

namespace A194868.P5689656575814362705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194896 (n + 1) - A194898 (n + 1))

end

end A194868.P5689656575814362705

/-! ## A194868.P8678221841486717025

`A194870(n+1)+A194899(n+1)-A194901(n+1)`
-/

namespace A194868.P8678221841486717025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194899 (n + 1) - A194901 (n + 1))

end

end A194868.P8678221841486717025

/-! ## A194868.P5421144579036208001

`A194870(n+1)+A194902(n+1)-A194904(n+1)`
-/

namespace A194868.P5421144579036208001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194902 (n + 1) - A194904 (n + 1))

end

end A194868.P5421144579036208001

/-! ## A194868.P13658939698938852907

`A194870(n+1)+A194905(n+1)-A194907(n+1)`
-/

namespace A194868.P13658939698938852907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194905 (n + 1) - A194907 (n + 1))

end

end A194868.P13658939698938852907

/-! ## A194868.P16292042774966409262

`A194870(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A194868.P16292042774966409262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A194868.P16292042774966409262

/-! ## A194868.P13390915317922812549

`A194862(∑[char[∑[n]]]²-n)`
-/

namespace A194868.P13390915317922812549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194868.P13390915317922812549

/-! ## A194868.P4977776464507684730

`or(A000007(n), A194862(A038722(n+1)))`
-/

namespace A194868.P4977776464507684730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194862 (A038722 (n + 1)).toNat)

end

end A194868.P4977776464507684730

/-! ## A194868.P9644828416898282955

`∑{d}[A194862(A038722(n+1)), A000010(#)]`
-/

namespace A194868.P9644828416898282955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194868.P9644828416898282955

/-! ## A194868.P6664818196399998868

`∏{d}[A194862(A038722(n+1)), A014963(#)]`
-/

namespace A194868.P6664818196399998868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A194868.P6664818196399998868

/-! ## A194868.P14366420160025377857

`A007318(C(2, n))*A194862(A038722(n+1))`
-/

namespace A194868.P14366420160025377857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194862 (A038722 (n + 1)).toNat

end

end A194868.P14366420160025377857

/-! ## A194868.P14044938386423597531

`A000041(C(2, n+2))*A194862(A038722(n+1))`
-/

namespace A194868.P14044938386423597531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A194862 (A038722 (n + 1)).toNat

end

end A194868.P14044938386423597531

/-! ## A194868.P14357253384351455928

`A194862(A038722(n+1))^gcd(2, A000040(n+1))`
-/

namespace A194868.P14357253384351455928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (A038722 (n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A194868.P14357253384351455928

/-!
# A194869: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194868; an interspersion.

The programs for A194869, there is no canonical definition to state claims against.
-/

/-! ## A194869.P11265923404974895617

`∑[char[∑[n]]]²+1-A194863(n+1)`
-/

namespace A194869.P11265923404974895617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194863 (n + 1))

end

end A194869.P11265923404974895617

/-! ## A194869.P2809559140167483311

`A038722(A194863(n+1))`
-/

namespace A194869.P2809559140167483311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194863 (n + 1)).toNat

end

end A194869.P2809559140167483311

/-! ## A194869.P12134211864394465750

`A265129(n+1)-A194863(n+1)`
-/

namespace A194869.P12134211864394465750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194863 (n + 1)

end

end A194869.P12134211864394465750

/-! ## A194869.P3570240666019796567

`A093995(n+1)+1-A194863(n+1)`
-/

namespace A194869.P3570240666019796567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194863 (n + 1)

end

end A194869.P3570240666019796567

/-! ## A194869.P2162091622976982797

`A185870(n+1)-(2*n+1)-A194863(n+1)`
-/

namespace A194869.P2162091622976982797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185870 (n + 1) - (2 * n + 1 : ℤ) - A194863 (n + 1)

end

end A194869.P2162091622976982797

/-! ## A194869.P17217140963153177086

`A002522(A002024(n+1))-A194863(n+1)`
-/

namespace A194869.P17217140963153177086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194863 (n + 1)

end

end A194869.P17217140963153177086

/-! ## A194869.P3457039889273592256

`A061579(A194863(n+1)-1)+1`
-/

namespace A194869.P3457039889273592256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194863 (n + 1) - 1).toNat + 1

end

end A194869.P3457039889273592256

/-! ## A194869.P7480767500630749426

`A057944(n)+A004736(A194863(n+1))`
-/

namespace A194869.P7480767500630749426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194863 (n + 1)).toNat

end

end A194869.P7480767500630749426

/-! ## A194869.P1913593801594057986

`A093995(n+1)-A023443(A194863(n+1))`
-/

namespace A194869.P1913593801594057986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194863 (n + 1)).toNat

end

end A194869.P1913593801594057986

/-! ## A194869.P5522131384542328248

`A194860(A194864(A194863(A194861(A194860(n+1)))))`
-/

namespace A194869.P5522131384542328248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194860 (A194864 (A194863 (A194861 (A194860 (n + 1)).toNat).toNat).toNat).toNat

end

end A194869.P5522131384542328248

/-!
# A194870: Inverse permutation of A194869; every positive integer occurs exactly once.

The programs for A194870, there is no canonical definition to state claims against.
-/

/-! ## A194870.P13656322657249796352

`A194868(n+1)+A057944(n)`
-/

namespace A194870.P13656322657249796352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + A057944 n

end

end A194870.P13656322657249796352

/-! ## A194870.P10331200427062596366

`A194868(n+1)+n-A002262(n)`
-/

namespace A194870.P10331200427062596366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194870.P10331200427062596366

/-! ## A194870.P15316194744443045548

`A194868(n+1)+A061885(n)-n`
-/

namespace A194870.P15316194744443045548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + (A061885 n - (n : ℤ))

end

end A194870.P15316194744443045548

/-! ## A194870.P13658589196430884662

`A194868(n+1)+n+1-A002260(n+1)`
-/

namespace A194870.P13658589196430884662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194870.P13658589196430884662

/-! ## A194870.P11323576143982002652

`A194868(n+1)+A000217(A003056(n))`
-/

namespace A194870.P11323576143982002652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + A000217 (A003056 n).toNat

end

end A194870.P11323576143982002652

/-! ## A194870.P4064529332307661081

`A194868(n+1)+A001971(A131507(n))`
-/

namespace A194870.P4064529332307661081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + A001971 (A131507 n).toNat

end

end A194870.P4064529332307661081

/-! ## A194870.P13468478818078589004

`A194834(n+1)+A194868(n+1)-A194832(n+1)`
-/

namespace A194870.P13468478818078589004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194868 (n + 1) - A194832 (n + 1))

end

end A194870.P13468478818078589004

/-! ## A194870.P5341466608459405862

`A194862(∑[char[∑[n]]]²-n)+C(∑[char[∑[n]]], 2)`
-/

namespace A194870.P5341466608459405862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A194870.P5341466608459405862

/-! ## A194870.P3109341862545452127

`A194867(A038722(n+1))`
-/

namespace A194870.P3109341862545452127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194867 (A038722 (n + 1)).toNat

end

end A194870.P3109341862545452127

/-! ## A194870.P3848559414192516478

`A194867(A054077(A194837(n+1)))`
-/

namespace A194870.P3848559414192516478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194867 (A054077 (A194837 (n + 1)).toNat).toNat

end

end A194870.P3848559414192516478

/-! ## A194870.P8740663418817012501

`A194862(A038722(n+1))+A057944(n)`
-/

namespace A194870.P8740663418817012501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194862 (A038722 (n + 1)).toNat + A057944 n

end

end A194870.P8740663418817012501

/-!
# A194871: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=sqrt(6).

The programs for A194871, there is no canonical definition to state claims against.
-/

/-! ## A194871.P16924770741124733558

`A002260(A194873(n+1))`
-/

namespace A194871.P16924770741124733558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194873 (n + 1)).toNat

end

end A194871.P16924770741124733558

/-! ## A194871.P2466132484397217064

`A194873(n+1)-A057944(n)`
-/

namespace A194871.P2466132484397217064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194873 (n + 1) - A057944 n

end

end A194871.P2466132484397217064

/-! ## A194871.P3658207972891905906

`A194832(n+1)+A194873(n+1)-A194834(n+1)`
-/

namespace A194871.P3658207972891905906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194873 (n + 1) - A194834 (n + 1))

end

end A194871.P3658207972891905906

/-! ## A194871.P12080420564136689586

`A194873(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A194871.P12080420564136689586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194873 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A194871.P12080420564136689586

/-! ## A194871.P9997361630831042529

`A194908(A194909(A194873(A194910(A194909(n+1)))))`
-/

namespace A194871.P9997361630831042529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (A194909 (A194873 (A194910 (A194909 (n + 1)).toNat).toNat).toNat).toNat

end

end A194871.P9997361630831042529

/-! ## A194871.P17748483583757162248

`A194874(∑[char[∑[n]]]²-n)`
-/

namespace A194871.P17748483583757162248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194871.P17748483583757162248

/-! ## A194871.P2917748430916342039

`gcd(A000038(n), A194874(A038722(n+1)))`
-/

namespace A194871.P2917748430916342039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194874 (A038722 (n + 1)).toNat)

end

end A194871.P2917748430916342039

/-! ## A194871.P18286954062494882171

`lcm(A020985(n), A194874(A038722(n+1)))`
-/

namespace A194871.P18286954062494882171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194874 (A038722 (n + 1)).toNat)

end

end A194871.P18286954062494882171

/-! ## A194871.P6741728646827640150

`A007318(and(1, -n))*A194874(A038722(n+1))`
-/

namespace A194871.P6741728646827640150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A194874 (A038722 (n + 1)).toNat

end

end A194871.P6741728646827640150

/-! ## A194871.P274963938703282408

`A007318(C(n, n²))*A194874(A038722(n+1))`
-/

namespace A194871.P274963938703282408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A194874 (A038722 (n + 1)).toNat

end

end A194871.P274963938703282408

/-! ## A194871.P10631173942973478548

`A194874(A038722(n+1))+A008683(64*(n+1))`
-/

namespace A194871.P10631173942973478548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (A038722 (n + 1)).toNat + A008683 (64 * (n + 1))

end

end A194871.P10631173942973478548

/-!
# A194872: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194871; an interspersion.

The programs for A194872, there is no canonical definition to state claims against.
-/

/-! ## A194872.P11223766592691060616

`∑[char[∑[n]]]²+1-A194875(n+1)`
-/

namespace A194872.P11223766592691060616
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194875 (n + 1))

end

end A194872.P11223766592691060616

/-! ## A194872.P1464538066182593609

`A038722(A194875(n+1))`
-/

namespace A194872.P1464538066182593609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194875 (n + 1)).toNat

end

end A194872.P1464538066182593609

/-! ## A194872.P3766911659325704146

`A265129(n+1)-A194875(n+1)`
-/

namespace A194872.P3766911659325704146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194875 (n + 1)

end

end A194872.P3766911659325704146

/-! ## A194872.P13125388318389553840

`A093995(n+1)+1-A194875(n+1)`
-/

namespace A194872.P13125388318389553840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194875 (n + 1)

end

end A194872.P13125388318389553840

/-! ## A194872.P752697576313466369

`A061579(A194875(n+1)-1)+1`
-/

namespace A194872.P752697576313466369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194875 (n + 1) - 1).toNat + 1

end

end A194872.P752697576313466369

/-! ## A194872.P14058280674464202601

`A057944(n)+A004736(A194875(n+1))`
-/

namespace A194872.P14058280674464202601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194875 (n + 1)).toNat

end

end A194872.P14058280674464202601

/-! ## A194872.P6629109540537524785

`A093995(n+1)+A024000(A194875(n+1))`
-/

namespace A194872.P6629109540537524785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194875 (n + 1)).toNat

end

end A194872.P6629109540537524785

/-!
# A194873: Inverse permutation of A194872; every positive integer occurs exactly once.

The programs for A194873, there is no canonical definition to state claims against.
-/

/-! ## A194873.P15495364039045010987

`A194871(n+1)+A057944(n)`
-/

namespace A194873.P15495364039045010987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + A057944 n

end

end A194873.P15495364039045010987

/-! ## A194873.P8213323192335852604

`A194871(n+1)+n-A002262(n)`
-/

namespace A194873.P8213323192335852604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194873.P8213323192335852604

/-! ## A194873.P7263180894060547843

`A194871(n+1)+A061885(n)-n`
-/

namespace A194873.P7263180894060547843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A061885 n - (n : ℤ))

end

end A194873.P7263180894060547843

/-! ## A194873.P18351248957060667511

`A194871(n+1)+n+1-A002260(n+1)`
-/

namespace A194873.P18351248957060667511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194873.P18351248957060667511

/-! ## A194873.P17389328936481479253

`A194871(n+1)+A000217(A003056(n))`
-/

namespace A194873.P17389328936481479253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + A000217 (A003056 n).toNat

end

end A194873.P17389328936481479253

/-! ## A194873.P5307623387645923463

`A194871(n+1)+A001971(A131507(n))`
-/

namespace A194873.P5307623387645923463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + A001971 (A131507 n).toNat

end

end A194873.P5307623387645923463

/-! ## A194873.P11034688144623669821

`A194871(n+1)+A161680(A002024(n+1))`
-/

namespace A194873.P11034688144623669821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194873.P11034688144623669821

/-! ## A194873.P7507793387285565443

`A054068(n+1)+A194871(n+1)-A054065(n+1)`
-/

namespace A194873.P7507793387285565443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A194871 (n + 1) - A054065 (n + 1))

end

end A194873.P7507793387285565443

/-! ## A194873.P2272267397421736276

`A054076(n+1)+A194871(n+1)-A054073(n+1)`
-/

namespace A194873.P2272267397421736276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054076 (n + 1) + (A194871 (n + 1) - A054073 (n + 1))

end

end A194873.P2272267397421736276

/-! ## A194873.P16972339427314951066

`A194834(n+1)+A194871(n+1)-A194832(n+1)`
-/

namespace A194873.P16972339427314951066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194871 (n + 1) - A194832 (n + 1))

end

end A194873.P16972339427314951066

/-! ## A194873.P3243606838408990857

`A194846(n+1)+A194871(n+1)-A194844(n+1)`
-/

namespace A194873.P3243606838408990857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (n + 1) + (A194871 (n + 1) - A194844 (n + 1))

end

end A194873.P3243606838408990857

/-! ## A194873.P4794134605359516415

`A194858(n+1)+A194871(n+1)-A194856(n+1)`
-/

namespace A194873.P4794134605359516415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194858 (n + 1) + (A194871 (n + 1) - A194856 (n + 1))

end

end A194873.P4794134605359516415

/-! ## A194873.P3635204042983063068

`A194861(n+1)+A194871(n+1)-A194859(n+1)`
-/

namespace A194873.P3635204042983063068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194861 (n + 1) + (A194871 (n + 1) - A194859 (n + 1))

end

end A194873.P3635204042983063068

/-! ## A194873.P5589112511356608959

`A194870(n+1)+A194871(n+1)-A194868(n+1)`
-/

namespace A194873.P5589112511356608959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194871 (n + 1) - A194868 (n + 1))

end

end A194873.P5589112511356608959

/-! ## A194873.P5247399830095120006

`A194871(n+1)+A194898(n+1)-A194896(n+1)`
-/

namespace A194873.P5247399830095120006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194898 (n + 1) - A194896 (n + 1))

end

end A194873.P5247399830095120006

/-! ## A194873.P4188801486661903026

`A194871(n+1)+A194901(n+1)-A194899(n+1)`
-/

namespace A194873.P4188801486661903026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194901 (n + 1) - A194899 (n + 1))

end

end A194873.P4188801486661903026

/-! ## A194873.P14337986606166800729

`A194871(n+1)+A194904(n+1)-A194902(n+1)`
-/

namespace A194873.P14337986606166800729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194904 (n + 1) - A194902 (n + 1))

end

end A194873.P14337986606166800729

/-! ## A194873.P2614473309125577156

`A194871(n+1)+A194907(n+1)-A194905(n+1)`
-/

namespace A194873.P2614473309125577156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194907 (n + 1) - A194905 (n + 1))

end

end A194873.P2614473309125577156

/-! ## A194873.P3352297830406450264

`A194871(n+1)+A194910(n+1)-A194908(n+1)`
-/

namespace A194873.P3352297830406450264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194910 (n + 1) - A194908 (n + 1))

end

end A194873.P3352297830406450264

/-! ## A194873.P10945395704329546808

`A194876(A038722(n+1))`
-/

namespace A194873.P10945395704329546808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194876 (A038722 (n + 1)).toNat

end

end A194873.P10945395704329546808

/-!
# A194874: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-sqrt(6).

The programs for A194874, there is no canonical definition to state claims against.
-/

/-! ## A194874.P2629686495335386434

`A002260(A194876(n+1))`
-/

namespace A194874.P2629686495335386434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194876 (n + 1)).toNat

end

end A194874.P2629686495335386434

/-! ## A194874.P10494119294565685079

`A194876(n+1)-A057944(n)`
-/

namespace A194874.P10494119294565685079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194876 (n + 1) - A057944 n

end

end A194874.P10494119294565685079

/-! ## A194874.P2762792472843956850

`A194832(n+1)+A194876(n+1)-A194834(n+1)`
-/

namespace A194874.P2762792472843956850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194876 (n + 1) - A194834 (n + 1))

end

end A194874.P2762792472843956850

/-! ## A194874.P16685788907562236213

`A194871(∑[char[∑[n]]]²-n)`
-/

namespace A194874.P16685788907562236213
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194874.P16685788907562236213

/-! ## A194874.P4255828978961684020

`gcd(A000038(n), A194871(A038722(n+1)))`
-/

namespace A194874.P4255828978961684020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194871 (A038722 (n + 1)).toNat)

end

end A194874.P4255828978961684020

/-! ## A194874.P3965201643072178990

`lcm(A020985(n), A194871(A038722(n+1)))`
-/

namespace A194874.P3965201643072178990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194871 (A038722 (n + 1)).toNat)

end

end A194874.P3965201643072178990

/-! ## A194874.P496147898560262627

`or(A000007(n), A194871(A038722(n+1)))`
-/

namespace A194874.P496147898560262627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194871 (A038722 (n + 1)).toNat)

end

end A194874.P496147898560262627

/-! ## A194874.P15208387417886075779

`∑{d}[A194871(A038722(n+1)), A000010(#)]`
-/

namespace A194874.P15208387417886075779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194874.P15208387417886075779

/-! ## A194874.P8547938403193441915

`∏{d}[A194871(A038722(n+1)), A014963(#)]`
-/

namespace A194874.P8547938403193441915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A194874.P8547938403193441915

/-!
# A194875: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194874; an interspersion.

The programs for A194875, there is no canonical definition to state claims against.
-/

/-! ## A194875.P870533401050058976

`∑[char[∑[n]]]²+1-A194872(n+1)`
-/

namespace A194875.P870533401050058976
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194872 (n + 1))

end

end A194875.P870533401050058976

/-! ## A194875.P2568389183357005693

`A038722(A194872(n+1))`
-/

namespace A194875.P2568389183357005693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194872 (n + 1)).toNat

end

end A194875.P2568389183357005693

/-! ## A194875.P11835931792387896113

`A265129(n+1)-A194872(n+1)`
-/

namespace A194875.P11835931792387896113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194872 (n + 1)

end

end A194875.P11835931792387896113

/-! ## A194875.P8912403826908591681

`A093995(n+1)+1-A194872(n+1)`
-/

namespace A194875.P8912403826908591681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194872 (n + 1)

end

end A194875.P8912403826908591681

/-! ## A194875.P17493531936761240176

`A061579(A194872(n+1)-1)+1`
-/

namespace A194875.P17493531936761240176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194872 (n + 1) - 1).toNat + 1

end

end A194875.P17493531936761240176

/-! ## A194875.P8959851288891066515

`A057944(n)+A004736(A194872(n+1))`
-/

namespace A194875.P8959851288891066515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194872 (n + 1)).toNat

end

end A194875.P8959851288891066515

/-! ## A194875.P17683846965447238309

`A093995(n+1)+A024000(A194872(n+1))`
-/

namespace A194875.P17683846965447238309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194872 (n + 1)).toNat

end

end A194875.P17683846965447238309

/-! ## A194875.P12874523928769044803

`A024000(A194872(n+1))+A002024(n+1)²`
-/

namespace A194875.P12874523928769044803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194872 (n + 1)).toNat + A002024 (n + 1) ^ 2

end

end A194875.P12874523928769044803

/-! ## A194875.P8842301705134509151

`A194860(A194864(A194872(A194861(A194860(n+1)))))`
-/

namespace A194875.P8842301705134509151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194860 (A194864 (A194872 (A194861 (A194860 (n + 1)).toNat).toNat).toNat).toNat

end

end A194875.P8842301705134509151

/-!
# A194876: Inverse permutation of A184875; every positive integer occurs exactly once.

The programs for A194876, there is no canonical definition to state claims against.
-/

/-! ## A194876.P5838467280188358692

`A194874(n+1)+A057944(n)`
-/

namespace A194876.P5838467280188358692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + A057944 n

end

end A194876.P5838467280188358692

/-! ## A194876.P17744856778589085287

`A194874(n+1)+n-A002262(n)`
-/

namespace A194876.P17744856778589085287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194876.P17744856778589085287

/-! ## A194876.P6802665712632976402

`A194874(n+1)+A061885(n)-n`
-/

namespace A194876.P6802665712632976402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + (A061885 n - (n : ℤ))

end

end A194876.P6802665712632976402

/-! ## A194876.P7061840307786645412

`A194874(n+1)+n+1-A002260(n+1)`
-/

namespace A194876.P7061840307786645412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194876.P7061840307786645412

/-! ## A194876.P18134503308287495106

`A194874(n+1)+A000217(A003056(n))`
-/

namespace A194876.P18134503308287495106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + A000217 (A003056 n).toNat

end

end A194876.P18134503308287495106

/-! ## A194876.P5809879392931235555

`A194874(n+1)+A161680(A002024(n+1))`
-/

namespace A194876.P5809879392931235555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194876.P5809879392931235555

/-! ## A194876.P12110087027388269695

`A194834(n+1)+A194874(n+1)-A194832(n+1)`
-/

namespace A194876.P12110087027388269695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194874 (n + 1) - A194832 (n + 1))

end

end A194876.P12110087027388269695

/-! ## A194876.P12656280175516528356

`A194846(n+1)+A194874(n+1)-A194844(n+1)`
-/

namespace A194876.P12656280175516528356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (n + 1) + (A194874 (n + 1) - A194844 (n + 1))

end

end A194876.P12656280175516528356

/-! ## A194876.P7223899919446391591

`A194858(n+1)+A194874(n+1)-A194856(n+1)`
-/

namespace A194876.P7223899919446391591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194858 (n + 1) + (A194874 (n + 1) - A194856 (n + 1))

end

end A194876.P7223899919446391591

/-! ## A194876.P16017327333397474759

`A194861(n+1)+A194874(n+1)-A194859(n+1)`
-/

namespace A194876.P16017327333397474759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194861 (n + 1) + (A194874 (n + 1) - A194859 (n + 1))

end

end A194876.P16017327333397474759

/-! ## A194876.P13929926078241645683

`A194870(n+1)+A194874(n+1)-A194868(n+1)`
-/

namespace A194876.P13929926078241645683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194874 (n + 1) - A194868 (n + 1))

end

end A194876.P13929926078241645683

/-! ## A194876.P9234516450175774219

`A194873(n+1)+A194874(n+1)-A194871(n+1)`
-/

namespace A194876.P9234516450175774219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194873 (n + 1) + (A194874 (n + 1) - A194871 (n + 1))

end

end A194876.P9234516450175774219

/-! ## A194876.P871126690679287335

`A194874(n+1)+A194898(n+1)-A194896(n+1)`
-/

namespace A194876.P871126690679287335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + (A194898 (n + 1) - A194896 (n + 1))

end

end A194876.P871126690679287335

/-! ## A194876.P514806548808007319

`A194874(n+1)+A194901(n+1)-A194899(n+1)`
-/

namespace A194876.P514806548808007319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + (A194901 (n + 1) - A194899 (n + 1))

end

end A194876.P514806548808007319

/-! ## A194876.P6285938471929990976

`A194874(n+1)+A194904(n+1)-A194902(n+1)`
-/

namespace A194876.P6285938471929990976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + (A194904 (n + 1) - A194902 (n + 1))

end

end A194876.P6285938471929990976

/-! ## A194876.P14027617034201168253

`A194874(n+1)+A194907(n+1)-A194905(n+1)`
-/

namespace A194876.P14027617034201168253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + (A194907 (n + 1) - A194905 (n + 1))

end

end A194876.P14027617034201168253

/-! ## A194876.P1975178681943403517

`A194874(n+1)+A194910(n+1)-A194908(n+1)`
-/

namespace A194876.P1975178681943403517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + (A194910 (n + 1) - A194908 (n + 1))

end

end A194876.P1975178681943403517

/-! ## A194876.P11374666207109827022

`A194873(A038722(n+1))`
-/

namespace A194876.P11374666207109827022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194873 (A038722 (n + 1)).toNat

end

end A194876.P11374666207109827022

/-! ## A194876.P2203581629967949101

`A194871(∑[char[∑[n]]]²-n)+A057944(n)`
-/

namespace A194876.P2203581629967949101
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + A057944 n

end

end A194876.P2203581629967949101

/-! ## A194876.P10509691986307578164

`A194874(n+1)+A161680(A000194(2*(n+1)))`
-/

namespace A194876.P10509691986307578164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194874 (n + 1) + A161680 (A000194 (2 * (n + 1))).toNat

end

end A194876.P10509691986307578164

/-!
# A194877: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=sqrt(8).

The programs for A194877, there is no canonical definition to state claims against.
-/

/-! ## A194877.P8605432238572315577

`A002260(A194879(n+1))`
-/

namespace A194877.P8605432238572315577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194879 (n + 1)).toNat

end

end A194877.P8605432238572315577

/-! ## A194877.P5174692138857590247

`A194879(n+1)-A057944(n)`
-/

namespace A194877.P5174692138857590247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194879 (n + 1) - A057944 n

end

end A194877.P5174692138857590247

/-! ## A194877.P14776218143303271064

`A194832(n+1)+A194879(n+1)-A194834(n+1)`
-/

namespace A194877.P14776218143303271064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194879 (n + 1) - A194834 (n + 1))

end

end A194877.P14776218143303271064

/-! ## A194877.P5401125925891043554

`A194879(n+1)+A194902(n+1)-A194904(n+1)`
-/

namespace A194877.P5401125925891043554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194879 (n + 1) + (A194902 (n + 1) - A194904 (n + 1))

end

end A194877.P5401125925891043554

/-! ## A194877.P12344273129825673303

`A194896(∑[char[∑[n]]]²-n)`
-/

namespace A194877.P12344273129825673303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194877.P12344273129825673303

/-! ## A194877.P2274931941385709712

`gcd(A000038(n), A194896(A038722(n+1)))`
-/

namespace A194877.P2274931941385709712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194896 (A038722 (n + 1)).toNat)

end

end A194877.P2274931941385709712

/-! ## A194877.P6646772443148589090

`lcm(A020985(n), A194896(A038722(n+1)))`
-/

namespace A194877.P6646772443148589090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A194896 (A038722 (n + 1)).toNat)

end

end A194877.P6646772443148589090

/-! ## A194877.P9462309057463830408

`or(A000007(n), A194896(A038722(n+1)))`
-/

namespace A194877.P9462309057463830408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194896 (A038722 (n + 1)).toNat)

end

end A194877.P9462309057463830408

/-! ## A194877.P17767854756041765995

`A007318(and(3, -n))*A194896(A038722(n+1))`
-/

namespace A194877.P17767854756041765995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A194896 (A038722 (n + 1)).toNat

end

end A194877.P17767854756041765995

/-! ## A194877.P11451876634548800740

`gcd(2, A000040(n+2))*A194896(A038722(n+1))`
-/

namespace A194877.P11451876634548800740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A194896 (A038722 (n + 1)).toNat

end

end A194877.P11451876634548800740

/-!
# A194878: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194877; an interspersion.

The programs for A194878, there is no canonical definition to state claims against.
-/

/-! ## A194878.P7263613868651558489

`∑[char[∑[n]]]²+1-A194897(n+1)`
-/

namespace A194878.P7263613868651558489
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194897 (n + 1))

end

end A194878.P7263613868651558489

/-! ## A194878.P5324495112824047569

`A038722(A194897(n+1))`
-/

namespace A194878.P5324495112824047569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194897 (n + 1)).toNat

end

end A194878.P5324495112824047569

/-! ## A194878.P6905011285066125646

`A265129(n+1)-A194897(n+1)`
-/

namespace A194878.P6905011285066125646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194897 (n + 1)

end

end A194878.P6905011285066125646

/-! ## A194878.P8606691802280665783

`A093995(n+1)+1-A194897(n+1)`
-/

namespace A194878.P8606691802280665783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194897 (n + 1)

end

end A194878.P8606691802280665783

/-! ## A194878.P10412024003555868411

`n+2-A194897(n+1)+A114327(n)+n`
-/

namespace A194878.P10412024003555868411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A194897 (n + 1) + (A114327 n + (n : ℤ))

end

end A194878.P10412024003555868411

/-! ## A194878.P4021329460101338505

`A061579(A194897(n+1)-1)+1`
-/

namespace A194878.P4021329460101338505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194897 (n + 1) - 1).toNat + 1

end

end A194878.P4021329460101338505

/-! ## A194878.P2076801313343970510

`A057944(n)+A004736(A194897(n+1))`
-/

namespace A194878.P2076801313343970510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194897 (n + 1)).toNat

end

end A194878.P2076801313343970510

/-! ## A194878.P8917036468569793716

`A194897(n+1)+A114327(A194897(n+1)-1)`
-/

namespace A194878.P8917036468569793716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194897 (n + 1) + A114327 (A194897 (n + 1) - 1).toNat

end

end A194878.P8917036468569793716

/-! ## A194878.P4166030240050910349

`A194866(A194861(A194897(A194861(A194860(n+1)))))`
-/

namespace A194878.P4166030240050910349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194866 (A194861 (A194897 (A194861 (A194860 (n + 1)).toNat).toNat).toNat).toNat

end

end A194878.P4166030240050910349

/-! ## A194878.P7267678994647575882

`A194909(A194907(A194897(A194910(A194909(n+1)))))`
-/

namespace A194878.P7267678994647575882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194909 (A194907 (A194897 (A194910 (A194909 (n + 1)).toNat).toNat).toNat).toNat

end

end A194878.P7267678994647575882

/-! ## A194878.P7275583315966556555

`A093995(n+1)-A023443(A194897(n+1))`
-/

namespace A194878.P7275583315966556555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194897 (n + 1)).toNat

end

end A194878.P7275583315966556555

/-!
# A194879: Inverse permutation of A194878; every positive integer occurs exactly once.

The programs for A194879, there is no canonical definition to state claims against.
-/

/-! ## A194879.P18100220715294748219

`A194877(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194879.P18100220715294748219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194879.P18100220715294748219

/-! ## A194879.P3119769986198755210

`A194877(n+1)+A057944(n)`
-/

namespace A194879.P3119769986198755210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + A057944 n

end

end A194879.P3119769986198755210

/-! ## A194879.P3279196817749141312

`A194877(n+1)+n-A002262(n)`
-/

namespace A194879.P3279196817749141312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194879.P3279196817749141312

/-! ## A194879.P18124749159424004042

`A194877(n+1)+∑[val(A099627(n), 2)]`
-/

namespace A194879.P18124749159424004042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A194879.P18124749159424004042

/-! ## A194879.P11899479040030395384

`A194877(n+1)+1+n-A002260(n+1)`
-/

namespace A194879.P11899479040030395384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + 1 + (n : ℤ) - A002260 (n + 1)

end

end A194879.P11899479040030395384

/-! ## A194879.P10714925442645102386

`A194877(n+1)+A000217(A003056(n))`
-/

namespace A194879.P10714925442645102386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + A000217 (A003056 n).toNat

end

end A194879.P10714925442645102386

/-! ## A194879.P12177979024042219368

`A194877(n+1)+A001971(A131507(n))`
-/

namespace A194879.P12177979024042219368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + A001971 (A131507 n).toNat

end

end A194879.P12177979024042219368

/-! ## A194879.P9216545697995016179

`A194877(n+1)+A161680(A002024(n+1))`
-/

namespace A194879.P9216545697995016179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194879.P9216545697995016179

/-! ## A194879.P15888481173763125632

`A194834(n+1)+A194877(n+1)-A194832(n+1)`
-/

namespace A194879.P15888481173763125632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194877 (n + 1) - A194832 (n + 1))

end

end A194879.P15888481173763125632

/-! ## A194879.P17345656118047947790

`A194898(A038722(n+1))`
-/

namespace A194879.P17345656118047947790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (A038722 (n + 1)).toNat

end

end A194879.P17345656118047947790

/-! ## A194879.P18283429878425209197

`A194898(A194872(A194876(n+1)))`
-/

namespace A194879.P18283429878425209197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (A194872 (A194876 (n + 1)).toNat).toNat

end

end A194879.P18283429878425209197

/-! ## A194879.P15749366806464086502

`A194898(A194900(A194904(n+1)))`
-/

namespace A194879.P15749366806464086502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (A194900 (A194904 (n + 1)).toNat).toNat

end

end A194879.P15749366806464086502

/-! ## A194879.P2160388608640334965

`A194898(A194906(A194910(n+1)))`
-/

namespace A194879.P2160388608640334965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (A194906 (A194910 (n + 1)).toNat).toNat

end

end A194879.P2160388608640334965

/-! ## A194879.P11528490909575586186

`A194896(A038722(n+1))+A057944(n)`
-/

namespace A194879.P11528490909575586186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (A038722 (n + 1)).toNat + A057944 n

end

end A194879.P11528490909575586186

/-!
# A194880: The numerators of the inverse Akiyama-Tanigawa algorithm from A001045(n).

The programs for A194880, the canonical program `A194880.P4917840185240853091` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194880 has offset 0).

The definition of A194880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194880.P4917840185240853091

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=-1, a(2)=-1, a(3)=-4, a(4)=-5, a(5)=-2, a(6)=-7, a(7)=-8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A194880

/-- `2*a(n-3)-a(n-6)` -/
def P4917840185240853091.Spec : Prop :=
  ∀ n, P4917840185240853091.a n = A194880 n

theorem P4917840185240853091.correct : P4917840185240853091.Spec := by
  intro n
  simp only [A194880]

end A194880

/-! ## A194880.P3693136904749340699

`C(n, n²)-gcd(n+1, ∑[(2*n)²])`
-/

namespace A194880.P3693136904749340699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A194880.P3693136904749340699

namespace A194880

/-- `C(n, n²)-gcd(n+1, ∑[(2*n)²])` -/
def P3693136904749340699.Spec : Prop :=
  ∀ n, P3693136904749340699.a n = A194880 n

end A194880

/-! ## A194880.P2671844166861266809

`char[1]-(n+1)%A006369(n+1)`
-/

namespace A194880.P2671844166861266809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - Int.tmod (n + 1 : ℤ) (A006369 (n + 1))

end

end A194880.P2671844166861266809

namespace A194880

/-- `char[1]-(n+1)%A006369(n+1)` -/
def P2671844166861266809.Spec : Prop :=
  ∀ n, P2671844166861266809.a n = A194880 n

end A194880

/-! ## A194880.P13693624600858175001

`-gcd(A184985(n+1), A200431(n+1))`
-/

namespace A194880.P13693624600858175001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.gcd (A184985 (n + 1)) (A200431 (n + 1)) : ℤ)

end

end A194880.P13693624600858175001

namespace A194880

/-- `-gcd(A184985(n+1), A200431(n+1))` -/
def P13693624600858175001.Spec : Prop :=
  ∀ n, P13693624600858175001.a n = A194880 n

end A194880

/-! ## A194880.P8767013546970195333

`C(n, n²)-A051176(n+1)`
-/

namespace A194880.P8767013546970195333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - A051176 (n + 1)

end

end A194880.P8767013546970195333

namespace A194880

/-- `C(n, n²)-A051176(n+1)` -/
def P8767013546970195333.Spec : Prop :=
  ∀ n, P8767013546970195333.a n = A194880 n

end A194880

/-! ## A194880.P4603492399053525245

`Δ[a(n-1)-A051176(n)]` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A194880.P4603492399053525245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 2] fun n f1 =>
  f1 (n - 1) - A051176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194880.P4603492399053525245

namespace A194880

/-- `Δ[a(n-1)-A051176(n)]` -/
def P4603492399053525245.Spec : Prop :=
  ∀ n, P4603492399053525245.a n = A194880 n

end A194880

/-! ## A194880.P14981766179094941467

`A046930(n+1)%2-A051176(n+1)`
-/

namespace A194880.P14981766179094941467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046930 (n + 1)) 2 - A051176 (n + 1)

end

end A194880.P14981766179094941467

namespace A194880

/-- `A046930(n+1)%2-A051176(n+1)` -/
def P14981766179094941467.Spec : Prop :=
  ∀ n, P14981766179094941467.a n = A194880 n

end A194880

/-! ## A194880.P6302108411803381865

`A000035(A000010(n+1))-A051176(n+1)`
-/

namespace A194880.P6302108411803381865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 1)).toNat - A051176 (n + 1)

end

end A194880.P6302108411803381865

namespace A194880

/-- `A000035(A000010(n+1))-A051176(n+1)` -/
def P6302108411803381865.Spec : Prop :=
  ∀ n, P6302108411803381865.a n = A194880 n

end A194880

/-! ## A194880.P17590088241847484455

`A063524(A051176(2*n+1))-A051176(n+1)`
-/

namespace A194880.P17590088241847484455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A051176 (2 * n + 1)).toNat - A051176 (n + 1)

end

end A194880.P17590088241847484455

namespace A194880

/-- `A063524(A051176(2*n+1))-A051176(n+1)` -/
def P17590088241847484455.Spec : Prop :=
  ∀ n, P17590088241847484455.a n = A194880 n

end A194880

/-! ## A194880.P7179519771822618079

`C(A215573(n+2), A000041(n+1))-A215573(2*(n+1))`
-/

namespace A194880.P7179519771822618079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A215573 (n + 2)).toNat (A000041 (n + 1)).toNat : ℤ) - A215573 (2 * (n + 1))

end

end A194880.P7179519771822618079

namespace A194880

/-- `C(A215573(n+2), A000041(n+1))-A215573(2*(n+1))` -/
def P7179519771822618079.Spec : Prop :=
  ∀ n, P7179519771822618079.a n = A194880 n

end A194880

/-! ## A194880.P8821715549809456013

`A051161(A051207(3*n+5))-A051176(n+1)`
-/

namespace A194880.P8821715549809456013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051161 (A051207 (3 * n + 5)).toNat - A051176 (n + 1)

end

end A194880.P8821715549809456013

namespace A194880

/-- `A051161(A051207(3*n+5))-A051176(n+1)` -/
def P8821715549809456013.Spec : Prop :=
  ∀ n, P8821715549809456013.a n = A194880 n

end A194880

/-!
# A194881: A number of sum-free sets related to fractional parts of multiples of a rational number in the range 1/3 to 2/3.

The programs for A194881, the canonical program `A194881.P8978723486251652137` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194881 has offset 1).

The definition of A194881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194881.P8978723486251652137

`A372621(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A194881

/-- `A372621(n+1)+1` -/
def P8978723486251652137.Spec : Prop :=
  ∀ n, P8978723486251652137.a n = A194881 (n + 1)

theorem P8978723486251652137.correct : P8978723486251652137.Spec := by
  intro n
  simp only [A194881, Nat.add_sub_cancel]

end A194881

/-! ## A194881.P18212163860073928517

`∑[A195459(n+1)]+1`
-/

namespace A194881.P18212163860073928517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194881.P18212163860073928517

namespace A194881

/-- `∑[A195459(n+1)]+1` -/
def P18212163860073928517.Spec : Prop :=
  ∀ n, P18212163860073928517.a n = A194881 (n + 1)

end A194881

/-! ## A194881.P17368796415259918560

`∑[A000010(3*(n+1))/2]+1`
-/

namespace A194881.P17368796415259918560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (3 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194881.P17368796415259918560

namespace A194881

/-- `∑[A000010(3*(n+1))/2]+1` -/
def P17368796415259918560.Spec : Prop :=
  ∀ n, P17368796415259918560.a n = (A194881 (n + 1) : ℚ)

end A194881

/-! ## A194881.P5149621392949350056

`∑[A055684(3*(n+1))+1]+1`
-/

namespace A194881.P5149621392949350056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194881.P5149621392949350056

namespace A194881

/-- `∑[A055684(3*(n+1))+1]+1` -/
def P5149621392949350056.Spec : Prop :=
  ∀ n, P5149621392949350056.a n = A194881 (n + 1)

end A194881

/-! ## A194881.P13851881339999561069

`∑[A023022(3*(n+1))]+1`
-/

namespace A194881.P13851881339999561069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194881.P13851881339999561069

namespace A194881

/-- `∑[A023022(3*(n+1))]+1` -/
def P13851881339999561069.Spec : Prop :=
  ∀ n, P13851881339999561069.a n = A194881 (n + 1)

end A194881

/-! ## A194881.P6541310656296300630

`A020725(A372621(n+1))`
-/

namespace A194881.P6541310656296300630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A372621 (n + 1)).toNat

end

end A194881.P6541310656296300630

namespace A194881

/-- `A020725(A372621(n+1))` -/
def P6541310656296300630.Spec : Prop :=
  ∀ n, P6541310656296300630.a n = A194881 (n + 1)

end A194881

/-! ## A194881.P6692000416111098910

`A372619(A034856(n+2))+1`
-/

namespace A194881.P6692000416111098910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 (A034856 (n + 2)).toNat + 1

end

end A194881.P6692000416111098910

namespace A194881

/-- `A372619(A034856(n+2))+1` -/
def P6692000416111098910.Spec : Prop :=
  ∀ n, P6692000416111098910.a n = A194881 (n + 1)

end A194881

/-!
# A194882: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives i values.

The programs for A194882, the canonical program `A194882.P5730675765094386744` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194882 has offset 0).

The definition of A194882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194882.P1995706215921461159

`∑[char[C(n, 4)]]+2`
-/

namespace A194882.P1995706215921461159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A194882.P1995706215921461159

namespace A194882

/-- `∑[char[C(n, 4)]]+2` -/
def P1995706215921461159.Spec : Prop :=
  ∀ n, (P1995706215921461159.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P17225068582143403897

`∑[char[∑[∑[∑[n]]]]]+2`
-/

namespace A194882.P17225068582143403897
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A194882.P17225068582143403897

namespace A194882

/-- `∑[char[∑[∑[∑[n]]]]]+2` -/
def P17225068582143403897.Spec : Prop :=
  ∀ n, (P17225068582143403897.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P5102451995089322529

`abs(comp[∑[C(n, 3)]+n]-n)`
-/

namespace A194882.P5102451995089322529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)|

end

end A194882.P5102451995089322529

namespace A194882

/-- `abs(comp[∑[C(n, 3)]+n]-n)` -/
def P5102451995089322529.Spec : Prop :=
  ∀ n, P5102451995089322529.a n = A194882 n

end A194882

/-! ## A194882.P2012787275804310881

`abs(comp[C(n+1, 4)+n]-n)`
-/

namespace A194882.P2012787275804310881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)|

end

end A194882.P2012787275804310881

namespace A194882

/-- `abs(comp[C(n+1, 4)+n]-n)` -/
def P2012787275804310881.Spec : Prop :=
  ∀ n, P2012787275804310881.a n = A194882 n

end A194882

/-! ## A194882.P14625116105084958358

`∑{digits}[comp[∑[C(n, 3)]+n]-n, #]`
-/

namespace A194882.P14625116105084958358
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A194882.P14625116105084958358

namespace A194882

/-- `∑{digits}[comp[∑[C(n, 3)]+n]-n, #]` -/
def P14625116105084958358.Spec : Prop :=
  ∀ n, (P14625116105084958358.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P5730675765094386744

`dr(A127321(n)+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194882

/-- `dr(A127321(n)+3)` -/
def P5730675765094386744.Spec : Prop :=
  ∀ n, (P5730675765094386744.a n : ℤ) = A194882 n

theorem P5730675765094386744.correct : P5730675765094386744.Spec := by
  intro n
  simp only [A194882]

end A194882

/-! ## A194882.P2482341481461634326

`floor(log2(A014312(n+1)))`
-/

namespace A194882.P2482341481461634326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A014312 (n + 1)).toNat

end

end A194882.P2482341481461634326

namespace A194882

/-- `floor(log2(A014312(n+1)))` -/
def P2482341481461634326.Spec : Prop :=
  ∀ n, (P2482341481461634326.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P9192000510591790741

`floor(log2(A043571(n+1)))`
-/

namespace A194882.P9192000510591790741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A043571 (n + 1)).toNat

end

end A194882.P9192000510591790741

namespace A194882

/-- `floor(log2(A043571(n+1)))` -/
def P9192000510591790741.Spec : Prop :=
  ∀ n, (P9192000510591790741.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P14317128389356274136

`floor(log2(A043732(n+1)))`
-/

namespace A194882.P14317128389356274136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A043732 (n + 1)).toNat

end

end A194882.P14317128389356274136

namespace A194882

/-- `floor(log2(A043732(n+1)))` -/
def P14317128389356274136.Spec : Prop :=
  ∀ n, (P14317128389356274136.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P9136012326026540464

`floor(log2(A379269(n+1)))`
-/

namespace A194882.P9136012326026540464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A379269 (n + 1)).toNat

end

end A194882.P9136012326026540464

namespace A194882

/-- `floor(log2(A379269(n+1)))` -/
def P9136012326026540464.Spec : Prop :=
  ∀ n, (P9136012326026540464.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P15900673841714906340

`ceil(log2(A043682(n+1)))`
-/

namespace A194882.P15900673841714906340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A043682 (n + 1) : ℝ)⌉

end

end A194882.P15900673841714906340

namespace A194882

/-- `ceil(log2(A043682(n+1)))` -/
def P15900673841714906340.Spec : Prop :=
  ∀ n, P15900673841714906340.a n = A194882 n

end A194882

/-! ## A194882.P17465825987443835117

`dr(∑[A256436(n)]+2)`
-/

namespace A194882.P17465825987443835117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A194882.P17465825987443835117

namespace A194882

/-- `dr(∑[A256436(n)]+2)` -/
def P17465825987443835117.Spec : Prop :=
  ∀ n, (P17465825987443835117.a n : ℤ) = A194882 n

end A194882

/-! ## A194882.P14798963649830976742

`A000005(4*2^(∑[char[C(n, 4)]]-1))`
-/

namespace A194882.P14798963649830976742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (4 * (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ))).toNat

end

end A194882.P14798963649830976742

namespace A194882

/-- `A000005(4*2^(∑[char[C(n, 4)]]-1))` -/
def P14798963649830976742.Spec : Prop :=
  ∀ n, P14798963649830976742.a n = A194882 n

end A194882

/-! ## A194882.P8942007973193405276

`A004492(A127321(n))`
-/

namespace A194882.P8942007973193405276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A127321 n).toNat

end

end A194882.P8942007973193405276

namespace A194882

/-- `A004492(A127321(n))` -/
def P8942007973193405276.Spec : Prop :=
  ∀ n, P8942007973193405276.a n = A194882 n

end A194882

/-! ## A194882.P1234152614744465442

`A000523(A014312(n+1))`
-/

namespace A194882.P1234152614744465442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A014312 (n + 1)).toNat

end

end A194882.P1234152614744465442

namespace A194882

/-- `A000523(A014312(n+1))` -/
def P1234152614744465442.Spec : Prop :=
  ∀ n, P1234152614744465442.a n = A194882 n

end A194882

/-!
# A194883: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives j values.

The programs for A194883, the canonical program `A194883.P13313094170097831058` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194883 has offset 0).

The definition of A194883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194883.P18208934603205464001

`A002262(∑[char[A051677(n+1)]])+2`
-/

namespace A194883.P18208934603205464001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A194883.P18208934603205464001

namespace A194883

/-- `A002262(∑[char[A051677(n+1)]])+2` -/
def P18208934603205464001.Spec : Prop :=
  ∀ n, P18208934603205464001.a n = A194883 n

end A194883

/-! ## A194883.P17965484548681472680

`A002260(∑[char[A051677(n+1)]]+1)+1`
-/

namespace A194883.P17965484548681472680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A194883.P17965484548681472680

namespace A194883

/-- `A002260(∑[char[A051677(n+1)]]+1)+1` -/
def P17965484548681472680.Spec : Prop :=
  ∀ n, P17965484548681472680.a n = A194883 n

end A194883

/-! ## A194883.P13313094170097831058

`A000120(eq[2, A023416(A006257(n))])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A194883

/-- `A000120(eq[2, A023416(A006257(n))])` -/
def P13313094170097831058.Spec : Prop :=
  ∀ n, P13313094170097831058.a n = A194883 n

theorem P13313094170097831058.correct : P13313094170097831058.Spec := by
  intro n
  simp only [A194883]

end A194883

/-! ## A194883.P11929424132965631518

`A000523(A053645(eq[4, A000120(n)]))`
-/

namespace A194883.P11929424132965631518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A053645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A194883.P11929424132965631518

namespace A194883

/-- `A000523(A053645(eq[4, A000120(n)]))` -/
def P11929424132965631518.Spec : Prop :=
  ∀ n, P11929424132965631518.a n = A194883 n

end A194883

/-! ## A194883.P13335716604167910128

`A008687(A059893(eq[4, A000120(n)]))`
-/

namespace A194883.P13335716604167910128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A059893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A194883.P13335716604167910128

namespace A194883

/-- `A008687(A059893(eq[4, A000120(n)]))` -/
def P13335716604167910128.Spec : Prop :=
  ∀ n, P13335716604167910128.a n = A194883 n

end A194883

/-! ## A194883.P3859488607974975928

`A127322(n)+2`
-/

namespace A194883.P3859488607974975928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n + 2

end

end A194883.P3859488607974975928

namespace A194883

/-- `A127322(n)+2` -/
def P3859488607974975928.Spec : Prop :=
  ∀ n, P3859488607974975928.a n = A194883 n

end A194883

/-! ## A194883.P5775360886698328373

`A127326(n)+A194884(n)+1`
-/

namespace A194883.P5775360886698328373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 n + (A194884 n + 1)

end

end A194883.P5775360886698328373

namespace A194883

/-- `A127326(n)+A194884(n)+1` -/
def P5775360886698328373.Spec : Prop :=
  ∀ n, P5775360886698328373.a n = A194883 n

end A194883

/-! ## A194883.P1164519672664162521

`A127323(n)+A127326(n)+2`
-/

namespace A194883.P1164519672664162521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 n + (A127326 n + 2)

end

end A194883.P1164519672664162521

namespace A194883

/-- `A127323(n)+A127326(n)+2` -/
def P1164519672664162521.Spec : Prop :=
  ∀ n, P1164519672664162521.a n = A194883 n

end A194883

/-! ## A194883.P7407044038742204972

`A127321(n)+2-A127327(n)`
-/

namespace A194883.P7407044038742204972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n + (2 - A127327 n)

end

end A194883.P7407044038742204972

namespace A194883

/-- `A127321(n)+2-A127327(n)` -/
def P7407044038742204972.Spec : Prop :=
  ∀ n, P7407044038742204972.a n = A194883 n

end A194883

/-! ## A194883.P1803521444225957317

`3-(A007318(C(2, n))-A127322(n))`
-/

namespace A194883.P1803521444225957317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A007318 (Nat.choose 2 n) - A127322 n)

end

end A194883.P1803521444225957317

namespace A194883

/-- `3-(A007318(C(2, n))-A127322(n))` -/
def P1803521444225957317.Spec : Prop :=
  ∀ n, P1803521444225957317.a n = A194883 n

end A194883

/-! ## A194883.P7405553968925889097

`A173786(A127321(n)-A127327(n))`
-/

namespace A194883.P7405553968925889097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A127321 n - A127327 n).toNat

end

end A194883.P7405553968925889097

namespace A194883

/-- `A173786(A127321(n)-A127327(n))` -/
def P7405553968925889097.Spec : Prop :=
  ∀ n, P7405553968925889097.a n = A194883 n

end A194883

/-! ## A194883.P380224097751839020

`3-(A087088(A139619(n))-A127322(n))`
-/

namespace A194883.P380224097751839020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A087088 (A139619 n).toNat - A127322 n)

end

end A194883.P380224097751839020

namespace A194883

/-- `3-(A087088(A139619(n))-A127322(n))` -/
def P380224097751839020.Spec : Prop :=
  ∀ n, P380224097751839020.a n = A194883 n

end A194883

/-!
# A194884: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; sequence gives k values.

The programs for A194884, the canonical program `A194884.P9953674383290406264` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194884 has offset 0).

The definition of A194884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194884.P1335334865549083220

`A285099(eq[4, a(and(n, n-1))+1])` with `a(0)=0`
-/

namespace A194884.P1335334865549083220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194884.P1335334865549083220

namespace A194884

/-- `A285099(eq[4, a(and(n, n-1))+1])` -/
def P1335334865549083220.Spec : Prop :=
  ∀ n, P1335334865549083220.a n = A194884 n

end A194884

/-! ## A194884.P9904695774182681824

`A285099(eq[16, 2*a(and(n, n-1))])` with `a(0)=1`
-/

namespace A194884.P9904695774182681824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194884.P9904695774182681824

namespace A194884

/-- `A285099(eq[16, 2*a(and(n, n-1))])` -/
def P9904695774182681824.Spec : Prop :=
  ∀ n, P9904695774182681824.a n = A194884 n

end A194884

/-! ## A194884.P5054439912445272718

`A285099(eq[4, a(floor(n/2))+n%2])` with `a(0)=0`
-/

namespace A194884.P5054439912445272718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194884.P5054439912445272718

namespace A194884

/-- `A285099(eq[4, a(floor(n/2))+n%2])` -/
def P5054439912445272718.Spec : Prop :=
  ∀ n, P5054439912445272718.a n = A194884 n

end A194884

/-! ## A194884.P18145997407288837330

`A285099(eq[4, a(n-1)+1-val(n, 2)])` with `a(0)=0`
-/

namespace A194884.P18145997407288837330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P18145997407288837330

namespace A194884

/-- `A285099(eq[4, a(n-1)+1-val(n, 2)])` -/
def P18145997407288837330.Spec : Prop :=
  ∀ n, P18145997407288837330.a n = A194884 n

end A194884

/-! ## A194884.P864853435825326365

`A285099(A014312(n+1))`
-/

namespace A194884.P864853435825326365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A014312 (n + 1)).toNat

end

end A194884.P864853435825326365

namespace A194884

/-- `A285099(A014312(n+1))` -/
def P864853435825326365.Spec : Prop :=
  ∀ n, P864853435825326365.a n = A194884 n

end A194884

/-! ## A194884.P6530084487122719256

`A285099(eq[4, A000120(n)])`
-/

namespace A194884.P6530084487122719256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P6530084487122719256

namespace A194884

/-- `A285099(eq[4, A000120(n)])` -/
def P6530084487122719256.Spec : Prop :=
  ∀ n, P6530084487122719256.a n = A194884 n

end A194884

/-! ## A194884.P14480489918834522655

`A285099(eq[7, A057334(n)])`
-/

namespace A194884.P14480489918834522655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P14480489918834522655

namespace A194884

/-- `A285099(eq[7, A057334(n)])` -/
def P14480489918834522655.Spec : Prop :=
  ∀ n, P14480489918834522655.a n = A194884 n

end A194884

/-! ## A194884.P14200460556050732686

`A285099(eq[7, A088512(n)])`
-/

namespace A194884.P14200460556050732686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P14200460556050732686

namespace A194884

/-- `A285099(eq[7, A088512(n)])` -/
def P14200460556050732686.Spec : Prop :=
  ∀ n, P14200460556050732686.a n = A194884 n

end A194884

/-! ## A194884.P16458944978835142745

`A285099(eq[15, A038573(n)])`
-/

namespace A194884.P16458944978835142745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P16458944978835142745

namespace A194884

/-- `A285099(eq[15, A038573(n)])` -/
def P16458944978835142745.Spec : Prop :=
  ∀ n, P16458944978835142745.a n = A194884 n

end A194884

/-! ## A194884.P1646927125022454544

`A285099(eq[15, A050315(n)])`
-/

namespace A194884.P1646927125022454544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P1646927125022454544

namespace A194884

/-- `A285099(eq[15, A050315(n)])` -/
def P1646927125022454544.Spec : Prop :=
  ∀ n, P1646927125022454544.a n = A194884 n

end A194884

/-! ## A194884.P16262225390057122153

`A285099(eq[16, A001316(n)])`
-/

namespace A194884.P16262225390057122153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194884.P16262225390057122153

namespace A194884

/-- `A285099(eq[16, A001316(n)])` -/
def P16262225390057122153.Spec : Prop :=
  ∀ n, P16262225390057122153.a n = A194884 n

end A194884

/-! ## A194884.P9953674383290406264

`A007814(A129760(eq[4, A000120(n)]))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A194884

/-- `A007814(A129760(eq[4, A000120(n)]))` -/
def P9953674383290406264.Spec : Prop :=
  ∀ n, P9953674383290406264.a n = A194884 n

theorem P9953674383290406264.correct : P9953674383290406264.Spec := by
  intro n
  simp only [A194884]

end A194884

/-! ## A194884.P16423036262052927708

`A000005(A261359(n)/A189225(n))`
-/

namespace A194884.P16423036262052927708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A261359 n : ℚ) / (A189225 n : ℚ))).toNat

end

end A194884.P16423036262052927708

namespace A194884

/-- `A000005(A261359(n)/A189225(n))` -/
def P16423036262052927708.Spec : Prop :=
  ∀ n, P16423036262052927708.a n = A194884 n

end A194884

/-! ## A194884.P13852894850336952844

`A001222(A261359(n)/A189225(n))+1`
-/

namespace A194884.P13852894850336952844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A261359 n : ℚ) / (A189225 n : ℚ))).toNat + 1

end

end A194884.P13852894850336952844

namespace A194884

/-- `A001222(A261359(n)/A189225(n))+1` -/
def P13852894850336952844.Spec : Prop :=
  ∀ n, P13852894850336952844.a n = A194884 n

end A194884

/-! ## A194884.P1689217610013769636

`A001222(2/A189225(n)*A261359(n))`
-/

namespace A194884.P1689217610013769636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 / (A189225 n : ℚ) * (A261359 n : ℚ))).toNat

end

end A194884.P1689217610013769636

namespace A194884

/-- `A001222(2/A189225(n)*A261359(n))` -/
def P1689217610013769636.Spec : Prop :=
  ∀ n, P1689217610013769636.a n = A194884 n

end A194884

/-! ## A194884.P17613951907943215703

`A127323(n)+1`
-/

namespace A194884.P17613951907943215703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 n + 1

end

end A194884.P17613951907943215703

namespace A194884

/-- `A127323(n)+1` -/
def P17613951907943215703.Spec : Prop :=
  ∀ n, P17613951907943215703.a n = A194884 n

theorem P17613951907943215703.correct : P17613951907943215703.Spec := by
  intro n
  simp only [A194884, Nat.add_sub_cancel, A194884.P17613951907943215703.a, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A127323, A127323.P11295704530914292071.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194884

/-! ## A194884.P3759276602265980831

`A127324(n)+A127325(n)+1`
-/

namespace A194884.P3759276602265980831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 n + (A127325 n + 1)

end

end A194884.P3759276602265980831

namespace A194884

/-- `A127324(n)+A127325(n)+1` -/
def P3759276602265980831.Spec : Prop :=
  ∀ n, P3759276602265980831.a n = A194884 n

theorem P3759276602265980831.correct : P3759276602265980831.Spec := by
  intro n
  simp only [A194884, Nat.add_sub_cancel, A194884.P3759276602265980831.a, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A127324, A127324.P10851335711510860639.a, A127325, A127325.P362483209747612631.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A038466, A038466.P7851219286122095135.f1, A038466.P7851219286122095135.f2, A038466.P7851219286122095135.a, A127323, A127323.P11295704530914292071.a, A005836, A005836.P12367569128854000442.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194884

/-! ## A194884.P10745455731181615439

`A127322(n)+1-A127326(n)`
-/

namespace A194884.P10745455731181615439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n + (1 - A127326 n)

end

end A194884.P10745455731181615439

namespace A194884

/-- `A127322(n)+1-A127326(n)` -/
def P10745455731181615439.Spec : Prop :=
  ∀ n, P10745455731181615439.a n = A194884 n

theorem P10745455731181615439.correct : P10745455731181615439.Spec := by
  intro n
  simp only [A194884, Nat.add_sub_cancel, A194884.P10745455731181615439.a, A194884.P9953674383290406264.f1, A194884.P9953674383290406264.f2, A194884.P9953674383290406264.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A127322, A127322.P8390602753419418213.f1, A127322.P8390602753419418213.f2, A127322.P8390602753419418213.a, A127326, A127326.P13116696764520975307.a, A129760, A129760.P2320931579254019860.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, A006257, A006257.P8910165504183276925.a, A023416, A023416.P8124303482289229133.a, A127323, A127323.P11295704530914292071.a, A006519, A006519.P10435570611646570274.a, A070939, A070939.P14677302147902843740.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194884

/-! ## A194884.P8729012466611208092

`A000005(p?[A002262(n)]^A127323(n))`
-/

namespace A194884.P8729012466611208092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A127323 n : ℤ))).toNat

end

end A194884.P8729012466611208092

namespace A194884

/-- `A000005(p?[A002262(n)]^A127323(n))` -/
def P8729012466611208092.Spec : Prop :=
  ∀ n, P8729012466611208092.a n = A194884 n

end A194884

/-! ## A194884.P1526650509642315346

`A000005(p?[A056558(n)]^A127323(n))`
-/

namespace A194884.P1526650509642315346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A127323 n : ℤ))).toNat

end

end A194884.P1526650509642315346

namespace A194884

/-- `A000005(p?[A056558(n)]^A127323(n))` -/
def P1526650509642315346.Spec : Prop :=
  ∀ n, P1526650509642315346.a n = A194884 n

end A194884

/-!
# A194885: Write n = C(i,4)+C(j,3)+C(k,2)+C(l,1) with i>j>k>l>=0; let L[n] = [i,j,k,l]; sequence gives list of quadruples L[n], n >= 0.

The programs for A194885, there is no canonical definition to state claims against.
-/

/-! ## A194885.P4990689547212474303

`A010874((5*n+3)²-comp[6*n])`
-/

namespace A194885.P4990689547212474303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 ((5 * n + 3) ^ 2 - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A194885.P4990689547212474303

/-! ## A194885.P1832770066105901856

`A159957(A157514(n+1))`
-/

namespace A194885.P1832770066105901856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159957 (A157514 (n + 1)).toNat

end

end A194885.P1832770066105901856

/-! ## A194885.P12715130065708343136

`∑[A166911(A035597(n))]%5`
-/

namespace A194885.P12715130065708343136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 (A035597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A194885.P12715130065708343136

/-! ## A194885.P464392678264013797

`∑[A274099(A152813(n))]%5`
-/

namespace A194885.P464392678264013797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274099 (A152813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A194885.P464392678264013797

/-! ## A194885.P10976282039344086242

`A195664(A046691(6*n+4))`
-/

namespace A194885.P10976282039344086242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 (A046691 (6 * n + 4)).toNat

end

end A194885.P10976282039344086242

/-!
# A194886: Units' digits of the nonzero decagonal numbers.

The programs for A194886, the canonical program `A194886.P11912885000235145726` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194886 has offset 1).

The definition of A194886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194886.P11912885000235145726

`((n+1)*(4*(n+1)-3))%10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A194886

/-- `((n+1)*(4*(n+1)-3))%10` -/
def P11912885000235145726.Spec : Prop :=
  ∀ n, P11912885000235145726.a n = A194886 (n + 1)

theorem P11912885000235145726.correct : P11912885000235145726.Spec := by
  intro n
  simp only [A194886, Nat.add_sub_cancel]

end A194886

/-!
# A194887: Numbers that are the sum of two powers of 12.

The programs for A194887, the canonical program `A194887.P13401530721558716805` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194887 has offset 1).

The definition of A194887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194887.P13401530721558716805

`A038336(A057944(n))+a(A112367(n))-1` with `a(0)=2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A194887

/-- `A038336(A057944(n))+a(A112367(n))-1` -/
def P13401530721558716805.Spec : Prop :=
  ∀ n, P13401530721558716805.a n = A194887 (n + 1)

theorem P13401530721558716805.correct : P13401530721558716805.Spec := by
  intro n
  simp only [A194887, Nat.add_sub_cancel]

end A194887

/-! ## A194887.P10800134235654930026

`A038336(A057944(n))+A038336(A112367(n))`
-/

namespace A194887.P10800134235654930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038336 (A057944 n).toNat + A038336 (A112367 n).toNat

end

end A194887.P10800134235654930026

namespace A194887

/-- `A038336(A057944(n))+A038336(A112367(n))` -/
def P10800134235654930026.Spec : Prop :=
  ∀ n, P10800134235654930026.a n = A194887 (n + 1)

end A194887

/-! ## A194887.P5734108768642586137

`A055378(eq[12, A002262(n)])`
-/

namespace A194887.P5734108768642586137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194887.P5734108768642586137

namespace A194887

/-- `A055378(eq[12, A002262(n)])` -/
def P5734108768642586137.Spec : Prop :=
  ∀ n, P5734108768642586137.a n = A194887 (n + 1)

end A194887

/-! ## A194887.P2851990860973854241

`A166644(A059268(n))+A166644(A137688(n))`
-/

namespace A194887.P2851990860973854241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166644 (A059268 n).toNat + A166644 (A137688 n).toNat

end

end A194887.P2851990860973854241

namespace A194887

/-- `A166644(A059268(n))+A166644(A137688(n))` -/
def P2851990860973854241.Spec : Prop :=
  ∀ n, P2851990860973854241.a n = A194887 (n + 1)

end A194887

/-! ## A194887.P4413128536137907220

`eq[2, A053832(n)]`
-/

namespace A194887.P4413128536137907220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194887.P4413128536137907220

namespace A194887

/-- `eq[2, A053832(n)]` -/
def P4413128536137907220.Spec : Prop :=
  ∀ n, (P4413128536137907220.a n : ℤ) = A194887 (n + 1)

end A194887

/-!
# A194888: Number of lower triangles of an n X n 0..3 array with new values introduced in row major order 0..3 and no two horizontal or vertical neighbors of any element equal.

The programs for A194888, there is no canonical definition to state claims against.
-/

/-! ## A194888.P3304346561094030231

`A194893(∑[n+3]+1)`
-/

namespace A194888.P3304346561094030231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194888.P3304346561094030231

/-! ## A194888.P10793378067633419205

`record[A194893(eq[3, A106255(n+1)])]`
-/

namespace A194888.P10793378067633419205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194888.P10793378067633419205

/-! ## A194888.P8623085933992712172

`record[gcd(A194893(n+2), A215703(n+3))]`
-/

namespace A194888.P8623085933992712172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194893 (n + 2)) (A215703 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194888.P8623085933992712172

/-! ## A194888.P1962112682419543792

`record[A194893(A025715(n)+n)]`
-/

namespace A194888.P1962112682419543792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A025715 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194888.P1962112682419543792

/-!
# A194889: Number of lower triangles of an n X n 0..4 array with new values introduced in row major order 0..4 and no two horizontal or vertical neighbors of any element equal.

The programs for A194889, there is no canonical definition to state claims against.
-/

/-! ## A194889.P16908760728943117079

`A194893(A141214(n+1))`
-/

namespace A194889.P16908760728943117079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A141214 (n + 1)).toNat

end

end A194889.P16908760728943117079

/-! ## A194889.P16598723497932976457

`A194893(A155212(n)+5)`
-/

namespace A194889.P16598723497932976457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A155212 n + 5).toNat

end

end A194889.P16598723497932976457

/-! ## A194889.P10478993139801328039

`A194893(eq[4, A209434(n)])`
-/

namespace A194889.P10478993139801328039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194889.P10478993139801328039

/-! ## A194889.P10578564894962934053

`A194893(A052905(n+1)+2)`
-/

namespace A194889.P10578564894962934053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A052905 (n + 1) + 2).toNat

end

end A194889.P10578564894962934053

/-! ## A194889.P3701373455755097496

`A194893(eq[2, A299779(n+1)])`
-/

namespace A194889.P3701373455755097496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194889.P3701373455755097496

/-!
# A194890: Number of lower triangles of an n X n 0..5 array with new values introduced in row major order 0..5 and no two horizontal or vertical neighbors of any element equal.

The programs for A194890, there is no canonical definition to state claims against.
-/

/-! ## A194890.P10913129229249490494

`A194893(∑[n+5]+6)`
-/

namespace A194890.P10913129229249490494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A194890.P10913129229249490494

/-! ## A194890.P18080207838278995211

`record[A194893(abs(A046691(n)))]`
-/

namespace A194890.P18080207838278995211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194890.P18080207838278995211

/-! ## A194890.P4431168035686837573

`record[A194893(A046691(n+1))]`
-/

namespace A194890.P4431168035686837573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A046691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194890.P4431168035686837573

/-! ## A194890.P5183263569131918909

`A194893(A046691(n+3))*A319101(n+1)`
-/

namespace A194890.P5183263569131918909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A046691 (n + 3)).toNat * A319101 (n + 1)

end

end A194890.P5183263569131918909

/-!
# A194891: Number of lower triangles of an n X n 0..6 array with new values introduced in row major order 0..6 and no two horizontal or vertical neighbors of any element equal.

The programs for A194891, there is no canonical definition to state claims against.
-/

/-! ## A194891.P690154611841258526

`record[A194893(∑[n+3]-2)]`
-/

namespace A194891.P690154611841258526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194891.P690154611841258526

/-! ## A194891.P14867933845648708596

`A194893(A052905(n+3))`
-/

namespace A194891.P14867933845648708596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A052905 (n + 3)).toNat

end

end A194891.P14867933845648708596

/-! ## A194891.P1506925249169433151

`A194893(A056119(n)+16)`
-/

namespace A194891.P1506925249169433151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (A056119 n + 16).toNat

end

end A194891.P1506925249169433151

/-!
# A194892: Number of lower triangles of an n X n 0..7 array with new values introduced in row major order 0..7 and no two horizontal or vertical neighbors of any element equal.

The programs for A194892, there is no canonical definition to state claims against.
-/

/-! ## A194892.P972397347865566304

`A194893(eq[10, A185782(n+1)])`
-/

namespace A194892.P972397347865566304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194892.P972397347865566304

/-!
# A194893: T(n,k)=Number of lower triangles of an n X n 0..k array with new values introduced in row major order 0..k and no two horizontal or vertical neighbors of any element equal.

The programs for A194893, there is no canonical definition to state claims against.
-/

/-! ## A194893.P13259493632215921289

`C(A263343(A063610(n)), A002262(n))`
-/

namespace A194893.P13259493632215921289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A263343 (A063610 n).toNat).toNat (A002262 n).toNat

end

end A194893.P13259493632215921289

/-! ## A194893.P4055690060145416058

`and(A091180(A018006(n)), A329515(n))`
-/

namespace A194893.P4055690060145416058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091180 (A018006 n).toNat) (A329515 n)

end

end A194893.P4055690060145416058

/-! ## A194893.P13665287569694425109

`A001222(A001838(n+1)^A215703(n))`
-/

namespace A194893.P13665287569694425109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001838 (n + 1) : ℚ) ^ (A215703 n : ℤ))).toNat

end

end A194893.P13665287569694425109

/-! ## A194893.P15879395884788787105

`A027422(n)%A008905(A153714(n+1))`
-/

namespace A194893.P15879395884788787105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027422 n) (A008905 (A153714 (n + 1)).toNat)

end

end A194893.P15879395884788787105

/-! ## A194893.P786789063951260337

`A135086(n+1)%A056759(A135087(n))`
-/

namespace A194893.P786789063951260337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135086 (n + 1)) (A056759 (A135087 n).toNat)

end

end A194893.P786789063951260337

/-!
# A194894: The number of the ordered triples (A,B,C) satisfying the system of the modular relations {A*B - B*A = C, B*C - C*B = A, C*A - A*C = B}, where A,B,C are distinct 2 X 2 matrices over Z(n).

The programs for A194894, there is no canonical definition to state claims against.
-/

/-! ## A194894.P12491833379256543551

`A064279(A000265(n+1))*A227477(n+1)`
-/

namespace A194894.P12491833379256543551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064279 (A000265 (n + 1)).toNat * A227477 (n + 1)

end

end A194894.P12491833379256543551

/-! ## A194894.P13306188748175345559

`A261807((n+1)/2^val(n+1, 2))%A212083(3*n+2)`
-/

namespace A194894.P13306188748175345559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261807 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) (A212083 (3 * n + 2))

end

end A194894.P13306188748175345559

/-! ## A194894.P5793514869472413089

`A227477(n+1)-A125079(A020988(n))`
-/

namespace A194894.P5793514869472413089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227477 (n + 1) - A125079 (A020988 n).toNat

end

end A194894.P5793514869472413089

/-!
# A194895: Difference between the number of semiprimes less than 10^n and the number of primes less than 10^n.

The programs for A194895, there is no canonical definition to state claims against.
-/

/-! ## A194895.P6236075941064215056

`A066265(n)-A006880(n)`
-/

namespace A194895.P6236075941064215056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 n - A006880 n

end

end A194895.P6236075941064215056

/-! ## A194895.P12852559041621731758

`A066265(n)-∑[A006879(n)]`
-/

namespace A194895.P12852559041621731758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194895.P12852559041621731758

/-! ## A194895.P3724099838988725815

`A066265(n)-A122121(2*n)`
-/

namespace A194895.P3724099838988725815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 n - A122121 (2 * n)

end

end A194895.P3724099838988725815

/-! ## A194895.P5118260348361703370

`A066265(n)+1-A090226(n+1)`
-/

namespace A194895.P5118260348361703370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066265 n + (1 - A090226 (n + 1))

end

end A194895.P5118260348361703370

/-! ## A194895.P5313675814840291952

`A066265(n)-record[A122121(n)/(-1)^n]`
-/

namespace A194895.P5313675814840291952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122121 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066265 n : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194895.P5313675814840291952

/-!
# A194896: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-sqrt(8).

The programs for A194896, there is no canonical definition to state claims against.
-/

/-! ## A194896.P15485188230692777886

`A002260(A194898(n+1))`
-/

namespace A194896.P15485188230692777886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194898 (n + 1)).toNat

end

end A194896.P15485188230692777886

/-! ## A194896.P17745511114176721286

`A194898(n+1)-A057944(n)`
-/

namespace A194896.P17745511114176721286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (n + 1) - A057944 n

end

end A194896.P17745511114176721286

/-! ## A194896.P12983472394406359823

`A194832(n+1)+A194898(n+1)-A194834(n+1)`
-/

namespace A194896.P12983472394406359823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194898 (n + 1) - A194834 (n + 1))

end

end A194896.P12983472394406359823

/-! ## A194896.P6764448544843959623

`A194844(n+1)+A194898(n+1)-A194846(n+1)`
-/

namespace A194896.P6764448544843959623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + (A194898 (n + 1) - A194846 (n + 1))

end

end A194896.P6764448544843959623

/-! ## A194896.P1604528847458361808

`A194856(n+1)+A194898(n+1)-A194858(n+1)`
-/

namespace A194896.P1604528847458361808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + (A194898 (n + 1) - A194858 (n + 1))

end

end A194896.P1604528847458361808

/-! ## A194896.P1912209034590678098

`A194859(n+1)+A194898(n+1)-A194861(n+1)`
-/

namespace A194896.P1912209034590678098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + (A194898 (n + 1) - A194861 (n + 1))

end

end A194896.P1912209034590678098

/-! ## A194896.P3632132558836818272

`A194868(n+1)+A194898(n+1)-A194870(n+1)`
-/

namespace A194896.P3632132558836818272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + (A194898 (n + 1) - A194870 (n + 1))

end

end A194896.P3632132558836818272

/-! ## A194896.P4208371299022579689

`A194871(n+1)+A194898(n+1)-A194873(n+1)`
-/

namespace A194896.P4208371299022579689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194898 (n + 1) - A194873 (n + 1))

end

end A194896.P4208371299022579689

/-! ## A194896.P14314475025897730730

`A194898(n+1)+A194899(n+1)-A194901(n+1)`
-/

namespace A194896.P14314475025897730730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (n + 1) + (A194899 (n + 1) - A194901 (n + 1))

end

end A194896.P14314475025897730730

/-! ## A194896.P9789239922145977683

`A194898(n+1)+A194902(n+1)-A194904(n+1)`
-/

namespace A194896.P9789239922145977683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (n + 1) + (A194902 (n + 1) - A194904 (n + 1))

end

end A194896.P9789239922145977683

/-! ## A194896.P9158505507318966652

`A194898(n+1)+A194905(n+1)-A194907(n+1)`
-/

namespace A194896.P9158505507318966652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (n + 1) + (A194905 (n + 1) - A194907 (n + 1))

end

end A194896.P9158505507318966652

/-! ## A194896.P11075309946364151109

`A194898(n+1)+A194908(n+1)-A194910(n+1)`
-/

namespace A194896.P11075309946364151109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (n + 1) + (A194908 (n + 1) - A194910 (n + 1))

end

end A194896.P11075309946364151109

/-! ## A194896.P2522330548625303876

`A194844(A194845(A194898(A194846(A194845(n+1)))))`
-/

namespace A194896.P2522330548625303876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (A194845 (A194898 (A194846 (A194845 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P2522330548625303876

/-! ## A194896.P422517117870736024

`A194856(A194857(A194898(A194858(A194857(n+1)))))`
-/

namespace A194896.P422517117870736024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (A194857 (A194898 (A194858 (A194857 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P422517117870736024

/-! ## A194896.P1470114691062404021

`A194859(A194860(A194898(A194861(A194860(n+1)))))`
-/

namespace A194896.P1470114691062404021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (A194860 (A194898 (A194861 (A194860 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P1470114691062404021

/-! ## A194896.P16271482864068137113

`A194868(A194869(A194898(A194870(A194869(n+1)))))`
-/

namespace A194896.P16271482864068137113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (A194869 (A194898 (A194870 (A194869 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P16271482864068137113

/-! ## A194896.P3595009867686728667

`A194871(A194872(A194898(A194873(A194872(n+1)))))`
-/

namespace A194896.P3595009867686728667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (A194872 (A194898 (A194873 (A194872 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P3595009867686728667

/-! ## A194896.P308140456091737862

`A194902(A194903(A194898(A194904(A194903(n+1)))))`
-/

namespace A194896.P308140456091737862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (A194903 (A194898 (A194904 (A194903 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P308140456091737862

/-! ## A194896.P8787952061930365824

`A194908(A194909(A194898(A194910(A194909(n+1)))))`
-/

namespace A194896.P8787952061930365824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (A194909 (A194898 (A194910 (A194909 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P8787952061930365824

/-! ## A194896.P4930286327674164470

`A194899(A194900(A194898(A194901(A194900(n+1)))))`
-/

namespace A194896.P4930286327674164470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (A194900 (A194898 (A194901 (A194900 (n + 1)).toNat).toNat).toNat).toNat

end

end A194896.P4930286327674164470

/-!
# A194897: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194896; an interspersion.

The programs for A194897, there is no canonical definition to state claims against.
-/

/-! ## A194897.P11085951798034061455

`∑[char[∑[n]]]²+1-A194878(n+1)`
-/

namespace A194897.P11085951798034061455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194878 (n + 1))

end

end A194897.P11085951798034061455

/-! ## A194897.P224671712904127555

`A038722(A194878(n+1))`
-/

namespace A194897.P224671712904127555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194878 (n + 1)).toNat

end

end A194897.P224671712904127555

/-! ## A194897.P11446323075508021750

`A265129(n+1)-A194878(n+1)`
-/

namespace A194897.P11446323075508021750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194878 (n + 1)

end

end A194897.P11446323075508021750

/-! ## A194897.P7420101515589545940

`∑[A198954(n)]-(A194878(n+1)-1)`
-/

namespace A194897.P7420101515589545940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A194878 (n + 1) - 1)

end

end A194897.P7420101515589545940

/-! ## A194897.P17595542364095107696

`A093995(n+1)+1-A194878(n+1)`
-/

namespace A194897.P17595542364095107696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194878 (n + 1)

end

end A194897.P17595542364095107696

/-! ## A194897.P12792966801009970845

`A002522(A002024(n+1))-A194878(n+1)`
-/

namespace A194897.P12792966801009970845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194878 (n + 1)

end

end A194897.P12792966801009970845

/-! ## A194897.P9197834773797273237

`A061579(A194878(n+1)-1)+1`
-/

namespace A194897.P9197834773797273237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194878 (n + 1) - 1).toNat + 1

end

end A194897.P9197834773797273237

/-! ## A194897.P2493775530378971196

`A057944(n)+A004736(A194878(n+1))`
-/

namespace A194897.P2493775530378971196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194878 (n + 1)).toNat

end

end A194897.P2493775530378971196

/-! ## A194897.P9999506358871663214

`A093995(n+1)-A023443(A194878(n+1))`
-/

namespace A194897.P9999506358871663214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194878 (n + 1)).toNat

end

end A194897.P9999506358871663214

/-!
# A194898: Inverse permutation of A194897; every positive integer occurs exactly once.

The programs for A194898, there is no canonical definition to state claims against.
-/

/-! ## A194898.P246481342115797975

`A194896(n+1)+A057944(n)`
-/

namespace A194898.P246481342115797975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + A057944 n

end

end A194898.P246481342115797975

/-! ## A194898.P6875241645608711695

`A194896(n+1)+n-A002262(n)`
-/

namespace A194898.P6875241645608711695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194898.P6875241645608711695

/-! ## A194898.P15205556830104676579

`A194896(n+1)+A061885(n)-n`
-/

namespace A194898.P15205556830104676579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + (A061885 n - (n : ℤ))

end

end A194898.P15205556830104676579

/-! ## A194898.P9120840702546673548

`A194896(n+1)+n+1-A002260(n+1)`
-/

namespace A194898.P9120840702546673548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194898.P9120840702546673548

/-! ## A194898.P2043788000712301866

`A194896(n+1)+A004201(n+1)-1-n`
-/

namespace A194898.P2043788000712301866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + (A004201 (n + 1) - 1) - (n : ℤ)

end

end A194898.P2043788000712301866

/-! ## A194898.P4069787790091003691

`A194896(n+1)+A161680(round(sqrt(2*(n+1))))`
-/

namespace A194898.P4069787790091003691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + A161680 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A194898.P4069787790091003691

/-! ## A194898.P5390435453025239931

`A194896(n+1)+A000217(A003056(n))`
-/

namespace A194898.P5390435453025239931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + A000217 (A003056 n).toNat

end

end A194898.P5390435453025239931

/-! ## A194898.P17365339464177445736

`A194896(n+1)+A001971(A131507(n))`
-/

namespace A194898.P17365339464177445736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + A001971 (A131507 n).toNat

end

end A194898.P17365339464177445736

/-! ## A194898.P704656498500073649

`A194834(n+1)+A194896(n+1)-A194832(n+1)`
-/

namespace A194898.P704656498500073649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194896 (n + 1) - A194832 (n + 1))

end

end A194898.P704656498500073649

/-! ## A194898.P5697047949834490904

`A194879(A038722(n+1))`
-/

namespace A194898.P5697047949834490904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194879 (A038722 (n + 1)).toNat

end

end A194898.P5697047949834490904

/-! ## A194898.P4436359146481111000

`A194877(A038722(n+1))+A057944(n)`
-/

namespace A194898.P4436359146481111000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (A038722 (n + 1)).toNat + A057944 n

end

end A194898.P4436359146481111000

/-! ## A194898.P14564910372751021033

`A194877(A038722(n+1))+n-A002262(n)`
-/

namespace A194898.P14564910372751021033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194877 (A038722 (n + 1)).toNat + ((n : ℤ) - A002262 n)

end

end A194898.P14564910372751021033

/-!
# A194899: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=sqrt(12).

The programs for A194899, there is no canonical definition to state claims against.
-/

/-! ## A194899.P3756128595714461610

`A002260(A194901(n+1))`
-/

namespace A194899.P3756128595714461610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194901 (n + 1)).toNat

end

end A194899.P3756128595714461610

/-! ## A194899.P5435613414887192291

`A194901(n+1)-A057944(n)`
-/

namespace A194899.P5435613414887192291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194901 (n + 1) - A057944 n

end

end A194899.P5435613414887192291

/-! ## A194899.P7065301657252001561

`A194832(n+1)+A194901(n+1)-A194834(n+1)`
-/

namespace A194899.P7065301657252001561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194901 (n + 1) - A194834 (n + 1))

end

end A194899.P7065301657252001561

/-! ## A194899.P3656631725201543639

`A004736(A265129(n+1)-A194901(n+1))`
-/

namespace A194899.P3656631725201543639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A265129 (n + 1) - A194901 (n + 1)).toNat

end

end A194899.P3656631725201543639

/-! ## A194899.P17252209165534468912

`A194902(∑[char[∑[n]]]²-n)`
-/

namespace A194899.P17252209165534468912
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194899.P17252209165534468912

/-! ## A194899.P7914977809499498610

`A057427(n+3)*A194902(A061579(n)+1)`
-/

namespace A194899.P7914977809499498610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3) * A194902 (A061579 n + 1).toNat

end

end A194899.P7914977809499498610

/-! ## A194899.P452256382238594640

`A194902(A061579(n)+1)+A000038(2*(n+1))`
-/

namespace A194899.P452256382238594640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (A061579 n + 1).toNat + A000038 (2 * (n + 1))

end

end A194899.P452256382238594640

