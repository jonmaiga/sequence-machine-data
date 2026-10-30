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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A249700: Denominators of coefficients in series expansion of Cl_2(x)+x*log(x), where Cl_2 is the Clausen function of order 2.

The programs for A249700, there is no canonical definition to state claims against.
-/

/-! ## A249700.P3015874070126765167

`A111919(n^A344851(n))`
-/

namespace A249700.P3015874070126765167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111919 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A344851 n : ℤ))).toNat

end

end A249700.P3015874070126765167

/-! ## A249700.P9795686022321286935

`A023172(A342342(n)^∑[∑{e}[n, #]])`
-/

namespace A249700.P9795686022321286935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (A342342 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A249700.P9795686022321286935

/-!
# A249701: Number of length n+3 0..2 arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249701, there is no canonical definition to state claims against.
-/

/-! ## A249701.P14685021803851529120

`A249707(∑[n+2])`
-/

namespace A249701.P14685021803851529120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249701.P14685021803851529120

/-! ## A249701.P12219810478371687990

`record[A249707(A000096(A133310(n)))]`
-/

namespace A249701.P12219810478371687990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P12219810478371687990

/-! ## A249701.P10047424291588880965

`record[A249707(A000096(A154958(n)))]`
-/

namespace A249701.P10047424291588880965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P10047424291588880965

/-! ## A249701.P3406529222455471653

`record[A249707(A000096(A324347(n)))]`
-/

namespace A249701.P3406529222455471653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P3406529222455471653

/-! ## A249701.P13959505914378552039

`record[A249707(A000096(A328399(n)))]`
-/

namespace A249701.P13959505914378552039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P13959505914378552039

/-! ## A249701.P10049166745897984371

`record[A249707(A000096(A328577(n)))]`
-/

namespace A249701.P10049166745897984371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A328577 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P10049166745897984371

/-! ## A249701.P761368148067231238

`record[A249707(A000096(A004736(n+1)))]`
-/

namespace A249701.P761368148067231238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P761368148067231238

/-! ## A249701.P9847644424847703054

`record[A249707(A000096(A032742(n+1)))]`
-/

namespace A249701.P9847644424847703054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P9847644424847703054

/-! ## A249701.P1195475780858707590

`record[A249707(A000096(A300248(n+1)))]`
-/

namespace A249701.P1195475780858707590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A300248 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P1195475780858707590

/-! ## A249701.P15036217492214531488

`and(A107953(2*n+1), A249707(A000096(n+1)))`
-/

namespace A249701.P15036217492214531488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 (2 * n + 1)) (A249707 (A000096 (n + 1)).toNat)

end

end A249701.P15036217492214531488

/-! ## A249701.P14526757523087717582

`record[A249707(A000096(A000188(n+1)))]`
-/

namespace A249701.P14526757523087717582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249701.P14526757523087717582

/-!
# A249702: Number of length n+3 0..3 arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249702, there is no canonical definition to state claims against.
-/

/-! ## A249702.P14162324390208996596

`A249707(∑[n+3]+1)`
-/

namespace A249702.P14162324390208996596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249702.P14162324390208996596

/-! ## A249702.P11985264475837738098

`lcm(2, A249707(A034856(n+2)))`
-/

namespace A249702.P11985264475837738098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249707 (A034856 (n + 2)).toNat)

end

end A249702.P11985264475837738098

/-! ## A249702.P8907216264296100675

`A249707(A034856(n+2))+and(2, A102460(n))`
-/

namespace A249702.P8907216264296100675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A034856 (n + 2)).toNat + Int.land 2 (A102460 n)

end

end A249702.P8907216264296100675

/-! ## A249702.P5825194053198885016

`A249707(A034856(n+2))+and(2, A185012(n))`
-/

namespace A249702.P5825194053198885016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A034856 (n + 2)).toNat + Int.land 2 (A185012 n)

end

end A249702.P5825194053198885016

/-! ## A249702.P8386359349887447747

`A209615(n+1)²*A249707(A034856(n+2))`
-/

namespace A249702.P8386359349887447747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) ^ 2 * A249707 (A034856 (n + 2)).toNat

end

end A249702.P8386359349887447747

/-! ## A249702.P3239106811544419247

`A249707(A034856(n+2))/A014963(C(2, 2*n)!)`
-/

namespace A249702.P3239106811544419247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249707 (A034856 (n + 2)).toNat : ℚ) / (A014963 (Nat.factorial (Nat.choose 2 (2 * n))) : ℚ)

end

end A249702.P3239106811544419247

/-! ## A249702.P3027234499778912723

`gcd(n, A020500(n+1))!*A249707(A034856(n+2))`
-/

namespace A249702.P3027234499778912723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.gcd (n : ℤ) (A020500 (n + 1))) : ℤ) * A249707 (A034856 (n + 2)).toNat

end

end A249702.P3027234499778912723

/-! ## A249702.P12199993027234539638

`A249707(A034856(n+2))/A014963(A124511(n+1))`
-/

namespace A249702.P12199993027234539638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249707 (A034856 (n + 2)).toNat : ℚ) / (A014963 (A124511 (n + 1)).toNat : ℚ)

end

end A249702.P12199993027234539638

/-!
# A249703: Number of length n+3 0..4 arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249703, there is no canonical definition to state claims against.
-/

/-! ## A249703.P3186085741772126260

`A249707(∑[n+4]+3)`
-/

namespace A249703.P3186085741772126260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A249703.P3186085741772126260

/-! ## A249703.P2638643383989155819

`or(1, A249707(A055998(n+2)))`
-/

namespace A249703.P2638643383989155819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249707 (A055998 (n + 2)).toNat)

end

end A249703.P2638643383989155819

/-! ## A249703.P11774590882125995846

`A033999(n)²*A249707(A055998(n+2))`
-/

namespace A249703.P11774590882125995846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A249707 (A055998 (n + 2)).toNat

end

end A249703.P11774590882125995846

/-! ## A249703.P17885646691733182217

`A249707(A055998(n+2))+A000007(n+1)`
-/

namespace A249703.P17885646691733182217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A249703.P17885646691733182217

/-! ## A249703.P4640264463205728755

`A000034(2*n)*A249707(A055998(n+2))`
-/

namespace A249703.P4640264463205728755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A249707 (A055998 (n + 2)).toNat

end

end A249703.P4640264463205728755

/-! ## A249703.P12660981374611960337

`A249707(A055998(n+2))%A077077(A016813(n))`
-/

namespace A249703.P12660981374611960337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249707 (A055998 (n + 2)).toNat) (A077077 (A016813 n).toNat)

end

end A249703.P12660981374611960337

/-! ## A249703.P17542927087995957314

`A054576(A000040(n+1))*A249707(A055998(n+2))`
-/

namespace A249703.P17542927087995957314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A000040 (n + 1)).toNat * A249707 (A055998 (n + 2)).toNat

end

end A249703.P17542927087995957314

/-! ## A249703.P5867763552652150947

`A054576(A020639(n+1))*A249707(A055998(n+2))`
-/

namespace A249703.P5867763552652150947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A020639 (n + 1)).toNat * A249707 (A055998 (n + 2)).toNat

end

end A249703.P5867763552652150947

/-!
# A249704: Number of length n+3 0..5 arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249704, there is no canonical definition to state claims against.
-/

/-! ## A249704.P15582384325160139575

`A249707(A046691(n+3))`
-/

namespace A249704.P15582384325160139575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A046691 (n + 3)).toNat

end

end A249704.P15582384325160139575

/-! ## A249704.P9252810079621718048

`A249707(Δ[A023545(n+1)])`
-/

namespace A249704.P9252810079621718048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (f1 (n + 1) - f1 n).toNat

end

end A249704.P9252810079621718048

/-! ## A249704.P17215564818424905643

`A249707(Δ[A111396(n)]-1)`
-/

namespace A249704.P17215564818424905643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (f1 (n + 1) - f1 n - 1).toNat

end

end A249704.P17215564818424905643

/-! ## A249704.P2874569144951671974

`A249707(A000217(n+5)-4)`
-/

namespace A249704.P2874569144951671974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000217 (n + 5) - 4).toNat

end

end A249704.P2874569144951671974

/-! ## A249704.P15580130622409198549

`A249707(A056115(n+2)-2*(n+1))`
-/

namespace A249704.P15580130622409198549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A056115 (n + 2) - (2 * (n + 1) : ℤ)).toNat

end

end A249704.P15580130622409198549

/-!
# A249705: Number of length n+3 0..6 arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249705, there is no canonical definition to state claims against.
-/

/-! ## A249705.P11104083429452783690

`A249707((n+4)²-∑[n+1]+1)`
-/

namespace A249705.P11104083429452783690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A249705.P11104083429452783690

/-! ## A249705.P11947189898040460941

`or(1, A249707(A000096(n+5)-4))`
-/

namespace A249705.P11947189898040460941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249707 (A000096 (n + 5) - 4).toNat)

end

end A249705.P11947189898040460941

/-! ## A249705.P1230992078090570847

`lcm(A158388(n), A249707(A000096(n+5)-4))`
-/

namespace A249705.P1230992078090570847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A249707 (A000096 (n + 5) - 4).toNat)

end

end A249705.P1230992078090570847

/-! ## A249705.P16292163683211549581

`A249707(A000096(n+5)-4)+A000007(n+1)`
-/

namespace A249705.P16292163683211549581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (n + 5) - 4).toNat + A000007 (n + 1)

end

end A249705.P16292163683211549581

/-! ## A249705.P1455777938271522810

`and(1, A107953(n))*A249707(A000096(n+5)-4)`
-/

namespace A249705.P1455777938271522810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A107953 n) * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P1455777938271522810

/-! ## A249705.P18296649020815026817

`A007318(A000217(n))*A249707(A000096(n+5)-4)`
-/

namespace A249705.P18296649020815026817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P18296649020815026817

/-! ## A249705.P9774736628621885552

`A249707(A000096(n+5)-4)/A291168(A000120(n))`
-/

namespace A249705.P9774736628621885552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249707 (A000096 (n + 5) - 4).toNat : ℚ) / (A291168 (A000120 n).toNat : ℚ)

end

end A249705.P9774736628621885552

/-! ## A249705.P14342763070826868357

`A249707(A000096(n+5)-4)+A008683(A111046(n+1))`
-/

namespace A249705.P14342763070826868357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (n + 5) - 4).toNat + A008683 (A111046 (n + 1)).toNat

end

end A249705.P14342763070826868357

/-! ## A249705.P12294592749465949760

`A001065(A006450(n+1))*A249707(A000096(n+5)-4)`
-/

namespace A249705.P12294592749465949760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A006450 (n + 1)).toNat * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P12294592749465949760

/-! ## A249705.P13202440872143282586

`A001222(A007520(n+1))*A249707(A000096(n+5)-4)`
-/

namespace A249705.P13202440872143282586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007520 (n + 1)).toNat * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P13202440872143282586

/-! ## A249705.P7962408165336843956

`A001221(A031215(n+1))*A249707(A000096(n+5)-4)`
-/

namespace A249705.P7962408165336843956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A031215 (n + 1)).toNat * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P7962408165336843956

/-! ## A249705.P1840280786177666480

`A001221(A229708(n+1))*A249707(A000096(n+5)-4)`
-/

namespace A249705.P1840280786177666480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A229708 (n + 1)).toNat * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P1840280786177666480

/-! ## A249705.P8866164406857071447

`A249707(A000096(n+5)-4)*A327564(A123365(n+1))`
-/

namespace A249705.P8866164406857071447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (n + 5) - 4).toNat * A327564 (A123365 (n + 1)).toNat

end

end A249705.P8866164406857071447

/-! ## A249705.P15874510444563165281

`A249707(A000096(n+5)-4)*A327564(A000040(2*(n+1)))`
-/

namespace A249705.P15874510444563165281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (n + 5) - 4).toNat * A327564 (A000040 (2 * (n + 1))).toNat

end

end A249705.P15874510444563165281

/-! ## A249705.P16098308860801666642

`A059317(n²)*A249707(A000096(n+5)-4)`
-/

namespace A249705.P16098308860801666642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (n ^ 2) * A249707 (A000096 (n + 5) - 4).toNat

end

end A249705.P16098308860801666642

/-!
# A249706: Number of length n+3 0..7 arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249706, there is no canonical definition to state claims against.
-/

/-! ## A249706.P5436560089834043337

`A249707(A055999(n+4))`
-/

namespace A249706.P5436560089834043337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A055999 (n + 4)).toNat

end

end A249706.P5436560089834043337

/-! ## A249706.P15370862726557070356

`A249707(Δ[A023551(n+2)])`
-/

namespace A249706.P15370862726557070356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (f1 (n + 1) - f1 n).toNat

end

end A249706.P15370862726557070356

/-! ## A249706.P453056615954353770

`A249707(A000096(n+6)-5)`
-/

namespace A249706.P453056615954353770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000096 (n + 6) - 5).toNat

end

end A249706.P453056615954353770

/-! ## A249706.P1511402752685216837

`A249707(A000217(n+7)-6)`
-/

namespace A249706.P1511402752685216837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000217 (n + 7) - 6).toNat

end

end A249706.P1511402752685216837

/-! ## A249706.P11075255721315382352

`A249707(A000124(n+7)-7)`
-/

namespace A249706.P11075255721315382352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000124 (n + 7) - 7).toNat

end

end A249706.P11075255721315382352

/-! ## A249706.P7495574746444060659

`A249707(A167614(n+6)-9)`
-/

namespace A249706.P7495574746444060659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167614 (n + 6) - 9).toNat

end

end A249706.P7495574746444060659

/-! ## A249706.P6860871668241302604

`A249707(Δ[n²]+A000096(n+4)+7)`
-/

namespace A249706.P6860871668241302604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A249706.P6860871668241302604

/-! ## A249706.P3631859052329039198

`A249707(A052905(A020705(n))-1)`
-/

namespace A249706.P3631859052329039198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A052905 (A020705 n).toNat - 1).toNat

end

end A249706.P3631859052329039198

/-!
# A249708: Number of length 2+3 0..n arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249708, the canonical program `A249708.P2078131258434854046` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249708 has offset 1).

The definition of A249708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249708.P2301076016033629956

`ogf((14-x+3x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A249708.P2301076016033629956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -1, 3, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A249708.P2301076016033629956

namespace A249708

/-- `ogf((14-x+3x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2301076016033629956.Spec : Prop :=
  ∀ n, P2301076016033629956.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P5560417877343590248

`(n+2)*((n+2)²+(n+1)*∑[n+3])`
-/

namespace A249708.P5560417877343590248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 2) ^ 2 + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A249708.P5560417877343590248

namespace A249708

/-- `(n+2)*((n+2)²+(n+1)*∑[n+3])` -/
def P5560417877343590248.Spec : Prop :=
  ∀ n, (P5560417877343590248.a n : ℤ) = A249708 (n + 1)

end A249708

/-! ## A249708.P2078131258434854046

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=14, a(1)=69, a(2)=208, a(3)=485, a(4)=966`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249708

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2078131258434854046.Spec : Prop :=
  ∀ n, P2078131258434854046.a n = A249708 (n + 1)

theorem P2078131258434854046.correct : P2078131258434854046.Spec := by
  intro n
  simp only [A249708, Nat.add_sub_cancel]

end A249708

/-! ## A249708.P17792162592940602416

`∑[∑[A067726(n+1)-4]]-A005563(n)`
-/

namespace A249708.P17792162592940602416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067726 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005563 n

end

end A249708.P17792162592940602416

namespace A249708

/-- `∑[∑[A067726(n+1)-4]]-A005563(n)` -/
def P17792162592940602416.Spec : Prop :=
  ∀ n, P17792162592940602416.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P5705745765946550415

`∑[A274973(n+1)]+1`
-/

namespace A249708.P5705745765946550415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249708.P5705745765946550415

namespace A249708

/-- `∑[A274973(n+1)]+1` -/
def P5705745765946550415.Spec : Prop :=
  ∀ n, P5705745765946550415.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P6128233974308718789

`(n+1)^3+A033486(n+1)+1`
-/

namespace A249708.P6128233974308718789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) + (A033486 (n + 1) + 1)

end

end A249708.P6128233974308718789

namespace A249708

/-- `(n+1)^3+A033486(n+1)+1` -/
def P6128233974308718789.Spec : Prop :=
  ∀ n, P6128233974308718789.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P12454915814456255094

`A033486(n)+Δ[A126274(n)]`
-/

namespace A249708.P12454915814456255094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n + (f1 (n + 1) - f1 n)

end

end A249708.P12454915814456255094

namespace A249708

/-- `A033486(n)+Δ[A126274(n)]` -/
def P12454915814456255094.Spec : Prop :=
  ∀ n, P12454915814456255094.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P693624223773670494

`A033486(n)+A005915(n+1)`
-/

namespace A249708.P693624223773670494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n + A005915 (n + 1)

end

end A249708.P693624223773670494

namespace A249708

/-- `A033486(n)+A005915(n+1)` -/
def P693624223773670494.Spec : Prop :=
  ∀ n, P693624223773670494.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P2824065954230181092

`∑[A005915(n+1)-A000578(n)]-n`
-/

namespace A249708.P2824065954230181092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 (n + 1) - A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A249708.P2824065954230181092

namespace A249708

/-- `∑[A005915(n+1)-A000578(n)]-n` -/
def P2824065954230181092.Spec : Prop :=
  ∀ n, P2824065954230181092.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P9180974897566086115

`∑[A005917(n+2)-A005898(n)]-n`
-/

namespace A249708.P9180974897566086115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 2) - A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A249708.P9180974897566086115

namespace A249708

/-- `∑[A005917(n+2)-A005898(n)]-n` -/
def P9180974897566086115.Spec : Prop :=
  ∀ n, P9180974897566086115.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P8507713993884905358

`A126274(n+1)-(A000537(n)+1+n)`
-/

namespace A249708.P8507713993884905358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 (n + 1) - (A000537 n + 1 + (n : ℤ))

end

end A249708.P8507713993884905358

namespace A249708

/-- `A126274(n+1)-(A000537(n)+1+n)` -/
def P8507713993884905358.Spec : Prop :=
  ∀ n, P8507713993884905358.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P8657681548171250107

`∑[A086113(n+1)+A003215(n+1)]+1`
-/

namespace A249708.P8657681548171250107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086113 (n + 1) + A003215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249708.P8657681548171250107

namespace A249708

/-- `∑[A086113(n+1)+A003215(n+1)]+1` -/
def P8657681548171250107.Spec : Prop :=
  ∀ n, P8657681548171250107.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P5541778008174168215

`A126274(n+1)-(A000217(n)²+1+n)`
-/

namespace A249708.P5541778008174168215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 (n + 1) - (A000217 n ^ 2 + 1 + (n : ℤ))

end

end A249708.P5541778008174168215

namespace A249708

/-- `A126274(n+1)-(A000217(n)²+1+n)` -/
def P5541778008174168215.Spec : Prop :=
  ∀ n, P5541778008174168215.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P8907578333263115220

`A005902(n+1)+∑[A015237(n+1)+n]`
-/

namespace A249708.P8907578333263115220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249708.P8907578333263115220

namespace A249708

/-- `A005902(n+1)+∑[A015237(n+1)+n]` -/
def P8907578333263115220.Spec : Prop :=
  ∀ n, P8907578333263115220.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P15455682397353056338

`A274323(n+1)+A050492(n+2)-A099392(n+2)`
-/

namespace A249708.P15455682397353056338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274323 (n + 1) + (A050492 (n + 2) - A099392 (n + 2))

end

end A249708.P15455682397353056338

namespace A249708

/-- `A274323(n+1)+A050492(n+2)-A099392(n+2)` -/
def P15455682397353056338.Spec : Prop :=
  ∀ n, P15455682397353056338.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P2689355832042627208

`A100146(n+2)+A100185(n+2)-A100167(n+2)`
-/

namespace A249708.P2689355832042627208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100146 (n + 2) + (A100185 (n + 2) - A100167 (n + 2))

end

end A249708.P2689355832042627208

namespace A249708

/-- `A100146(n+2)+A100185(n+2)-A100167(n+2)` -/
def P2689355832042627208.Spec : Prop :=
  ∀ n, P2689355832042627208.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P2092583558902794456

`A255499(n+2)+∑[A028896(n)]`
-/

namespace A249708.P2092583558902794456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249708.P2092583558902794456

namespace A249708

/-- `A255499(n+2)+∑[A028896(n)]` -/
def P2092583558902794456.Spec : Prop :=
  ∀ n, P2092583558902794456.a n = A249708 (n + 1)

end A249708

/-! ## A249708.P392840409958379513

`A103220(n+2)+A007585(n+1)`
-/

namespace A249708.P392840409958379513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103220 (n + 2) + A007585 (n + 1)

end

end A249708.P392840409958379513

namespace A249708

/-- `A103220(n+2)+A007585(n+1)` -/
def P392840409958379513.Spec : Prop :=
  ∀ n, P392840409958379513.a n = A249708 (n + 1)

end A249708

/-!
# A249709: Number of length 3+3 0..n arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249709, the canonical program `A249709.P17096652569192010639` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249709 has offset 1).

The definition of A249709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249709.P8863429492153254895

`ogf((20+5x-10x^2-12x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A249709.P8863429492153254895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, 5, -10, -12, 6, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A249709.P8863429492153254895

namespace A249709

/-- `ogf((20+5x-10x^2-12x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P8863429492153254895.Spec : Prop :=
  ∀ n, P8863429492153254895.a n = A249709 (n + 1)

end A249709

/-! ## A249709.P17096652569192010639

`(n+1)^5/15+2*(n+1)^4+7*(n+1)^3+7*(n+1)²+44*(n+1)/15+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249709

/-- `(n+1)^5/15+2*(n+1)^4+7*(n+1)^3+7*(n+1)²+44*(n+1)/15+1` -/
def P17096652569192010639.Spec : Prop :=
  ∀ n, P17096652569192010639.a n = (A249709 (n + 1) : ℚ)

end A249709

/-! ## A249709.P16967723353951586419

`A249707(∑[n+2]+4)`
-/

namespace A249709.P16967723353951586419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249709.P16967723353951586419

namespace A249709

/-- `A249707(∑[n+2]+4)` -/
def P16967723353951586419.Spec : Prop :=
  ∀ n, P16967723353951586419.a n = A249709 (n + 1)

end A249709

/-! ## A249709.P5020753933124000810

`lcm((-1)^n, A249707(A167614(n+1)))`
-/

namespace A249709.P5020753933124000810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A249707 (A167614 (n + 1)).toNat)

end

end A249709.P5020753933124000810

namespace A249709

/-- `lcm((-1)^n, A249707(A167614(n+1)))` -/
def P5020753933124000810.Spec : Prop :=
  ∀ n, (P5020753933124000810.a n : ℤ) = A249709 (n + 1)

end A249709

/-! ## A249709.P1584145449854019351

`lcm(A033999(n), A249707(A167499(n)+n))`
-/

namespace A249709.P1584145449854019351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A249707 (A167499 n + (n : ℤ)).toNat)

end

end A249709.P1584145449854019351

namespace A249709

/-- `lcm(A033999(n), A249707(A167499(n)+n))` -/
def P1584145449854019351.Spec : Prop :=
  ∀ n, (P1584145449854019351.a n : ℤ) = A249709 (n + 1)

end A249709

/-! ## A249709.P2903054357818624254

`A249707(A167614(n+1))%A269439(n+1)`
-/

namespace A249709.P2903054357818624254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249707 (A167614 (n + 1)).toNat) (A269439 (n + 1))

end

end A249709.P2903054357818624254

namespace A249709

/-- `A249707(A167614(n+1))%A269439(n+1)` -/
def P2903054357818624254.Spec : Prop :=
  ∀ n, P2903054357818624254.a n = A249709 (n + 1)

end A249709

/-! ## A249709.P16742924064423131829

`A249707(A034856(n+1)+5)*A331732(A060395(n))`
-/

namespace A249709.P16742924064423131829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A034856 (n + 1) + 5).toNat * A331732 (A060395 n).toNat

end

end A249709.P16742924064423131829

namespace A249709

/-- `A249707(A034856(n+1)+5)*A331732(A060395(n))` -/
def P16742924064423131829.Spec : Prop :=
  ∀ n, P16742924064423131829.a n = A249709 (n + 1)

end A249709

/-! ## A249709.P1866095173532098601

`A000120(A059268(n))*A249707(A167614(n+1))`
-/

namespace A249709.P1866095173532098601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059268 n).toNat * A249707 (A167614 (n + 1)).toNat

end

end A249709.P1866095173532098601

namespace A249709

/-- `A000120(A059268(n))*A249707(A167614(n+1))` -/
def P1866095173532098601.Spec : Prop :=
  ∀ n, P1866095173532098601.a n = A249709 (n + 1)

end A249709

/-!
# A249710: Number of length 4+3 0..n arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249710, the canonical program `A249710.P18017009160722916748` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249710 has offset 1).

The definition of A249710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249710.P10273762160755164612

`ogf((28+53x-10x^2-20x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A249710.P10273762160755164612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, 53, -10, -20, 6, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A249710.P10273762160755164612

namespace A249710

/-- `ogf((28+53x-10x^2-20x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P10273762160755164612.Spec : Prop :=
  ∀ n, P10273762160755164612.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P18017009160722916748

`7/15*(n+1)^5+5*(n+1)^4+11*(n+1)^3+8*(n+1)²+38/15*(n+1)+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249710

/-- `7/15*(n+1)^5+5*(n+1)^4+11*(n+1)^3+8*(n+1)²+38/15*(n+1)+1` -/
def P18017009160722916748.Spec : Prop :=
  ∀ n, P18017009160722916748.a n = (A249710 (n + 1) : ℚ)

end A249710

/-! ## A249710.P13797089834884575875

`A249707(A055999(n)+10)`
-/

namespace A249710.P13797089834884575875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A055999 n + 10).toNat

end

end A249710.P13797089834884575875

namespace A249710

/-- `A249707(A055999(n)+10)` -/
def P13797089834884575875.Spec : Prop :=
  ∀ n, P13797089834884575875.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P15985085088553178696

`A249707(A167614(n+2)+1)`
-/

namespace A249710.P15985085088553178696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167614 (n + 2) + 1).toNat

end

end A249710.P15985085088553178696

namespace A249710

/-- `A249707(A167614(n+2)+1)` -/
def P15985085088553178696.Spec : Prop :=
  ∀ n, P15985085088553178696.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P4880128868863404856

`A249707(A166136(n+2)-2)`
-/

namespace A249710.P4880128868863404856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A166136 (n + 2) - 2).toNat

end

end A249710.P4880128868863404856

namespace A249710

/-- `A249707(A166136(n+2)-2)` -/
def P4880128868863404856.Spec : Prop :=
  ∀ n, P4880128868863404856.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P18085788082957097235

`A249707(A000217(n+3)+4)`
-/

namespace A249710.P18085788082957097235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000217 (n + 3) + 4).toNat

end

end A249710.P18085788082957097235

namespace A249710

/-- `A249707(A000217(n+3)+4)` -/
def P18085788082957097235.Spec : Prop :=
  ∀ n, P18085788082957097235.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P12791089414098723652

`A249707(A166136(n+1)+1+n)`
-/

namespace A249710.P12791089414098723652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A249710.P12791089414098723652

namespace A249710

/-- `A249707(A166136(n+1)+1+n)` -/
def P12791089414098723652.Spec : Prop :=
  ∀ n, P12791089414098723652.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P15644721913316153212

`A249707(A167499(n+1)+2+n)`
-/

namespace A249710.P15644721913316153212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167499 (n + 1) + 2 + (n : ℤ)).toNat

end

end A249710.P15644721913316153212

namespace A249710

/-- `A249707(A167499(n+1)+2+n)` -/
def P15644721913316153212.Spec : Prop :=
  ∀ n, P15644721913316153212.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P7418031176332618247

`A249707(A000124(n+4)-(n+1))`
-/

namespace A249710.P7418031176332618247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A249710.P7418031176332618247

namespace A249710

/-- `A249707(A000124(n+4)-(n+1))` -/
def P7418031176332618247.Spec : Prop :=
  ∀ n, P7418031176332618247.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P13523393959326169633

`A249707(Δ[A023545(n+1)-n²])`
-/

namespace A249710.P13523393959326169633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (f1 (n + 1) - f1 n).toNat

end

end A249710.P13523393959326169633

namespace A249710

/-- `A249707(Δ[A023545(n+1)-n²])` -/
def P13523393959326169633.Spec : Prop :=
  ∀ n, P13523393959326169633.a n = A249710 (n + 1)

end A249710

/-! ## A249710.P16752698905444723427

`A249707(A005586(n+1)+5-A005586(n))`
-/

namespace A249710.P16752698905444723427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A005586 (n + 1) + (5 - A005586 n)).toNat

end

end A249710.P16752698905444723427

namespace A249710

/-- `A249707(A005586(n+1)+5-A005586(n))` -/
def P16752698905444723427.Spec : Prop :=
  ∀ n, P16752698905444723427.a n = A249710 (n + 1)

end A249710

/-!
# A249711: Number of length 5+3 0..n arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249711, the canonical program `A249711.P6883133310926724773` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249711 has offset 1).

The definition of A249711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249711.P2475779853092200058

`ogf((38+149x+32x^2-24x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A249711.P2475779853092200058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [38, 149, 32, -24, 6, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A249711.P2475779853092200058

namespace A249711

/-- `ogf((38+149x+32x^2-24x^3+6x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P2475779853092200058.Spec : Prop :=
  ∀ n, P2475779853092200058.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P6883133310926724773

`5/3*(n+1)^5+10*(n+1)^4+16*(n+1)^3+8*(n+1)²+4/3*(n+1)+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249711

/-- `5/3*(n+1)^5+10*(n+1)^4+16*(n+1)^3+8*(n+1)²+4/3*(n+1)+1` -/
def P6883133310926724773.Spec : Prop :=
  ∀ n, P6883133310926724773.a n = (A249711 (n + 1) : ℚ)

end A249711

/-! ## A249711.P11377622195267570618

`A249707(A167499(n+3))`
-/

namespace A249711.P11377622195267570618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167499 (n + 3)).toNat

end

end A249711.P11377622195267570618

namespace A249711

/-- `A249707(A167499(n+3))` -/
def P11377622195267570618.Spec : Prop :=
  ∀ n, P11377622195267570618.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P17838598531748587318

`A249707(A056000(n)+15)`
-/

namespace A249711.P17838598531748587318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A056000 n + 15).toNat

end

end A249711.P17838598531748587318

namespace A249711

/-- `A249707(A056000(n)+15)` -/
def P17838598531748587318.Spec : Prop :=
  ∀ n, P17838598531748587318.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P18023733914956622361

`A249707(A000124(n+4)+4)`
-/

namespace A249711.P18023733914956622361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000124 (n + 4) + 4).toNat

end

end A249711.P18023733914956622361

namespace A249711

/-- `A249707(A000124(n+4)+4)` -/
def P18023733914956622361.Spec : Prop :=
  ∀ n, P18023733914956622361.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P13727307249851209020

`A249707(A000217(n+4)+5)`
-/

namespace A249711.P13727307249851209020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000217 (n + 4) + 5).toNat

end

end A249711.P13727307249851209020

namespace A249711

/-- `A249707(A000217(n+4)+5)` -/
def P13727307249851209020.Spec : Prop :=
  ∀ n, P13727307249851209020.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P8362173517115050203

`A249707(A046691(n+2)+9)`
-/

namespace A249711.P8362173517115050203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A046691 (n + 2) + 9).toNat

end

end A249711.P8362173517115050203

namespace A249711

/-- `A249707(A046691(n+2)+9)` -/
def P8362173517115050203.Spec : Prop :=
  ∀ n, P8362173517115050203.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P15065395511032771907

`A249707(A052905(n+1)+10)`
-/

namespace A249711.P15065395511032771907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A052905 (n + 1) + 10).toNat

end

end A249711.P15065395511032771907

namespace A249711

/-- `A249707(A052905(n+1)+10)` -/
def P15065395511032771907.Spec : Prop :=
  ∀ n, P15065395511032771907.a n = A249711 (n + 1)

end A249711

/-! ## A249711.P16080374759797597774

`A249707(A020705(n)²-A052905(n))`
-/

namespace A249711.P16080374759797597774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A020705 n ^ 2 - A052905 n).toNat

end

end A249711.P16080374759797597774

namespace A249711

/-- `A249707(A020705(n)²-A052905(n))` -/
def P16080374759797597774.Spec : Prop :=
  ∀ n, P16080374759797597774.a n = A249711 (n + 1)

end A249711

/-!
# A249712: Number of length 6+3 0..n arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249712, there is no canonical definition to state claims against.
-/

/-! ## A249712.P7201005122341162388

`A249707(A166136(n+4))`
-/

namespace A249712.P7201005122341162388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A166136 (n + 4)).toNat

end

end A249712.P7201005122341162388

/-! ## A249712.P18275171102295459664

`A249707(A167499(n+4)+1)`
-/

namespace A249712.P18275171102295459664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167499 (n + 4) + 1).toNat

end

end A249712.P18275171102295459664

/-! ## A249712.P17394954719567328484

`A249707(A167614(n+4)+3)`
-/

namespace A249712.P17394954719567328484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167614 (n + 4) + 3).toNat

end

end A249712.P17394954719567328484

/-! ## A249712.P7356496954290721388

`A249707(A000217(n+5)+6)`
-/

namespace A249712.P7356496954290721388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000217 (n + 5) + 6).toNat

end

end A249712.P7356496954290721388

/-! ## A249712.P16230551101765780774

`A249707(A000124(n+6)-(n+1))`
-/

namespace A249712.P16230551101765780774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A249712.P16230551101765780774

/-! ## A249712.P489315654487864033

`A249707(A076921(n+2)+A076921(n+9))`
-/

namespace A249712.P489315654487864033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A076921 (n + 2) + A076921 (n + 9)).toNat

end

end A249712.P489315654487864033

/-!
# A249713: Number of length 7+3 0..n arrays with every four consecutive terms having the maximum of some two terms equal to the minimum of the remaining two terms.

The programs for A249713, there is no canonical definition to state claims against.
-/

/-! ## A249713.P8342461516531871082

`A249707(A167614(n+5)+4)`
-/

namespace A249713.P8342461516531871082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A167614 (n + 5) + 4).toNat

end

end A249713.P8342461516531871082

/-! ## A249713.P163535835749457028

`A249707(A145018(n+7)+3)`
-/

namespace A249713.P163535835749457028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A145018 (n + 7) + 3).toNat

end

end A249713.P163535835749457028

/-! ## A249713.P7543719843085024147

`A249707(A133263(n+6)+5)`
-/

namespace A249713.P7543719843085024147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A133263 (n + 6) + 5).toNat

end

end A249713.P7543719843085024147

/-! ## A249713.P18378899574340340161

`A249707(A000217(n+6)+7)`
-/

namespace A249713.P18378899574340340161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A000217 (n + 6) + 7).toNat

end

end A249713.P18378899574340340161

/-! ## A249713.P13680044524556119276

`A249707(A055999(n+5)-A005843(n+1))`
-/

namespace A249713.P13680044524556119276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A055999 (n + 5) - A005843 (n + 1)).toNat

end

end A249713.P13680044524556119276

/-! ## A249713.P10748211901783099366

`A249707(A046691(n+6)-A005843(n+2))`
-/

namespace A249713.P10748211901783099366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249707 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A249713.P10748211901783099366

/-!
# A249714: Record values in A249695.

The programs for A249714, there is no canonical definition to state claims against.
-/

/-! ## A249714.P12287665136806109182

`A249695(A249715(n+1))`
-/

namespace A249714.P12287665136806109182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 (A249715 (n + 1)).toNat

end

end A249714.P12287665136806109182

/-! ## A249714.P1140177999762295267

`record[A249695(n)]`
-/

namespace A249714.P1140177999762295267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249714.P1140177999762295267

/-!
# A249716: The least nonsquarefree number on row n of Pascal's triangle, or 1 if all the terms on that row are squarefree.

The programs for A249716, there is no canonical definition to state claims against.
-/

/-! ## A249716.P5319316095340972762

`C(n, A249442(n))`
-/

namespace A249716.P5319316095340972762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A249442 n).toNat

end

end A249716.P5319316095340972762

/-! ## A249716.P18353484212635396771

`A007318(A249442(n)+∑[n])`
-/

namespace A249716.P18353484212635396771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A249442 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A249716.P18353484212635396771

/-! ## A249716.P16035548475692082415

`A007318(n-(A249442(n)-∑[n]))`
-/

namespace A249716.P16035548475692082415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n : ℤ) - (A249442 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A249716.P16035548475692082415

/-! ## A249716.P7311942108043739657

`A007318(A000096(n)-A249442(n))`
-/

namespace A249716.P7311942108043739657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n - A249442 n).toNat

end

end A249716.P7311942108043739657

/-! ## A249716.P337798818385951058

`A007318(A000124(n)-(1-A249442(n)))`
-/

namespace A249716.P337798818385951058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n - (1 - A249442 n)).toNat

end

end A249716.P337798818385951058

/-!
# A249717: The smallest prime whose square divides the first nonsquarefree number on row n of Pascal's triangle, 1 if all terms on that row are squarefree.

The programs for A249717, there is no canonical definition to state claims against.
-/

/-! ## A249717.P7217813102227780788

`A249739(A249716(n))`
-/

namespace A249717.P7217813102227780788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249716 n).toNat

end

end A249717.P7217813102227780788

/-! ## A249717.P9928979909603820919

`and(A213215(n+1), A249718(n))`
-/

namespace A249717.P9928979909603820919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213215 (n + 1)) (A249718 n)

end

end A249717.P9928979909603820919

/-! ## A249717.P11707176527667181723

`and(A230202(n+1), A249718(n))`
-/

namespace A249717.P11707176527667181723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230202 (n + 1)) (A249718 n)

end

end A249717.P11707176527667181723

/-! ## A249717.P14020595722338843789

`and(A249718(n), A359082(n+1))`
-/

namespace A249717.P14020595722338843789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249718 n) (A359082 (n + 1))

end

end A249717.P14020595722338843789

/-! ## A249717.P11115716562024975296

`and(A249718(n), A362082(n+1))`
-/

namespace A249717.P11115716562024975296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249718 n) (A362082 (n + 1))

end

end A249717.P11115716562024975296

/-!
# A249718: The largest prime whose square divides the first nonsquarefree number on row n of Pascal's triangle, 1 if all terms on that row are squarefree.

The programs for A249718, there is no canonical definition to state claims against.
-/

/-! ## A249718.P12647856624783600697

`or(A213004(A114099(n)), A249717(n))`
-/

namespace A249718.P12647856624783600697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213004 (A114099 n).toNat) (A249717 n)

end

end A249718.P12647856624783600697

/-! ## A249718.P2090389205806045237

`A249717(n)+A024155(A299266(n))`
-/

namespace A249718.P2090389205806045237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 n + A024155 (A299266 n).toNat

end

end A249718.P2090389205806045237

/-!
# A249719: Complement of A051382.

The programs for A249719, the canonical program `A249719.P10354154330167799316` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249719 has offset 1).

The definition of A249719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249719.P13315504515181493292

`lt[4, A273515(n)]`
-/

namespace A249719.P13315504515181493292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249719.P13315504515181493292

namespace A249719

/-- `lt[4, A273515(n)]` -/
def P13315504515181493292.Spec : Prop :=
  ∀ n, (P13315504515181493292.a n : ℤ) = A249719 (n + 1)

end A249719

/-! ## A249719.P12944386913504219451

`comp[A051382(1+n)]`
-/

namespace A249719.P12944386913504219451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051382 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249719.P12944386913504219451

namespace A249719

/-- `comp[A051382(1+n)]` -/
def P12944386913504219451.Spec : Prop :=
  ∀ n, (P12944386913504219451.a n : ℤ) = A249719 (n + 1)

end A249719

/-! ## A249719.P4068491807729791180

`A249720(n+1)/2`
-/

namespace A249719.P4068491807729791180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249720 (n + 1) : ℚ) / 2

end

end A249719.P4068491807729791180

namespace A249719

/-- `A249720(n+1)/2` -/
def P4068491807729791180.Spec : Prop :=
  ∀ n, P4068491807729791180.a n = (A249719 (n + 1) : ℚ)

theorem P4068491807729791180.correct : P4068491807729791180.Spec := by
  intro n
  simp only [A249719, Nat.add_sub_cancel, A249719.P4068491807729791180.a, A249719.P10354154330167799316.f1, A249719.P10354154330167799316.f2, A249719.P10354154330167799316.a, A060011, A060011.P16813881645005587022.a, A249720, A249720.P520286733806873807.a, A004095, A004095.P282943264106656556.f1, A004095.P282943264106656556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249719

/-! ## A249719.P12620845808338784367

`eq[0, A290079(2*n)]`
-/

namespace A249719.P12620845808338784367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249719.P12620845808338784367

namespace A249719

/-- `eq[0, A290079(2*n)]` -/
def P12620845808338784367.Spec : Prop :=
  ∀ n, (P12620845808338784367.a n : ℤ) = A249719 (n + 1)

end A249719

/-! ## A249719.P11587298122461693941

`eq[A073097(n), A290079(n)]/2`
-/

namespace A249719.P11587298122461693941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P11587298122461693941

namespace A249719

/-- `eq[A073097(n), A290079(n)]/2` -/
def P11587298122461693941.Spec : Prop :=
  ∀ n, P11587298122461693941.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P9263586114583126797

`eq[A083912(n+1), A290079(n)]/2`
-/

namespace A249719.P9263586114583126797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P9263586114583126797

namespace A249719

/-- `eq[A083912(n+1), A290079(n)]/2` -/
def P9263586114583126797.Spec : Prop :=
  ∀ n, P9263586114583126797.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P2972711020425648403

`eq[A147648(n+1), A290079(n)]/2`
-/

namespace A249719.P2972711020425648403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P2972711020425648403

namespace A249719

/-- `eq[A147648(n+1), A290079(n)]/2` -/
def P2972711020425648403.Spec : Prop :=
  ∀ n, P2972711020425648403.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P2637791786044320846

`eq[A158327(n+1), A290079(n)]/2`
-/

namespace A249719.P2637791786044320846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P2637791786044320846

namespace A249719

/-- `eq[A158327(n+1), A290079(n)]/2` -/
def P2637791786044320846.Spec : Prop :=
  ∀ n, P2637791786044320846.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P16544007211034209888

`lt[1, A000989(n)]`
-/

namespace A249719.P16544007211034209888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249719.P16544007211034209888

namespace A249719

/-- `lt[1, A000989(n)]` -/
def P16544007211034209888.Spec : Prop :=
  ∀ n, (P16544007211034209888.a n : ℤ) = A249719 (n + 1)

end A249719

/-! ## A249719.P10354154330167799316

`eq[9, A060011(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249719

/-- `eq[9, A060011(n)]` -/
def P10354154330167799316.Spec : Prop :=
  ∀ n, (P10354154330167799316.a n : ℤ) = A249719 (n + 1)

theorem P10354154330167799316.correct : P10354154330167799316.Spec := by
  intro n
  simp only [A249719, Nat.add_sub_cancel]

end A249719

/-! ## A249719.P5037666865091731485

`eq[A132748(n+1), A290079(n)]/2`
-/

namespace A249719.P5037666865091731485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P5037666865091731485

namespace A249719

/-- `eq[A132748(n+1), A290079(n)]/2` -/
def P5037666865091731485.Spec : Prop :=
  ∀ n, P5037666865091731485.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P10396218423200928708

`lt[2, A290091(2*n)-2]`
-/

namespace A249719.P10396218423200928708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (2 * n) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249719.P10396218423200928708

namespace A249719

/-- `lt[2, A290091(2*n)-2]` -/
def P10396218423200928708.Spec : Prop :=
  ∀ n, (P10396218423200928708.a n : ℤ) = A249719 (n + 1)

end A249719

/-! ## A249719.P4439090813096226908

`eq[A135481(n), A290079(n)]/2`
-/

namespace A249719.P4439090813096226908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P4439090813096226908

namespace A249719

/-- `eq[A135481(n), A290079(n)]/2` -/
def P4439090813096226908.Spec : Prop :=
  ∀ n, P4439090813096226908.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P12530491901142801010

`eq[A290079(n), A339012(n)]/2`
-/

namespace A249719.P12530491901142801010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P12530491901142801010

namespace A249719

/-- `eq[A290079(n), A339012(n)]/2` -/
def P12530491901142801010.Spec : Prop :=
  ∀ n, P12530491901142801010.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P2349390662173997622

`eq[A134452(n), A290079(n)]/2`
-/

namespace A249719.P2349390662173997622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P2349390662173997622

namespace A249719

/-- `eq[A134452(n), A290079(n)]/2` -/
def P2349390662173997622.Spec : Prop :=
  ∀ n, P2349390662173997622.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P14805212371968738766

`A001281(A249720(n+1))`
-/

namespace A249719.P14805212371968738766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A249720 (n + 1)).toNat

end

end A249719.P14805212371968738766

namespace A249719

/-- `A001281(A249720(n+1))` -/
def P14805212371968738766.Spec : Prop :=
  ∀ n, P14805212371968738766.a n = A249719 (n + 1)

end A249719

/-! ## A249719.P8057927948709853819

`eq[A000035(n), A290079(n)]/2`
-/

namespace A249719.P8057927948709853819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P8057927948709853819

namespace A249719

/-- `eq[A000035(n), A290079(n)]/2` -/
def P8057927948709853819.Spec : Prop :=
  ∀ n, P8057927948709853819.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P7266536200312066008

`eq[A010673(n), A290079(n)]/2`
-/

namespace A249719.P7266536200312066008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P7266536200312066008

namespace A249719

/-- `eq[A010673(n), A290079(n)]/2` -/
def P7266536200312066008.Spec : Prop :=
  ∀ n, P7266536200312066008.a n = (A249719 (n + 1) : ℚ)

end A249719

/-! ## A249719.P8721152696629582076

`eq[A010674(n), A290079(n)]/2`
-/

namespace A249719.P8721152696629582076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A249719.P8721152696629582076

namespace A249719

/-- `eq[A010674(n), A290079(n)]/2` -/
def P8721152696629582076.Spec : Prop :=
  ∀ n, P8721152696629582076.a n = (A249719 (n + 1) : ℚ)

end A249719

/-!
# A249720: a(n) = 2 * A249719(n).

The programs for A249720, the canonical program `A249720.P520286733806873807` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249720 has offset 1).

The definition of A249720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249719, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249720.P520286733806873807

`2*A249719(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A249720

/-- `2*A249719(n+1)` -/
def P520286733806873807.Spec : Prop :=
  ∀ n, P520286733806873807.a n = A249720 (n + 1)

theorem P520286733806873807.correct : P520286733806873807.Spec := by
  intro n
  simp only [A249720, Nat.add_sub_cancel]

end A249720

/-! ## A249720.P2114388537933352398

`2*comp[A051382(n+1)]`
-/

namespace A249720.P2114388537933352398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249720.P2114388537933352398

namespace A249720

/-- `2*comp[A051382(n+1)]` -/
def P2114388537933352398.Spec : Prop :=
  ∀ n, (P2114388537933352398.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P10140322570058338002

`2*eq[0, A290079(2*n)]`
-/

namespace A249720.P10140322570058338002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249720.P10140322570058338002

namespace A249720

/-- `2*eq[0, A290079(2*n)]` -/
def P10140322570058338002.Spec : Prop :=
  ∀ n, (P10140322570058338002.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P16214014580033446999

`eq[A073097(n), A290079(n)]`
-/

namespace A249720.P16214014580033446999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P16214014580033446999

namespace A249720

/-- `eq[A073097(n), A290079(n)]` -/
def P16214014580033446999.Spec : Prop :=
  ∀ n, (P16214014580033446999.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P8179355293489651571

`eq[A083912(n+1), A290079(n)]`
-/

namespace A249720.P8179355293489651571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P8179355293489651571

namespace A249720

/-- `eq[A083912(n+1), A290079(n)]` -/
def P8179355293489651571.Spec : Prop :=
  ∀ n, (P8179355293489651571.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P6626688536041140683

`eq[A147648(n+1), A290079(n)]`
-/

namespace A249720.P6626688536041140683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P6626688536041140683

namespace A249720

/-- `eq[A147648(n+1), A290079(n)]` -/
def P6626688536041140683.Spec : Prop :=
  ∀ n, (P6626688536041140683.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P2315471472236242965

`eq[A158327(n+1), A290079(n)]`
-/

namespace A249720.P2315471472236242965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P2315471472236242965

namespace A249720

/-- `eq[A158327(n+1), A290079(n)]` -/
def P2315471472236242965.Spec : Prop :=
  ∀ n, (P2315471472236242965.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P10731429552044801494

`A004277(A249719(n+1))`
-/

namespace A249720.P10731429552044801494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A249719 (n + 1)).toNat

end

end A249720.P10731429552044801494

namespace A249720

/-- `A004277(A249719(n+1))` -/
def P10731429552044801494.Spec : Prop :=
  ∀ n, P10731429552044801494.a n = A249720 (n + 1)

end A249720

/-! ## A249720.P2942540315313259618

`2*lt[1, A000989(n)]`
-/

namespace A249720.P2942540315313259618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249720.P2942540315313259618

namespace A249720

/-- `2*lt[1, A000989(n)]` -/
def P2942540315313259618.Spec : Prop :=
  ∀ n, (P2942540315313259618.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P17846390197444963258

`eq[A132748(n+1), A290079(n)]`
-/

namespace A249720.P17846390197444963258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P17846390197444963258

namespace A249720

/-- `eq[A132748(n+1), A290079(n)]` -/
def P17846390197444963258.Spec : Prop :=
  ∀ n, (P17846390197444963258.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P15144790150949982438

`eq[A135481(n), A290079(n)]`
-/

namespace A249720.P15144790150949982438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P15144790150949982438

namespace A249720

/-- `eq[A135481(n), A290079(n)]` -/
def P15144790150949982438.Spec : Prop :=
  ∀ n, (P15144790150949982438.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P18269639827630640502

`eq[A290079(n), A339012(n)]`
-/

namespace A249720.P18269639827630640502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P18269639827630640502

namespace A249720

/-- `eq[A290079(n), A339012(n)]` -/
def P18269639827630640502.Spec : Prop :=
  ∀ n, (P18269639827630640502.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P16914568828808100117

`eq[A134452(n), A290079(n)]`
-/

namespace A249720.P16914568828808100117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P16914568828808100117

namespace A249720

/-- `eq[A134452(n), A290079(n)]` -/
def P16914568828808100117.Spec : Prop :=
  ∀ n, (P16914568828808100117.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P15466664057381635068

`eq[A000035(n), A290079(n)]`
-/

namespace A249720.P15466664057381635068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P15466664057381635068

namespace A249720

/-- `eq[A000035(n), A290079(n)]` -/
def P15466664057381635068.Spec : Prop :=
  ∀ n, (P15466664057381635068.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P5808015669327746560

`eq[A010673(n), A290079(n)]`
-/

namespace A249720.P5808015669327746560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P5808015669327746560

namespace A249720

/-- `eq[A010673(n), A290079(n)]` -/
def P5808015669327746560.Spec : Prop :=
  ∀ n, (P5808015669327746560.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P2050078733621927674

`eq[A010674(n), A290079(n)]`
-/

namespace A249720.P2050078733621927674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P2050078733621927674

namespace A249720

/-- `eq[A010674(n), A290079(n)]` -/
def P2050078733621927674.Spec : Prop :=
  ∀ n, (P2050078733621927674.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P771899170148483489

`eq[A010675(n), A290079(n)]`
-/

namespace A249720.P771899170148483489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P771899170148483489

namespace A249720

/-- `eq[A010675(n), A290079(n)]` -/
def P771899170148483489.Spec : Prop :=
  ∀ n, (P771899170148483489.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P11186050861562469740

`eq[A010676(n), A290079(n)]`
-/

namespace A249720.P11186050861562469740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P11186050861562469740

namespace A249720

/-- `eq[A010676(n), A290079(n)]` -/
def P11186050861562469740.Spec : Prop :=
  ∀ n, (P11186050861562469740.a n : ℤ) = A249720 (n + 1)

end A249720

/-! ## A249720.P7996792156806539709

`eq[A010677(n), A290079(n)]`
-/

namespace A249720.P7996792156806539709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249720.P7996792156806539709

namespace A249720

/-- `eq[A010677(n), A290079(n)]` -/
def P7996792156806539709.Spec : Prop :=
  ∀ n, (P7996792156806539709.a n : ℤ) = A249720 (n + 1)

end A249720

/-!
# A249721: Numbers whose base-3 representation consists entirely of 0's and 2's, except possibly for a single pair of adjacent 1's among them.

The programs for A249721, there is no canonical definition to state claims against.
-/

/-! ## A249721.P17980603358627702526

`2*A051382(n+1)`
-/

namespace A249721.P17980603358627702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051382 (n + 1)

end

end A249721.P17980603358627702526

/-! ## A249721.P7697905124939020725

`A051382(A000027(n+1))+A051382(n+1)`
-/

namespace A249721.P7697905124939020725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051382 (A000027 (n + 1)).toNat + A051382 (n + 1)

end

end A249721.P7697905124939020725

/-! ## A249721.P11445480489525526646

`record[n*A290079(n)]`
-/

namespace A249721.P11445480489525526646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249721.P11445480489525526646

/-! ## A249721.P14457113487082146641

`filter[2*n, A290079(#)]`
-/

namespace A249721.P14457113487082146641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290079 (f1 j) = 1) n)

end

end A249721.P14457113487082146641

/-! ## A249721.P6902848611806176448

`2*eq[1, A290079(2*n)]`
-/

namespace A249721.P6902848611806176448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249721.P6902848611806176448

/-! ## A249721.P58686193837789753

`lt[0, A290079(n)]`
-/

namespace A249721.P58686193837789753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249721.P58686193837789753

/-! ## A249721.P179176273678088530

`2*lt[A000989(n), 2]`
-/

namespace A249721.P179176273678088530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249721.P179176273678088530

/-! ## A249721.P17432282292465348236

`A005843(A051382(n+1))`
-/

namespace A249721.P17432282292465348236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A051382 (n + 1)).toNat

end

end A249721.P17432282292465348236

/-! ## A249721.P9526790621764837227

`lt[A290095(A290091(n)), 9]`
-/

namespace A249721.P9526790621764837227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290095 (A290091 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249721.P9526790621764837227

/-! ## A249721.P13266424685989900853

`2*eq[A000989(n), A064990(n)]`
-/

namespace A249721.P13266424685989900853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P13266424685989900853

/-! ## A249721.P16308035367996492324

`2*eq[A000989(n)², A081603(n)]`
-/

namespace A249721.P16308035367996492324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P16308035367996492324

/-! ## A249721.P6541764197341659735

`2*eq[A000989(n)², A134022(n)]`
-/

namespace A249721.P6541764197341659735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P6541764197341659735

/-! ## A249721.P830757827821323892

`2*eq[A000989(n)², A273513(n)]`
-/

namespace A249721.P830757827821323892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P830757827821323892

/-! ## A249721.P16881576656628848503

`2*eq[A000989(n), A189820(n+1)]`
-/

namespace A249721.P16881576656628848503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P16881576656628848503

/-! ## A249721.P6616196513204803635

`eq[A028920(A290091(n)+1), A290091(n)]`
-/

namespace A249721.P6616196513204803635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A290091 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P6616196513204803635

/-! ## A249721.P2051182219139775620

`eq[A000034(n), A290079(n)]`
-/

namespace A249721.P2051182219139775620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P2051182219139775620

/-! ## A249721.P6350113071281097720

`eq[A001492(n), A290079(n)]`
-/

namespace A249721.P6350113071281097720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P6350113071281097720

/-! ## A249721.P1011103857514623444

`eq[A105203(n), A190906(n)]`
-/

namespace A249721.P1011103857514623444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P1011103857514623444

/-! ## A249721.P18136705679403635760

`eq[A007879(n), A290079(n)]`
-/

namespace A249721.P18136705679403635760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P18136705679403635760

/-! ## A249721.P12977980199312705219

`eq[A010684(n), A290079(n)]`
-/

namespace A249721.P12977980199312705219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249721.P12977980199312705219

/-!
# A249722: Numbers n such that there is a multiple of 4 on row n of Pascal's triangle with property that all multiples of 9 on the same row (if they exist) are larger than it.

The programs for A249722, there is no canonical definition to state claims against.
-/

/-! ## A249722.P8348551090040986978

`lt[A329313(2*n+1), A001462(A033929(n+1))]`
-/

namespace A249722.P8348551090040986978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A033929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249722.P8348551090040986978

/-! ## A249722.P2310826842231562799

`eq[A066247(A033929(n+1)), A161618(n+1)]`
-/

namespace A249722.P2310826842231562799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A033929 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249722.P2310826842231562799

/-! ## A249722.P6658930612790758598

`eq[A033999(8*n²), A066247(A033929(n+1))]`
-/

namespace A249722.P6658930612790758598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (8 * n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A033929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249722.P6658930612790758598

/-! ## A249722.P15819157921707481870

`lt[A236313(n+1), A205565(A267300(2*(n+1)))]`
-/

namespace A249722.P15819157921707481870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 (A267300 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249722.P15819157921707481870

/-!
# A249723: Numbers n such that there is a multiple of 9 on row n of Pascal's triangle with property that all multiples of 4 on the same row (if they exist) are larger than it.

The programs for A249723, there is no canonical definition to state claims against.
-/

/-! ## A249723.P8294357348280121728

`comp[A249724(1+n)]`
-/

namespace A249723.P8294357348280121728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249724 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249723.P8294357348280121728

/-! ## A249723.P11871387922225748898

`eq[A165024(n+1), A249717(n)]`
-/

namespace A249723.P11871387922225748898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249723.P11871387922225748898

/-! ## A249723.P4428325482231432575

`eq[3, A249717(n)]%A129224(n+2)`
-/

namespace A249723.P4428325482231432575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A129224 (n + 2))

end

end A249723.P4428325482231432575

/-! ## A249723.P10360369074417484464

`eq[A249717(n), A287765(A214080(n+4))]`
-/

namespace A249723.P10360369074417484464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287765 (A214080 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249723.P10360369074417484464

/-! ## A249723.P12700531136691146093

`eq[A249717(n), A256689(A005382(3*n+4))]`
-/

namespace A249723.P12700531136691146093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256689 (A005382 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249723.P12700531136691146093

/-!
# A249724: Numbers k such that on row k of Pascal's triangle there is no multiple of 9 which would be less than any (potential) multiple of 4 on the same row.

The programs for A249724, there is no canonical definition to state claims against.
-/

/-! ## A249724.P17054834961518273099

`comp[A249723(n+1)]`
-/

namespace A249724.P17054834961518273099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249724.P17054834961518273099

/-! ## A249724.P9029538832934827194

`lt[0, A208274(n*char[A249723(n+1)]+1)]`
-/

namespace A249724.P9029538832934827194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249723 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249724.P9029538832934827194

/-! ## A249724.P3507686455211252143

`eq[char[A249723(n+1)], A000035(2*(n+1))]`
-/

namespace A249724.P3507686455211252143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249723 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249724.P3507686455211252143

/-! ## A249724.P14284923668322234044

`eq[char[A249723(n+1)], A007814(2*n+1)]`
-/

namespace A249724.P14284923668322234044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249723 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249724.P14284923668322234044

/-! ## A249724.P114611882768025089

`eq[char[A249723(n+1)], A253786(3*n)]`
-/

namespace A249724.P114611882768025089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249723 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249724.P114611882768025089

/-!
# A249725: Inverse permutation to A135764.

The programs for A249725, the canonical program `A249725.P5047833433213757881` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249725 has offset 1).

The definition of A249725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249725.P5047833433213757881

`1+((A003602(n+1)+A007814(n+1))²+A007814(n+1)-A003602(n+1))/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A249725

/-- `1+((A003602(n+1)+A007814(n+1))²+A007814(n+1)-A003602(n+1))/2` -/
def P5047833433213757881.Spec : Prop :=
  ∀ n, P5047833433213757881.a n = (A249725 (n + 1) : ℚ)

end A249725

/-! ## A249725.P2670877481682209605

`A249742(A249811(n+1))`
-/

namespace A249725.P2670877481682209605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A249811 (n + 1)).toNat

end

end A249725.P2670877481682209605

namespace A249725

/-- `A249742(A249811(n+1))` -/
def P2670877481682209605.Spec : Prop :=
  ∀ n, P2670877481682209605.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P13510071110483017860

`A246276(A246676(n+1))`
-/

namespace A249725.P13510071110483017860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A246676 (n + 1)).toNat

end

end A249725.P13510071110483017860

namespace A249725

/-- `A246276(A246676(n+1))` -/
def P13510071110483017860.Spec : Prop :=
  ∀ n, P13510071110483017860.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P16670068351711513199

`A075303(n)+1`
-/

namespace A249725.P16670068351711513199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 n + 1

end

end A249725.P16670068351711513199

namespace A249725

/-- `A075303(n)+1` -/
def P16670068351711513199.Spec : Prop :=
  ∀ n, P16670068351711513199.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P9178306541551500521

`A001511(n+1)+A209268(n+1)-A003602(n+1)`
-/

namespace A249725.P9178306541551500521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A209268 (n + 1) - A003602 (n + 1))

end

end A249725.P9178306541551500521

namespace A249725

/-- `A001511(n+1)+A209268(n+1)-A003602(n+1)` -/
def P9178306541551500521.Spec : Prop :=
  ∀ n, P9178306541551500521.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P5135393606877702997

`A209268(2*(n+1))-A000265(n+1)`
-/

namespace A249725.P5135393606877702997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (2 * (n + 1)) - A000265 (n + 1)

end

end A249725.P5135393606877702997

namespace A249725

/-- `A209268(2*(n+1))-A000265(n+1)` -/
def P5135393606877702997.Spec : Prop :=
  ∀ n, P5135393606877702997.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P1809301434773602779

`A249742(A207801(n+2)-1)`
-/

namespace A249725.P1809301434773602779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (A207801 (n + 2) - 1).toNat

end

end A249725.P1809301434773602779

namespace A249725

/-- `A249742(A207801(n+2)-1)` -/
def P1809301434773602779.Spec : Prop :=
  ∀ n, P1809301434773602779.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P5926465943959646498

`A038722(A209268(n+1))`
-/

namespace A249725.P5926465943959646498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A209268 (n + 1)).toNat

end

end A249725.P5926465943959646498

namespace A249725

/-- `A038722(A209268(n+1))` -/
def P5926465943959646498.Spec : Prop :=
  ∀ n, P5926465943959646498.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P12538950590710301210

`A061579(A075301(n))+1`
-/

namespace A249725.P12538950590710301210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A075301 n).toNat + 1

end

end A249725.P12538950590710301210

namespace A249725

/-- `A061579(A075301(n))+1` -/
def P12538950590710301210.Spec : Prop :=
  ∀ n, P12538950590710301210.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P12580286067173602463

`A061579(A209268(n+1)-1)+1`
-/

namespace A249725.P12580286067173602463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A209268 (n + 1) - 1).toNat + 1

end

end A249725.P12580286067173602463

namespace A249725

/-- `A061579(A209268(n+1)-1)+1` -/
def P12580286067173602463.Spec : Prop :=
  ∀ n, P12580286067173602463.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P8008481256325695569

`A265896(A135764(A265896(n+1)))`
-/

namespace A249725.P8008481256325695569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (A135764 (A265896 (n + 1)).toNat).toNat

end

end A249725.P8008481256325695569

namespace A249725

/-- `A265896(A135764(A265896(n+1)))` -/
def P8008481256325695569.Spec : Prop :=
  ∀ n, P8008481256325695569.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P4140991510975367288

`A265346(A263273(A135764(A265346(A263273(n+1)))))`
-/

namespace A249725.P4140991510975367288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (A263273 (A135764 (A265346 (A263273 (n + 1)).toNat).toNat).toNat).toNat

end

end A249725.P4140991510975367288

namespace A249725

/-- `A265346(A263273(A135764(A265346(A263273(n+1)))))` -/
def P4140991510975367288.Spec : Prop :=
  ∀ n, P4140991510975367288.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P9495139521916823102

`A075301(n)+1-A191362(n+1)`
-/

namespace A249725.P9495139521916823102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075301 n + (1 - A191362 (n + 1))

end

end A249725.P9495139521916823102

namespace A249725

/-- `A075301(n)+1-A191362(n+1)` -/
def P9495139521916823102.Spec : Prop :=
  ∀ n, P9495139521916823102.a n = A249725 (n + 1)

end A249725

/-! ## A249725.P6805547827459265970

`A209268(n+1)-A191362(n+1)`
-/

namespace A249725.P6805547827459265970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209268 (n + 1) - A191362 (n + 1)

end

end A249725.P6805547827459265970

namespace A249725

/-- `A209268(n+1)-A191362(n+1)` -/
def P6805547827459265970.Spec : Prop :=
  ∀ n, P6805547827459265970.a n = A249725 (n + 1)

end A249725

/-!
# A249726: Numbers n such that there is a multiple of 36 on row n of Pascal's triangle with property that it is also the least multiple of 4 and the least multiple of 9 on the same row.

The programs for A249726, there is no canonical definition to state claims against.
-/

/-! ## A249726.P11629118543149294314

`eq[0, A071041(A140213(n+1))]`
-/

namespace A249726.P11629118543149294314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 (A140213 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249726.P11629118543149294314

/-!
# A249727: Start with a(1) = 1; then numbers 1 .. primepi(2), followed by numbers 1 .. primepi(3), and then numbers 1 .. primepi(4), ..., etc, where A000720 gives primepi.

The programs for A249727, the canonical program `A249727.P7086811440689773967` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249727 has offset 1).

The definition of A249727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249727.P7086811440689773967

`A000720(p?[A002260(n+1)-5%(n+1)])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249727

/-- `A000720(p?[A002260(n+1)-5%(n+1)])` -/
def P7086811440689773967.Spec : Prop :=
  ∀ n, P7086811440689773967.a n = A249727 (n + 1)

theorem P7086811440689773967.correct : P7086811440689773967.Spec := by
  intro n
  simp only [A249727, Nat.add_sub_cancel]

end A249727

/-! ## A249727.P8675338680658756870

`A000720(p?[A002260(char[1]+1+n)])`
-/

namespace A249727.P8675338680658756870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249727.P8675338680658756870

namespace A249727

/-- `A000720(p?[A002260(char[1]+1+n)])` -/
def P8675338680658756870.Spec : Prop :=
  ∀ n, P8675338680658756870.a n = A249727 (n + 1)

end A249727

/-! ## A249727.P14375117629521005847

`A000720(p?[A002260(n+1)+A000007(n)])`
-/

namespace A249727.P14375117629521005847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249727.P14375117629521005847

namespace A249727

/-- `A000720(p?[A002260(n+1)+A000007(n)])` -/
def P14375117629521005847.Spec : Prop :=
  ∀ n, P14375117629521005847.a n = A249727 (n + 1)

end A249727

/-! ## A249727.P16010360819559576047

`A000720(p?[(2*n)%A061885(n+1)])`
-/

namespace A249727.P16010360819559576047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A061885 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249727.P16010360819559576047

namespace A249727

/-- `A000720(p?[(2*n)%A061885(n+1)])` -/
def P16010360819559576047.Spec : Prop :=
  ∀ n, P16010360819559576047.a n = A249727 (n + 1)

end A249727

/-! ## A249727.P8338000094347317962

`A000720(p?[(2*n)%A007606(n+1)])`
-/

namespace A249727.P8338000094347317962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A007606 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249727.P8338000094347317962

namespace A249727

/-- `A000720(p?[(2*n)%A007606(n+1)])` -/
def P8338000094347317962.Spec : Prop :=
  ∀ n, P8338000094347317962.a n = A249727 (n + 1)

end A249727

/-! ## A249727.P17351982288955986843

`A056239(p?[A157454(n+1)-A221971(n+1)])`
-/

namespace A249727.P17351982288955986843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) - A221971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249727.P17351982288955986843

namespace A249727

/-- `A056239(p?[A157454(n+1)-A221971(n+1)])` -/
def P17351982288955986843.Spec : Prop :=
  ∀ n, P17351982288955986843.a n = A249727 (n + 1)

end A249727

/-!
# A249728: After a(1) = 1 each n appears A000720(n) times.

The programs for A249728, the canonical program `A249728.P8976673975456800970` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249728 has offset 1).

The definition of A249728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249728.P8976673975456800970

`∑[char[A061536(n+1)]]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249728

/-- `∑[char[A061536(n+1)]]+1` -/
def P8976673975456800970.Spec : Prop :=
  ∀ n, (P8976673975456800970.a n : ℤ) = A249728 (n + 1)

theorem P8976673975456800970.correct : P8976673975456800970.Spec := by
  intro n
  simp only [A249728, Nat.add_sub_cancel]

end A249728

/-! ## A249728.P5182923137797729492

`comp[A002815(n+1)]-n+1`
-/

namespace A249728.P5182923137797729492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A249728.P5182923137797729492

namespace A249728

/-- `comp[A002815(n+1)]-n+1` -/
def P5182923137797729492.Spec : Prop :=
  ∀ n, P5182923137797729492.a n = A249728 (n + 1)

end A249728

/-! ## A249728.P6906079845688033312

`∑[char[A046992(n+1)+1]]+1`
-/

namespace A249728.P6906079845688033312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249728.P6906079845688033312

namespace A249728

/-- `∑[char[A046992(n+1)+1]]+1` -/
def P6906079845688033312.Spec : Prop :=
  ∀ n, (P6906079845688033312.a n : ℤ) = A249728 (n + 1)

end A249728

/-! ## A249728.P5601899025740436513

`comp[∑[A036234(n+1)]]+1-n`
-/

namespace A249728.P5601899025740436513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A249728.P5601899025740436513

namespace A249728

/-- `comp[∑[A036234(n+1)]]+1-n` -/
def P5601899025740436513.Spec : Prop :=
  ∀ n, P5601899025740436513.a n = A249728 (n + 1)

end A249728

/-! ## A249728.P15222178798712293644

`∑[char[∑[A000720(n+1)]+1]]+1`
-/

namespace A249728.P15222178798712293644
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249728.P15222178798712293644

namespace A249728

/-- `∑[char[∑[A000720(n+1)]+1]]+1` -/
def P15222178798712293644.Spec : Prop :=
  ∀ n, (P15222178798712293644.a n : ℤ) = A249728 (n + 1)

end A249728

/-! ## A249728.P16494996792232197251

`char[A000720(n)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A249728.P16494996792232197251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000720 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A249728.P16494996792232197251

namespace A249728

/-- `char[A000720(n)+a(n-1)]+a(n-1)` -/
def P16494996792232197251.Spec : Prop :=
  ∀ n, (P16494996792232197251.a n : ℤ) = A249728 (n + 1)

end A249728

/-! ## A249728.P4235284803796443857

`char[A230980(n)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A249728.P4235284803796443857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A230980 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A249728.P4235284803796443857

namespace A249728

/-- `char[A230980(n)+a(n-1)]+a(n-1)` -/
def P4235284803796443857.Spec : Prop :=
  ∀ n, (P4235284803796443857.a n : ℤ) = A249728 (n + 1)

end A249728

/-! ## A249728.P7296449226777732211

`∑[A010051(2*A249727(n+1))]`
-/

namespace A249728.P7296449226777732211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A249727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249728.P7296449226777732211

namespace A249728

/-- `∑[A010051(2*A249727(n+1))]` -/
def P7296449226777732211.Spec : Prop :=
  ∀ n, P7296449226777732211.a n = A249728 (n + 1)

end A249728

/-! ## A249728.P8459004306704937838

`char[∑[A008683((n+1)*A000005(n+1))+a(n-1)]]+a(n-1)` with `a(0)=1`
-/

namespace A249728.P8459004306704937838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A008683 ((n + 1 : ℤ) * A000005 (n + 1)).toNat + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A249728.P8459004306704937838

namespace A249728

/-- `char[∑[A008683((n+1)*A000005(n+1))+a(n-1)]]+a(n-1)` -/
def P8459004306704937838.Spec : Prop :=
  ∀ n, (P8459004306704937838.a n : ℤ) = A249728 (n + 1)

end A249728

/-! ## A249728.P7597812538325725868

`∑[A010051(A249727(n+1)+A249727(n+1)²)]`
-/

namespace A249728.P7597812538325725868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A249727 (n + 1) + A249727 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249728.P7597812538325725868

namespace A249728

/-- `∑[A010051(A249727(n+1)+A249727(n+1)²)]` -/
def P7597812538325725868.Spec : Prop :=
  ∀ n, P7597812538325725868.a n = A249728 (n + 1)

end A249728

/-! ## A249728.P6787627717984696150

`∑[val(p?[A191532(n)+1], 2)]`
-/

namespace A249728.P6787627717984696150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249728.P6787627717984696150

namespace A249728

/-- `∑[val(p?[A191532(n)+1], 2)]` -/
def P6787627717984696150.Spec : Prop :=
  ∀ n, (P6787627717984696150.a n : ℤ) = A249728 (n + 1)

end A249728

/-! ## A249728.P2406887376206267609

`∑[A010051(A034959(A249727(n+1)))]`
-/

namespace A249728.P2406887376206267609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034959 (A249727 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249728.P2406887376206267609

namespace A249728

/-- `∑[A010051(A034959(A249727(n+1)))]` -/
def P2406887376206267609.Spec : Prop :=
  ∀ n, P2406887376206267609.a n = A249728 (n + 1)

end A249728

/-!
# A249729: Numbers not fixed by A250249 and A250250.

The programs for A249729, there is no canonical definition to state claims against.
-/

/-! ## A249729.P18145989589797810740

`comp[A250251(1+n)-1]+1`
-/

namespace A249729.P18145989589797810740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250251 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A249729.P18145989589797810740

/-! ## A249729.P17396079535812703302

`comp[∪[A250251(n+1), A000537(n)]]`
-/

namespace A249729.P17396079535812703302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250251 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A249729.P17396079535812703302

/-! ## A249729.P13180246994593458751

`comp[∪[A250251(n+1), A001096(n)]]`
-/

namespace A249729.P13180246994593458751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250251 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A249729.P13180246994593458751

/-! ## A249729.P6343283106637576850

`lt[2, abs(A250250(A004277(n)-n)-n)]`
-/

namespace A249729.P6343283106637576850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A250250 (A004277 n - (n : ℤ)).toNat - (n : ℤ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249729.P6343283106637576850

/-! ## A249729.P11275421104285132091

`comp[A049084(A250251(n+1))]`
-/

namespace A249729.P11275421104285132091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A250251 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249729.P11275421104285132091

/-!
# A249730: Odd nonprime terms in A250251.

The programs for A249730, there is no canonical definition to state claims against.
-/

/-! ## A249730.P186502086157591587

`∩[A014076(n+1), A250251(n+1)]`
-/

namespace A249730.P186502086157591587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249730.P186502086157591587

/-! ## A249730.P1284156217663763687

`∩[A067800(n+1), A250251(n+1)]`
-/

namespace A249730.P1284156217663763687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249730.P1284156217663763687

/-! ## A249730.P9524544224793237140

`eq[A171435(n+1), A250246(n+1)]+1`
-/

namespace A249730.P9524544224793237140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A249730.P9524544224793237140

/-! ## A249730.P3352118414970780476

`eq[A171435(n+1), A280495(2*(n+1))]+1`
-/

namespace A249730.P3352118414970780476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A249730.P3352118414970780476

/-! ## A249730.P13367204846456656285

`record[gcd(A250245(2*n+1), A288469(2*n+1))]`
-/

namespace A249730.P13367204846456656285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250245 (2 * n + 1)) (A288469 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249730.P13367204846456656285

/-!
# A249731: Number of multiples of 4 on row n of Pascal's triangle minus the number of multiples of 9 on the same row: a(n) = A249732(n) - A249733(n).

The programs for A249731, there is no canonical definition to state claims against.
-/

/-! ## A249731.P5559529194285441535

`A249732(n)-A249733(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249731.P5559529194285441535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249732 n - A249733 n

end

end A249731.P5559529194285441535

/-! ## A249731.P16533405650178501881

`A386952(n)-A382723(n)`
-/

namespace A249731.P16533405650178501881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n - A382723 n

end

end A249731.P16533405650178501881

/-! ## A249731.P8786531726129502367

`1-A249733(n)+n-A382723(n)`
-/

namespace A249731.P8786531726129502367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249733 n + (n : ℤ) - A382723 n

end

end A249731.P8786531726129502367

/-! ## A249731.P12822876375462493719

`A048967(n)-(A249733(n)+A163000(n))`
-/

namespace A249731.P12822876375462493719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n - (A249733 n + A163000 n)

end

end A249731.P12822876375462493719

/-! ## A249731.P17340514567533675767

`A386952(n)-(A163000(n)+A001316(n))`
-/

namespace A249731.P17340514567533675767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386952 n - (A163000 n + A001316 n)

end

end A249731.P17340514567533675767

/-! ## A249731.P17976555032230139270

`n-(A163000(n)+A038573(n))-A249733(n)`
-/

namespace A249731.P17976555032230139270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A163000 n + A038573 n) - A249733 n

end

end A249731.P17976555032230139270

/-! ## A249731.P17200545230514105912

`A001057(A071050(n))-(A249733(n)+A163000(n))`
-/

namespace A249731.P17200545230514105912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A071050 n).toNat - (A249733 n + A163000 n)

end

end A249731.P17200545230514105912

/-! ## A249731.P15741197830725372427

`A249732(n)+A008683(A198519(n+1))*A249733(n)`
-/

namespace A249731.P15741197830725372427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249732 n + A008683 (A198519 (n + 1)).toNat * A249733 n

end

end A249731.P15741197830725372427

/-!
# A249732: Number of (not necessarily distinct) multiples of 4 on row n of Pascal's triangle.

The programs for A249732, the canonical program `A249732.P18279508953089269777` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249732 has offset 0).

The definition of A249732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249732.P7933637124644364847

`1-A382723(n)+n`
-/

namespace A249732.P7933637124644364847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A382723 n + (n : ℤ)

end

end A249732.P7933637124644364847

namespace A249732

/-- `1-A382723(n)+n` -/
def P7933637124644364847.Spec : Prop :=
  ∀ n, P7933637124644364847.a n = A249732 n

end A249732

/-! ## A249732.P18279508953089269777

`A048967(n)-A163000(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A249732

/-- `A048967(n)-A163000(n)` -/
def P18279508953089269777.Spec : Prop :=
  ∀ n, P18279508953089269777.a n = A249732 n

theorem P18279508953089269777.correct : P18279508953089269777.Spec := by
  intro n
  simp only [A249732]

end A249732

/-! ## A249732.P3501449749453908214

`n-(A163000(n)+A038573(n))`
-/

namespace A249732.P3501449749453908214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A163000 n + A038573 n)

end

end A249732.P3501449749453908214

namespace A249732

/-- `n-(A163000(n)+A038573(n))` -/
def P3501449749453908214.Spec : Prop :=
  ∀ n, P3501449749453908214.a n = A249732 n

end A249732

/-! ## A249732.P5714929358131435110

`n+1-(A163000(n)+A001316(n))`
-/

namespace A249732.P5714929358131435110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A163000 n + A001316 n)

end

end A249732.P5714929358131435110

namespace A249732

/-- `n+1-(A163000(n)+A001316(n))` -/
def P5714929358131435110.Spec : Prop :=
  ∀ n, P5714929358131435110.a n = A249732 n

end A249732

/-! ## A249732.P4088963651768339178

`A249733(n)+A249731(n)`
-/

namespace A249732.P4088963651768339178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249733 n + A249731 n

end

end A249732.P4088963651768339178

namespace A249732

/-- `A249733(n)+A249731(n)` -/
def P4088963651768339178.Spec : Prop :=
  ∀ n, P4088963651768339178.a n = A249732 n

end A249732

/-! ## A249732.P11593113702025887909

`A001057(A071050(n))-A163000(n)`
-/

namespace A249732.P11593113702025887909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A071050 n).toNat - A163000 n

end

end A249732.P11593113702025887909

namespace A249732

/-- `A001057(A071050(n))-A163000(n)` -/
def P11593113702025887909.Spec : Prop :=
  ∀ n, P11593113702025887909.a n = A249732 n

end A249732

/-! ## A249732.P15151338396872236014

`A220645(∑[n]+2)%A000041(n)`
-/

namespace A249732.P15151338396872236014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220645 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (A000041 n)

end

end A249732.P15151338396872236014

namespace A249732

/-- `A220645(∑[n]+2)%A000041(n)` -/
def P15151338396872236014.Spec : Prop :=
  ∀ n, P15151338396872236014.a n = A249732 n

end A249732

/-!
# A249733: Number of (not necessarily distinct) multiples of 9 on row n of Pascal's triangle.

The programs for A249733, there is no canonical definition to state claims against.
-/

/-! ## A249733.P3022497266156686492

`1-A386952(n)+n`
-/

namespace A249733.P3022497266156686492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A386952 n + (n : ℤ)

end

end A249733.P3022497266156686492

/-! ## A249733.P4050478375973804315

`A249732(n)-A249731(n)`
-/

namespace A249733.P4050478375973804315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249732 n - A249731 n

end

end A249733.P4050478375973804315

/-! ## A249733.P9755726229724446169

`n+1-(A382723(n)+A249731(n))`
-/

namespace A249733.P9755726229724446169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A382723 n + A249731 n)

end

end A249733.P9755726229724446169

/-! ## A249733.P3121258401971523937

`(A249732(n)+A048645(n+1))%(A249731(n)+A048645(n+1))`
-/

namespace A249733.P3121258401971523937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249732 n + A048645 (n + 1)) (A249731 n + A048645 (n + 1))

end

end A249733.P3121258401971523937

/-! ## A249733.P1665276176390661124

`(A249732(n)+A249723(n+1))%(A249731(n)+A249723(n+1))`
-/

namespace A249733.P1665276176390661124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249732 n + A249723 (n + 1)) (A249731 n + A249723 (n + 1))

end

end A249733.P1665276176390661124

/-! ## A249733.P17691409904238100030

`(A249732(n)+A249726(n+1))%(A249731(n)+A249726(n+1))`
-/

namespace A249733.P17691409904238100030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249732 n + A249726 (n + 1)) (A249731 n + A249726 (n + 1))

end

end A249733.P17691409904238100030

/-! ## A249733.P960103871056104813

`(A249732(n)+A052955(n))%(A249731(n)+A052955(n))`
-/

namespace A249733.P960103871056104813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249732 n + A052955 n) (A249731 n + A052955 n)

end

end A249733.P960103871056104813

/-!
# A249734: Even bisection of A003961: Replace in 2n each prime factor p(k) with prime p(k+1).

The programs for A249734, the canonical program `A249734.P3051045512633730297` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249734 has offset 1).

The definition of A249734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249734.P3244300562865307912

`A003961(2*(n+1))`
-/

namespace A249734.P3244300562865307912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * (n + 1))

end

end A249734.P3244300562865307912

namespace A249734

/-- `A003961(2*(n+1))` -/
def P3244300562865307912.Spec : Prop :=
  ∀ n, P3244300562865307912.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P3051045512633730297

`A016945(A048673(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A249734

/-- `A016945(A048673(n+1)-1)` -/
def P3051045512633730297.Spec : Prop :=
  ∀ n, P3051045512633730297.a n = A249734 (n + 1)

theorem P3051045512633730297.correct : P3051045512633730297.Spec := by
  intro n
  simp only [A249734, Nat.add_sub_cancel]

end A249734

/-! ## A249734.P15464460869856321781

`A064989(A249827(n+1))`
-/

namespace A249734.P15464460869856321781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A249827 (n + 1)).toNat

end

end A249734.P15464460869856321781

namespace A249734

/-- `A064989(A249827(n+1))` -/
def P15464460869856321781.Spec : Prop :=
  ∀ n, P15464460869856321781.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P16600765152159981741

`3*(A253885(n)+1)`
-/

namespace A249734.P16600765152159981741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A253885 n + 1)

end

end A249734.P16600765152159981741

namespace A249734

/-- `3*(A253885(n)+1)` -/
def P16600765152159981741.Spec : Prop :=
  ∀ n, P16600765152159981741.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P709393333401463741

`sqrt(A379481(2*(n+1)))`
-/

namespace A249734.P709393333401463741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (2 * (n + 1)) : ℝ)

end

end A249734.P709393333401463741

namespace A249734

/-- `sqrt(A379481(2*(n+1)))` -/
def P709393333401463741.Spec : Prop :=
  ∀ n, P709393333401463741.a n = (A249734 (n + 1) : ℝ)

end A249734

/-! ## A249734.P14935981870986712767

`3*(A243501(n+1)-1)`
-/

namespace A249734.P14935981870986712767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A243501 (n + 1) - 1)

end

end A249734.P14935981870986712767

namespace A249734

/-- `3*(A243501(n+1)-1)` -/
def P14935981870986712767.Spec : Prop :=
  ∀ n, P14935981870986712767.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P1567811818284784020

`3*∑{d}[n+1, A003972(#)]`
-/

namespace A249734.P1567811818284784020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n), A003972 d)

end

end A249734.P1567811818284784020

namespace A249734

/-- `3*∑{d}[n+1, A003972(#)]` -/
def P1567811818284784020.Spec : Prop :=
  ∀ n, P1567811818284784020.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P17239832812632264619

`3*or(1, A045965(n+1)-1)`
-/

namespace A249734.P17239832812632264619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.lor 1 (A045965 (n + 1) - 1)

end

end A249734.P17239832812632264619

namespace A249734

/-- `3*or(1, A045965(n+1)-1)` -/
def P17239832812632264619.Spec : Prop :=
  ∀ n, P17239832812632264619.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P9646510754893376368

`3*(A336853(n+1)+n+1)`
-/

namespace A249734.P9646510754893376368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A336853 (n + 1) + (n + 1 : ℤ))

end

end A249734.P9646510754893376368

namespace A249734

/-- `3*(A336853(n+1)+n+1)` -/
def P9646510754893376368.Spec : Prop :=
  ∀ n, P9646510754893376368.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P8429981994468004620

`3/(n+1)*A191002(n+1)`
-/

namespace A249734.P8429981994468004620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A191002 (n + 1) : ℚ)

end

end A249734.P8429981994468004620

namespace A249734

/-- `3/(n+1)*A191002(n+1)` -/
def P8429981994468004620.Spec : Prop :=
  ∀ n, P8429981994468004620.a n = (A249734 (n + 1) : ℚ)

end A249734

/-! ## A249734.P4286101170546765211

`A388975(n+1)+A003973(n+1)`
-/

namespace A249734.P4286101170546765211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388975 (n + 1) + A003973 (n + 1)

end

end A249734.P4286101170546765211

namespace A249734

/-- `A388975(n+1)+A003973(n+1)` -/
def P4286101170546765211.Spec : Prop :=
  ∀ n, P4286101170546765211.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P18327483784792989668

`3*gcd(A045967(n+1), A283980(n+1))`
-/

namespace A249734.P18327483784792989668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.gcd (A045967 (n + 1)) (A283980 (n + 1))

end

end A249734.P18327483784792989668

namespace A249734

/-- `3*gcd(A045967(n+1), A283980(n+1))` -/
def P18327483784792989668.Spec : Prop :=
  ∀ n, (P18327483784792989668.a n : ℤ) = A249734 (n + 1)

end A249734

/-! ## A249734.P10220714949632029725

`∑{d}[n+1, A272027(#)*A378606((n+1)/#)]`
-/

namespace A249734.P10220714949632029725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A272027 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A249734.P10220714949632029725

namespace A249734

/-- `∑{d}[n+1, A272027(#)*A378606((n+1)/#)]` -/
def P10220714949632029725.Spec : Prop :=
  ∀ n, P10220714949632029725.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P4674854703397429720

`A336845(2*(n+1))/A000005(2*(n+1))`
-/

namespace A249734.P4674854703397429720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (2 * (n + 1)) : ℚ) / (A000005 (2 * (n + 1)) : ℚ)

end

end A249734.P4674854703397429720

namespace A249734

/-- `A336845(2*(n+1))/A000005(2*(n+1))` -/
def P4674854703397429720.Spec : Prop :=
  ∀ n, P4674854703397429720.a n = (A249734 (n + 1) : ℚ)

end A249734

/-! ## A249734.P15253482640759496904

`A286385(2*(n+1))+A000203(2*(n+1))`
-/

namespace A249734.P15253482640759496904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (2 * (n + 1)) + A000203 (2 * (n + 1))

end

end A249734.P15253482640759496904

namespace A249734

/-- `A286385(2*(n+1))+A000203(2*(n+1))` -/
def P15253482640759496904.Spec : Prop :=
  ∀ n, P15253482640759496904.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P8235015042578544943

`A045965(2*(n+1))`
-/

namespace A249734.P8235015042578544943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (2 * (n + 1))

end

end A249734.P8235015042578544943

namespace A249734

/-- `A045965(2*(n+1))` -/
def P8235015042578544943.Spec : Prop :=
  ∀ n, P8235015042578544943.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P8058601728659000435

`A118306(2*(n+1))`
-/

namespace A249734.P8058601728659000435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (2 * (n + 1))

end

end A249734.P8058601728659000435

namespace A249734

/-- `A118306(2*(n+1))` -/
def P8058601728659000435.Spec : Prop :=
  ∀ n, P8058601728659000435.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P17483683789153358820

`A253885(Δ[n²])+1`
-/

namespace A249734.P17483683789153358820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A249734.P17483683789153358820

namespace A249734

/-- `A253885(Δ[n²])+1` -/
def P17483683789153358820.Spec : Prop :=
  ∀ n, P17483683789153358820.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P13565767340504774555

`A243501(2*(n+1))-1`
-/

namespace A249734.P13565767340504774555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (2 * (n + 1)) - 1

end

end A249734.P13565767340504774555

namespace A249734

/-- `A243501(2*(n+1))-1` -/
def P13565767340504774555.Spec : Prop :=
  ∀ n, P13565767340504774555.a n = A249734 (n + 1)

end A249734

/-! ## A249734.P10402162783927570745

`A003973(2*(n+1))-A336851(2*(n+1))`
-/

namespace A249734.P10402162783927570745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (2 * (n + 1)) - A336851 (2 * (n + 1))

end

end A249734.P10402162783927570745

namespace A249734

/-- `A003973(2*(n+1))-A336851(2*(n+1))` -/
def P10402162783927570745.Spec : Prop :=
  ∀ n, P10402162783927570745.a n = A249734 (n + 1)

end A249734

/-!
# A249735: Odd bisection of A003961: Replace in 2n-1 each prime factor p(k) with prime p(k+1).

The programs for A249735, the canonical program `A249735.P12424842754456983110` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249735 has offset 1).

The definition of A249735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249735.P12424842754456983110

`A003961(2*n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A249735

/-- `A003961(2*n+1)` -/
def P12424842754456983110.Spec : Prop :=
  ∀ n, P12424842754456983110.a n = A249735 (n + 1)

theorem P12424842754456983110.correct : P12424842754456983110.Spec := by
  intro n
  simp only [A249735, Nat.add_sub_cancel]

end A249735

/-! ## A249735.P3218149670302435293

`A007310(A249746(n+1))`
-/

namespace A249735.P3218149670302435293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A249746 (n + 1)).toNat

end

end A249735.P3218149670302435293

namespace A249735

/-- `A007310(A249746(n+1))` -/
def P3218149670302435293.Spec : Prop :=
  ∀ n, P3218149670302435293.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P14996182950318854916

`sqrt(A379481(2*n+1))`
-/

namespace A249735.P14996182950318854916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (2 * n + 1) : ℝ)

end

end A249735.P14996182950318854916

namespace A249735

/-- `sqrt(A379481(2*n+1))` -/
def P14996182950318854916.Spec : Prop :=
  ∀ n, P14996182950318854916.a n = (A249735 (n + 1) : ℝ)

end A249735

/-! ## A249735.P7823549458386455736

`2*A254049(n+1)-1`
-/

namespace A249735.P7823549458386455736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254049 (n + 1) - 1

end

end A249735.P7823549458386455736

namespace A249735

/-- `2*A254049(n+1)-1` -/
def P7823549458386455736.Spec : Prop :=
  ∀ n, P7823549458386455736.a n = A249735 (n + 1)

theorem P7823549458386455736.correct : P7823549458386455736.Spec := by
  intro n
  simp only [A249735, Nat.add_sub_cancel, A249735.P7823549458386455736.a, A249735.P12424842754456983110.a, A003961, A003961.P5996473960037614004.a, A254049, A254049.P1269229269105982742.a, A048673, A048673.P3613002930333742504.a, A253885, A253885.P16715555451856890624.a, A243501, A243501.P10707292738867961998.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A243071, A243071.P12484383641158862297.a, A275716, A275716.P7951773903952206727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249735

/-! ## A249735.P11004588384927569060

`∑{d}[2*n+1, A003972(#)]`
-/

namespace A249735.P11004588384927569060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d

end

end A249735.P11004588384927569060

namespace A249735

/-- `∑{d}[2*n+1, A003972(#)]` -/
def P11004588384927569060.Spec : Prop :=
  ∀ n, P11004588384927569060.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P1486125036689824870

`A336853(2*n+1)+Δ[n²]`
-/

namespace A249735.P1486125036689824870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A249735.P1486125036689824870

namespace A249735

/-- `A336853(2*n+1)+Δ[n²]` -/
def P1486125036689824870.Spec : Prop :=
  ∀ n, P1486125036689824870.a n = A249735 (n + 1)

theorem P1486125036689824870.correct : P1486125036689824870.Spec := by
  intro n
  simp only [A249735, Nat.add_sub_cancel, A249735.P1486125036689824870.f1, A249735.P1486125036689824870.a, A249735.P12424842754456983110.a, A003961, A003961.P5996473960037614004.a, A336853, A336853.P17153510744129978778.a, A253885, A253885.P16715555451856890624.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249735

/-! ## A249735.P16208213155346200354

`A286385(2*n+1)+A000203(2*n+1)`
-/

namespace A249735.P16208213155346200354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (2 * n + 1) + A000203 (2 * n + 1)

end

end A249735.P16208213155346200354

namespace A249735

/-- `A286385(2*n+1)+A000203(2*n+1)` -/
def P16208213155346200354.Spec : Prop :=
  ∀ n, P16208213155346200354.a n = A249735 (n + 1)

theorem P16208213155346200354.correct : P16208213155346200354.Spec := by
  intro n
  simp only [A249735, Nat.add_sub_cancel, A249735.P16208213155346200354.a, A249735.P12424842754456983110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P16715555451856890624.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249735

/-! ## A249735.P12515129287147666975

`A336849(2*n+1)*A336850(2*n+1)`
-/

namespace A249735.P12515129287147666975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (2 * n + 1) * A336850 (2 * n + 1)

end

end A249735.P12515129287147666975

namespace A249735

/-- `A336849(2*n+1)*A336850(2*n+1)` -/
def P12515129287147666975.Spec : Prop :=
  ∀ n, P12515129287147666975.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P5296898295874196479

`A336845(2*n+1)/A000005(2*n+1)`
-/

namespace A249735.P5296898295874196479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (2 * n + 1) : ℚ) / (A000005 (2 * n + 1) : ℚ)

end

end A249735.P5296898295874196479

namespace A249735

/-- `A336845(2*n+1)/A000005(2*n+1)` -/
def P5296898295874196479.Spec : Prop :=
  ∀ n, P5296898295874196479.a n = (A249735 (n + 1) : ℚ)

end A249735

/-! ## A249735.P10871618396825091321

`A357852(A064216(n+1))`
-/

namespace A249735.P10871618396825091321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (A064216 (n + 1)).toNat

end

end A249735.P10871618396825091321

namespace A249735

/-- `A357852(A064216(n+1))` -/
def P10871618396825091321.Spec : Prop :=
  ∀ n, P10871618396825091321.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P6008577465456947838

`A283980(Δ[n²])`
-/

namespace A249735.P6008577465456947838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A249735.P6008577465456947838

namespace A249735

/-- `A283980(Δ[n²])` -/
def P6008577465456947838.Spec : Prop :=
  ∀ n, P6008577465456947838.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P16049460361695289445

`A253885(2*n)+1`
-/

namespace A249735.P16049460361695289445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (2 * n) + 1

end

end A249735.P16049460361695289445

namespace A249735

/-- `A253885(2*n)+1` -/
def P16049460361695289445.Spec : Prop :=
  ∀ n, P16049460361695289445.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P4466513346493587444

`A243501(Δ[n²])-1`
-/

namespace A249735.P4466513346493587444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A249735.P4466513346493587444

namespace A249735

/-- `A243501(Δ[n²])-1` -/
def P4466513346493587444.Spec : Prop :=
  ∀ n, P4466513346493587444.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P6238775182563212907

`A003961(record[xor(1, n)])`
-/

namespace A249735.P6238775182563212907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A249735.P6238775182563212907

namespace A249735

/-- `A003961(record[xor(1, n)])` -/
def P6238775182563212907.Spec : Prop :=
  ∀ n, P6238775182563212907.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P15032662364362787547

`A249734(Δ[n²])/3`
-/

namespace A249735.P15032662364362787547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249734 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A249735.P15032662364362787547

namespace A249735

/-- `A249734(Δ[n²])/3` -/
def P15032662364362787547.Spec : Prop :=
  ∀ n, P15032662364362787547.a n = (A249735 (n + 1) : ℚ)

end A249735

/-! ## A249735.P15878367071663251083

`2*A048673(2*n+1)-1`
-/

namespace A249735.P15878367071663251083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (2 * n + 1) - 1

end

end A249735.P15878367071663251083

namespace A249735

/-- `2*A048673(2*n+1)-1` -/
def P15878367071663251083.Spec : Prop :=
  ∀ n, P15878367071663251083.a n = A249735 (n + 1)

theorem P15878367071663251083.correct : P15878367071663251083.Spec := by
  intro n
  simp only [A249735, Nat.add_sub_cancel, A249735.P15878367071663251083.a, A249735.P12424842754456983110.a, A003961, A003961.P5996473960037614004.a, A048673, A048673.P3613002930333742504.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A253885, A253885.P16715555451856890624.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A243071, A243071.P12484383641158862297.a, A243501, A243501.P10707292738867961998.a, A275716, A275716.P7951773903952206727.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A163511, A163511.P5635496813650871695.a, A253566, A253566.P9103107584596957047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249735

/-! ## A249735.P1466957768177225241

`lcm(2, A045965(2*n+1))/2`
-/

namespace A249735.P1466957768177225241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A045965 (2 * n + 1)) : ℚ) / 2

end

end A249735.P1466957768177225241

namespace A249735

/-- `lcm(2, A045965(2*n+1))/2` -/
def P1466957768177225241.Spec : Prop :=
  ∀ n, P1466957768177225241.a n = (A249735 (n + 1) : ℚ)

end A249735

/-! ## A249735.P5263581597767949304

`A191002(2*n+1)/(2*n+1)`
-/

namespace A249735.P5263581597767949304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A249735.P5263581597767949304

namespace A249735

/-- `A191002(2*n+1)/(2*n+1)` -/
def P5263581597767949304.Spec : Prop :=
  ∀ n, P5263581597767949304.a n = (A249735 (n + 1) : ℚ)

end A249735

/-! ## A249735.P7526154677510159051

`A357852(A064989(2*n+1))`
-/

namespace A249735.P7526154677510159051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (A064989 (2 * n + 1)).toNat

end

end A249735.P7526154677510159051

namespace A249735

/-- `A357852(A064989(2*n+1))` -/
def P7526154677510159051.Spec : Prop :=
  ∀ n, P7526154677510159051.a n = A249735 (n + 1)

end A249735

/-! ## A249735.P7998734390306689230

`A045965(2*n+1)-A000007(n)`
-/

namespace A249735.P7998734390306689230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (2 * n + 1) - A000007 n

end

end A249735.P7998734390306689230

namespace A249735

/-- `A045965(2*n+1)-A000007(n)` -/
def P7998734390306689230.Spec : Prop :=
  ∀ n, P7998734390306689230.a n = A249735 (n + 1)

end A249735

/-!
# A249736: Triangular numbers modulo 30.

The programs for A249736, the canonical program `A249736.P8156968146415141337` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249736 has offset 0).

The definition of A249736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249736.P8156968146415141337

`A000217(n)%30`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249736

/-- `A000217(n)%30` -/
def P8156968146415141337.Spec : Prop :=
  ∀ n, P8156968146415141337.a n = A249736 n

theorem P8156968146415141337.correct : P8156968146415141337.Spec := by
  intro n
  simp only [A249736]

end A249736

/-! ## A249736.P8840442994337986390

`∑[n]%30`
-/

namespace A249736.P8840442994337986390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 30

end

end A249736.P8840442994337986390

namespace A249736

/-- `∑[n]%30` -/
def P8840442994337986390.Spec : Prop :=
  ∀ n, (P8840442994337986390.a n : ℤ) = A249736 n

end A249736

/-!
# A249737: E.g.f.: Product_{k=1..n} cosh(k*x).

The programs for A249737, there is no canonical definition to state claims against.
-/

/-! ## A249737.P2015929493474603287

`A357487(∑[5^∑{e}[n+1, #]])`
-/

namespace A249737.P2015929493474603287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249737.P2015929493474603287

/-!
# A249738: a(n) = 0 if n is 1 or a prime, otherwise, when n = A020639(n) * A032742(n), a(n) = the largest k < A032742(n) such that either k = 1 or A020639(k) >= A020639(n), where A020639(n) and A032742(n) are the smallest prime and the largest proper divisor dividing n.

The programs for A249738, there is no canonical definition to state claims against.
-/

/-! ## A249738.P18125296981907784155

`A249744(n+1)/A020639(n+1)`
-/

namespace A249738.P18125296981907784155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249744 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A249738.P18125296981907784155

/-! ## A249738.P17406990856800056663

`A249744(n+1)/A074828(n+1)`
-/

namespace A249738.P17406990856800056663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249744 (n + 1) : ℚ) / (A074828 (n + 1) : ℚ)

end

end A249738.P17406990856800056663

/-! ## A249738.P9309257912478381660

`A032742(n+1)/(n+1)*A249744(n+1)`
-/

namespace A249738.P9309257912478381660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (n + 1 : ℚ) * (A249744 (n + 1) : ℚ)

end

end A249738.P9309257912478381660

/-! ## A249738.P1974695886707305576

`A249744(n+1)/A006530(A068794(n+1))`
-/

namespace A249738.P1974695886707305576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249744 (n + 1) : ℚ) / (A006530 (A068794 (n + 1)).toNat : ℚ)

end

end A249738.P1974695886707305576

/-! ## A249738.P8785443581912290422

`A249744(n+1)/A000026((n+1)/A032742(n+1))`
-/

namespace A249738.P8785443581912290422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249744 (n + 1) : ℚ) / (A000026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat : ℚ)

end

end A249738.P8785443581912290422

/-! ## A249738.P9355287040916518901

`A249744(n+1)/A063918(A143545(n+1))`
-/

namespace A249738.P9355287040916518901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249744 (n + 1) : ℚ) / (A063918 (A143545 (n + 1)).toNat : ℚ)

end

end A249738.P9355287040916518901

/-! ## A249738.P2298926738553827897

`A249744(n+1)/A117818(A088377(n+1))`
-/

namespace A249738.P2298926738553827897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249744 (n + 1) : ℚ) / (A117818 (A088377 (n + 1)).toNat : ℚ)

end

end A249738.P2298926738553827897

/-!
# A249739: The smallest prime whose square divides n, 1 if n is squarefree.

The programs for A249739, there is no canonical definition to state claims against.
-/

/-! ## A249739.P9019996264142417858

`A020639(A003557(n+1))`
-/

namespace A249739.P9019996264142417858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003557 (n + 1)).toNat

end

end A249739.P9019996264142417858

/-! ## A249739.P774352724932730913

`∏{d}[A392108(n+1), #]`
-/

namespace A249739.P774352724932730913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A249739.P774352724932730913

/-! ## A249739.P12534668605838710571

`A020639((n+1)/∏{p}[n+1, #])`
-/

namespace A249739.P12534668605838710571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A249739.P12534668605838710571

/-! ## A249739.P15555666736521892302

`A028233(∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A249739.P15555666736521892302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A249739.P15555666736521892302

/-! ## A249739.P7645494252972686985

`A028233(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A249739.P7645494252972686985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A249739.P7645494252972686985

/-! ## A249739.P2437669483186943801

`A020639(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A249739.P2437669483186943801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A249739.P2437669483186943801

/-! ## A249739.P17280894489937857791

`A014673(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A249739.P17280894489937857791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A249739.P17280894489937857791

/-! ## A249739.P11257662674556572156

`A014673(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A249739.P11257662674556572156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A249739.P11257662674556572156

/-! ## A249739.P31678091378296288

`A067695(∏{p}[∏{p}[n+1, #^val(n+1, #²)], #])`
-/

namespace A249739.P31678091378296288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A249739.P31678091378296288

/-! ## A249739.P17906053722863514349

`A020639(A000188(n+1))`
-/

namespace A249739.P17906053722863514349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000188 (n + 1)).toNat

end

end A249739.P17906053722863514349

/-! ## A249739.P1629971675423433703

`A020639(A000189(n+1))`
-/

namespace A249739.P1629971675423433703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000189 (n + 1)).toNat

end

end A249739.P1629971675423433703

/-! ## A249739.P13801127889186975125

`A020639(A000190(n+1))`
-/

namespace A249739.P13801127889186975125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000190 (n + 1)).toNat

end

end A249739.P13801127889186975125

/-! ## A249739.P17755900337227023120

`A014673(A008833(n+1))`
-/

namespace A249739.P17755900337227023120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A008833 (n + 1)).toNat

end

end A249739.P17755900337227023120

/-! ## A249739.P11279346945460219681

`A014673(A057521(n+1))`
-/

namespace A249739.P11279346945460219681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A057521 (n + 1)).toNat

end

end A249739.P11279346945460219681

/-! ## A249739.P11479719953676709896

`A020639(A071773(n+1))`
-/

namespace A249739.P11479719953676709896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071773 (n + 1)).toNat

end

end A249739.P11479719953676709896

/-! ## A249739.P2231033481526179139

`A020639(A085731(n+1))`
-/

namespace A249739.P2231033481526179139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085731 (n + 1)).toNat

end

end A249739.P2231033481526179139

/-! ## A249739.P2312169053825236729

`A014673(A235872(n+1))`
-/

namespace A249739.P2312169053825236729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A235872 (n + 1)).toNat

end

end A249739.P2312169053825236729

/-! ## A249739.P15614457081223736655

`A107286(A217434(n+1))`
-/

namespace A249739.P15614457081223736655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A217434 (n + 1)).toNat

end

end A249739.P15614457081223736655

/-! ## A249739.P1484887023558888899

`A020639(A308993(n+1))`
-/

namespace A249739.P1484887023558888899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A308993 (n + 1)).toNat

end

end A249739.P1484887023558888899

/-!
# A249740: The largest prime whose square divides n, 1 if n is squarefree.

The programs for A249740, the canonical program `A249740.P7780659376755282522` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249740 has offset 1).

The definition of A249740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249740.P7780659376755282522

`A006530(A003557(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A249740

/-- `A006530(A003557(n+1))` -/
def P7780659376755282522.Spec : Prop :=
  ∀ n, P7780659376755282522.a n = A249740 (n + 1)

theorem P7780659376755282522.correct : P7780659376755282522.Spec := by
  intro n
  simp only [A249740, Nat.add_sub_cancel]

end A249740

/-! ## A249740.P3592138181162768425

`sqrt(A083730(n+1))`
-/

namespace A249740.P3592138181162768425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A083730 (n + 1) : ℝ)

end

end A249740.P3592138181162768425

namespace A249740

/-- `sqrt(A083730(n+1))` -/
def P3592138181162768425.Spec : Prop :=
  ∀ n, P3592138181162768425.a n = (A249740 (n + 1) : ℝ)

end A249740

/-! ## A249740.P5031048445635614325

`∏{d}[A392109(n+1), #]`
-/

namespace A249740.P5031048445635614325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A249740.P5031048445635614325

namespace A249740

/-- `∏{d}[A392109(n+1), #]` -/
def P5031048445635614325.Spec : Prop :=
  ∀ n, (P5031048445635614325.a n : ℤ) = A249740 (n + 1)

end A249740

/-! ## A249740.P10635776748486197550

`A006530((n+1)/∏{p}[n+1, #])`
-/

namespace A249740.P10635776748486197550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A249740.P10635776748486197550

namespace A249740

/-- `A006530((n+1)/∏{p}[n+1, #])` -/
def P10635776748486197550.Spec : Prop :=
  ∀ n, P10635776748486197550.a n = A249740 (n + 1)

theorem P10635776748486197550.correct : P10635776748486197550.Spec := by
  intro n
  simp only [A249740, Nat.add_sub_cancel, A249740.P10635776748486197550.f1, A249740.P10635776748486197550.a, A249740.P7780659376755282522.a, A003557, A003557.P6364735403900941810.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249740

/-! ## A249740.P8311746599395476422

`A034699(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A249740.P8311746599395476422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A249740.P8311746599395476422

namespace A249740

/-- `A034699(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P8311746599395476422.Spec : Prop :=
  ∀ n, P8311746599395476422.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P10807868007120711599

`A006530(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A249740.P10807868007120711599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A249740.P10807868007120711599

namespace A249740

/-- `A006530(∏{p}[n+1, #^val(n+1, #²)])` -/
def P10807868007120711599.Spec : Prop :=
  ∀ n, P10807868007120711599.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P7286450660236743029

`A006530(gcd(n+1, ∑{p}[n+1, (n+1)/#]))`
-/

namespace A249740.P7286450660236743029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A249740.P7286450660236743029

namespace A249740

/-- `A006530(gcd(n+1, ∑{p}[n+1, (n+1)/#]))` -/
def P7286450660236743029.Spec : Prop :=
  ∀ n, P7286450660236743029.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P7551017206020176959

`A006530(A000188(n+1))`
-/

namespace A249740.P7551017206020176959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000188 (n + 1)).toNat

end

end A249740.P7551017206020176959

namespace A249740

/-- `A006530(A000188(n+1))` -/
def P7551017206020176959.Spec : Prop :=
  ∀ n, P7551017206020176959.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P8864077790073886910

`A006530(A000189(n+1))`
-/

namespace A249740.P8864077790073886910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000189 (n + 1)).toNat

end

end A249740.P8864077790073886910

namespace A249740

/-- `A006530(A000189(n+1))` -/
def P8864077790073886910.Spec : Prop :=
  ∀ n, P8864077790073886910.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P11244832640867996888

`A006530(A000190(n+1))`
-/

namespace A249740.P11244832640867996888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000190 (n + 1)).toNat

end

end A249740.P11244832640867996888

namespace A249740

/-- `A006530(A000190(n+1))` -/
def P11244832640867996888.Spec : Prop :=
  ∀ n, P11244832640867996888.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P5714378491035285938

`A006530(A008833(n+1))`
-/

namespace A249740.P5714378491035285938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008833 (n + 1)).toNat

end

end A249740.P5714378491035285938

namespace A249740

/-- `A006530(A008833(n+1))` -/
def P5714378491035285938.Spec : Prop :=
  ∀ n, P5714378491035285938.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P6337499997548108268

`A006530(A057521(n+1))`
-/

namespace A249740.P6337499997548108268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057521 (n + 1)).toNat

end

end A249740.P6337499997548108268

namespace A249740

/-- `A006530(A057521(n+1))` -/
def P6337499997548108268.Spec : Prop :=
  ∀ n, P6337499997548108268.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P6950421047876223851

`A002034(A071773(n+1))`
-/

namespace A249740.P6950421047876223851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A071773 (n + 1)).toNat

end

end A249740.P6950421047876223851

namespace A249740

/-- `A002034(A071773(n+1))` -/
def P6950421047876223851.Spec : Prop :=
  ∀ n, P6950421047876223851.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P2286345567985637827

`A006530(A085731(n+1))`
-/

namespace A249740.P2286345567985637827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085731 (n + 1)).toNat

end

end A249740.P2286345567985637827

namespace A249740

/-- `A006530(A085731(n+1))` -/
def P2286345567985637827.Spec : Prop :=
  ∀ n, P2286345567985637827.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P2435790698019323649

`A087039(A217434(n+1))`
-/

namespace A249740.P2435790698019323649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A217434 (n + 1)).toNat

end

end A249740.P2435790698019323649

namespace A249740

/-- `A087039(A217434(n+1))` -/
def P2435790698019323649.Spec : Prop :=
  ∀ n, P2435790698019323649.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P11898984001935875485

`A006530(A308993(n+1))`
-/

namespace A249740.P11898984001935875485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A308993 (n + 1)).toNat

end

end A249740.P11898984001935875485

namespace A249740

/-- `A006530(A308993(n+1))` -/
def P11898984001935875485.Spec : Prop :=
  ∀ n, P11898984001935875485.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P3495601613804353146

`A082061(A235872(n+1))`
-/

namespace A249740.P3495601613804353146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A235872 (n + 1)).toNat

end

end A249740.P3495601613804353146

namespace A249740

/-- `A082061(A235872(n+1))` -/
def P3495601613804353146.Spec : Prop :=
  ∀ n, P3495601613804353146.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P10404868327519234490

`A006530(A380162(n+1))`
-/

namespace A249740.P10404868327519234490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A380162 (n + 1)).toNat

end

end A249740.P10404868327519234490

namespace A249740

/-- `A006530(A380162(n+1))` -/
def P10404868327519234490.Spec : Prop :=
  ∀ n, P10404868327519234490.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P11115991306938969082

`A006530(abs(A358272(n+1)))`
-/

namespace A249740.P11115991306938969082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A358272 (n + 1)|.toNat

end

end A249740.P11115991306938969082

namespace A249740

/-- `A006530(abs(A358272(n+1)))` -/
def P11115991306938969082.Spec : Prop :=
  ∀ n, P11115991306938969082.a n = A249740 (n + 1)

end A249740

/-! ## A249740.P2594419716643348482

`A006530(A071773(n+1)²)`
-/

namespace A249740.P2594419716643348482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071773 (n + 1) ^ 2).toNat

end

end A249740.P2594419716643348482

namespace A249740

/-- `A006530(A071773(n+1)²)` -/
def P2594419716643348482.Spec : Prop :=
  ∀ n, P2594419716643348482.a n = A249740 (n + 1)

end A249740

/-!
# A249741: Sieve of Eratosthenes minus one: a(n) = A083221(n+1) - 1.

The programs for A249741, there is no canonical definition to state claims against.
-/

/-! ## A249741.P9294839000111645240

`A083221(n+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249741.P9294839000111645240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (n + 2) - 1

end

end A249741.P9294839000111645240

/-! ## A249741.P12438876867536411211

`A249811(A135764(n+1))`
-/

namespace A249741.P12438876867536411211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A135764 (n + 1)).toNat

end

end A249741.P12438876867536411211

/-! ## A249741.P14387525035884153947

`A114881(A038722(n+1))`
-/

namespace A249741.P14387525035884153947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114881 (A038722 (n + 1)).toNat

end

end A249741.P14387525035884153947

/-! ## A249741.P2171500680701498985

`A326408(A039650(n+1))+A083221(n+2)`
-/

namespace A249741.P2171500680701498985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326408 (A039650 (n + 1)).toNat + A083221 (n + 2)

end

end A249741.P2171500680701498985

/-! ## A249741.P14390018305562922966

`A103910(A020639(2*(n+1)))+A083221(n+2)`
-/

namespace A249741.P14390018305562922966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103910 (A020639 (2 * (n + 1))).toNat + A083221 (n + 2)

end

end A249741.P14390018305562922966

/-! ## A249741.P698360982345256735

`A083140(A061579(n)+2)-1`
-/

namespace A249741.P698360982345256735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A061579 n + 2).toNat - 1

end

end A249741.P698360982345256735

/-! ## A249741.P1081461091259863493

`A083140(A038722(n+1)+1)-1`
-/

namespace A249741.P1081461091259863493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A038722 (n + 1) + 1).toNat - 1

end

end A249741.P1081461091259863493

/-! ## A249741.P2729512357083501655

`A083140(A122797(n+1)+A099375(n))-1`
-/

namespace A249741.P2729512357083501655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A122797 (n + 1) + A099375 n).toNat - 1

end

end A249741.P2729512357083501655

/-! ## A249741.P4501751043110780766

`A153881(2*n+3)+A083221(n+2)`
-/

namespace A249741.P4501751043110780766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * n + 3) + A083221 (n + 2)

end

end A249741.P4501751043110780766

/-! ## A249741.P9615984181132553778

`A156277(A007528(n+1))+A083221(n+2)`
-/

namespace A249741.P9615984181132553778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A007528 (n + 1)).toNat + A083221 (n + 2)

end

end A249741.P9615984181132553778

/-! ## A249741.P14212597931050613895

`A326410(A000040(n+1))+A083221(n+2)`
-/

namespace A249741.P14212597931050613895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326410 (A000040 (n + 1)).toNat + A083221 (n + 2)

end

end A249741.P14212597931050613895

/-! ## A249741.P1872000398703840343

`A023443(A083221(n+2))`
-/

namespace A249741.P1872000398703840343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083221 (n + 2)).toNat

end

end A249741.P1872000398703840343

/-! ## A249741.P17020896348065775159

`A249738(2*A083221(n+2))`
-/

namespace A249741.P17020896348065775159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A083221 (n + 2)).toNat

end

end A249741.P17020896348065775159

/-! ## A249741.P5502272732286818335

`A255408(A255127(n+2))-1`
-/

namespace A249741.P5502272732286818335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A255127 (n + 2)).toNat - 1

end

end A249741.P5502272732286818335

/-! ## A249741.P3278204794543210781

`A252753(A253551(n+1))-1`
-/

namespace A249741.P3278204794543210781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A253551 (n + 1)).toNat - 1

end

end A249741.P3278204794543210781

/-! ## A249741.P2971512588274535044

`A207801(A135764(n+1)+1)-1`
-/

namespace A249741.P2971512588274535044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A135764 (n + 1) + 1).toNat - 1

end

end A249741.P2971512588274535044

/-!
# A249742: Inverse permutation to A249741.

The programs for A249742, there is no canonical definition to state claims against.
-/

/-! ## A249742.P1541307519801445616

`A249725(A249812(n+1))`
-/

namespace A249742.P1541307519801445616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249725 (A249812 (n + 1)).toNat

end

end A249742.P1541307519801445616

/-! ## A249742.P197914131483512596

`A252460(n+2)-1`
-/

namespace A249742.P197914131483512596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (n + 2) - 1

end

end A249742.P197914131483512596

/-! ## A249742.P5483738731012102529

`∑[Δ[A252460(n+1)]%A196871(n+2)]`
-/

namespace A249742.P5483738731012102529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A196871 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249742.P5483738731012102529

/-! ## A249742.P12035473137253632243

`A246276(A249816(n+1))`
-/

namespace A249742.P12035473137253632243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A249816 (n + 1)).toNat

end

end A249742.P12035473137253632243

/-! ## A249742.P9104880195028925483

`A246276(A249818(n+2)-1)`
-/

namespace A249742.P9104880195028925483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (A249818 (n + 2) - 1).toNat

end

end A249742.P9104880195028925483

/-! ## A249742.P17877023133048667167

`A038722(A250252(n+1))`
-/

namespace A249742.P17877023133048667167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A250252 (n + 1)).toNat

end

end A249742.P17877023133048667167

/-! ## A249742.P9394196504610092594

`A023443(A252460(n+2))`
-/

namespace A249742.P9394196504610092594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A252460 (n + 2)).toNat

end

end A249742.P9394196504610092594

/-! ## A249742.P4828775019242962962

`A004525(∑[2*Δ[A252460(n+1)]])`
-/

namespace A249742.P4828775019242962962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249742.P4828775019242962962

/-! ## A249742.P2382798609093985149

`A255552(A255553(n+2))-1`
-/

namespace A249742.P2382798609093985149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255552 (A255553 (n + 2)).toNat - 1

end

end A249742.P2382798609093985149

/-! ## A249742.P17919294367765696253

`A246274(A246275(A250252(A246275(A246276(n+1)))))`
-/

namespace A249742.P17919294367765696253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A250252 (A246275 (A246276 (n + 1)).toNat).toNat).toNat).toNat

end

end A249742.P17919294367765696253

/-! ## A249742.P14570913795263037520

`A246274(A246275(A250252(A246273(A246274(n+1)))))`
-/

namespace A249742.P14570913795263037520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246274 (A246275 (A250252 (A246273 (A246274 (n + 1)).toNat).toNat).toNat).toNat

end

end A249742.P14570913795263037520

/-!
# A249743: Main diagonal of square arrays A114881 and A249741.

The programs for A249743, the canonical program `A249743.P9211820019658507526` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249743 has offset 1).

The definition of A249743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083141, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249743.P9211820019658507526

`A083141(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249743

/-- `A083141(n+1)-1` -/
def P9211820019658507526.Spec : Prop :=
  ∀ n, P9211820019658507526.a n = A249743 (n + 1)

theorem P9211820019658507526.correct : P9211820019658507526.Spec := by
  intro n
  simp only [A249743, Nat.add_sub_cancel]

end A249743

/-! ## A249743.P12836995906022893335

`A000040(n+1)*A008578(Δ[n²])-1`
-/

namespace A249743.P12836995906022893335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008578 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A249743.P12836995906022893335

namespace A249743

/-- `A000040(n+1)*A008578(Δ[n²])-1` -/
def P12836995906022893335.Spec : Prop :=
  ∀ n, P12836995906022893335.a n = A249743 (n + 1)

end A249743

/-! ## A249743.P17862214390486928360

`Δ[A007504(n)]*A008578(2*n+1)-1`
-/

namespace A249743.P17862214390486928360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008578 (2 * n + 1) - 1

end

end A249743.P17862214390486928360

namespace A249743

/-- `Δ[A007504(n)]*A008578(2*n+1)-1` -/
def P17862214390486928360.Spec : Prop :=
  ∀ n, P17862214390486928360.a n = A249743 (n + 1)

end A249743

/-! ## A249743.P6370660873355920357

`record[A006530(n+2)]*A008578(Δ[n²])-1`
-/

namespace A249743.P6370660873355920357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A008578 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1

end

end A249743.P6370660873355920357

namespace A249743

/-- `record[A006530(n+2)]*A008578(Δ[n²])-1` -/
def P6370660873355920357.Spec : Prop :=
  ∀ n, P6370660873355920357.a n = A249743 (n + 1)

end A249743

/-! ## A249743.P16988266707211580445

`A000040(n+1)*A158611(2*(n+1))-1`
-/

namespace A249743.P16988266707211580445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (2 * (n + 1)) - 1

end

end A249743.P16988266707211580445

namespace A249743

/-- `A000040(n+1)*A158611(2*(n+1))-1` -/
def P16988266707211580445.Spec : Prop :=
  ∀ n, P16988266707211580445.a n = A249743 (n + 1)

end A249743

/-! ## A249743.P6487732692382440037

`A008578(2*n+1)*A008578(n+2)-1`
-/

namespace A249743.P6487732692382440037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * n + 1) * A008578 (n + 2) - 1

end

end A249743.P6487732692382440037

namespace A249743

/-- `A008578(2*n+1)*A008578(n+2)-1` -/
def P6487732692382440037.Spec : Prop :=
  ∀ n, P6487732692382440037.a n = A249743 (n + 1)

end A249743

/-! ## A249743.P7464595346315838884

`A249741((n+1)²+n²)`
-/

namespace A249743.P7464595346315838884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 ((n + 1) ^ 2 + n ^ 2)

end

end A249743.P7464595346315838884

namespace A249743

/-- `A249741((n+1)²+n²)` -/
def P7464595346315838884.Spec : Prop :=
  ∀ n, P7464595346315838884.a n = A249743 (n + 1)

end A249743

/-! ## A249743.P14897132447197624352

`A083140(A051890(n+1))-1`
-/

namespace A249743.P14897132447197624352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A051890 (n + 1)).toNat - 1

end

end A249743.P14897132447197624352

namespace A249743

/-- `A083140(A051890(n+1))-1` -/
def P14897132447197624352.Spec : Prop :=
  ∀ n, P14897132447197624352.a n = A249743 (n + 1)

end A249743

/-!
# A249744: a(n) = 0 if n is 1 or a prime, otherwise, when n = A020639(n) * A032742(n), a(n) = the largest m < n such that A020639(m) = A020639(n), where A020639(n) and A032742(n) are the smallest prime and the largest proper divisor dividing n.

The programs for A249744, there is no canonical definition to state claims against.
-/

/-! ## A249744.P2902794031877459118

`A020639(n+1)*A249738(n+1)`
-/

namespace A249744.P2902794031877459118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A249738 (n + 1)

end

end A249744.P2902794031877459118

/-! ## A249744.P13579400490569863996

`A063918(n+1)*A249738(n+1)`
-/

namespace A249744.P13579400490569863996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1) * A249738 (n + 1)

end

end A249744.P13579400490569863996

/-! ## A249744.P14110579680154448460

`A074828(n+1)*A249738(n+1)`
-/

namespace A249744.P14110579680154448460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1) * A249738 (n + 1)

end

end A249744.P14110579680154448460

/-! ## A249744.P7159554493768215128

`(n+1)/A032742(n+1)*A249738(n+1)`
-/

namespace A249744.P7159554493768215128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A249738 (n + 1) : ℚ)

end

end A249744.P7159554493768215128

/-! ## A249744.P4010782432492885133

`A034684(A007947(n+1))*A249738(n+1)`
-/

namespace A249744.P4010782432492885133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A007947 (n + 1)).toNat * A249738 (n + 1)

end

end A249744.P4010782432492885133

/-!
# A249745: Permutation of natural numbers: a(n) = (1 + A064989(A007310(n))) / 2.

The programs for A249745, the canonical program `A249745.P11390172490975782238` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249745 has offset 1).

The definition of A249745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249745.P18307165767208770392

`A048673(A249823(n+1))`
-/

namespace A249745.P18307165767208770392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A249823 (n + 1)).toNat

end

end A249745.P18307165767208770392

namespace A249745

/-- `A048673(A249823(n+1))` -/
def P18307165767208770392.Spec : Prop :=
  ∀ n, P18307165767208770392.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P11390172490975782238

`(1+A064989(A007310(n+1)))/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A249745

/-- `(1+A064989(A007310(n+1)))/2` -/
def P11390172490975782238.Spec : Prop :=
  ∀ n, P11390172490975782238.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P9985282067884254116

`ceil(A254050(n+1)/2)`
-/

namespace A249745.P9985282067884254116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254050 (n + 1) : ℚ) / 2⌉

end

end A249745.P9985282067884254116

namespace A249745

/-- `ceil(A254050(n+1)/2)` -/
def P9985282067884254116.Spec : Prop :=
  ∀ n, P9985282067884254116.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P6684362687608331943

`(A064216(A007494(n)+1)+1)/2`
-/

namespace A249745.P6684362687608331943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064216 (A007494 n + 1).toNat + 1 : ℚ) / 2

end

end A249745.P6684362687608331943

namespace A249745

/-- `(A064216(A007494(n)+1)+1)/2` -/
def P6684362687608331943.Spec : Prop :=
  ∀ n, P6684362687608331943.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P17999567511313997900

`A000463(A254050(n+1))`
-/

namespace A249745.P17999567511313997900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A254050 (n + 1)).toNat

end

end A249745.P17999567511313997900

namespace A249745

/-- `A000463(A254050(n+1))` -/
def P17999567511313997900.Spec : Prop :=
  ∀ n, P17999567511313997900.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P18003102771310922858

`A026741(A254050(n+1)+1)`
-/

namespace A249745.P18003102771310922858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A254050 (n + 1) + 1).toNat

end

end A249745.P18003102771310922858

namespace A249745

/-- `A026741(A254050(n+1)+1)` -/
def P18003102771310922858.Spec : Prop :=
  ∀ n, P18003102771310922858.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P11398683184399505219

`A249038(A254050(n+1)+2)`
-/

namespace A249745.P11398683184399505219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249038 (A254050 (n + 1) + 2).toNat

end

end A249745.P11398683184399505219

namespace A249745

/-- `A249038(A254050(n+1)+2)` -/
def P11398683184399505219.Spec : Prop :=
  ∀ n, P11398683184399505219.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P6873118326664134295

`A003602(A064216(A032766(n+1)))`
-/

namespace A249745.P6873118326664134295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A064216 (A032766 (n + 1)).toNat).toNat

end

end A249745.P6873118326664134295

namespace A249745

/-- `A003602(A064216(A032766(n+1)))` -/
def P6873118326664134295.Spec : Prop :=
  ∀ n, P6873118326664134295.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P4277566779407737915

`A003602(A064989(A007310(n+1)))`
-/

namespace A249745.P4277566779407737915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A064989 (A007310 (n + 1)).toNat).toNat

end

end A249745.P4277566779407737915

namespace A249745

/-- `A003602(A064989(A007310(n+1)))` -/
def P4277566779407737915.Spec : Prop :=
  ∀ n, P4277566779407737915.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P13035764965694539944

`A048673(A064989(A064989(A038179(n+2))))`
-/

namespace A249745.P13035764965694539944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A064989 (A064989 (A038179 (n + 2)).toNat).toNat).toNat

end

end A249745.P13035764965694539944

namespace A249745

/-- `A048673(A064989(A064989(A038179(n+2))))` -/
def P13035764965694539944.Spec : Prop :=
  ∀ n, P13035764965694539944.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P6378555344965897898

`(A249823(A273664(n+1))+1)/2`
-/

namespace A249745.P6378555344965897898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249823 (A273664 (n + 1)).toNat + 1 : ℚ) / 2

end

end A249745.P6378555344965897898

namespace A249745

/-- `(A249823(A273664(n+1))+1)/2` -/
def P6378555344965897898.Spec : Prop :=
  ∀ n, P6378555344965897898.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P11527518094205021807

`A048673(A249825(A250476(n+1)))`
-/

namespace A249745.P11527518094205021807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A249825 (A250476 (n + 1)).toNat).toNat

end

end A249745.P11527518094205021807

namespace A249745

/-- `A048673(A249825(A250476(n+1)))` -/
def P11527518094205021807.Spec : Prop :=
  ∀ n, P11527518094205021807.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P18410359405037872445

`(A064989(A091999(n+1))+1)/2`
-/

namespace A249745.P18410359405037872445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A091999 (n + 1)).toNat + 1 : ℚ) / 2

end

end A249745.P18410359405037872445

namespace A249745

/-- `(A064989(A091999(n+1))+1)/2` -/
def P18410359405037872445.Spec : Prop :=
  ∀ n, P18410359405037872445.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P10193210930831467349

`(A285727(A063221(n+1))+1)/2`
-/

namespace A249745.P10193210930831467349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285727 (A063221 (n + 1)).toNat + 1 : ℚ) / 2

end

end A249745.P10193210930831467349

namespace A249745

/-- `(A285727(A063221(n+1))+1)/2` -/
def P10193210930831467349.Spec : Prop :=
  ∀ n, P10193210930831467349.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P7334713901475502542

`A078898(A266645(6*n+3))`
-/

namespace A249745.P7334713901475502542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A266645 (6 * n + 3)).toNat

end

end A249745.P7334713901475502542

namespace A249745

/-- `A078898(A266645(6*n+3))` -/
def P7334713901475502542.Spec : Prop :=
  ∀ n, P7334713901475502542.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P17600461577210508865

`(A246277(A306771(n+1))+1)/2`
-/

namespace A249745.P17600461577210508865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246277 (A306771 (n + 1)).toNat + 1 : ℚ) / 2

end

end A249745.P17600461577210508865

namespace A249745

/-- `(A246277(A306771(n+1))+1)/2` -/
def P17600461577210508865.Spec : Prop :=
  ∀ n, P17600461577210508865.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P11591617810674584729

`(A064989(A259755(n+1))+1)/2`
-/

namespace A249745.P11591617810674584729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A259755 (n + 1)).toNat + 1 : ℚ) / 2

end

end A249745.P11591617810674584729

namespace A249745

/-- `(A064989(A259755(n+1))+1)/2` -/
def P11591617810674584729.Spec : Prop :=
  ∀ n, P11591617810674584729.a n = (A249745 (n + 1) : ℚ)

end A249745

/-! ## A249745.P11394900724643679174

`A078898(A064989(A084967(n+1)))`
-/

namespace A249745.P11394900724643679174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064989 (A084967 (n + 1)).toNat).toNat

end

end A249745.P11394900724643679174

namespace A249745

/-- `A078898(A064989(A084967(n+1)))` -/
def P11394900724643679174.Spec : Prop :=
  ∀ n, P11394900724643679174.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P17703880330447748008

`A078898(A064989(A250469(A016945(n))))`
-/

namespace A249745.P17703880330447748008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064989 (A250469 (A016945 n).toNat).toNat).toNat

end

end A249745.P17703880330447748008

namespace A249745

/-- `A078898(A064989(A250469(A016945(n))))` -/
def P17703880330447748008.Spec : Prop :=
  ∀ n, P17703880330447748008.a n = A249745 (n + 1)

end A249745

/-! ## A249745.P15664140688353941289

`A078898(A064989(A007310(A273669(n+1))))`
-/

namespace A249745.P15664140688353941289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064989 (A007310 (A273669 (n + 1)).toNat).toNat).toNat

end

end A249745.P15664140688353941289

namespace A249745

/-- `A078898(A064989(A007310(A273669(n+1))))` -/
def P15664140688353941289.Spec : Prop :=
  ∀ n, P15664140688353941289.a n = A249745 (n + 1)

end A249745

/-!
# A249746: Permutation of natural numbers: a(n) = A126760(A249735(n)) = A249824(A064216(n)).

The programs for A249746, the canonical program `A249746.P8364897201933875608` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249746 has offset 1).

The definition of A249746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A249824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249746.P13880206613138555681

`A126760(A249735(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249746.P13880206613138555681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A249735 (n + 1)).toNat

end

end A249746.P13880206613138555681

namespace A249746

/-- `A126760(A249735(n+1))` -/
def P13880206613138555681.Spec : Prop :=
  ∀ n, P13880206613138555681.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P8364897201933875608

`A249824(A064216(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A249746

/-- `A249824(A064216(n+1))` -/
def P8364897201933875608.Spec : Prop :=
  ∀ n, P8364897201933875608.a n = A249746 (n + 1)

theorem P8364897201933875608.correct : P8364897201933875608.Spec := by
  intro n
  simp only [A249746, Nat.add_sub_cancel]

end A249746

/-! ## A249746.P5275299972774326912

`ceil(A249735(n+1)/3)`
-/

namespace A249746.P5275299972774326912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249735 (n + 1) : ℚ) / 3⌉

end

end A249746.P5275299972774326912

namespace A249746

/-- `ceil(A249735(n+1)/3)` -/
def P5275299972774326912.Spec : Prop :=
  ∀ n, P5275299972774326912.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P1311642508711309785

`A353420(Δ[n²])`
-/

namespace A249746.P1311642508711309785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A249746.P1311642508711309785

namespace A249746

/-- `A353420(Δ[n²])` -/
def P1311642508711309785.Spec : Prop :=
  ∀ n, P1311642508711309785.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P6913325170126287667

`A353461(2*(n+1))+A353420(2*n+1)`
-/

namespace A249746.P6913325170126287667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (2 * (n + 1)) + A353420 (2 * n + 1)

end

end A249746.P6913325170126287667

namespace A249746

/-- `A353461(2*(n+1))+A353420(2*n+1)` -/
def P6913325170126287667.Spec : Prop :=
  ∀ n, P6913325170126287667.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P9188681473669617244

`A353336(2*n+1)-A353335(2*n+1)`
-/

namespace A249746.P9188681473669617244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (2 * n + 1) - A353335 (2 * n + 1)

end

end A249746.P9188681473669617244

namespace A249746

/-- `A353336(2*n+1)-A353335(2*n+1)` -/
def P9188681473669617244.Spec : Prop :=
  ∀ n, P9188681473669617244.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P6099115215857297610

`A035263(2*n+1)*A353420(2*n+1)`
-/

namespace A249746.P6099115215857297610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * n + 1) * A353420 (2 * n + 1)

end

end A249746.P6099115215857297610

namespace A249746

/-- `A035263(2*n+1)*A353420(2*n+1)` -/
def P6099115215857297610.Spec : Prop :=
  ∀ n, P6099115215857297610.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P8657955623712207972

`ceil(A243501(2*n+1)/3)`
-/

namespace A249746.P8657955623712207972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243501 (2 * n + 1) : ℚ) / 3⌉

end

end A249746.P8657955623712207972

namespace A249746

/-- `ceil(A243501(2*n+1)/3)` -/
def P8657955623712207972.Spec : Prop :=
  ∀ n, P8657955623712207972.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P2479283736754772102

`ceil(A283980(2*n+1)/3)`
-/

namespace A249746.P2479283736754772102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283980 (2 * n + 1) : ℚ) / 3⌉

end

end A249746.P2479283736754772102

namespace A249746

/-- `ceil(A283980(2*n+1)/3)` -/
def P2479283736754772102.Spec : Prop :=
  ∀ n, P2479283736754772102.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P11848168337934774735

`ceil(A003961(2*n+1)/3)`
-/

namespace A249746.P11848168337934774735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003961 (2 * n + 1) : ℚ) / 3⌉

end

end A249746.P11848168337934774735

namespace A249746

/-- `ceil(A003961(2*n+1)/3)` -/
def P11848168337934774735.Spec : Prop :=
  ∀ n, P11848168337934774735.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P6768112162618003329

`ceil(A045965(2*n+1)/3)`
-/

namespace A249746.P6768112162618003329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045965 (2 * n + 1) : ℚ) / 3⌉

end

end A249746.P6768112162618003329

namespace A249746

/-- `ceil(A045965(2*n+1)/3)` -/
def P6768112162618003329.Spec : Prop :=
  ∀ n, P6768112162618003329.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P10857180531971856083

`A353420(2*n+1)+A007814(2*n+1)`
-/

namespace A249746.P10857180531971856083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353420 (2 * n + 1) + A007814 (2 * n + 1)

end

end A249746.P10857180531971856083

namespace A249746

/-- `A353420(2*n+1)+A007814(2*n+1)` -/
def P10857180531971856083.Spec : Prop :=
  ∀ n, P10857180531971856083.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P11440607836665113615

`A006519(2*n+1)*A353420(2*n+1)`
-/

namespace A249746.P11440607836665113615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A353420 (2 * n + 1)

end

end A249746.P11440607836665113615

namespace A249746

/-- `A006519(2*n+1)*A353420(2*n+1)` -/
def P11440607836665113615.Spec : Prop :=
  ∀ n, P11440607836665113615.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P14006653316640774258

`A353336(8*n+4)`
-/

namespace A249746.P14006653316640774258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353336 (8 * n + 4)

end

end A249746.P14006653316640774258

namespace A249746

/-- `A353336(8*n+4)` -/
def P14006653316640774258.Spec : Prop :=
  ∀ n, P14006653316640774258.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P8395163310400254875

`A004396(A254049(n+1))`
-/

namespace A249746.P8395163310400254875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A254049 (n + 1)).toNat

end

end A249746.P8395163310400254875

namespace A249746

/-- `A004396(A254049(n+1))` -/
def P8395163310400254875.Spec : Prop :=
  ∀ n, P8395163310400254875.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P12108803304223501371

`A126760(A003961(2*n+1))`
-/

namespace A249746.P12108803304223501371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A003961 (2 * n + 1)).toNat

end

end A249746.P12108803304223501371

namespace A249746

/-- `A126760(A003961(2*n+1))` -/
def P12108803304223501371.Spec : Prop :=
  ∀ n, P12108803304223501371.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P2099594101209077678

`A092942(A048673(2*n+1))`
-/

namespace A249746.P2099594101209077678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A048673 (2 * n + 1)).toNat

end

end A249746.P2099594101209077678

namespace A249746

/-- `A092942(A048673(2*n+1))` -/
def P2099594101209077678.Spec : Prop :=
  ∀ n, P2099594101209077678.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P6469985223450546665

`A126760(A045965(2*n+1))`
-/

namespace A249746.P6469985223450546665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A045965 (2 * n + 1)).toNat

end

end A249746.P6469985223450546665

namespace A249746

/-- `A126760(A045965(2*n+1))` -/
def P6469985223450546665.Spec : Prop :=
  ∀ n, P6469985223450546665.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P6729679969097641384

`A126760(A253885(2*n)+1)`
-/

namespace A249746.P6729679969097641384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A253885 (2 * n) + 1).toNat

end

end A249746.P6729679969097641384

namespace A249746

/-- `A126760(A253885(2*n)+1)` -/
def P6729679969097641384.Spec : Prop :=
  ∀ n, P6729679969097641384.a n = A249746 (n + 1)

end A249746

/-! ## A249746.P16633133244198110406

`A126760(A283980(2*n+1))`
-/

namespace A249746.P16633133244198110406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A283980 (2 * n + 1)).toNat

end

end A249746.P16633133244198110406

namespace A249746

/-- `A126760(A283980(2*n+1))` -/
def P16633133244198110406.Spec : Prop :=
  ∀ n, P16633133244198110406.a n = A249746 (n + 1)

end A249746

/-!
# A249747: a(n) = floor((A002110(n) * A054272(n)) / A001248(n)).

The programs for A249747, the canonical program `A249747.P16874095545981328078` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249747 has offset 1).

The definition of A249747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249747.P16874095545981328078

`floor(A002110(n+1)*A054272(n+1)/A001248(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A249747

/-- `floor(A002110(n+1)*A054272(n+1)/A001248(n+1))` -/
def P16874095545981328078.Spec : Prop :=
  ∀ n, P16874095545981328078.a n = A249747 (n + 1)

theorem P16874095545981328078.correct : P16874095545981328078.Spec := by
  intro n
  simp only [A249747, Nat.add_sub_cancel]

end A249747

/-!
# A249749: Primes p such that phi(p - k) = phi(p + k) has no solution, where phi is A000010.

The programs for A249749, there is no canonical definition to state claims against.
-/

/-! ## A249749.P10040453657861442452

`p?[∑[A049115(A219883(n+1))]]`
-/

namespace A249749.P10040453657861442452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A219883 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249749.P10040453657861442452

/-! ## A249749.P10589315012387570234

`record[p?[A227577(n)-A033880(n+1)]]`
-/

namespace A249749.P10589315012387570234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227577 n - A033880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249749.P10589315012387570234

/-!
# A249751: Numbers m such that m - 2 divides m^m + 2.

The programs for A249751, there is no canonical definition to state claims against.
-/

/-! ## A249751.P2789473953413367755

`A269395(n+2)+A216044(A036378(n))`
-/

namespace A249751.P2789473953413367755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269395 (n + 2) + A216044 (A036378 n).toNat

end

end A249751.P2789473953413367755

/-! ## A249751.P15964214860246592801

`A359042(n+1)+A353826(A000301(n+1))`
-/

namespace A249751.P15964214860246592801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (n + 1) + A353826 (A000301 (n + 1)).toNat

end

end A249751.P15964214860246592801

/-!
# A249752: Triangle read by rows: T(n,k) = number of arrangements of n circles in the affine plane having k outer circles.

The programs for A249752, there is no canonical definition to state claims against.
-/

/-! ## A249752.P810987303086760693

`∑[A070936(∏[A076396(n+1)])]`
-/

namespace A249752.P810987303086760693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070936 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249752.P810987303086760693

/-! ## A249752.P4171432807635502908

`A290103(A046981(n)+A005581(n))`
-/

namespace A249752.P4171432807635502908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A046981 n + A005581 n).toNat

end

end A249752.P4171432807635502908

/-! ## A249752.P3596483915205106512

`A293483(n+1)+A252464(A041587(n))`
-/

namespace A249752.P3596483915205106512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (n + 1) + A252464 (A041587 n).toNat

end

end A249752.P3596483915205106512

/-!
# A249753: Number of triangles in the complex obtained by starting with an isosceles right triangle, and dividing each cell into two similar isosceles right triangles n times.

The programs for A249753, the canonical program `A249753.P15283997485954101074` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249753 has offset 0).

The definition of A249753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249753.P15283997485954101074

`ogf((1+2x-9x^2-16x^3+13x^4+13x^5+8x^6+33x^7+7x^8-14x^9-8x^10-16x^11)/(1-x-13x^2+13x^3+42x^4-42x^5-8x^6+8x^7-64x^8+64x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249753

/-- `ogf((1+2x-9x^2-16x^3+13x^4+13x^5+8x^6+33x^7+7x^8-14x^9-8x^10-16x^11)/(1-x-13x^2+13x^3+42x^4-42x^5-8x^6+8x^7-64x^8+64x^9))` -/
def P15283997485954101074.Spec : Prop :=
  ∀ n, P15283997485954101074.a n = A249753 n

theorem P15283997485954101074.correct : P15283997485954101074.Spec := by
  intro n
  simp only [A249753]

end A249753

/-! ## A249753.P12353925686146286793

`A066490(A027831(n+1))`
-/

namespace A249753.P12353925686146286793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A027831 (n + 1)).toNat

end

end A249753.P12353925686146286793

namespace A249753

/-- `A066490(A027831(n+1))` -/
def P12353925686146286793.Spec : Prop :=
  ∀ n, P12353925686146286793.a n = A249753 n

end A249753

/-! ## A249753.P4344164462912683134

`A066490(A097894(n+2))`
-/

namespace A249753.P4344164462912683134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A097894 (n + 2)).toNat

end

end A249753.P4344164462912683134

namespace A249753

/-- `A066490(A097894(n+2))` -/
def P4344164462912683134.Spec : Prop :=
  ∀ n, P4344164462912683134.a n = A249753 n

end A249753

/-!
# A249754: The number of ordered pairs (G,S) where G is a simple labeled graph of order n and S is a subset of the vertices of G such that every element (vertex) in S is in the same connected component of G.

The programs for A249754, there is no canonical definition to state claims against.
-/

/-! ## A249754.P1855667930737987311

`∑[A274199(round(ϕ^(n-1))²)]`
-/

namespace A249754.P1855667930737987311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 (SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249754.P1855667930737987311

/-!
# A249755: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + (n + 1)*x, p(0,x) = 1.

The programs for A249755, the canonical program `A249755.P5124840259879627293` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249755 has offset 0).

The definition of A249755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249755.P3568888234815084269

`A095660(comp[∑[n+1]]+1)`
-/

namespace A249755.P3568888234815084269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A249755.P3568888234815084269

namespace A249755

/-- `A095660(comp[∑[n+1]]+1)` -/
def P3568888234815084269.Spec : Prop :=
  ∀ n, P3568888234815084269.a n = A249755 n

end A249755

/-! ## A249755.P5124840259879627293

`2*A249756(n)-A184049(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249755

/-- `2*A249756(n)-A184049(n)` -/
def P5124840259879627293.Spec : Prop :=
  ∀ n, P5124840259879627293.a n = A249755 n

theorem P5124840259879627293.correct : P5124840259879627293.Spec := by
  intro n
  simp only [A249755]

end A249755

/-! ## A249755.P1124557230711928210

`A264357(A028310(n))+A007318(n)`
-/

namespace A249755.P1124557230711928210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264357 (A028310 n).toNat + A007318 n

end

end A249755.P1124557230711928210

namespace A249755

/-- `A264357(A028310(n))+A007318(n)` -/
def P1124557230711928210.Spec : Prop :=
  ∀ n, P1124557230711928210.a n = A249755 n

end A249755

/-! ## A249755.P4056275202302798852

`A249756(n)+A007318(n)%A249756(n)`
-/

namespace A249755.P4056275202302798852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249756 n + Int.tmod (A007318 n) (A249756 n)

end

end A249755.P4056275202302798852

namespace A249755

/-- `A249756(n)+A007318(n)%A249756(n)` -/
def P4056275202302798852.Spec : Prop :=
  ∀ n, P4056275202302798852.a n = A249755 n

end A249755

/-! ## A249755.P4216194470546713345

`A124928(n)+A007318(n+1)%A209330(n)`
-/

namespace A249755.P4216194470546713345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n + Int.tmod (A007318 (n + 1)) (A209330 n)

end

end A249755.P4216194470546713345

namespace A249755

/-- `A124928(n)+A007318(n+1)%A209330(n)` -/
def P4216194470546713345.Spec : Prop :=
  ∀ n, P4216194470546713345.a n = A249755 n

end A249755

/-!
# A249756: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + n*x, p(0,x) = 1.

The programs for A249756, the canonical program `A249756.P12439935366786788763` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249756 has offset 0).

The definition of A249756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249756.P12439935366786788763

`T(n-1,k-1)+T(n-1,k)+row(n)*T(T(n-1,k-1), 1-T(n-1,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A249756

/-- `T(n-1,k-1)+T(n-1,k)+row(n)*T(T(n-1,k-1), 1-T(n-1,k-1))` -/
def P12439935366786788763.Spec : Prop :=
  ∀ n, (P12439935366786788763.a n : ℤ) = A249756 n

theorem P12439935366786788763.correct : P12439935366786788763.Spec := by
  intro n
  simp only [A249756]

end A249756

/-! ## A249756.P14151726818062481593

`A029635(n+round(sqrt(2*n))+1)`
-/

namespace A249756.P14151726818062481593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 ((n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat

end

end A249756.P14151726818062481593

namespace A249756

/-- `A029635(n+round(sqrt(2*n))+1)` -/
def P14151726818062481593.Spec : Prop :=
  ∀ n, P14151726818062481593.a n = A249756 n

end A249756

/-! ## A249756.P10293423371947849480

`(A249757(n)+A007318(n))/2`
-/

namespace A249756.P10293423371947849480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249757 n + A007318 n : ℚ) / 2

end

end A249756.P10293423371947849480

namespace A249756

/-- `(A249757(n)+A007318(n))/2` -/
def P10293423371947849480.Spec : Prop :=
  ∀ n, P10293423371947849480.a n = (A249756 n : ℚ)

theorem P10293423371947849480.correct : P10293423371947849480.Spec := by
  intro n
  simp only [A249756, Nat.add_sub_cancel, A249756.P10293423371947849480.a, A249756.P12439935366786788763.a, A007318, A007318.P11755526479805562006.a, A249757, A249757.P11501670255758349847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249756

/-! ## A249756.P2223301458374960598

`A209688((n+1)%A008949(n)²+1)`
-/

namespace A249756.P2223301458374960598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209688 (Int.tmod (n + 1 : ℤ) (A008949 n ^ 2) + 1).toNat

end

end A249756.P2223301458374960598

namespace A249756

/-- `A209688((n+1)%A008949(n)²+1)` -/
def P2223301458374960598.Spec : Prop :=
  ∀ n, P2223301458374960598.a n = A249756 n

end A249756

/-! ## A249756.P16759031002985299545

`A249755(n)-A007318(n)%A249755(n)`
-/

namespace A249756.P16759031002985299545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249755 n - Int.tmod (A007318 n) (A249755 n)

end

end A249756.P16759031002985299545

namespace A249756

/-- `A249755(n)-A007318(n)%A249755(n)` -/
def P16759031002985299545.Spec : Prop :=
  ∀ n, P16759031002985299545.a n = A249756 n

end A249756

/-! ## A249756.P132923545129515338

`gcd(A106459(n), A357255(n+1))`
-/

namespace A249756.P132923545129515338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A357255 (n + 1))

end

end A249756.P132923545129515338

namespace A249756

/-- `gcd(A106459(n), A357255(n+1))` -/
def P132923545129515338.Spec : Prop :=
  ∀ n, (P132923545129515338.a n : ℤ) = A249756 n

end A249756

/-!
# A249757: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + 2*n*x, p(0,x) = 1.

The programs for A249757, the canonical program `A249757.P11501670255758349847` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249757 has offset 0).

The definition of A249757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249757.P11501670255758349847

`2*A249756(n)-A007318(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249757

/-- `2*A249756(n)-A007318(n)` -/
def P11501670255758349847.Spec : Prop :=
  ∀ n, P11501670255758349847.a n = A249757 n

theorem P11501670255758349847.correct : P11501670255758349847.Spec := by
  intro n
  simp only [A249757]

end A249757

/-! ## A249757.P17772121271287826745

`A029600(A080036(n))-A010054(n)`
-/

namespace A249757.P17772121271287826745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A080036 n).toNat - A010054 n

end

end A249757.P17772121271287826745

namespace A249757

/-- `A029600(A080036(n))-A010054(n)` -/
def P17772121271287826745.Spec : Prop :=
  ∀ n, P17772121271287826745.a n = A249757 n

end A249757

/-! ## A249757.P15954079088541552482

`gcd(A029600(A014132(n+1)), A198954(n))`
-/

namespace A249757.P15954079088541552482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029600 (A014132 (n + 1)).toNat) (A198954 n)

end

end A249757.P15954079088541552482

namespace A249757

/-- `gcd(A029600(A014132(n+1)), A198954(n))` -/
def P15954079088541552482.Spec : Prop :=
  ∀ n, (P15954079088541552482.a n : ℤ) = A249757 n

end A249757

/-! ## A249757.P2363158788120839491

`A249755(n)+A007318(n+1)%A008292(n+1)`
-/

namespace A249757.P2363158788120839491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249755 n + Int.tmod (A007318 (n + 1)) (A008292 (n + 1))

end

end A249757.P2363158788120839491

namespace A249757

/-- `A249755(n)+A007318(n+1)%A008292(n+1)` -/
def P2363158788120839491.Spec : Prop :=
  ∀ n, P2363158788120839491.a n = A249757 n

end A249757

/-! ## A249757.P4935651481348064329

`A029600(A014132(n+1)%A202006(n+1))`
-/

namespace A249757.P4935651481348064329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (Int.tmod (A014132 (n + 1)) (A202006 (n + 1))).toNat

end

end A249757.P4935651481348064329

namespace A249757

/-- `A029600(A014132(n+1)%A202006(n+1))` -/
def P4935651481348064329.Spec : Prop :=
  ∀ n, P4935651481348064329.a n = A249757 n

end A249757

/-! ## A249757.P14465199851139772242

`A007318(n)+A005843(A249756(n)-A007318(n))`
-/

namespace A249757.P14465199851139772242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A005843 (A249756 n - A007318 n).toNat

end

end A249757.P14465199851139772242

namespace A249757

/-- `A007318(n)+A005843(A249756(n)-A007318(n))` -/
def P14465199851139772242.Spec : Prop :=
  ∀ n, P14465199851139772242.a n = A249757 n

end A249757

/-! ## A249757.P5247088548748631300

`A005843(A249756(n))-A007318(n)`
-/

namespace A249757.P5247088548748631300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A249756 n).toNat - A007318 n

end

end A249757.P5247088548748631300

namespace A249757

/-- `A005843(A249756(n))-A007318(n)` -/
def P5247088548748631300.Spec : Prop :=
  ∀ n, P5247088548748631300.a n = A249757 n

end A249757

/-!
# A249758: Triangular array of coefficients of polynomials p(n,x) = (x + 2)*p(n-1,x) + x, p(0,x) = 1.

The programs for A249758, the canonical program `A249758.P12334685138373324996` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249758 has offset 0).

The definition of A249758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249758.P17219668430354137773

`3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A249758.P17219668430354137773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  3 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n

end

end A249758.P17219668430354137773

namespace A249758

/-- `3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` -/
def P17219668430354137773.Spec : Prop :=
  ∀ n, P17219668430354137773.a n = A249758 n

end A249758

/-! ## A249758.P6121242693245580747

`A210204(n+1)-A399742(n)`
-/

namespace A249758.P6121242693245580747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210204 (n + 1) - A399742 n

end

end A249758.P6121242693245580747

namespace A249758

/-- `A210204(n+1)-A399742(n)` -/
def P6121242693245580747.Spec : Prop :=
  ∀ n, P6121242693245580747.a n = A249758 n

end A249758

/-! ## A249758.P12334685138373324996

`A038207(n)+A112857(n)-A010054(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249758

/-- `A038207(n)+A112857(n)-A010054(n)` -/
def P12334685138373324996.Spec : Prop :=
  ∀ n, P12334685138373324996.a n = A249758 n

theorem P12334685138373324996.correct : P12334685138373324996.Spec := by
  intro n
  simp only [A249758]

end A249758

/-! ## A249758.P8680121913508801676

`A038207(n)+A112857(n)%A186695(n+1)`
-/

namespace A249758.P8680121913508801676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + Int.tmod (A112857 n) (A186695 (n + 1))

end

end A249758.P8680121913508801676

namespace A249758

/-- `A038207(n)+A112857(n)%A186695(n+1)` -/
def P8680121913508801676.Spec : Prop :=
  ∀ n, P8680121913508801676.a n = A249758 n

end A249758

/-!
# A249762: Number of tilings of a 5 X n rectangle using n pentominoes of shapes F, I, L.

The programs for A249762, there is no canonical definition to state claims against.
-/

/-! ## A249762.P13874457860208813300

`abs(A115320(2*n+3)-A115324(n+1))`
-/

namespace A249762.P13874457860208813300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115320 (2 * n + 3) - A115324 (n + 1)|

end

end A249762.P13874457860208813300

/-! ## A249762.P15553178477964483805

`A193592(A001850(n))+A091002(n)`
-/

namespace A249762.P15553178477964483805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A001850 n).toNat + A091002 n

end

end A249762.P15553178477964483805

/-! ## A249762.P11403665564493625137

`A331913(A134955(n))+A046800(n)`
-/

namespace A249762.P11403665564493625137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (A134955 n).toNat + A046800 n

end

end A249762.P11403665564493625137

/-!
# A249763: Numbers k such that sigma(k) + 2 is prime.

The programs for A249763, there is no canonical definition to state claims against.
-/

/-! ## A249763.P13069889922755378888

`eq[1, A001222(A000203(n+1)+2)]+1`
-/

namespace A249763.P13069889922755378888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249763.P13069889922755378888

/-! ## A249763.P2541781300902156869

`eq[2, A000005(A000203(n+1)+2)]+1`
-/

namespace A249763.P2541781300902156869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249763.P2541781300902156869

/-! ## A249763.P5928230308971597751

`lt[n, A020639(A000203(n+1)+2)]+1`
-/

namespace A249763.P5928230308971597751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A249763.P5928230308971597751

/-! ## A249763.P4399034962650978540

`lt[A001222(abs(A000203(n+1)-n)+2+n), 2]+1`
-/

namespace A249763.P4399034962650978540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|A000203 (n + 1) - (n : ℤ)| + 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249763.P4399034962650978540

/-! ## A249763.P7103998931990322621

`lt[A000203(n+1), A006530(A000203(n+1)+2)+1]+1`
-/

namespace A249763.P7103998931990322621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (n + 1) + 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A249763.P7103998931990322621

/-! ## A249763.P4639544450470911809

`eq[1, A001222(A155085(n+1)-n+1)]+1`
-/

namespace A249763.P4639544450470911809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155085 (n + 1) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249763.P4639544450470911809

/-! ## A249763.P12342774505875194142

`eq[1, A229341(A000203(n+1)+2)]+1`
-/

namespace A249763.P12342774505875194142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229341 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249763.P12342774505875194142

/-! ## A249763.P17976619313281336511

`eq[1, A337135(A000203(n+1)+2)]+1`
-/

namespace A249763.P17976619313281336511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249763.P17976619313281336511

/-! ## A249763.P11265924479422276052

`record[gcd(n+1, 2-A072918(n+1))]`
-/

namespace A249763.P11265924479422276052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (2 - A072918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249763.P11265924479422276052

/-!
# A249764: Numbers which divide the concatenation, in ascending order, of their anti-divisors.

The programs for A249764, there is no canonical definition to state claims against.
-/

/-! ## A249764.P8678474333267079956

`15*A181819(A358145(n))`
-/

namespace A249764.P8678474333267079956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A181819 (A358145 n).toNat

end

end A249764.P8678474333267079956

/-!
# A249766: Numbers k = concat(s,t) such that s and t divide k.

The programs for A249766, there is no canonical definition to state claims against.
-/

/-! ## A249766.P7567480822866771956

`eq[1, A096570(a(A038769(n)))]` with `a(0)=6, a(1)=12, a(2)=3`
-/

namespace A249766.P7567480822866771956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 12, 3] fun n f2 =>
  A096570 (f2 (A038769 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249766.P7567480822866771956

/-! ## A249766.P8957900038150192238

`A139138(n+1)%A078519(n+1)`
-/

namespace A249766.P8957900038150192238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139138 (n + 1)) (A078519 (n + 1))

end

end A249766.P8957900038150192238

/-! ## A249766.P12625836678632356948

`A139138(n+1)%A378538(A034799(n))`
-/

namespace A249766.P12625836678632356948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139138 (n + 1)) (A378538 (A034799 n).toNat)

end

end A249766.P12625836678632356948

/-! ## A249766.P18070381768344138730

`A281116(A107803(3*(n+1)))+A139138(n+1)`
-/

namespace A249766.P18070381768344138730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A107803 (3 * (n + 1))).toNat + A139138 (n + 1)

end

end A249766.P18070381768344138730

/-! ## A249766.P15820131328958184219

`A139138(n+1)+A010054(A078374(3*n+5))`
-/

namespace A249766.P15820131328958184219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139138 (n + 1) + A010054 (A078374 (3 * n + 5)).toNat

end

end A249766.P15820131328958184219

/-!
# A249767: a(n) = mu(n) + omega(n).

The programs for A249767, the canonical program `A249767.P12062249745912461612` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249767 has offset 1).

The definition of A249767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)+A001221(n+1)` (program `A249767.P12062249745912461612`, by `A249767.P12062249745912461612.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249767.P12062249745912461612

`A008683(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249767

/-- `A008683(n+1)+A001221(n+1)` -/
def P12062249745912461612.Spec : Prop :=
  ∀ n, P12062249745912461612.a n = A249767 (n + 1)

theorem P12062249745912461612.correct : P12062249745912461612.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel]

end A249767

/-! ## A249767.P16205689810245873315

`A008683(n+1)+∑{p}[n+1, gcd(n, #)]`
-/

namespace A249767.P16205689810245873315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A249767.P16205689810245873315

namespace A249767

/-- `A008683(n+1)+∑{p}[n+1, gcd(n, #)]` -/
def P16205689810245873315.Spec : Prop :=
  ∀ n, P16205689810245873315.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P16776793467141900523

`xor(floor(1/∏{e}[n+1, #]), A001221(n+1))`
-/

namespace A249767.P16776793467141900523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋ (A001221 (n + 1))

end

end A249767.P16776793467141900523

namespace A249767

/-- `xor(floor(1/∏{e}[n+1, #]), A001221(n+1))` -/
def P16776793467141900523.Spec : Prop :=
  ∀ n, P16776793467141900523.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P8080723526074733443

`∑{p}[n+1, ceil(1/#)]+A231821(n+1)-3`
-/

namespace A249767.P8080723526074733443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ + (A231821 (n + 1) - 3)

end

end A249767.P8080723526074733443

namespace A249767

/-- `∑{p}[n+1, ceil(1/#)]+A231821(n+1)-3` -/
def P8080723526074733443.Spec : Prop :=
  ∀ n, P8080723526074733443.a n = A249767 (n + 1)

theorem P8080723526074733443.correct : P8080723526074733443.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P8080723526074733443.f1, A249767.P8080723526074733443.a, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A231821, A231821.P12304754178482988977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249767

/-! ## A249767.P14912617483033889882

`∑{p}[n+1, ceil(1/#)]+A162512(n+1)%2`
-/

namespace A249767.P14912617483033889882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ + Int.tmod (A162512 (n + 1)) 2

end

end A249767.P14912617483033889882

namespace A249767

/-- `∑{p}[n+1, ceil(1/#)]+A162512(n+1)%2` -/
def P14912617483033889882.Spec : Prop :=
  ∀ n, P14912617483033889882.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P17935338514062551933

`∑{p}[n+1, ceil(1/#)]+A325891(n+1)%2`
-/

namespace A249767.P17935338514062551933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ + Int.tmod (A325891 (n + 1)) 2

end

end A249767.P17935338514062551933

namespace A249767

/-- `∑{p}[n+1, ceil(1/#)]+A325891(n+1)%2` -/
def P17935338514062551933.Spec : Prop :=
  ∀ n, P17935338514062551933.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P3113459049213733396

`A001221(n+1)+A008683(n+1)`
-/

namespace A249767.P3113459049213733396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A008683 (n + 1)

end

end A249767.P3113459049213733396

namespace A249767

/-- `A001221(n+1)+A008683(n+1)` -/
def P3113459049213733396.Spec : Prop :=
  ∀ n, P3113459049213733396.a n = A249767 (n + 1)

theorem P3113459049213733396.correct : P3113459049213733396.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P3113459049213733396.a, A249767.P12062249745912461612.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A249767

/-! ## A249767.P1071429659069450555

`A057859(1+n)-A053139(n+1)`
-/

namespace A249767.P1071429659069450555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (1 + n) - A053139 (n + 1)

end

end A249767.P1071429659069450555

namespace A249767

/-- `A057859(1+n)-A053139(n+1)` -/
def P1071429659069450555.Spec : Prop :=
  ∀ n, P1071429659069450555.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P9514312305124711701

`A228620(n+1)-A057860(n+1)`
-/

namespace A249767.P9514312305124711701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228620 (n + 1) - A057860 (n + 1)

end

end A249767.P9514312305124711701

namespace A249767

/-- `A228620(n+1)-A057860(n+1)` -/
def P9514312305124711701.Spec : Prop :=
  ∀ n, P9514312305124711701.a n = A249767 (n + 1)

theorem P9514312305124711701.correct : P9514312305124711701.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P9514312305124711701.a, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A057860, A057860.P15781516878484293447.a, A228620, A228620.P18425281222964885815.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249767

/-! ## A249767.P15246835640265652418

`A249901(n+1)-A046660(n+1)`
-/

namespace A249767.P15246835640265652418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249901 (n + 1) - A046660 (n + 1)

end

end A249767.P15246835640265652418

namespace A249767

/-- `A249901(n+1)-A046660(n+1)` -/
def P15246835640265652418.Spec : Prop :=
  ∀ n, P15246835640265652418.a n = A249767 (n + 1)

theorem P15246835640265652418.correct : P15246835640265652418.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P15246835640265652418.a, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A046660, A046660.P3614759855976580945.a, A249901, A249901.P14839296610955459653.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249767

/-! ## A249767.P17253603175839969466

`A080256(n+1)-A289641(n+1)`
-/

namespace A249767.P17253603175839969466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1) - A289641 (n + 1)

end

end A249767.P17253603175839969466

namespace A249767

/-- `A080256(n+1)-A289641(n+1)` -/
def P17253603175839969466.Spec : Prop :=
  ∀ n, P17253603175839969466.a n = A249767 (n + 1)

theorem P17253603175839969466.correct : P17253603175839969466.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P17253603175839969466.a, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080256, A080256.P7120327596299936655.a, A289641, A289641.P3974398798159448761.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249767

/-! ## A249767.P13729439693926322101

`A076369(n+1)-A378993(n+1)`
-/

namespace A249767.P13729439693926322101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - A378993 (n + 1)

end

end A249767.P13729439693926322101

namespace A249767

/-- `A076369(n+1)-A378993(n+1)` -/
def P13729439693926322101.Spec : Prop :=
  ∀ n, P13729439693926322101.a n = A249767 (n + 1)

theorem P13729439693926322101.correct : P13729439693926322101.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P13729439693926322101.a, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A076369, A076369.P8196715672845264258.a, A378993, A378993.P12473165963195423861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249767

/-! ## A249767.P10853455986633883811

`xor(A001221(n+1), A008966(n+1))`
-/

namespace A249767.P10853455986633883811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (n + 1)) (A008966 (n + 1))

end

end A249767.P10853455986633883811

namespace A249767

/-- `xor(A001221(n+1), A008966(n+1))` -/
def P10853455986633883811.Spec : Prop :=
  ∀ n, P10853455986633883811.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P16201976275811373030

`xor(A087624(n+1), A354819(n+1))`
-/

namespace A249767.P16201976275811373030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087624 (n + 1)) (A354819 (n + 1))

end

end A249767.P16201976275811373030

namespace A249767

/-- `xor(A087624(n+1), A354819(n+1))` -/
def P16201976275811373030.Spec : Prop :=
  ∀ n, P16201976275811373030.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P5421721946349990931

`A001221(n+1)+A007423(n+1)-1`
-/

namespace A249767.P5421721946349990931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A007423 (n + 1) - 1)

end

end A249767.P5421721946349990931

namespace A249767

/-- `A001221(n+1)+A007423(n+1)-1` -/
def P5421721946349990931.Spec : Prop :=
  ∀ n, P5421721946349990931.a n = A249767 (n + 1)

theorem P5421721946349990931.correct : P5421721946349990931.Spec := by
  intro n
  simp only [A249767, Nat.add_sub_cancel, A249767.P5421721946349990931.a, A249767.P12062249745912461612.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249767

/-! ## A249767.P10353667413724004300

`∑{p}[n+1, A001222(#)]+A008683(n+1)`
-/

namespace A249767.P10353667413724004300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p + A008683 (n + 1)

end

end A249767.P10353667413724004300

namespace A249767

/-- `∑{p}[n+1, A001222(#)]+A008683(n+1)` -/
def P10353667413724004300.Spec : Prop :=
  ∀ n, P10353667413724004300.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P15576994369820520957

`A008683(n+1)+A001222(∏{p}[n+1, #])`
-/

namespace A249767.P15576994369820520957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A249767.P15576994369820520957

namespace A249767

/-- `A008683(n+1)+A001222(∏{p}[n+1, #])` -/
def P15576994369820520957.Spec : Prop :=
  ∀ n, P15576994369820520957.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P10261594615007731226

`A008683(n+1)-∑{p}[n+1, A008683(#)]`
-/

namespace A249767.P10261594615007731226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A008683 p

end

end A249767.P10261594615007731226

namespace A249767

/-- `A008683(n+1)-∑{p}[n+1, A008683(#)]` -/
def P10261594615007731226.Spec : Prop :=
  ∀ n, P10261594615007731226.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P8937768440647204458

`xor(∑{p}[n+1, A001222(#)], A008966(n+1))`
-/

namespace A249767.P8937768440647204458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ p ∈ Nat.primeFactors (f1 n), A001222 p) (A008966 (n + 1))

end

end A249767.P8937768440647204458

namespace A249767

/-- `xor(∑{p}[n+1, A001222(#)], A008966(n+1))` -/
def P8937768440647204458.Spec : Prop :=
  ∀ n, P8937768440647204458.a n = A249767 (n + 1)

end A249767

/-! ## A249767.P7893184209637968137

`xor(A001222(∏{p}[n+1, #]), A008966(n+1))`
-/

namespace A249767.P7893184209637968137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A008966 (n + 1))

end

end A249767.P7893184209637968137

namespace A249767

/-- `xor(A001222(∏{p}[n+1, #]), A008966(n+1))` -/
def P7893184209637968137.Spec : Prop :=
  ∀ n, P7893184209637968137.a n = A249767 (n + 1)

end A249767

/-!
# A249769: Sequence of distinct least positive numbers such that the average of the first n terms is a factorial.

The programs for A249769, there is no canonical definition to state claims against.
-/

/-! ## A249769.P16727214197672106296

`Δ[n*∑[log2(gcd(2, n))]!]`
-/

namespace A249769.P16727214197672106296
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A249769.P16727214197672106296

/-! ## A249769.P6497931710031936765

`Δ[n*∑[char[2*n]]!]`
-/

namespace A249769.P6497931710031936765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A249769.P6497931710031936765

/-! ## A249769.P7339374259781877641

`Δ[(1+floor(n/2))!*n]`
-/

namespace A249769.P7339374259781877641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (1 + ⌊(n : ℚ) / 2⌋).toNat * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A249769.P7339374259781877641

/-! ## A249769.P14010997862244624140

`Δ[n*A081123(n+2)]`
-/

namespace A249769.P14010997862244624140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081123 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249769.P14010997862244624140

/-!
# A249770: Irregular triangle read by rows: T(n,k) is the number of Abelian groups of order n with k invariant factors (2 <= n, 1 <= k).

The programs for A249770, there is no canonical definition to state claims against.
-/

/-! ## A249770.P280201442502254915

`gcd(A023358(A327815(n+1)), A327762(n+1))`
-/

namespace A249770.P280201442502254915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023358 (A327815 (n + 1)).toNat) (A327762 (n + 1))

end

end A249770.P280201442502254915

/-! ## A249770.P5525806844905906852

`A304118(A347759(n+3)+2)`
-/

namespace A249770.P5525806844905906852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A347759 (n + 3) + 2).toNat

end

end A249770.P5525806844905906852

/-! ## A249770.P10423047084011850614

`val(A152743(A214581(n+1)), 18)`
-/

namespace A249770.P10423047084011850614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152743 (A214581 (n + 1)).toNat).toNat 18

end

end A249770.P10423047084011850614

/-! ## A249770.P14894169805130085130

`A188172(A106420(n+3)+1)!`
-/

namespace A249770.P14894169805130085130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A188172 (A106420 (n + 3) + 1).toNat).toNat

end

end A249770.P14894169805130085130

/-! ## A249770.P9965043346011940504

`runs[A088017(n+1)-A392706(n+1)]`
-/

namespace A249770.P9965043346011940504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1) - A392706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A249770.P9965043346011940504

/-! ## A249770.P15937004769450256115

`A045778(gcd(A002154(n+1), A195046(n)))`
-/

namespace A249770.P15937004769450256115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (Int.gcd (A002154 (n + 1)) (A195046 n))

end

end A249770.P15937004769450256115

/-! ## A249770.P13990451219300956394

`gcd(A360160(A077609(n+1)), A360174(n))`
-/

namespace A249770.P13990451219300956394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360160 (A077609 (n + 1)).toNat) (A360174 n)

end

end A249770.P13990451219300956394

/-! ## A249770.P15010544965413821267

`A307608(A015976(n+3)-A051904(n+1))`
-/

namespace A249770.P15010544965413821267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307608 (A015976 (n + 3) - A051904 (n + 1)).toNat

end

end A249770.P15010544965413821267

/-! ## A249770.P14654926275033730562

`A266227(A342799(n+3)+A074272(n+2))`
-/

namespace A249770.P14654926275033730562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A342799 (n + 3) + A074272 (n + 2)).toNat

end

end A249770.P14654926275033730562

/-! ## A249770.P6473460328144085763

`A066060(gcd(A077609(n+1), A214581(n+1)))`
-/

namespace A249770.P6473460328144085763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.gcd (A077609 (n + 1)) (A214581 (n + 1)))

end

end A249770.P6473460328144085763

/-!
# A249771: Irregular triangle read by rows: T(n,k) is the number of Abelian groups of order A025487(n) with k invariant factors (2 <= n, 1 <= k).

The programs for A249771, there is no canonical definition to state claims against.
-/

/-! ## A249771.P6883661342093629331

`A278567(round(sqrt(A338526(2*(n+2)))))`
-/

namespace A249771.P6883661342093629331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278567 (SequenceMachineLib.roundAway (Real.sqrt (A338526 (2 * (n + 2)) : ℝ))).toNat

end

end A249771.P6883661342093629331

/-! ## A249771.P2983516991593932947

`A115572(A249095(3*n+1)+A115578(3*n+4))`
-/

namespace A249771.P2983516991593932947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A249095 (3 * n + 1) + A115578 (3 * n + 4)).toNat

end

end A249771.P2983516991593932947

/-! ## A249771.P788950960987578573

`A115575(A249095(3*n+1)+A115578(3*n+4))`
-/

namespace A249771.P788950960987578573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (A249095 (3 * n + 1) + A115578 (3 * n + 4)).toNat

end

end A249771.P788950960987578573

/-! ## A249771.P2677907462170225557

`A115576(A249095(3*n+1)+A115578(3*n+4))`
-/

namespace A249771.P2677907462170225557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (A249095 (3 * n + 1) + A115578 (3 * n + 4)).toNat

end

end A249771.P2677907462170225557

/-! ## A249771.P8040474669250947426

`A115581(A249095(3*n+1)+A115578(3*n+4))`
-/

namespace A249771.P8040474669250947426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115581 (A249095 (3 * n + 1) + A115578 (3 * n + 4)).toNat

end

end A249771.P8040474669250947426

/-!
# A249772: Period of the senary (base-6) representation of 1/n, or 0 if 1/n terminates.

The programs for A249772, there is no canonical definition to state claims against.
-/

/-! ## A249772.P8901748052541046354

`A007737(n+1)%(floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))`
-/

namespace A249772.P8901748052541046354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (n + 1)) (SequenceMachineLib.roundAway ((⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)))

end

end A249772.P8901748052541046354

/-! ## A249772.P4543999855321027150

`A007737(n+1)-A065333(n+1)`
-/

namespace A249772.P4543999855321027150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (n + 1) - A065333 (n + 1)

end

end A249772.P4543999855321027150

/-! ## A249772.P4343893142628795752

`A007737(n+1)%A065330(n+1)`
-/

namespace A249772.P4343893142628795752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007737 (n + 1)) (A065330 (n + 1))

end

end A249772.P4343893142628795752

/-! ## A249772.P1915632371443038134

`lcm(A007737(n+1), A171157(n+1))`
-/

namespace A249772.P1915632371443038134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007737 (n + 1)) (A171157 (n + 1))

end

end A249772.P1915632371443038134

/-! ## A249772.P18080727214528720623

`xor(A007737(2*(n+1)), A065333(n+1))`
-/

namespace A249772.P18080727214528720623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007737 (2 * (n + 1))) (A065333 (n + 1))

end

end A249772.P18080727214528720623

/-! ## A249772.P6569067941991551630

`A007737(n+1)*A057427(A246004(n+1))`
-/

namespace A249772.P6569067941991551630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (n + 1) * A057427 (A246004 (n + 1)).toNat

end

end A249772.P6569067941991551630

/-!
# A249773: Number of Abelian groups that attain the maximum number of invariant factors among those whose order is A025487(n).

The programs for A249773, there is no canonical definition to state claims against.
-/

/-! ## A249773.P5650967240697230168

`A051064(A307107(n+1)^A118914(n+5))`
-/

namespace A249773.P5650967240697230168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (SequenceMachineLib.roundAway ((A307107 (n + 1) : ℚ) ^ (A118914 (n + 5) : ℤ))).toNat

end

end A249773.P5650967240697230168

/-! ## A249773.P16181604668700997668

`A298857(A298910(n+5)%∏{p}[n+1, #])`
-/

namespace A249773.P16181604668700997668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298857 (Int.tmod (A298910 (n + 5)) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A249773.P16181604668700997668

/-!
# A249774: The smallest number k such that prime(n)//prime(n+1)//...//prime(n+k-1) is prime, where // is the concatenation function, or 0 if no such k exists.

The programs for A249774, there is no canonical definition to state claims against.
-/

/-! ## A249774.P723526039434459318

`∑{p}[A249775(n+1), A000720(#)-n]`
-/

namespace A249774.P723526039434459318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000720 p - (n : ℤ))

end

end A249774.P723526039434459318

/-!
# A249777: Let z = A084937: a(n) = number of numbers <= z(n) that are != z(k) for k=1..n-1 and not coprime to z(n-1) and z(n-2).

The programs for A249777, there is no canonical definition to state claims against.
-/

/-! ## A249777.P1914810993979186283

`A249858(n+1)+2*A249856(n+1)`
-/

namespace A249777.P1914810993979186283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (n + 1) + 2 * A249856 (n + 1)

end

end A249777.P1914810993979186283

/-! ## A249777.P13238281209135230062

`A249856(A028310(n+1))+A249858(n+1)+A249856(n+1)`
-/

namespace A249777.P13238281209135230062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A028310 (n + 1)).toNat + (A249858 (n + 1) + A249856 (n + 1))

end

end A249777.P13238281209135230062

/-! ## A249777.P9548331746244992684

`A005843(A249858(n+1)+A249856(n+1))-A249858(n+1)`
-/

namespace A249777.P9548331746244992684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A249858 (n + 1) + A249856 (n + 1)).toNat - A249858 (n + 1)

end

end A249777.P9548331746244992684

/-! ## A249777.P16088182010452441074

`A249857(1+n)+A249856(n+1)`
-/

namespace A249777.P16088182010452441074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249857 (1 + n) + A249856 (n + 1)

end

end A249777.P16088182010452441074

/-! ## A249777.P3398628704032147341

`2*A249857(n+1)-A249858(n+1)`
-/

namespace A249777.P3398628704032147341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249857 (n + 1) - A249858 (n + 1)

end

end A249777.P3398628704032147341

/-! ## A249777.P349047306860454977

`A005843(A249857(n+1))-A249858(n+1)`
-/

namespace A249777.P349047306860454977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A249857 (n + 1)).toNat - A249858 (n + 1)

end

end A249777.P349047306860454977

/-!
# A249780: Product of lowest and highest prime factors of 2^n-1.

The programs for A249780, there is no canonical definition to state claims against.
-/

/-! ## A249780.P17334808633356819566

`A005420(n+2)*A049479(n+2)`
-/

namespace A249780.P17334808633356819566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + 2) * A049479 (n + 2)

end

end A249780.P17334808633356819566

/-! ## A249780.P1635497593119618708

`A001265(∑[A046051(n+1)]+2)*A005420(n+2)`
-/

namespace A249780.P1635497593119618708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001265 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat * A005420 (n + 2)

end

end A249780.P1635497593119618708

/-! ## A249780.P12966195270465845036

`A001265(∑[A046051(n+2)]+1)*A049479(n+2)`
-/

namespace A249780.P12966195270465845036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001265 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A049479 (n + 2)

end

end A249780.P12966195270465845036

/-! ## A249780.P17152405710232686561

`A005420(n+2)*A060443(∑[A046800(n+1)]+2)`
-/

namespace A249780.P17152405710232686561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (n + 2) * A060443 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A249780.P17152405710232686561

/-! ## A249780.P12348595628071290583

`A049479(n+2)*A060443(∑[A046800(n+2)]+1)`
-/

namespace A249780.P12348595628071290583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (n + 2) * A060443 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A249780.P12348595628071290583

/-!
# A249781: Expansion of q * f(-q)^2 * f(-q^15)^2 * chi(-q) * chi(-q^15) / (chi(-q^3) * chi(-q^5)) in powers of q where f(), chi() are Ramanujan theta functions.

The programs for A249781, there is no canonical definition to state claims against.
-/

/-! ## A249781.P3270925370608104354

`A030184(n+1)-(A286137(n+1)+A286137(n+1))`
-/

namespace A249781.P3270925370608104354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030184 (n + 1) - (A286137 (n + 1) + A286137 (n + 1))

end

end A249781.P3270925370608104354

/-! ## A249781.P15884562213246828696

`A286137(2*(n+1))-A286137(n+1)`
-/

namespace A249781.P15884562213246828696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 (2 * (n + 1)) - A286137 (n + 1)

end

end A249781.P15884562213246828696

/-! ## A249781.P1971356714107529128

`A030218(n+1)-A030218(8*(n+1))`
-/

namespace A249781.P1971356714107529128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 (n + 1) - A030218 (8 * (n + 1))

end

end A249781.P1971356714107529128

/-!
# A249783: Smallest index of a Fibonacci-like sequence containing n, see comments.

The programs for A249783, there is no canonical definition to state claims against.
-/

/-! ## A249783.P4377264557449432364

`A085141(6*A199087(n))`
-/

namespace A249783.P4377264557449432364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (6 * A199087 n).toNat

end

end A249783.P4377264557449432364

/-! ## A249783.P7416827698227815873

`A137734(A286327(n))%A116862(n)`
-/

namespace A249783.P7416827698227815873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137734 (A286327 n).toNat) (A116862 n)

end

end A249783.P7416827698227815873

/-! ## A249783.P10126040012395021621

`gcd(A058207(n), A213714(A064111(n+1)))`
-/

namespace A249783.P10126040012395021621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058207 n) (A213714 (A064111 (n + 1)).toNat)

end

end A249783.P10126040012395021621

/-! ## A249783.P10102038552123820132

`A102669(A133263(A286327(n))²)`
-/

namespace A249783.P10102038552123820132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A133263 (A286327 n).toNat ^ 2).toNat

end

end A249783.P10102038552123820132

/-! ## A249783.P15092653227317850236

`A001221(A202305(A286327(n))!)`
-/

namespace A249783.P15092653227317850236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A202305 (A286327 n).toNat).toNat)

end

end A249783.P15092653227317850236

/-!
# A249784: Number of divisors of n^(n^n).

The programs for A249784, there is no canonical definition to state claims against.
-/

/-! ## A249784.P16090867004580110392

`∑{d}[n+1, (n+1)^((n+1)*A001221(#))]`
-/

namespace A249784.P16090867004580110392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ ((n + 1 : ℤ) * A001221 d : ℤ)

end

end A249784.P16090867004580110392

/-!
# A249785: E.g.f. A(x) satisfies: (A(x)^3 - 6*x)^2 = (2 - A(x)^2)^3.

The programs for A249785, there is no canonical definition to state claims against.
-/

/-! ## A249785.P15927703582687466423

`A242602(A001147(n)+A000040(n+1))`
-/

namespace A249785.P15927703582687466423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (A001147 n + A000040 (n + 1)).toNat

end

end A249785.P15927703582687466423

/-! ## A249785.P15712112313313463970

`A242602(A029981(n+1)+A001147(n))`
-/

namespace A249785.P15712112313313463970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242602 (A029981 (n + 1) + A001147 n).toNat

end

end A249785.P15712112313313463970

/-!
# A249786: E.g.f. A(x) satisfies: (A(x)^2 - 4*x)^3 = (2 - A(x)^3)^2.

The programs for A249786, there is no canonical definition to state claims against.
-/

/-! ## A249786.P3443737218386653656

`A001096(n)!*A027555(n)`
-/

namespace A249786.P3443737218386653656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001096 n).toNat : ℤ) * A027555 n

end

end A249786.P3443737218386653656

/-! ## A249786.P8822542487955546982

`A003963(A002110(n))*A027555(n)`
-/

namespace A249786.P8822542487955546982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A002110 n).toNat * A027555 n

end

end A249786.P8822542487955546982

/-!
# A249788: E.g.f. A(x) satisfies: (A(x)^2 - 4*x)^5 = (2 - A(x)^5)^2.

The programs for A249788, there is no canonical definition to state claims against.
-/

/-! ## A249788.P15095804778662212817

`A118441(A042077(n))`
-/

namespace A249788.P15095804778662212817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118441 (A042077 n).toNat

end

end A249788.P15095804778662212817

/-!
# A249792: G.f.: Sum_{n>=0} x^n/(1-x)^(4*n) * Sum_{k=0..n} C(n,k)^2 * x^k.

The programs for A249792, there is no canonical definition to state claims against.
-/

/-! ## A249792.P656030402509271697

`A175387(A275751(n+1))`
-/

namespace A249792.P656030402509271697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175387 (A275751 (n + 1)).toNat

end

end A249792.P656030402509271697

/-! ## A249792.P6250716738795984693

`A125229(A150764(n))+n!`
-/

namespace A249792.P6250716738795984693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125229 (A150764 n).toNat + (Nat.factorial n : ℤ)

end

end A249792.P6250716738795984693

/-!
# A249793: G.f.: Sum_{n>=0} x^n/(1-x)^(5*n) * Sum_{k=0..n} C(n,k)^2 * x^k.

The programs for A249793, there is no canonical definition to state claims against.
-/

/-! ## A249793.P15651504181633292014

`A350470(n+3)+A001969(A153294(n))`
-/

namespace A249793.P15651504181633292014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350470 (n + 3) + A001969 (A153294 n).toNat

end

end A249793.P15651504181633292014

/-! ## A249793.P9686616158018779534

`A236234(2*(n+4))+A000069(A153294(n))`
-/

namespace A249793.P9686616158018779534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236234 (2 * (n + 4)) + A000069 (A153294 n).toNat

end

end A249793.P9686616158018779534

/-! ## A249793.P2718303644483991120

`A038608(A345935(n+1))+A005843(A153294(n))`
-/

namespace A249793.P2718303644483991120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A345935 (n + 1)).toNat + A005843 (A153294 n).toNat

end

end A249793.P2718303644483991120

/-!
# A249794: G.f.: Sum_{n>=0} x^n/(1-x)^(6*n) * Sum_{k=0..n} C(n,k)^2 * x^k.

The programs for A249794, there is no canonical definition to state claims against.
-/

/-! ## A249794.P15685643376950373754

`4*A101888(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A249794.P15685643376950373754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * A101888 (a (n - 1) + 1).toNat

end

end A249794.P15685643376950373754

/-!
# A249795: Self-avoiding walks with n steps on the truncated trihexagonal tiling or (4,6,12) lattice.

The programs for A249795, there is no canonical definition to state claims against.
-/

/-! ## A249795.P13668775365359758162

`or(2^n, A078759(n!))`
-/

namespace A249795.P13668775365359758162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A078759 (Nat.factorial n))

end

end A249795.P13668775365359758162

/-! ## A249795.P6900010081634906561

`2*A081031(a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A249795.P6900010081634906561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * A081031 (a (n - 2) + 1).toNat

end

end A249795.P6900010081634906561

/-! ## A249795.P16731681313501761469

`lt[A174680(2*n), n-6*floor(n/10)]+2^n`
-/

namespace A249795.P16731681313501761469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * ⌊(n : ℚ) / 10⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2 ^ n

end

end A249795.P16731681313501761469

/-! ## A249795.P564932250950059607

`A055086(A070031(n))`
-/

namespace A249795.P564932250950059607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A070031 n).toNat

end

end A249795.P564932250950059607

/-!
# A249798: Numbers k such that the product of the first k primes minus the (k+1)-th prime is prime.

The programs for A249798, there is no canonical definition to state claims against.
-/

/-! ## A249798.P16600353422312573188

`A000720(A093078(n+1))`
-/

namespace A249798.P16600353422312573188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093078 (n + 1)).toNat

end

end A249798.P16600353422312573188

/-! ## A249798.P17780399252117893784

`A061395(2*A093078(n+1))`
-/

namespace A249798.P17780399252117893784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A093078 (n + 1)).toNat

end

end A249798.P17780399252117893784

/-! ## A249798.P5783445992718534868

`∑{d}[A093078(n+1), A344616(#)]`
-/

namespace A249798.P5783445992718534868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344616 d

end

end A249798.P5783445992718534868

/-! ## A249798.P17710824859871653255

`A061395(A093078(n+1)+A000007(n+1))`
-/

namespace A249798.P17710824859871653255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A093078 (n + 1) + A000007 (n + 1)).toNat

end

end A249798.P17710824859871653255

/-! ## A249798.P3019632505796091474

`∑{d}[A093078(n+1), A056239(#)]`
-/

namespace A249798.P3019632505796091474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A249798.P3019632505796091474

