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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A192700: Number of 2X5 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 2 zero-sum 5-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192700, there is no canonical definition to state claims against.
-/

/-! ## A192700.P797603868176539240

`A192710(n+11+A000292(n+5))`
-/

namespace A192700.P797603868176539240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 ((n + 11 : ℤ) + A000292 (n + 5)).toNat

end

end A192700.P797603868176539240

/-!
# A192701: Number of 3X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 3 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192701, there is no canonical definition to state claims against.
-/

/-! ## A192701.P816632191094983786

`A396333(n+1)+A016727(n+1)`
-/

namespace A192701.P816632191094983786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396333 (n + 1) + A016727 (n + 1)

end

end A192701.P816632191094983786

/-! ## A192701.P14614708113273148282

`A192710(A000292(n+2)+Δ[A000292(n+4)])`
-/

namespace A192701.P14614708113273148282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000292 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A192701.P14614708113273148282

/-! ## A192701.P5696315701282948841

`∑[A287636(n+1)+A287619(A287644(n+1))]`
-/

namespace A192701.P5696315701282948841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287636 (n + 1) + A287619 (A287644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192701.P5696315701282948841

/-! ## A192701.P16692171846321515052

`∑[A287636(n+1)+A287619(A287645(n+1))]`
-/

namespace A192701.P16692171846321515052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287636 (n + 1) + A287619 (A287645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192701.P16692171846321515052

/-!
# A192702: Number of 3X3 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 3 zero-sum 3-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192702, there is no canonical definition to state claims against.
-/

/-! ## A192702.P8064115534822344015

`A192710(A255993(n+3)+4)`
-/

namespace A192702.P8064115534822344015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A255993 (n + 3) + 4).toNat

end

end A192702.P8064115534822344015

/-! ## A192702.P14832339568512155996

`A192710(A000096(n+6)+∑[A000096(n+2)])`
-/

namespace A192702.P14832339568512155996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000096 (n + 6) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192702.P14832339568512155996

/-!
# A192703: Number of 4X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 4 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192703, there is no canonical definition to state claims against.
-/

/-! ## A192703.P13495237403799378921

`A192710(A000217(n+7)+∑[A000217(n+3)])`
-/

namespace A192703.P13495237403799378921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000217 (n + 7) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192703.P13495237403799378921

/-! ## A192703.P3832380480992277178

`∑[A003174(2*n+1)-∏{p}[n+1, (n+1)/#]%(n+1)]`
-/

namespace A192703.P3832380480992277178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003174 (2 * n + 1) - Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192703.P3832380480992277178

/-! ## A192703.P3695971543921081541

`∑[Δ[A055642(A162172(n))]+n²+2]`
-/

namespace A192703.P3695971543921081541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A162172 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n ^ 2 : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192703.P3695971543921081541

/-! ## A192703.P4067707711794630282

`A049480(n+1)+A001227(A008514(n))`
-/

namespace A192703.P4067707711794630282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (n + 1) + A001227 (A008514 n).toNat

end

end A192703.P4067707711794630282

/-!
# A192704: Number of 4X3 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 4 zero-sum 3-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192704, there is no canonical definition to state claims against.
-/

/-! ## A192704.P4667660236447457606

`A192710(A000096(n+8)+∑[A000096(n+3)])`
-/

namespace A192704.P4667660236447457606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000096 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192704.P4667660236447457606

/-!
# A192705: Number of 5X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 5 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192705, there is no canonical definition to state claims against.
-/

/-! ## A192705.P15582188739595038939

`A192710(A000217(n+9)+∑[A000217(n+4)])`
-/

namespace A192705.P15582188739595038939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A000217 (n + 9) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192705.P15582188739595038939

/-! ## A192705.P847978165954983234

`A185195(A062478(n+2))`
-/

namespace A192705.P847978165954983234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A062478 (n + 2)).toNat

end

end A192705.P847978165954983234

/-! ## A192705.P13415419065528475183

`A290876(n+3)+A290726(A349800(n+3))`
-/

namespace A192705.P13415419065528475183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290876 (n + 3) + A290726 (A349800 (n + 3)).toNat

end

end A192705.P13415419065528475183

/-!
# A192706: Number of 6X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 6 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192706, there is no canonical definition to state claims against.
-/

/-! ## A192706.P2277688466194509457

`A192710(A002061(n+9)+∑[A000217(n+4)])`
-/

namespace A192706.P2277688466194509457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192710 (A002061 (n + 9) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192706.P2277688466194509457

/-! ## A192706.P7745753123710336682

`A085089(A055275(n))+1`
-/

namespace A192706.P7745753123710336682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A055275 n).toNat + 1

end

end A192706.P7745753123710336682

/-!
# A192707: Number of 7X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 7 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192707, there is no canonical definition to state claims against.
-/

/-! ## A192707.P18155327878921540875

`A005117(∑[A383708(3*n+1)]+1)`
-/

namespace A192707.P18155327878921540875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383708 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A192707.P18155327878921540875

/-! ## A192707.P11145778782901549745

`A342742(2^n)+A342735(n+1)`
-/

namespace A192707.P11145778782901549745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342742 (2 ^ n) + A342735 (n + 1)

end

end A192707.P11145778782901549745

/-!
# A192708: Number of 8X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 8 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192708, there is no canonical definition to state claims against.
-/

/-! ## A192708.P16208153205171625143

`A083382(A268347(3*n+2)-1)+1`
-/

namespace A192708.P16208153205171625143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A268347 (3 * n + 2) - 1).toNat + 1

end

end A192708.P16208153205171625143

/-! ## A192708.P6248133667677436356

`A390674(A058331(n))+A058331(n)`
-/

namespace A192708.P6248133667677436356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390674 (A058331 n).toNat + A058331 n

end

end A192708.P6248133667677436356

/-!
# A192709: Number of 9X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 9 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192709, there is no canonical definition to state claims against.
-/

/-! ## A192709.P1320795791439117841

`A247618(n)+A001221(A119906(n))`
-/

namespace A192709.P1320795791439117841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247618 n + A001221 (A119906 n).toNat

end

end A192709.P1320795791439117841

/-! ## A192709.P17325873318421643743

`A247618(n)+A001222(A365995(n+1)+1)`
-/

namespace A192709.P17325873318421643743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247618 n + A001222 (A365995 (n + 1) + 1).toNat

end

end A192709.P17325873318421643743

/-!
# A192710: T(i,j,k) = Number of i X j integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*k^2 (number of sets of i zero-sum j-vectors with total modulus squared not more than 2*k^2, ignoring vector and component permutations), 3d array by constant coordinate sum planes: (((T(i+1,j+1,s-i-j+1), j=0..s-i), i=0..s), s=0..infinity).

The programs for A192710, there is no canonical definition to state claims against.
-/

/-! ## A192710.P17485014067302501305

`gcd(A093653(A156146(n+1)), A097477(n+1))`
-/

namespace A192710.P17485014067302501305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093653 (A156146 (n + 1)).toNat) (A097477 (n + 1))

end

end A192710.P17485014067302501305

/-! ## A192710.P2182191485243744861

`gcd(A047417(A189953(n+1)), A298597(n+1))`
-/

namespace A192710.P2182191485243744861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047417 (A189953 (n + 1)).toNat) (A298597 (n + 1))

end

end A192710.P2182191485243744861

/-! ## A192710.P4501253344983845306

`gcd(A071562(n+1), A243288(A034878(n+1)))`
-/

namespace A192710.P4501253344983845306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071562 (n + 1)) (A243288 (A034878 (n + 1)).toNat)

end

end A192710.P4501253344983845306

/-! ## A192710.P1383635180004050510

`gcd(A067595(A195232(n+1)), A273071(n+1))`
-/

namespace A192710.P1383635180004050510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067595 (A195232 (n + 1)).toNat) (A273071 (n + 1))

end

end A192710.P1383635180004050510

/-! ## A192710.P6806447848842504872

`A001222(or(A002605(n), A005382(n+4)))`
-/

namespace A192710.P6806447848842504872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A002605 n) (A005382 (n + 4))).toNat

end

end A192710.P6806447848842504872

/-!
# A192711: Number of 10 X 2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 10 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192711, there is no canonical definition to state claims against.
-/

/-! ## A192711.P13399501649089853452

`A194439(3*n+2)+∑[A000041(2*n)]`
-/

namespace A192711.P13399501649089853452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192711.P13399501649089853452

/-! ## A192711.P7318571269209541136

`A201509(n)+A000006(A073381(n))`
-/

namespace A192711.P7318571269209541136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201509 n + A000006 (A073381 n).toNat

end

end A192711.P7318571269209541136

/-!
# A192712: Number of 11X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 11 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192712, there is no canonical definition to state claims against.
-/

/-! ## A192712.P6767040568739326616

`A194439(3*n+4)-A046746(n)`
-/

namespace A192712.P6767040568739326616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (3 * n + 4) - A046746 n

end

end A192712.P6767040568739326616

/-! ## A192712.P17141548957059932462

`A370593(3*n+2)+A010054(A001541(n))`
-/

namespace A192712.P17141548957059932462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370593 (3 * n + 2) + A010054 (A001541 n).toNat

end

end A192712.P17141548957059932462

/-!
# A192713: Number of 12X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 12 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192713, there is no canonical definition to state claims against.
-/

/-! ## A192713.P949451932746793430

`∑[A297531(∑[A002478(n)])]`
-/

namespace A192713.P949451932746793430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297531 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192713.P949451932746793430

/-! ## A192713.P6617504798390464657

`A028846(n+1)+∑[A194439(3*n+2)]`
-/

namespace A192713.P6617504798390464657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192713.P6617504798390464657

/-!
# A192714: Number of 13X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 13 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192714, there is no canonical definition to state claims against.
-/

/-! ## A192714.P8918451617964013724

`A241087(A059632(n+1))-A030228(n)`
-/

namespace A192714.P8918451617964013724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (A059632 (n + 1)).toNat - A030228 n

end

end A192714.P8918451617964013724

/-!
# A192715: Number of 14X2 integer matrices with each row summing to zero, row elements in nondecreasing order, rows in lexicographically nondecreasing order, and the sum of squares of the elements <= 2*n^2 (number of collections of 14 zero-sum 2-vectors with total modulus squared not more than 2*n^2, ignoring vector and component permutations).

The programs for A192715, there is no canonical definition to state claims against.
-/

/-! ## A192715.P6208589835654167253

`A335838(A337854(n))+∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A192715.P6208589835654167253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335838 (A337854 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)

end

end A192715.P6208589835654167253

/-! ## A192715.P8533847459278747137

`A276064(A099152(n))+A001936(2*n)`
-/

namespace A192715.P8533847459278747137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276064 (A099152 n).toNat + A001936 (2 * n)

end

end A192715.P8533847459278747137

/-!
# A192716: Divisors of 10^9.

The programs for A192716, there is no canonical definition to state claims against.
-/

/-! ## A192716.P15681876105024267822

`∩[A003592(n+1), A067942(n+1)]`
-/

namespace A192716.P15681876105024267822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192716.P15681876105024267822

/-! ## A192716.P15835699208943995446

`∩[A067942(n+1), A067943(n+1)]`
-/

namespace A192716.P15835699208943995446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192716.P15835699208943995446

/-! ## A192716.P13721093735096349625

`∩[A067942(n+1), A108513(n+1)]`
-/

namespace A192716.P13721093735096349625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192716.P13721093735096349625

/-! ## A192716.P8241325298785930196

`A003592(lt[A346632(2*n+1), comp[2*(n+1)]])`
-/

namespace A192716.P8241325298785930196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346632 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A192716.P8241325298785930196

/-! ## A192716.P4745829045292938298

`A003592(comp[n*A098009(3*(n+1))])`
-/

namespace A192716.P4745829045292938298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A098009 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A192716.P4745829045292938298

/-!
# A192717: Positive integers of the form (p^e)(k^2) for p prime congruent to 3 (mod 8), e congruent to 1 (mod 4), and k an odd integer coprime to p.

The programs for A192717, there is no canonical definition to state claims against.
-/

/-! ## A192717.P13440122001139331288

`eq[A023919(A169783(2*n)), A169783(n)]`
-/

namespace A192717.P13440122001139331288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A169783 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192717.P13440122001139331288

/-! ## A192717.P12379052910460034582

`lt[A000034(2*(n+2)), A000034(A008437(n))]`
-/

namespace A192717.P12379052910460034582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192717.P12379052910460034582

/-! ## A192717.P6909760423405958221

`eq[A213384(2*n+1)², A023919(A213384(2*n))]`
-/

namespace A192717.P6909760423405958221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A213384 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192717.P6909760423405958221

/-! ## A192717.P11741499465959064890

`eq[A010221(n), A040218(A320193(n))]`
-/

namespace A192717.P11741499465959064890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 (A320193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192717.P11741499465959064890

/-! ## A192717.P3960947954247004237

`eq[A040218(n)+1, A040218(A320193(n))]`
-/

namespace A192717.P3960947954247004237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 (A320193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192717.P3960947954247004237

/-! ## A192717.P8539137464607010435

`eq[A010221(n), A040218(A320149(n))]`
-/

namespace A192717.P8539137464607010435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 (A320149 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192717.P8539137464607010435

/-! ## A192717.P7508457650852817296

`eq[A040218(n)+1, A040218(A320149(n))]`
-/

namespace A192717.P7508457650852817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040218 (A320149 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192717.P7508457650852817296

/-! ## A192717.P11381061425816563545

`8*A210449(n+1)+3`
-/

namespace A192717.P11381061425816563545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A210449 (n + 1) + 3

end

end A192717.P11381061425816563545

/-! ## A192717.P4411943011729812512

`A017101(A210449(n+1))`
-/

namespace A192717.P4411943011729812512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A210449 (n + 1)).toNat

end

end A192717.P4411943011729812512

/-!
# A192718: Elements of A192628 which are congruent to 7 (mod 8) (equivalently, 7 (mod 16)).

The programs for A192718, there is no canonical definition to state claims against.
-/

/-! ## A192718.P12346320141143999804

`A004771(2*A210450(n+1))`
-/

namespace A192718.P12346320141143999804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (2 * A210450 (n + 1)).toNat

end

end A192718.P12346320141143999804

/-! ## A192718.P5816221540723006905

`A017137(2*A210450(n+1))+1`
-/

namespace A192718.P5816221540723006905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (2 * A210450 (n + 1)).toNat + 1

end

end A192718.P5816221540723006905

/-! ## A192718.P418739846400664851

`A017101(2*A210450(n+1))+4`
-/

namespace A192718.P418739846400664851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (2 * A210450 (n + 1)).toNat + 4

end

end A192718.P418739846400664851

/-! ## A192718.P15562250834097651409

`A004769(2*A210450(n+1))-4`
-/

namespace A192718.P15562250834097651409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (2 * A210450 (n + 1)).toNat - 4

end

end A192718.P15562250834097651409

/-! ## A192718.P16723616713304060673

`A005843(8*A210450(n+1))+7`
-/

namespace A192718.P16723616713304060673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (8 * A210450 (n + 1)).toNat + 7

end

end A192718.P16723616713304060673

/-!
# A192719: Chain of Collatz sequences.

The programs for A192719, there is no canonical definition to state claims against.
-/

/-! ## A192719.P11446198851728830992

`A235795(∑[A319430(A007283(n))])`
-/

namespace A192719.P11446198851728830992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (A007283 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192719.P11446198851728830992

/-! ## A192719.P2101141162945514193

`A070165(A077168(n)+∑[A270034(n+1)])`
-/

namespace A192719.P2101141162945514193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (A077168 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192719.P2101141162945514193

/-! ## A192719.P17550573774394853816

`A070165(n+1)+A025456(A212053(n))`
-/

namespace A192719.P17550573774394853816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (n + 1) + A025456 (A212053 n).toNat

end

end A192719.P17550573774394853816

/-! ## A192719.P583719843298282174

`A073200(A174615(n))+A070165(n+1)`
-/

namespace A192719.P583719843298282174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A174615 n).toNat + A070165 (n + 1)

end

end A192719.P583719843298282174

/-! ## A192719.P14517230062450644902

`C(A070165(n+1), A063435(A076868(n)))`
-/

namespace A192719.P14517230062450644902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070165 (n + 1)).toNat (A063435 (A076868 n).toNat).toNat

end

end A192719.P14517230062450644902

/-!
# A192720: High-water marks of A062357: record values of prime(n)-n*(prime(n+1)-prime(n)).

The programs for A192720, there is no canonical definition to state claims against.
-/

/-! ## A192720.P6327050098953411492

`record[-A062357(n+1)]`
-/

namespace A192720.P6327050098953411492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192720.P6327050098953411492

/-! ## A192720.P7904193109113933843

`record[xor(-2, A062357(n+5))]`
-/

namespace A192720.P7904193109113933843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (A062357 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192720.P7904193109113933843

/-! ## A192720.P3870118517586637234

`record[(2*n-1)^A144411(n+1)]`
-/

namespace A192720.P3870118517586637234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1 : ℚ) ^ (A144411 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192720.P3870118517586637234

/-! ## A192720.P10287240632623470972

`A097454(A123079(n+2))`
-/

namespace A192720.P10287240632623470972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (A123079 (n + 2)).toNat

end

end A192720.P10287240632623470972

/-! ## A192720.P5240853716032684678

`A097454(A172057(n+2))`
-/

namespace A192720.P5240853716032684678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (A172057 (n + 2)).toNat

end

end A192720.P5240853716032684678

/-!
# A192721: The number of pairs of permutations in the product group S_n X S_n with k common descents, n >= 1 and 0 <= k <= n-1.

The programs for A192721, there is no canonical definition to state claims against.
-/

/-! ## A192721.P14126107415314047492

`A287315(A099375(n)+1+n)`
-/

namespace A192721.P14126107415314047492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 (A099375 n + 1 + (n : ℤ)).toNat

end

end A192721.P14126107415314047492

/-! ## A192721.P12949922048602992726

`A287315(A212012(n+1)+n)`
-/

namespace A192721.P12949922048602992726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A192721.P12949922048602992726

/-! ## A192721.P10607094535145379178

`A287315(A061579(comp[∑[n]])+1)`
-/

namespace A192721.P10607094535145379178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A192721.P10607094535145379178

/-! ## A192721.P15236375990708339644

`A287315(A061579(comp[∑[n-1]]))`
-/

namespace A192721.P15236375990708339644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A192721.P15236375990708339644

/-! ## A192721.P4090917500622726966

`A287315(A014132(A038722(n+1)))`
-/

namespace A192721.P4090917500622726966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A192721.P4090917500622726966

/-!
# A192722: T(n,k) = Sum of multinomial(n; n_1,n_2,...,n_k)^2, where the sum extends over all compositions (n_1,n_2,...,n_k) of n into exactly k nonnegative parts.

The programs for A192722, there is no canonical definition to state claims against.
-/

/-! ## A192722.P15450565376264189698

`A061691(n+1)*A166350(n+1)`
-/

namespace A192722.P15450565376264189698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061691 (n + 1) * A166350 (n + 1)

end

end A192722.P15450565376264189698

/-! ## A192722.P12002207966217690339

`A002260(n+1)!*A061691(n+1)`
-/

namespace A192722.P12002207966217690339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A061691 (n + 1)

end

end A192722.P12002207966217690339

/-! ## A192722.P11261602466905515057

`A061691(n+1)*A066667(A112367(n))`
-/

namespace A192722.P11261602466905515057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061691 (n + 1) * A066667 (A112367 n).toNat

end

end A192722.P11261602466905515057

/-! ## A192722.P3696709518536787588

`A061691(n+1)*A233543(A080036(n))`
-/

namespace A192722.P3696709518536787588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061691 (n + 1) * A233543 (A080036 n).toNat

end

end A192722.P3696709518536787588

/-! ## A192722.P8749791974812311766

`A061691(n+1)*A233543(A014132(n+1))`
-/

namespace A192722.P8749791974812311766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061691 (n + 1) * A233543 (A014132 (n + 1)).toNat

end

end A192722.P8749791974812311766

/-! ## A192722.P10261435474302370100

`A000142(abs(A140756(n+1)))*A061691(n+1)`
-/

namespace A192722.P10261435474302370100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 |A140756 (n + 1)|.toNat * A061691 (n + 1)

end

end A192722.P10261435474302370100

/-!
# A192724: Number of nXnXn triangular 0..1 arrays with each element equal to at least one neighbor, containing at least one 1 and with new values 0..1 introduced in row major order.

The programs for A192724, there is no canonical definition to state claims against.
-/

/-! ## A192724.P5259055462517671334

`A192600(A028310(n)+1)-1`
-/

namespace A192724.P5259055462517671334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192600 (A028310 n + 1).toNat - 1

end

end A192724.P5259055462517671334

/-! ## A192724.P11740533247848826193

`A192600(n+1)-char[A126759(n)]`
-/

namespace A192724.P11740533247848826193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192600 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192724.P11740533247848826193

/-! ## A192724.P5074973213570361542

`A192600(n+1)-char[A144150(n)]`
-/

namespace A192724.P5074973213570361542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192600 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192724.P5074973213570361542

/-! ## A192724.P2065693900040231585

`A192600(n+1)-char[A026354(n+1)]`
-/

namespace A192724.P2065693900040231585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026354 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192600 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192724.P2065693900040231585

/-! ## A192724.P16913406854092166568

`A192600(n+1)-A001222(A192596(n+1))`
-/

namespace A192724.P16913406854092166568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192600 (n + 1) - A001222 (A192596 (n + 1)).toNat

end

end A192724.P16913406854092166568

/-!
# A192725: Number of nXnXn triangular 0..2 arrays with each element equal to at least one neighbor, containing at least one 2 and with new values 0..2 introduced in row major order.

The programs for A192725, there is no canonical definition to state claims against.
-/

/-! ## A192725.P12114409151273661583

`A192601(n+1)-A192600(n+1)`
-/

namespace A192725.P12114409151273661583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192601 (n + 1) - A192600 (n + 1)

end

end A192725.P12114409151273661583

/-! ## A192725.P2902890588632685606

`A192602(n+1)-(A192726(n+1)+A192600(n+1))`
-/

namespace A192725.P2902890588632685606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192602 (n + 1) - (A192726 (n + 1) + A192600 (n + 1))

end

end A192725.P2902890588632685606

/-!
# A192726: Number of nXnXn triangular 0..3 arrays with each element equal to at least one neighbor, containing at least one 3 and with new values 0..3 introduced in row major order.

The programs for A192726, there is no canonical definition to state claims against.
-/

/-! ## A192726.P16842409693172407207

`A192602(n+1)-A192601(n+1)`
-/

namespace A192726.P16842409693172407207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192602 (n + 1) - A192601 (n + 1)

end

end A192726.P16842409693172407207

/-! ## A192726.P986090601931042424

`A192602(n+1)-(A192725(n+1)+A192600(n+1))`
-/

namespace A192726.P986090601931042424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192602 (n + 1) - (A192725 (n + 1) + A192600 (n + 1))

end

end A192726.P986090601931042424

/-!
# A192727: a(n) = Fibonacci(n-2) + 2*a(n-2) - (n mod 2).

The programs for A192727, the canonical program `A192727.P9848706558009423676` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192727 has offset 0).

The definition of A192727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192727.P9848706558009423676

`A000045(n+1)+A000035(n)-A016116(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192727

/-- `A000045(n+1)+A000035(n)-A016116(n+1)` -/
def P9848706558009423676.Spec : Prop :=
  ∀ n, P9848706558009423676.a n = A192727 n

theorem P9848706558009423676.correct : P9848706558009423676.Spec := by
  intro n
  simp only [A192727]

end A192727

/-! ## A192727.P15061564575166350543

`A028892(n+1)+n%2`
-/

namespace A192727.P15061564575166350543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A192727.P15061564575166350543

namespace A192727

/-- `A028892(n+1)+n%2` -/
def P15061564575166350543.Spec : Prop :=
  ∀ n, P15061564575166350543.a n = A192727 n

end A192727

/-! ## A192727.P11639003524412081366

`A127968(n)-A060546(n)`
-/

namespace A192727.P11639003524412081366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n - A060546 n

end

end A192727.P11639003524412081366

namespace A192727

/-- `A127968(n)-A060546(n)` -/
def P11639003524412081366.Spec : Prop :=
  ∀ n, P11639003524412081366.a n = A192727 n

end A192727

/-! ## A192727.P9587015797721685695

`A127968(n)-∏[A000034(n)]`
-/

namespace A192727.P9587015797721685695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A192727.P9587015797721685695

namespace A192727

/-- `A127968(n)-∏[A000034(n)]` -/
def P9587015797721685695.Spec : Prop :=
  ∀ n, P9587015797721685695.a n = A192727 n

end A192727

/-! ## A192727.P457128781178597689

`A028892(n+1)+A000035(n)`
-/

namespace A192727.P457128781178597689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + A000035 n

end

end A192727.P457128781178597689

namespace A192727

/-- `A028892(n+1)+A000035(n)` -/
def P457128781178597689.Spec : Prop :=
  ∀ n, P457128781178597689.a n = A192727 n

end A192727

/-! ## A192727.P4934714963995292807

`A028892(n+1)+Δ[A004526(n)]`
-/

namespace A192727.P4934714963995292807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + (f1 (n + 1) - f1 n)

end

end A192727.P4934714963995292807

namespace A192727

/-- `A028892(n+1)+Δ[A004526(n)]` -/
def P4934714963995292807.Spec : Prop :=
  ∀ n, P4934714963995292807.a n = A192727 n

end A192727

/-! ## A192727.P2802900418665470193

`A028892(n+1)+Δ[A008619(n)]`
-/

namespace A192727.P2802900418665470193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + (f1 (n + 1) - f1 n)

end

end A192727.P2802900418665470193

namespace A192727

/-- `A028892(n+1)+Δ[A008619(n)]` -/
def P2802900418665470193.Spec : Prop :=
  ∀ n, P2802900418665470193.a n = A192727 n

end A192727

/-! ## A192727.P2150493618799804140

`A028892(n+1)+char[A005408(n)]`
-/

namespace A192727.P2150493618799804140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192727.P2150493618799804140

namespace A192727

/-- `A028892(n+1)+char[A005408(n)]` -/
def P2150493618799804140.Spec : Prop :=
  ∀ n, P2150493618799804140.a n = A192727 n

end A192727

/-! ## A192727.P2862994144774830090

`A059841(n+1)+A028892(n+1)`
-/

namespace A192727.P2862994144774830090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A028892 (n + 1)

end

end A192727.P2862994144774830090

namespace A192727

/-- `A059841(n+1)+A028892(n+1)` -/
def P2862994144774830090.Spec : Prop :=
  ∀ n, P2862994144774830090.a n = A192727 n

end A192727

/-! ## A192727.P1600262641808727401

`A028892(n+1)+char[A000265(n+1)]`
-/

namespace A192727.P1600262641808727401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192727.P1600262641808727401

namespace A192727

/-- `A028892(n+1)+char[A000265(n+1)]` -/
def P1600262641808727401.Spec : Prop :=
  ∀ n, P1600262641808727401.a n = A192727 n

end A192727

/-! ## A192727.P18261829106951019395

`A038189(2*n+1)+A028892(n+1)`
-/

namespace A192727.P18261829106951019395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (2 * n + 1) + A028892 (n + 1)

end

end A192727.P18261829106951019395

namespace A192727

/-- `A038189(2*n+1)+A028892(n+1)` -/
def P18261829106951019395.Spec : Prop :=
  ∀ n, P18261829106951019395.a n = A192727 n

end A192727

/-! ## A192727.P4672298561041042700

`A004526(n+1)+A028892(n+1)-A004526(n)`
-/

namespace A192727.P4672298561041042700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A028892 (n + 1) - A004526 n)

end

end A192727.P4672298561041042700

namespace A192727

/-- `A004526(n+1)+A028892(n+1)-A004526(n)` -/
def P4672298561041042700.Spec : Prop :=
  ∀ n, P4672298561041042700.a n = A192727 n

end A192727

/-! ## A192727.P9641784959304144325

`A005673(n)-a(n-1)` with `a(0)=0`
-/

namespace A192727.P9641784959304144325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005673 n - a (n - 1)

end

end A192727.P9641784959304144325

namespace A192727

/-- `A005673(n)-a(n-1)` -/
def P9641784959304144325.Spec : Prop :=
  ∀ n, P9641784959304144325.a n = A192727 n

end A192727

/-! ## A192727.P14091744221607683240

`A079284(n)-A052952(n)`
-/

namespace A192727.P14091744221607683240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n - A052952 n

end

end A192727.P14091744221607683240

namespace A192727

/-- `A079284(n)-A052952(n)` -/
def P14091744221607683240.Spec : Prop :=
  ∀ n, P14091744221607683240.a n = A192727 n

end A192727

/-! ## A192727.P11385421041988577382

`A295723(n)-A062114(n)`
-/

namespace A192727.P11385421041988577382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - A062114 n

end

end A192727.P11385421041988577382

namespace A192727

/-- `A295723(n)-A062114(n)` -/
def P11385421041988577382.Spec : Prop :=
  ∀ n, P11385421041988577382.a n = A192727 n

end A192727

/-! ## A192727.P99605833768532812

`A079284(n)-∑[A008346(n)]`
-/

namespace A192727.P99605833768532812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192727.P99605833768532812

namespace A192727

/-- `A079284(n)-∑[A008346(n)]` -/
def P99605833768532812.Spec : Prop :=
  ∀ n, P99605833768532812.a n = A192727 n

end A192727

/-! ## A192727.P1931097056297499915

`A098108(n²)+A028892(n+1)`
-/

namespace A192727.P1931097056297499915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (n ^ 2) + A028892 (n + 1)

end

end A192727.P1931097056297499915

namespace A192727

/-- `A098108(n²)+A028892(n+1)` -/
def P1931097056297499915.Spec : Prop :=
  ∀ n, P1931097056297499915.a n = A192727 n

end A192727

/-!
# A192728: G.f. satisfies: A(x) = 1/(1 - x*A(x)/(1 - x^2*A(x)/(1 - x^3*A(x)/(1 - x^4*A(x)/(1 - ...))))), a recursive continued fraction.

The programs for A192728, there is no canonical definition to state claims against.
-/

/-! ## A192728.P12151999421898362931

`A110656(3*A001892(n+2))`
-/

namespace A192728.P12151999421898362931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A001892 (n + 2)).toNat

end

end A192728.P12151999421898362931

/-! ## A192728.P41076056058809056

`A119370(n)+A083895(A326521(n))`
-/

namespace A192728.P41076056058809056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 n + A083895 (A326521 n).toNat

end

end A192728.P41076056058809056

/-! ## A192728.P4201796162611649104

`A394498(n)-A060953(A275780(n))`
-/

namespace A192728.P4201796162611649104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394498 n - A060953 (A275780 n).toNat

end

end A192728.P4201796162611649104

/-! ## A192728.P7054580555462213117

`A394498(n)-A351907(A004114(n))`
-/

namespace A192728.P7054580555462213117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394498 n - A351907 (A004114 n).toNat

end

end A192728.P7054580555462213117

/-!
# A192729: G.f. satisfies: A(x) = 1/(1 - x*A(x)^2/(1 - x^2*A(x)^2/(1 - x^3*A(x)^2/(1 - x^4*A(x)^2/(1 - ...))))), a recursive continued fraction.

The programs for A192729, there is no canonical definition to state claims against.
-/

/-! ## A192729.P17127818155622925637

`∑[A172266(A258799(n))]+1`
-/

namespace A192729.P17127818155622925637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (A258799 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192729.P17127818155622925637

/-! ## A192729.P11634762828248967996

`A008620(or(A042948(n), A050151(n)))`
-/

namespace A192729.P11634762828248967996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.lor (A042948 n) (A050151 n)).toNat

end

end A192729.P11634762828248967996

/-! ## A192729.P12793470930484783464

`xor(A067169(A022916(n)), A193112(n))`
-/

namespace A192729.P12793470930484783464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067169 ((A022916 n).toNat + 11)) (A193112 n)

end

end A192729.P12793470930484783464

/-!
# A192730: G.f. satisfies: A(x) = 1/(1 - x*A(x)^3/(1 - x^2*A(x)^3/(1 - x^3*A(x)^3/(1 - x^4*A(x)^3/(1 - ...))))), a recursive continued fraction.

The programs for A192730, there is no canonical definition to state claims against.
-/

/-! ## A192730.P17923124375712787531

`A156077(2*A193113(n))`
-/

namespace A192730.P17923124375712787531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (2 * A193113 n).toNat

end

end A192730.P17923124375712787531

/-! ## A192730.P1522695478079356327

`A070548(Δ[Δ[A223905(n)]])`
-/

namespace A192730.P1522695478079356327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (f1 (n + 1) - f1 n).toNat

end

end A192730.P1522695478079356327

/-!
# A192731: Euler transform is 1 / (q j(q)) where j is j-function (A000521).

The programs for A192731, there is no canonical definition to state claims against.
-/

/-! ## A192731.P6204993791894865245

`3*(A110163(n+1)-8)`
-/

namespace A192731.P6204993791894865245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A110163 (n + 1) - 8)

end

end A192731.P6204993791894865245

/-!
# A192732: A weight 1/2 meromorphic modular form associated with the j-function.

The programs for A192732, there is no canonical definition to state claims against.
-/

/-! ## A192732.P8790488118670343833

`3-A382735(A020736(n))`
-/

namespace A192732.P8790488118670343833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A382735 (A020736 n).toNat

end

end A192732.P8790488118670343833

/-!
# A192735: Left edge of the triangle in A033291.

The programs for A192735, the canonical program `A192735.P11621515788355129872` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192735 has offset 1).

The definition of A192735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192735.P11621515788355129872

`(n+1)*(floor(n²/3)+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192735

/-- `(n+1)*(floor(n²/3)+1)` -/
def P11621515788355129872.Spec : Prop :=
  ∀ n, P11621515788355129872.a n = A192735 (n + 1)

theorem P11621515788355129872.correct : P11621515788355129872.Spec := by
  intro n
  simp only [A192735, Nat.add_sub_cancel]

end A192735

/-! ## A192735.P4464416155053656212

`A192736(n+1)-∑[2*n]`
-/

namespace A192735.P4464416155053656212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192736 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192735.P4464416155053656212

namespace A192735

/-- `A192736(n+1)-∑[2*n]` -/
def P4464416155053656212.Spec : Prop :=
  ∀ n, P4464416155053656212.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P8947605031566279621

`(n+1)*A000212(n)+n+1`
-/

namespace A192735.P8947605031566279621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000212 n + (n + 1 : ℤ)

end

end A192735.P8947605031566279621

namespace A192735

/-- `(n+1)*A000212(n)+n+1` -/
def P8947605031566279621.Spec : Prop :=
  ∀ n, P8947605031566279621.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P3647060882471438653

`(n+1)*∑[A004523(n)]+n+1`
-/

namespace A192735.P3647060882471438653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A192735.P3647060882471438653

namespace A192735

/-- `(n+1)*∑[A004523(n)]+n+1` -/
def P3647060882471438653.Spec : Prop :=
  ∀ n, P3647060882471438653.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P6825394004154921411

`A007980(n)+n*A000212(n)`
-/

namespace A192735.P6825394004154921411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n + (n : ℤ) * A000212 n

end

end A192735.P6825394004154921411

namespace A192735

/-- `A007980(n)+n*A000212(n)` -/
def P6825394004154921411.Spec : Prop :=
  ∀ n, P6825394004154921411.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P10390046596191679065

`(n+1)*(A056829(n)+A056827(n))+1+n`
-/

namespace A192735.P10390046596191679065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A056829 n + A056827 n) + 1 + (n : ℤ)

end

end A192735.P10390046596191679065

namespace A192735

/-- `(n+1)*(A056829(n)+A056827(n))+1+n` -/
def P10390046596191679065.Spec : Prop :=
  ∀ n, P10390046596191679065.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P1775456701784326984

`A001399(2*n)+n*A000212(n)`
-/

namespace A192735.P1775456701784326984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) + (n : ℤ) * A000212 n

end

end A192735.P1775456701784326984

namespace A192735

/-- `A001399(2*n)+n*A000212(n)` -/
def P1775456701784326984.Spec : Prop :=
  ∀ n, P1775456701784326984.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P10682242093003593250

`(n+1)*A069905(2*n)+n+1`
-/

namespace A192735.P10682242093003593250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069905 (2 * n) + (n + 1 : ℤ)

end

end A192735.P10682242093003593250

namespace A192735

/-- `(n+1)*A069905(2*n)+n+1` -/
def P10682242093003593250.Spec : Prop :=
  ∀ n, P10682242093003593250.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P15783153131854961995

`A001399(2*n)+n*A069905(2*n)`
-/

namespace A192735.P15783153131854961995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) + (n : ℤ) * A069905 (2 * n)

end

end A192735.P15783153131854961995

namespace A192735

/-- `A001399(2*n)+n*A069905(2*n)` -/
def P15783153131854961995.Spec : Prop :=
  ∀ n, P15783153131854961995.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P17177263004133320460

`A008796(2*n)+n*A069905(2*n)`
-/

namespace A192735.P17177263004133320460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (2 * n) + (n : ℤ) * A069905 (2 * n)

end

end A192735.P17177263004133320460

namespace A192735

/-- `A008796(2*n)+n*A069905(2*n)` -/
def P17177263004133320460.Spec : Prop :=
  ∀ n, P17177263004133320460.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P5856532710609234258

`A033291(∑[n]+1)`
-/

namespace A192735.P5856532710609234258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A192735.P5856532710609234258

namespace A192735

/-- `A033291(∑[n]+1)` -/
def P5856532710609234258.Spec : Prop :=
  ∀ n, P5856532710609234258.a n = A192735 (n + 1)

end A192735

/-! ## A192735.P12677834988490536979

`record[A033291(n+1)/A033282(n+3)]`
-/

namespace A192735.P12677834988490536979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033291 (n + 1) : ℚ) / (A033282 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192735.P12677834988490536979

namespace A192735

/-- `record[A033291(n+1)/A033282(n+3)]` -/
def P12677834988490536979.Spec : Prop :=
  ∀ n, P12677834988490536979.a n = (A192735 (n + 1) : ℚ)

end A192735

/-! ## A192735.P7455979958022570198

`abs(xor(n, -1)*A008620(A000290(n)))`
-/

namespace A192735.P7455979958022570198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A008620 (A000290 n).toNat|

end

end A192735.P7455979958022570198

namespace A192735

/-- `abs(xor(n, -1)*A008620(A000290(n)))` -/
def P7455979958022570198.Spec : Prop :=
  ∀ n, P7455979958022570198.a n = A192735 (n + 1)

end A192735

/-!
# A192736: Right edge of the triangle in A033291.

The programs for A192736, the canonical program `A192736.P3939185808499211140` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192736 has offset 1).

The definition of A192736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192736.P3939185808499211140

`(n+1)*∑[ceil(Δ[n²]/3)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192736

/-- `(n+1)*∑[ceil(Δ[n²]/3)]` -/
def P3939185808499211140.Spec : Prop :=
  ∀ n, P3939185808499211140.a n = A192736 (n + 1)

theorem P3939185808499211140.correct : P3939185808499211140.Spec := by
  intro n
  simp only [A192736, Nat.add_sub_cancel]

end A192736

/-! ## A192736.P4801826368156199938

`floor((n+1)*∑[a(n-3)+2])` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A192736.P4801826368156199938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192736.P4801826368156199938

namespace A192736

/-- `floor((n+1)*∑[a(n-3)+2])` -/
def P4801826368156199938.Spec : Prop :=
  ∀ n, (P4801826368156199938.a n : ℤ) = A192736 (n + 1)

end A192736

/-! ## A192736.P6796063545877343196

`record[ceil(xor(1, n)/2)*round((n+3)²/12)]`
-/

namespace A192736.P6796063545877343196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ * SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192736.P6796063545877343196

namespace A192736

/-- `record[ceil(xor(1, n)/2)*round((n+3)²/12)]` -/
def P6796063545877343196.Spec : Prop :=
  ∀ n, P6796063545877343196.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P7964749750504756432

`record[floor(((n+3)²/3+1)/4)*round(xor(1, n)/2)]`
-/

namespace A192736.P7964749750504756432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 3) ^ 2 : ℚ) / 3 + 1) / 4⌋ * SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192736.P7964749750504756432

namespace A192736

/-- `record[floor(((n+3)²/3+1)/4)*round(xor(1, n)/2)]` -/
def P7964749750504756432.Spec : Prop :=
  ∀ n, P7964749750504756432.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P7400355168651410312

`A192735(n+1)+∑[2*n]`
-/

namespace A192736.P7400355168651410312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192735 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192736.P7400355168651410312

namespace A192736

/-- `A192735(n+1)+∑[2*n]` -/
def P7400355168651410312.Spec : Prop :=
  ∀ n, P7400355168651410312.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P2984920245596477428

`lcm(n+1, (n+1)*A007980(n))`
-/

namespace A192736.P2984920245596477428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * A007980 n)

end

end A192736.P2984920245596477428

namespace A192736

/-- `lcm(n+1, (n+1)*A007980(n))` -/
def P2984920245596477428.Spec : Prop :=
  ∀ n, (P2984920245596477428.a n : ℤ) = A192736 (n + 1)

end A192736

/-! ## A192736.P3660253723599795903

`(n+1)²+(n+1)*A000212(n)`
-/

namespace A192736.P3660253723599795903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (n + 1 : ℤ) * A000212 n

end

end A192736.P3660253723599795903

namespace A192736

/-- `(n+1)²+(n+1)*A000212(n)` -/
def P3660253723599795903.Spec : Prop :=
  ∀ n, P3660253723599795903.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P3751832750709554277

`abs((n+1)*Δ[A060999(n)])`
-/

namespace A192736.P3751832750709554277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A192736.P3751832750709554277

namespace A192736

/-- `abs((n+1)*Δ[A060999(n)])` -/
def P3751832750709554277.Spec : Prop :=
  ∀ n, P3751832750709554277.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P2148384802659952092

`record[round(xor(1, n)/2)*A001399(n)]`
-/

namespace A192736.P2148384802659952092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) * A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192736.P2148384802659952092

namespace A192736

/-- `record[round(xor(1, n)/2)*A001399(n)]` -/
def P2148384802659952092.Spec : Prop :=
  ∀ n, P2148384802659952092.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P879174943177710415

`A001399(2*n)/tan(acot(n+1))`
-/

namespace A192736.P879174943177710415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001399 (2 * n) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A192736.P879174943177710415

namespace A192736

/-- `A001399(2*n)/tan(acot(n+1))` -/
def P879174943177710415.Spec : Prop :=
  ∀ n, P879174943177710415.a n = (A192736 (n + 1) : ℝ)

end A192736

/-! ## A192736.P13730448692560844949

`record[∑[char[2*n]]*A008796(n)]`
-/

namespace A192736.P13730448692560844949
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A008796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192736.P13730448692560844949

namespace A192736

/-- `record[∑[char[2*n]]*A008796(n)]` -/
def P13730448692560844949.Spec : Prop :=
  ∀ n, P13730448692560844949.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P8495442155572969067

`record[A008796(n)*A242112(n)]`
-/

namespace A192736.P8495442155572969067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n * A242112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192736.P8495442155572969067

namespace A192736

/-- `record[A008796(n)*A242112(n)]` -/
def P8495442155572969067.Spec : Prop :=
  ∀ n, P8495442155572969067.a n = A192736 (n + 1)

end A192736

/-! ## A192736.P17375126670001861127

`A033291(∑[n+1])`
-/

namespace A192736.P17375126670001861127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192736.P17375126670001861127

namespace A192736

/-- `A033291(∑[n+1])` -/
def P17375126670001861127.Spec : Prop :=
  ∀ n, P17375126670001861127.a n = A192736 (n + 1)

end A192736

/-!
# A192737: G.f. satisfies: A(x) = 1/(1 - x*A(x)/(1 - x*A(x)^2/(1 - x*A(x)^3/(1 - x*A(x)^4/(1 - ...))))), a recursive continued fraction.

The programs for A192737, there is no canonical definition to state claims against.
-/

/-! ## A192737.P7554122329958428682

`A131717(A000260(n))`
-/

namespace A192737.P7554122329958428682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A000260 n).toNat

end

end A192737.P7554122329958428682

/-! ## A192737.P13587101914504890147

`A131717(A146305(∑[n]))`
-/

namespace A192737.P13587101914504890147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A146305 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A192737.P13587101914504890147

/-! ## A192737.P17945144005685680654

`A128054(A000260(n)+1)`
-/

namespace A192737.P17945144005685680654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128054 (A000260 n + 1).toNat

end

end A192737.P17945144005685680654

/-!
# A192738: G.f. satisfies: A(x) = 1/(1 - x*A(x)/(1 - x^2*A(x)/(1 - x^4*A(x)/(1 - x^8*A(x)/(1 - ...))))), a recursive continued fraction.

The programs for A192738, there is no canonical definition to state claims against.
-/

/-! ## A192738.P7043778082037743741

`A119370(n)+A025466(A027072(n))`
-/

namespace A192738.P7043778082037743741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 n + A025466 (A027072 n).toNat

end

end A192738.P7043778082037743741

/-! ## A192738.P3212918860441805088

`A119370(n)+A055641(A001181(n))`
-/

namespace A192738.P3212918860441805088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 n + A055641 (A001181 n).toNat

end

end A192738.P3212918860441805088

/-! ## A192738.P15337476734700654209

`A119370(n)+A025466(A033453(n))`
-/

namespace A192738.P15337476734700654209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 n + A025466 (A033453 n).toNat

end

end A192738.P15337476734700654209

/-! ## A192738.P16391312990869378468

`A119370(n)+A073490(A003266(n))`
-/

namespace A192738.P16391312990869378468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 n + A073490 (A003266 n).toNat

end

end A192738.P16391312990869378468

/-!
# A192739: G.f. satisfies: A(x) = 1/(1 - x*A(x)/(1 - x*A(x)^2/(1 - x*A(x)^4/(1 - x*A(x)^8/(1 - ...))))), a recursive continued fraction.

The programs for A192739, there is no canonical definition to state claims against.
-/

/-! ## A192739.P12146720531652222088

`A088368(n)-A244158(A184983(2*n))`
-/

namespace A192739.P12146720531652222088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088368 n - A244158 (A184983 (2 * n)).toNat

end

end A192739.P12146720531652222088

/-! ## A192739.P6370732083266587699

`A110656(3*A086618(n))`
-/

namespace A192739.P6370732083266587699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A086618 n).toNat

end

end A192739.P6370732083266587699

/-!
# A192740: Spanish version of A060403 - Each term is the previous term plus the number of letters in the previous number, as conventionally spelled out in Spanish.

The programs for A192740, there is no canonical definition to state claims against.
-/

/-! ## A192740.P11050783613949735330

`A011762(a(n-1))+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A192740.P11050783613949735330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A011762 (a (n - 1)).toNat + a (n - 1)

end

end A192740.P11050783613949735330

/-! ## A192740.P8080539507692743877

`record[A003136(n+2)/A172339(2*n)]`
-/

namespace A192740.P8080539507692743877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003136 (n + 2) : ℚ) / (A172339 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192740.P8080539507692743877

/-! ## A192740.P1651845632524957622

`A003004(A126430(n+1)-A228275(n))`
-/

namespace A192740.P1651845632524957622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A126430 (n + 1) - A228275 n).toNat

end

end A192740.P1651845632524957622

/-!
# A192742: Number of matchings in the n-antiprism graph.

The programs for A192742, the canonical program `A192742.P5229652665177091620` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192742 has offset 1).

The definition of A192742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192742.P5229652665177091620

`3*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=3, a(1)=15, a(2)=51, a(3)=191`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192742

/-- `3*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P5229652665177091620.Spec : Prop :=
  ∀ n, P5229652665177091620.a n = A192742 (n + 1)

theorem P5229652665177091620.correct : P5229652665177091620.Spec := by
  intro n
  simp only [A192742, Nat.add_sub_cancel]

end A192742

/-! ## A192742.P15244674515947690354

`A073817(2*(n+1))`
-/

namespace A192742.P15244674515947690354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (2 * (n + 1))

end

end A192742.P15244674515947690354

namespace A192742

/-- `A073817(2*(n+1))` -/
def P15244674515947690354.Spec : Prop :=
  ∀ n, P15244674515947690354.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P6129835697135366943

`A001648(2*(n+1))`
-/

namespace A192742.P6129835697135366943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (2 * (n + 1))

end

end A192742.P6129835697135366943

namespace A192742

/-- `A001648(2*(n+1))` -/
def P6129835697135366943.Spec : Prop :=
  ∀ n, P6129835697135366943.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P16905223805444979448

`record[(-1)^n*A073817(n)-round(cos(4)^n)]`
-/

namespace A192742.P16905223805444979448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073817 n - SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P16905223805444979448

namespace A192742

/-- `record[(-1)^n*A073817(n)-round(cos(4)^n)]` -/
def P16905223805444979448.Spec : Prop :=
  ∀ n, P16905223805444979448.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P174838760322035194

`record[A001648(A014681(n+1))]`
-/

namespace A192742.P174838760322035194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P174838760322035194

namespace A192742

/-- `record[A001648(A014681(n+1))]` -/
def P174838760322035194.Spec : Prop :=
  ∀ n, P174838760322035194.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P14225334526525624277

`record[A073817(A004442(n)+1)]`
-/

namespace A192742.P14225334526525624277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P14225334526525624277

namespace A192742

/-- `record[A073817(A004442(n)+1)]` -/
def P14225334526525624277.Spec : Prop :=
  ∀ n, P14225334526525624277.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P15859621084763302223

`record[A073817(A120241(n+2))]`
-/

namespace A192742.P15859621084763302223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (A120241 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P15859621084763302223

namespace A192742

/-- `record[A073817(A120241(n+2))]` -/
def P15859621084763302223.Spec : Prop :=
  ∀ n, P15859621084763302223.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P9507942079759006832

`record[A073817(2*A263274(n))]`
-/

namespace A192742.P9507942079759006832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (2 * A263274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P9507942079759006832

namespace A192742

/-- `record[A073817(2*A263274(n))]` -/
def P9507942079759006832.Spec : Prop :=
  ∀ n, P9507942079759006832.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P340177074388747903

`record[A001648(A000265(n+1)+1)]`
-/

namespace A192742.P340177074388747903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P340177074388747903

namespace A192742

/-- `record[A001648(A000265(n+1)+1)]` -/
def P340177074388747903.Spec : Prop :=
  ∀ n, P340177074388747903.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P8199476782095602028

`record[A073817(A000265(n+1)+1)]`
-/

namespace A192742.P8199476782095602028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P8199476782095602028

namespace A192742

/-- `record[A073817(A000265(n+1)+1)]` -/
def P8199476782095602028.Spec : Prop :=
  ∀ n, P8199476782095602028.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P7799110018253991789

`or(A000038(n), A001648(Δ[n²]+1))`
-/

namespace A192742.P7799110018253991789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A001648 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A192742.P7799110018253991789

namespace A192742

/-- `or(A000038(n), A001648(Δ[n²]+1))` -/
def P7799110018253991789.Spec : Prop :=
  ∀ n, P7799110018253991789.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P11323739964820015791

`ratio[A073817(2*n)]*A073817(2*n)`
-/

namespace A192742.P11323739964820015791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A073817 (2 * n) : ℚ)

end

end A192742.P11323739964820015791

namespace A192742

/-- `ratio[A073817(2*n)]*A073817(2*n)` -/
def P11323739964820015791.Spec : Prop :=
  ∀ n, P11323739964820015791.a n = (A192742 (n + 1) : ℚ)

end A192742

/-! ## A192742.P6672104287765266450

`A075112(2*(n+1))+A075112(2*n)`
-/

namespace A192742.P6672104287765266450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075112 (2 * (n + 1)) + A075112 (2 * n)

end

end A192742.P6672104287765266450

namespace A192742

/-- `A075112(2*(n+1))+A075112(2*n)` -/
def P6672104287765266450.Spec : Prop :=
  ∀ n, P6672104287765266450.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P5014679781099292379

`A073817(n+2+n)+A000007(n+1)`
-/

namespace A192742.P5014679781099292379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (n + 2 + n) + A000007 (n + 1)

end

end A192742.P5014679781099292379

namespace A192742

/-- `A073817(n+2+n)+A000007(n+1)` -/
def P5014679781099292379.Spec : Prop :=
  ∀ n, P5014679781099292379.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P740176094074963214

`A073817(A004275(n+2))/gcd(n, n+1)`
-/

namespace A192742.P740176094074963214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 (A004275 (n + 2)).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A192742.P740176094074963214

namespace A192742

/-- `A073817(A004275(n+2))/gcd(n, n+1)` -/
def P740176094074963214.Spec : Prop :=
  ∀ n, P740176094074963214.a n = (A192742 (n + 1) : ℚ)

end A192742

/-! ## A192742.P2393771237869982605

`A135492(2*(n+1))-A000288(2*n+1)`
-/

namespace A192742.P2393771237869982605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (2 * (n + 1)) - A000288 (2 * n + 1)

end

end A192742.P2393771237869982605

namespace A192742

/-- `A135492(2*(n+1))-A000288(2*n+1)` -/
def P2393771237869982605.Spec : Prop :=
  ∀ n, P2393771237869982605.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P4009427189242844583

`or(A000038(n), A073817(A004275(n+2)))`
-/

namespace A192742.P4009427189242844583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A073817 (A004275 (n + 2)).toNat)

end

end A192742.P4009427189242844583

namespace A192742

/-- `or(A000038(n), A073817(A004275(n+2)))` -/
def P4009427189242844583.Spec : Prop :=
  ∀ n, P4009427189242844583.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P18278000235943396193

`record[A074081(n+2)]`
-/

namespace A192742.P18278000235943396193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P18278000235943396193

namespace A192742

/-- `record[A074081(n+2)]` -/
def P18278000235943396193.Spec : Prop :=
  ∀ n, P18278000235943396193.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P913020957891622116

`A074081(2*(n+1))`
-/

namespace A192742.P913020957891622116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074081 (2 * (n + 1))

end

end A192742.P913020957891622116

namespace A192742

/-- `A074081(2*(n+1))` -/
def P913020957891622116.Spec : Prop :=
  ∀ n, P913020957891622116.a n = A192742 (n + 1)

end A192742

/-! ## A192742.P14273952610556318029

`record[A001648(A099375(n)+1)]`
-/

namespace A192742.P14273952610556318029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192742.P14273952610556318029

namespace A192742

/-- `record[A001648(A099375(n)+1)]` -/
def P14273952610556318029.Spec : Prop :=
  ∀ n, P14273952610556318029.a n = A192742 (n + 1)

end A192742

/-!
# A192744: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192744, there is no canonical definition to state claims against.
-/

/-! ## A192744.P12651894879976550453

`Δ[(n-1)!+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A192744.P12651894879976550453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.factorial ((n : ℤ) - 1).toNat + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A192744.P12651894879976550453

/-! ## A192744.P17522739592820056203

`Δ[A192745(n)]`
-/

namespace A192744.P17522739592820056203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192744.P17522739592820056203

/-! ## A192744.P8510226889404384478

`A192745(n+1)-A192745(n)`
-/

namespace A192744.P8510226889404384478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192745 (n + 1) - A192745 n

end

end A192744.P8510226889404384478

/-! ## A192744.P14165220264835215023

`record[A192745(A127648(n))]-A192745(n)`
-/

namespace A192744.P14165220264835215023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192745 (A127648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A192745 n

end

end A192744.P14165220264835215023

/-!
# A192745: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192745, there is no canonical definition to state claims against.
-/

/-! ## A192745.P5856170420313896508

`(n-1)!+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192745.P5856170420313896508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.factorial ((n : ℤ) - 1).toNat + (a (n - 1) + a (n - 2))

end

end A192745.P5856170420313896508

/-! ## A192745.P54960826566900411

`∑[A192744(n)]-A192744(n)`
-/

namespace A192745.P54960826566900411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192744 n

end

end A192745.P54960826566900411

/-! ## A192745.P11847246642952750765

`A000045(n+1)+A392898(n)-A192744(n)`
-/

namespace A192745.P11847246642952750765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A392898 n - A192744 n)

end

end A192745.P11847246642952750765

/-! ## A192745.P3348119950620431767

`A192744(n+1)-(n+1)!`
-/

namespace A192745.P3348119950620431767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192744 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A192745.P3348119950620431767

/-! ## A192745.P9918454171166226743

`A192744(n+1)-record[A047920(n)]`
-/

namespace A192745.P9918454171166226743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192744 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192745.P9918454171166226743

/-!
# A192746: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192746, the canonical program `A192746.P8587307315356507195` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192746 has offset 0).

The definition of A192746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192746.P8587307315356507195

`a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192746

/-- `a(n-1)+a(n-2)+3` -/
def P8587307315356507195.Spec : Prop :=
  ∀ n, (P8587307315356507195.a n : ℤ) = A192746 n

theorem P8587307315356507195.correct : P8587307315356507195.Spec := by
  intro n
  simp only [A192746]

end A192746

/-! ## A192746.P12659880313204890331

`a(n-1)-xor(-3, a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A192746.P12659880313204890331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - Int.xor (-3) (a (n - 2))

end

end A192746.P12659880313204890331

namespace A192746

/-- `a(n-1)-xor(-3, a(n-2))` -/
def P12659880313204890331.Spec : Prop :=
  ∀ n, P12659880313204890331.a n = A192746 n

end A192746

/-! ## A192746.P14308854008084524389

`4-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A192746.P14308854008084524389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 - (1 - a (n - 1) - a (n - 2))

end

end A192746.P14308854008084524389

namespace A192746

/-- `4-floor(1-a(n-1)-a(n-2))` -/
def P14308854008084524389.Spec : Prop :=
  ∀ n, P14308854008084524389.a n = A192746 n

end A192746

/-! ## A192746.P16904089015877367060

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=1, a(1)=5`
-/

namespace A192746.P16904089015877367060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192746.P16904089015877367060

namespace A192746

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P16904089015877367060.Spec : Prop :=
  ∀ n, P16904089015877367060.a n = A192746 n

end A192746

/-! ## A192746.P1790117263022847813

`A022406(n)-2`
-/

namespace A192746.P1790117263022847813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n - 2

end

end A192746.P1790117263022847813

namespace A192746

/-- `A022406(n)-2` -/
def P1790117263022847813.Spec : Prop :=
  ∀ n, P1790117263022847813.a n = A192746 n

end A192746

/-! ## A192746.P17823416934531023603

`∑[A022087(n)]+1`
-/

namespace A192746.P17823416934531023603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192746.P17823416934531023603

namespace A192746

/-- `∑[A022087(n)]+1` -/
def P17823416934531023603.Spec : Prop :=
  ∀ n, P17823416934531023603.a n = A192746 n

end A192746

/-! ## A192746.P18346308705919535624

`A022403(n+1)-2`
-/

namespace A192746.P18346308705919535624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 1) - 2

end

end A192746.P18346308705919535624

namespace A192746

/-- `A022403(n+1)-2` -/
def P18346308705919535624.Spec : Prop :=
  ∀ n, P18346308705919535624.a n = A192746 n

end A192746

/-! ## A192746.P6578851689705104247

`A355288(n+1)-2`
-/

namespace A192746.P6578851689705104247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 (n + 1) - 2

end

end A192746.P6578851689705104247

namespace A192746

/-- `A355288(n+1)-2` -/
def P6578851689705104247.Spec : Prop :=
  ∀ n, P6578851689705104247.a n = A192746 n

end A192746

/-! ## A192746.P8160900330508944212

`A022087(n+2)-3`
-/

namespace A192746.P8160900330508944212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 2) - 3

end

end A192746.P8160900330508944212

namespace A192746

/-- `A022087(n+2)-3` -/
def P8160900330508944212.Spec : Prop :=
  ∀ n, P8160900330508944212.a n = A192746 n

end A192746

/-! ## A192746.P18110984124107797748

`∑[A022091(n)/2]+1`
-/

namespace A192746.P18110984124107797748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022091 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192746.P18110984124107797748

namespace A192746

/-- `∑[A022091(n)/2]+1` -/
def P18110984124107797748.Spec : Prop :=
  ∀ n, P18110984124107797748.a n = (A192746 n : ℚ)

end A192746

/-! ## A192746.P7841357866448293811

`∑[2*A055389(n)]-1`
-/

namespace A192746.P7841357866448293811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192746.P7841357866448293811

namespace A192746

/-- `∑[2*A055389(n)]-1` -/
def P7841357866448293811.Spec : Prop :=
  ∀ n, P7841357866448293811.a n = A192746 n

end A192746

/-! ## A192746.P11085000349184174753

`∑[4*A000045(n)]+1`
-/

namespace A192746.P11085000349184174753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192746.P11085000349184174753

namespace A192746

/-- `∑[4*A000045(n)]+1` -/
def P11085000349184174753.Spec : Prop :=
  ∀ n, P11085000349184174753.a n = A192746 n

end A192746

/-! ## A192746.P3482029893941915127

`2*A001595(n+1)-1`
-/

namespace A192746.P3482029893941915127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001595 (n + 1) - 1

end

end A192746.P3482029893941915127

namespace A192746

/-- `2*A001595(n+1)-1` -/
def P3482029893941915127.Spec : Prop :=
  ∀ n, P3482029893941915127.a n = A192746 n

end A192746

/-! ## A192746.P12250322745666876405

`A179999(2*n+3)-1`
-/

namespace A192746.P12250322745666876405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179999 (2 * n + 3) - 1

end

end A192746.P12250322745666876405

namespace A192746

/-- `A179999(2*n+3)-1` -/
def P12250322745666876405.Spec : Prop :=
  ∀ n, P12250322745666876405.a n = A192746 n

end A192746

/-! ## A192746.P2068694504508281571

`4*A000045(n+2)-3`
-/

namespace A192746.P2068694504508281571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) - 3

end

end A192746.P2068694504508281571

namespace A192746

/-- `4*A000045(n+2)-3` -/
def P2068694504508281571.Spec : Prop :=
  ∀ n, P2068694504508281571.a n = A192746 n

end A192746

/-! ## A192746.P897206925102243327

`A022318(n)+A001911(n)`
-/

namespace A192746.P897206925102243327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A001911 n

end

end A192746.P897206925102243327

namespace A192746

/-- `A022318(n)+A001911(n)` -/
def P897206925102243327.Spec : Prop :=
  ∀ n, P897206925102243327.a n = A192746 n

end A192746

/-! ## A192746.P3400577534658707230

`A022308(n)+A014739(n)`
-/

namespace A192746.P3400577534658707230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A014739 n

end

end A192746.P3400577534658707230

namespace A192746

/-- `A022308(n)+A014739(n)` -/
def P3400577534658707230.Spec : Prop :=
  ∀ n, P3400577534658707230.a n = A192746 n

end A192746

/-! ## A192746.P12779027630276614092

`A111314(n)+A022309(n)`
-/

namespace A192746.P12779027630276614092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + A022309 n

end

end A192746.P12779027630276614092

namespace A192746

/-- `A111314(n)+A022309(n)` -/
def P12779027630276614092.Spec : Prop :=
  ∀ n, P12779027630276614092.a n = A192746 n

end A192746

/-!
# A192747: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192747, the canonical program `A192747.P1891428249514102715` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192747 has offset 1).

The definition of A192747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192747.P1891428249514102715

`∑[a(n-1)+a(n-2)+3]` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192747

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P1891428249514102715.Spec : Prop :=
  ∀ n, (P1891428249514102715.a n : ℤ) = A192747 (n + 1)

theorem P1891428249514102715.correct : P1891428249514102715.Spec := by
  intro n
  simp only [A192747, Nat.add_sub_cancel]

end A192747

/-! ## A192747.P2900026526997269557

`n-∑[a(n-1)-(4-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A192747.P2900026526997269557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (4 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192747.P2900026526997269557

namespace A192747

/-- `n-∑[a(n-1)-(4-a(n-2))]` -/
def P2900026526997269557.Spec : Prop :=
  ∀ n, P2900026526997269557.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P17303505256207513563

`3*n-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192747.P17303505256207513563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 * n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A192747.P17303505256207513563

namespace A192747

/-- `3*n-1+a(n-1)+a(n-2)` -/
def P17303505256207513563.Spec : Prop :=
  ∀ n, P17303505256207513563.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P10923615062842947999

`3*n-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A192747.P10923615062842947999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 * n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A192747.P10923615062842947999

namespace A192747

/-- `3*n-(1-a(n-1)-a(n-2))` -/
def P10923615062842947999.Spec : Prop :=
  ∀ n, P10923615062842947999.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P9199906756203468793

`A192952(n+1)-1`
-/

namespace A192747.P9199906756203468793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 (n + 1) - 1

end

end A192747.P9199906756203468793

namespace A192747

/-- `A192952(n+1)-1` -/
def P9199906756203468793.Spec : Prop :=
  ∀ n, P9199906756203468793.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P7725484900314177741

`2*A192760(n)-n`
-/

namespace A192747.P7725484900314177741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192760 n - (n : ℤ)

end

end A192747.P7725484900314177741

namespace A192747

/-- `2*A192760(n)-n` -/
def P7725484900314177741.Spec : Prop :=
  ∀ n, P7725484900314177741.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P2930018309857357794

`∑[A179999(2*n+1)-1]`
-/

namespace A192747.P2930018309857357794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179999 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192747.P2930018309857357794

namespace A192747

/-- `∑[A179999(2*n+1)-1]` -/
def P2930018309857357794.Spec : Prop :=
  ∀ n, P2930018309857357794.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P5215788008897336594

`∑[2*A019274(n+1)]+n`
-/

namespace A192747.P5215788008897336594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A192747.P5215788008897336594

namespace A192747

/-- `∑[2*A019274(n+1)]+n` -/
def P5215788008897336594.Spec : Prop :=
  ∀ n, P5215788008897336594.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P17819022190622406437

`4*(A000045(n+3)-2)-3*n`
-/

namespace A192747.P17819022190622406437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000045 (n + 3) - 2) - (3 * n : ℤ)

end

end A192747.P17819022190622406437

namespace A192747

/-- `4*(A000045(n+3)-2)-3*n` -/
def P17819022190622406437.Spec : Prop :=
  ∀ n, P17819022190622406437.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P9368155766836370229

`A210730(n)+A192953(n)`
-/

namespace A192747.P9368155766836370229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A192953 n

end

end A192747.P9368155766836370229

namespace A192747

/-- `A210730(n)+A192953(n)` -/
def P9368155766836370229.Spec : Prop :=
  ∀ n, P9368155766836370229.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P6761231906824132667

`A111314(n)+A192951(n)-1`
-/

namespace A192747.P6761231906824132667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + (A192951 n - 1)

end

end A192747.P6761231906824132667

namespace A192747

/-- `A111314(n)+A192951(n)-1` -/
def P6761231906824132667.Spec : Prop :=
  ∀ n, P6761231906824132667.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P15706178988108746461

`A001924(n)+A192761(n)-n`
-/

namespace A192747.P15706178988108746461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (A192761 n - (n : ℤ))

end

end A192747.P15706178988108746461

namespace A192747

/-- `A001924(n)+A192761(n)-n` -/
def P15706178988108746461.Spec : Prop :=
  ∀ n, P15706178988108746461.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P2032370903477067846

`A104161(n)+A192762(n)-n`
-/

namespace A192747.P2032370903477067846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n + (A192762 n - (n : ℤ))

end

end A192747.P2032370903477067846

namespace A192747

/-- `A104161(n)+A192762(n)-n` -/
def P2032370903477067846.Spec : Prop :=
  ∀ n, P2032370903477067846.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P11213179670669644138

`∑[A001924(n)+n]-A000045(n)`
-/

namespace A192747.P11213179670669644138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A192747.P11213179670669644138

namespace A192747

/-- `∑[A001924(n)+n]-A000045(n)` -/
def P11213179670669644138.Spec : Prop :=
  ∀ n, P11213179670669644138.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P1631263945452847315

`∑[n]+A014162(n)-A000045(n)`
-/

namespace A192747.P1631263945452847315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A014162 n - A000045 n)

end

end A192747.P1631263945452847315

namespace A192747

/-- `∑[n]+A014162(n)-A000045(n)` -/
def P1631263945452847315.Spec : Prop :=
  ∀ n, P1631263945452847315.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P9989560984111138849

`A192748(n+1)+A019274(n+1)`
-/

namespace A192747.P9989560984111138849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 1) + A019274 (n + 1)

end

end A192747.P9989560984111138849

namespace A192747

/-- `A192748(n+1)+A019274(n+1)` -/
def P9989560984111138849.Spec : Prop :=
  ∀ n, P9989560984111138849.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P17624930695322188478

`A020732(n+1)-A037141(n+1)`
-/

namespace A192747.P17624930695322188478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 1) - A037141 (n + 1)

end

end A192747.P17624930695322188478

namespace A192747

/-- `A020732(n+1)-A037141(n+1)` -/
def P17624930695322188478.Spec : Prop :=
  ∀ n, P17624930695322188478.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P12807314104693727077

`∑[A000045(n+4)-3]-A000045(n)`
-/

namespace A192747.P12807314104693727077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A192747.P12807314104693727077

namespace A192747

/-- `∑[A000045(n+4)-3]-A000045(n)` -/
def P12807314104693727077.Spec : Prop :=
  ∀ n, P12807314104693727077.a n = A192747 (n + 1)

end A192747

/-! ## A192747.P13187485685422617276

`∑[∑[A000045(2-(n-2*n))]-1]-A000045(n)`
-/

namespace A192747.P13187485685422617276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A192747.P13187485685422617276

namespace A192747

/-- `∑[∑[A000045(2-(n-2*n))]-1]-A000045(n)` -/
def P13187485685422617276.Spec : Prop :=
  ∀ n, P13187485685422617276.a n = A192747 (n + 1)

end A192747

/-!
# A192748: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192748, the canonical program `A192748.P11805300464972404301` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192748 has offset 1).

The definition of A192748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192748.P11805300464972404301

`∑[a(n-1)+a(n-2)+3]` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192748

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P11805300464972404301.Spec : Prop :=
  ∀ n, (P11805300464972404301.a n : ℤ) = A192748 (n + 1)

theorem P11805300464972404301.correct : P11805300464972404301.Spec := by
  intro n
  simp only [A192748, Nat.add_sub_cancel]

end A192748

/-! ## A192748.P6546802143414403431

`2*a(n-1)+3-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192748.P6546802143414403431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * a (n - 1) + (3 - a (n - 3))

end

end A192748.P6546802143414403431

namespace A192748

/-- `2*a(n-1)+3-a(n-3)` -/
def P6546802143414403431.Spec : Prop :=
  ∀ n, P6546802143414403431.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P1091425550075678563

`2*a(n-1)-(a(n-3)-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192748.P1091425550075678563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 3)

end

end A192748.P1091425550075678563

namespace A192748

/-- `2*a(n-1)-(a(n-3)-3)` -/
def P1091425550075678563.Spec : Prop :=
  ∀ n, P1091425550075678563.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P13987481122564554569

`1-∑[a(n-1)-(3-a(n-2))]` with `a(0)=1, a(1)=-1`
-/

namespace A192748.P13987481122564554569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192748.P13987481122564554569

namespace A192748

/-- `1-∑[a(n-1)-(3-a(n-2))]` -/
def P13987481122564554569.Spec : Prop :=
  ∀ n, P13987481122564554569.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P13358445402761784154

`a(n-1)+a(n-1)+3-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192748.P13358445402761784154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - a (n - 3)))

end

end A192748.P13358445402761784154

namespace A192748

/-- `a(n-1)+a(n-1)+3-a(n-3)` -/
def P13358445402761784154.Spec : Prop :=
  ∀ n, P13358445402761784154.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P5778728756934226968

`3-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192748.P5778728756934226968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  3 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A192748.P5778728756934226968

namespace A192748

/-- `3-(a(n-3)-a(n-1)-a(n-1))` -/
def P5778728756934226968.Spec : Prop :=
  ∀ n, P5778728756934226968.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P15561026671779483351

`A116730(n+1)-1`
-/

namespace A192748.P15561026671779483351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116730 (n + 1) - 1

end

end A192748.P15561026671779483351

namespace A192748

/-- `A116730(n+1)-1` -/
def P15561026671779483351.Spec : Prop :=
  ∀ n, P15561026671779483351.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P3236383951183369695

`A192960(n)-(n+1)`
-/

namespace A192748.P3236383951183369695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n - (n + 1 : ℤ)

end

end A192748.P3236383951183369695

namespace A192748

/-- `A192960(n)-(n+1)` -/
def P3236383951183369695.Spec : Prop :=
  ∀ n, P3236383951183369695.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P15710103469139295297

`2*A001924(n)-n`
-/

namespace A192748.P15710103469139295297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001924 n - (n : ℤ)

end

end A192748.P15710103469139295297

namespace A192748

/-- `2*A001924(n)-n` -/
def P15710103469139295297.Spec : Prop :=
  ∀ n, P15710103469139295297.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P14553885776032328840

`∑[A068922(n+1)-3]`
-/

namespace A192748.P14553885776032328840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192748.P14553885776032328840

namespace A192748

/-- `∑[A068922(n+1)-3]` -/
def P14553885776032328840.Spec : Prop :=
  ∀ n, P14553885776032328840.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P15001050704813132209

`∑[A019274(n+2)]-n`
-/

namespace A192748.P15001050704813132209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192748.P15001050704813132209

namespace A192748

/-- `∑[A019274(n+2)]-n` -/
def P15001050704813132209.Spec : Prop :=
  ∀ n, P15001050704813132209.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P13906620310683260506

`A192760(n+1)-Δ[n²]`
-/

namespace A192748.P13906620310683260506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192748.P13906620310683260506

namespace A192748

/-- `A192760(n+1)-Δ[n²]` -/
def P13906620310683260506.Spec : Prop :=
  ∀ n, P13906620310683260506.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P10385480627605651713

`∑[∑[A006355(n+1)]]-n`
-/

namespace A192748.P10385480627605651713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192748.P10385480627605651713

namespace A192748

/-- `∑[∑[A006355(n+1)]]-n` -/
def P10385480627605651713.Spec : Prop :=
  ∀ n, P10385480627605651713.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P11757031071513967671

`∑[∑[A118658(n+1)]]-n`
-/

namespace A192748.P11757031071513967671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192748.P11757031071513967671

namespace A192748

/-- `∑[∑[A118658(n+1)]]-n` -/
def P11757031071513967671.Spec : Prop :=
  ∀ n, P11757031071513967671.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P12899340544280031732

`∑[∑[2*A000045(n)]]-n`
-/

namespace A192748.P12899340544280031732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192748.P12899340544280031732

namespace A192748

/-- `∑[∑[2*A000045(n)]]-n` -/
def P12899340544280031732.Spec : Prop :=
  ∀ n, P12899340544280031732.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P8906353804195183335

`∑[A094707(2*n+1)]-n`
-/

namespace A192748.P8906353804195183335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192748.P8906353804195183335

namespace A192748

/-- `∑[A094707(2*n+1)]-n` -/
def P8906353804195183335.Spec : Prop :=
  ∀ n, P8906353804195183335.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P9864897088104339185

`∑[A355019(2*n+1)]-n`
-/

namespace A192748.P9864897088104339185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192748.P9864897088104339185

namespace A192748

/-- `∑[A355019(2*n+1)]-n` -/
def P9864897088104339185.Spec : Prop :=
  ∀ n, P9864897088104339185.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P538130009638736519

`A154691(n+1)-3*(n+1)`
-/

namespace A192748.P538130009638736519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) - (3 * (n + 1) : ℤ)

end

end A192748.P538130009638736519

namespace A192748

/-- `A154691(n+1)-3*(n+1)` -/
def P538130009638736519.Spec : Prop :=
  ∀ n, P538130009638736519.a n = A192748 (n + 1)

end A192748

/-! ## A192748.P8321853113049486333

`2*A000045(n+4)-3*(n+2)`
-/

namespace A192748.P8321853113049486333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 4) - (3 * (n + 2) : ℤ)

end

end A192748.P8321853113049486333

namespace A192748

/-- `2*A000045(n+4)-3*(n+2)` -/
def P8321853113049486333.Spec : Prop :=
  ∀ n, P8321853113049486333.a n = A192748 (n + 1)

end A192748

/-!
# A192749: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192749, the canonical program `A192749.P9396918961623687836` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192749 has offset 0).

The definition of A192749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192749.P9396918961623687836

`∑[a(n-1)+a(n-2)+4]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192749

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P9396918961623687836.Spec : Prop :=
  ∀ n, (P9396918961623687836.a n : ℤ) = A192749 n

theorem P9396918961623687836.correct : P9396918961623687836.Spec := by
  intro n
  simp only [A192749]

end A192749

/-! ## A192749.P12142368607947536030

`∑[2*a(n-1)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A192749.P12142368607947536030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P12142368607947536030

namespace A192749

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P12142368607947536030.Spec : Prop :=
  ∀ n, P12142368607947536030.a n = A192749 n

end A192749

/-! ## A192749.P9784485617029410471

`4*n-3+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192749.P9784485617029410471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * n : ℤ) - 3 + (a (n - 1) + a (n - 2))

end

end A192749.P9784485617029410471

namespace A192749

/-- `4*n-3+a(n-1)+a(n-2)` -/
def P9784485617029410471.Spec : Prop :=
  ∀ n, P9784485617029410471.a n = A192749 n

end A192749

/-! ## A192749.P8852062086837610554

`4*n-(3-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A192749.P8852062086837610554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * n : ℤ) - (3 - a (n - 1) - a (n - 2))

end

end A192749.P8852062086837610554

namespace A192749

/-- `4*n-(3-a(n-1)-a(n-2))` -/
def P8852062086837610554.Spec : Prop :=
  ∀ n, P8852062086837610554.a n = A192749 n

end A192749

/-! ## A192749.P15600194813000946225

`∑[floor(a(n-1)-(a(n-3)-a(n-1)))]` with `a(0)=0, a(1)=1, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A192749.P15600194813000946225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P15600194813000946225

namespace A192749

/-- `∑[floor(a(n-1)-(a(n-3)-a(n-1)))]` -/
def P15600194813000946225.Spec : Prop :=
  ∀ n, P15600194813000946225.a n = A192749 n

end A192749

/-! ## A192749.P772961689953192171

`∑[A171516(n)-1]`
-/

namespace A192749.P772961689953192171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P772961689953192171

namespace A192749

/-- `∑[A171516(n)-1]` -/
def P772961689953192171.Spec : Prop :=
  ∀ n, P772961689953192171.a n = A192749 n

end A192749

/-! ## A192749.P11991456150666772530

`∑[A022308(n+1)-3]`
-/

namespace A192749.P11991456150666772530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P11991456150666772530

namespace A192749

/-- `∑[A022308(n+1)-3]` -/
def P11991456150666772530.Spec : Prop :=
  ∀ n, P11991456150666772530.a n = A192749 n

end A192749

/-! ## A192749.P3195062012515721418

`∑[A000285(n+1)-4]`
-/

namespace A192749.P3195062012515721418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P3195062012515721418

namespace A192749

/-- `∑[A000285(n+1)-4]` -/
def P3195062012515721418.Spec : Prop :=
  ∀ n, P3195062012515721418.a n = A192749 n

end A192749

/-! ## A192749.P17016275757035142826

`∑[A104449(n+2)-4]`
-/

namespace A192749.P17016275757035142826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P17016275757035142826

namespace A192749

/-- `∑[A104449(n+2)-4]` -/
def P17016275757035142826.Spec : Prop :=
  ∀ n, P17016275757035142826.a n = A192749 n

end A192749

/-! ## A192749.P11423417222195744315

`∑[A030119(n)-1+n]`
-/

namespace A192749.P11423417222195744315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P11423417222195744315

namespace A192749

/-- `∑[A030119(n)-1+n]` -/
def P11423417222195744315.Spec : Prop :=
  ∀ n, P11423417222195744315.a n = A192749 n

end A192749

/-! ## A192749.P334634074353440753

`A192951(n+1)-(n+1)`
-/

namespace A192749.P334634074353440753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 1) - (n + 1 : ℤ)

end

end A192749.P334634074353440753

namespace A192749

/-- `A192951(n+1)-(n+1)` -/
def P334634074353440753.Spec : Prop :=
  ∀ n, P334634074353440753.a n = A192749 n

end A192749

/-! ## A192749.P4187840834339986890

`A192966(n+1)+∑[n-1]`
-/

namespace A192749.P4187840834339986890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192966 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192749.P4187840834339986890

namespace A192749

/-- `A192966(n+1)+∑[n-1]` -/
def P4187840834339986890.Spec : Prop :=
  ∀ n, P4187840834339986890.a n = A192749 n

end A192749

/-! ## A192749.P13557762012879330092

`A023552(n+1)-3*(n+1)`
-/

namespace A192749.P13557762012879330092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023552 (n + 1) - (3 * (n + 1) : ℤ)

end

end A192749.P13557762012879330092

namespace A192749

/-- `A023552(n+1)-3*(n+1)` -/
def P13557762012879330092.Spec : Prop :=
  ∀ n, P13557762012879330092.a n = A192749 n

end A192749

/-! ## A192749.P9250195324750586887

`A210730(n)+A192952(n)`
-/

namespace A192749.P9250195324750586887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A192952 n

end

end A192749.P9250195324750586887

namespace A192749

/-- `A210730(n)+A192952(n)` -/
def P9250195324750586887.Spec : Prop :=
  ∀ n, P9250195324750586887.a n = A192749 n

end A192749

/-! ## A192749.P6157076131419114646

`A192971(n)-A001595(n)`
-/

namespace A192749.P6157076131419114646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 n - A001595 n

end

end A192749.P6157076131419114646

namespace A192749

/-- `A192971(n)-A001595(n)` -/
def P6157076131419114646.Spec : Prop :=
  ∀ n, P6157076131419114646.a n = A192749 n

end A192749

/-! ## A192749.P6205758030395855044

`A192389(n)-A014283(n)`
-/

namespace A192749.P6205758030395855044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 n - A014283 n

end

end A192749.P6205758030395855044

namespace A192749

/-- `A192389(n)-A014283(n)` -/
def P6205758030395855044.Spec : Prop :=
  ∀ n, P6205758030395855044.a n = A192749 n

end A192749

/-! ## A192749.P17209927223626878440

`A192751(n)-A000071(n+1)`
-/

namespace A192749.P17209927223626878440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 n - A000071 (n + 1)

end

end A192749.P17209927223626878440

namespace A192749

/-- `A192751(n)-A000071(n+1)` -/
def P17209927223626878440.Spec : Prop :=
  ∀ n, P17209927223626878440.a n = A192749 n

end A192749

/-! ## A192749.P5841653825075749305

`A192753(n)-A019274(n+1)`
-/

namespace A192749.P5841653825075749305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192753 n - A019274 (n + 1)

end

end A192749.P5841653825075749305

namespace A192749

/-- `A192753(n)-A019274(n+1)` -/
def P5841653825075749305.Spec : Prop :=
  ∀ n, P5841653825075749305.a n = A192749 n

end A192749

/-!
# A192750: Define a pair of sequences c_n, d_n by c_0=0, d_0=1 and thereafter c_n = c_{n-1}+d_{n-1}, d_n = c_{n-1}+4*n+2; sequence here is d_n.

The programs for A192750, the canonical program `A192750.P4191016570843098971` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192750 has offset 0).

The definition of A192750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192750.P4191016570843098971

`a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192750

/-- `a(n-1)+a(n-2)+4` -/
def P4191016570843098971.Spec : Prop :=
  ∀ n, (P4191016570843098971.a n : ℤ) = A192750 n

theorem P4191016570843098971.correct : P4191016570843098971.Spec := by
  intro n
  simp only [A192750]

end A192750

/-! ## A192750.P2003480224437388742

`∑[A022088(n)]+1`
-/

namespace A192750.P2003480224437388742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192750.P2003480224437388742

namespace A192750

/-- `∑[A022088(n)]+1` -/
def P2003480224437388742.Spec : Prop :=
  ∀ n, P2003480224437388742.a n = A192750 n

end A192750

/-! ## A192750.P15759147169594535790

`A022088(n+2)-4`
-/

namespace A192750.P15759147169594535790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (n + 2) - 4

end

end A192750.P15759147169594535790

namespace A192750

/-- `A022088(n+2)-4` -/
def P15759147169594535790.Spec : Prop :=
  ∀ n, P15759147169594535790.a n = A192750 n

end A192750

/-! ## A192750.P1063387930698099427

`∑[A022093(n)/2]+1`
-/

namespace A192750.P1063387930698099427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022093 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192750.P1063387930698099427

namespace A192750

/-- `∑[A022093(n)/2]+1` -/
def P1063387930698099427.Spec : Prop :=
  ∀ n, P1063387930698099427.a n = (A192750 n : ℚ)

end A192750

/-! ## A192750.P4215222633075091409

`∑[5*A000045(n)]+1`
-/

namespace A192750.P4215222633075091409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192750.P4215222633075091409

namespace A192750

/-- `∑[5*A000045(n)]+1` -/
def P4215222633075091409.Spec : Prop :=
  ∀ n, P4215222633075091409.a n = A192750 n

end A192750

/-! ## A192750.P9782303663270733749

`5*A000045(n+2)-4`
-/

namespace A192750.P9782303663270733749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (n + 2) - 4

end

end A192750.P9782303663270733749

namespace A192750

/-- `5*A000045(n+2)-4` -/
def P9782303663270733749.Spec : Prop :=
  ∀ n, P9782303663270733749.a n = A192750 n

end A192750

/-! ## A192750.P5497214551466648387

`A053311(n)+A000045(n)`
-/

namespace A192750.P5497214551466648387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n + A000045 n

end

end A192750.P5497214551466648387

namespace A192750

/-- `A053311(n)+A000045(n)` -/
def P5497214551466648387.Spec : Prop :=
  ∀ n, P5497214551466648387.a n = A192750 n

end A192750

/-! ## A192750.P9966181077439495438

`A168193(n)+A000285(n)`
-/

namespace A192750.P9966181077439495438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + A000285 n

end

end A192750.P9966181077439495438

namespace A192750

/-- `A168193(n)+A000285(n)` -/
def P9966181077439495438.Spec : Prop :=
  ∀ n, P9966181077439495438.a n = A192750 n

end A192750

/-! ## A192750.P3345572176224010044

`A154691(n)+A022308(n)`
-/

namespace A192750.P3345572176224010044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n + A022308 n

end

end A192750.P3345572176224010044

namespace A192750

/-- `A154691(n)+A022308(n)` -/
def P3345572176224010044.Spec : Prop :=
  ∀ n, P3345572176224010044.a n = A192750 n

end A192750

/-! ## A192750.P3808944741406982064

`A168674(n)+A014739(n)`
-/

namespace A192750.P3808944741406982064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A014739 n

end

end A192750.P3808944741406982064

namespace A192750

/-- `A168674(n)+A014739(n)` -/
def P3808944741406982064.Spec : Prop :=
  ∀ n, P3808944741406982064.a n = A192750 n

end A192750

/-! ## A192750.P16607611793653836895

`A171516(n)+A022309(n)`
-/

namespace A192750.P16607611793653836895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + A022309 n

end

end A192750.P16607611793653836895

namespace A192750

/-- `A171516(n)+A022309(n)` -/
def P16607611793653836895.Spec : Prop :=
  ∀ n, P16607611793653836895.a n = A192750 n

end A192750

/-! ## A192750.P15934855107570451895

`A182415(n)+A022087(n)`
-/

namespace A192750.P15934855107570451895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + A022087 n

end

end A192750.P15934855107570451895

namespace A192750

/-- `A182415(n)+A022087(n)` -/
def P15934855107570451895.Spec : Prop :=
  ∀ n, P15934855107570451895.a n = A192750 n

end A192750

/-! ## A192750.P15808754153911177852

`A187891(n)+A111721(n)`
-/

namespace A192750.P15808754153911177852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A111721 n

end

end A192750.P15808754153911177852

namespace A192750

/-- `A187891(n)+A111721(n)` -/
def P15808754153911177852.Spec : Prop :=
  ∀ n, P15808754153911177852.a n = A192750 n

end A192750

/-! ## A192750.P1345522772851688525

`A026390(n)-A152163(n)`
-/

namespace A192750.P1345522772851688525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026390 n - A152163 n

end

end A192750.P1345522772851688525

namespace A192750

/-- `A026390(n)-A152163(n)` -/
def P1345522772851688525.Spec : Prop :=
  ∀ n, P1345522772851688525.a n = A192750 n

end A192750

/-! ## A192750.P9086092851642034517

`A022136(n)-A157727(n)`
-/

namespace A192750.P9086092851642034517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n - A157727 n

end

end A192750.P9086092851642034517

namespace A192750

/-- `A022136(n)-A157727(n)` -/
def P9086092851642034517.Spec : Prop :=
  ∀ n, P9086092851642034517.a n = A192750 n

end A192750

/-! ## A192750.P15266522633117581372

`A192752(n)-A000045(n)`
-/

namespace A192750.P15266522633117581372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192752 n - A000045 n

end

end A192750.P15266522633117581372

namespace A192750

/-- `A192752(n)-A000045(n)` -/
def P15266522633117581372.Spec : Prop :=
  ∀ n, P15266522633117581372.a n = A192750 n

end A192750

/-! ## A192750.P12139093279639023384

`A027961(n+1)+A001610(n)`
-/

namespace A192750.P12139093279639023384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + A001610 n

end

end A192750.P12139093279639023384

namespace A192750

/-- `A027961(n+1)+A001610(n)` -/
def P12139093279639023384.Spec : Prop :=
  ∀ n, P12139093279639023384.a n = A192750 n

end A192750

/-! ## A192750.P14041778877237954932

`A030119(n+1)+A002062(n)`
-/

namespace A192750.P14041778877237954932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) + A002062 n

end

end A192750.P14041778877237954932

namespace A192750

/-- `A030119(n+1)+A002062(n)` -/
def P14041778877237954932.Spec : Prop :=
  ∀ n, P14041778877237954932.a n = A192750 n

end A192750

/-! ## A192750.P11209837112660448803

`A192746(n)+A000071(n+2)`
-/

namespace A192750.P11209837112660448803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 n + A000071 (n + 2)

end

end A192750.P11209837112660448803

namespace A192750

/-- `A192746(n)+A000071(n+2)` -/
def P11209837112660448803.Spec : Prop :=
  ∀ n, P11209837112660448803.a n = A192750 n

end A192750

/-!
# A192751: Define a pair of sequences c_n, d_n by c_0=0, d_0=1 and thereafter c_n = c_{n-1}+d_{n-1}, d_n = c_{n-1}+4*n+2; sequence here is c_n.

The programs for A192751, the canonical program `A192751.P3968722922936378882` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192751 has offset 0).

The definition of A192751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192751.P3968722922936378882

`∑[a(n-1)+a(n-2)+4]` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192751

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P3968722922936378882.Spec : Prop :=
  ∀ n, (P3968722922936378882.a n : ℤ) = A192751 n

theorem P3968722922936378882.correct : P3968722922936378882.Spec := by
  intro n
  simp only [A192751]

end A192751

/-! ## A192751.P7264081203738736947

`n-∑[a(n-1)-(5-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A192751.P7264081203738736947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (5 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192751.P7264081203738736947

namespace A192751

/-- `n-∑[a(n-1)-(5-a(n-2))]` -/
def P7264081203738736947.Spec : Prop :=
  ∀ n, P7264081203738736947.a n = A192751 n

end A192751

/-! ## A192751.P14654422068604098125

`4*n-2+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192751.P14654422068604098125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A192751.P14654422068604098125

namespace A192751

/-- `4*n-2+a(n-1)+a(n-2)` -/
def P14654422068604098125.Spec : Prop :=
  ∀ n, P14654422068604098125.a n = A192751 n

end A192751

/-! ## A192751.P5772052242014127146

`4*n-(2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A192751.P5772052242014127146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * n : ℤ) - (2 - a (n - 1) - a (n - 2))

end

end A192751.P5772052242014127146

namespace A192751

/-- `4*n-(2-a(n-1)-a(n-2))` -/
def P5772052242014127146.Spec : Prop :=
  ∀ n, P5772052242014127146.a n = A192751 n

end A192751

/-! ## A192751.P15829141307001181620

`∑[5*A000071(n+1)]+n`
-/

namespace A192751.P15829141307001181620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A192751.P15829141307001181620

namespace A192751

/-- `∑[5*A000071(n+1)]+n` -/
def P15829141307001181620.Spec : Prop :=
  ∀ n, P15829141307001181620.a n = A192751 n

end A192751

/-! ## A192751.P1644195403004016081

`∑[5*A000045(n+1)-4]-1`
-/

namespace A192751.P1644195403004016081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192751.P1644195403004016081

namespace A192751

/-- `∑[5*A000045(n+1)-4]-1` -/
def P1644195403004016081.Spec : Prop :=
  ∀ n, P1644195403004016081.a n = A192751 n

end A192751

/-! ## A192751.P13527584870076617276

`5*(A000045(n+3)-2)-4*n`
-/

namespace A192751.P13527584870076617276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000045 (n + 3) - 2) - (4 * n : ℤ)

end

end A192751.P13527584870076617276

namespace A192751

/-- `5*(A000045(n+3)-2)-4*n` -/
def P13527584870076617276.Spec : Prop :=
  ∀ n, P13527584870076617276.a n = A192751 n

end A192751

/-! ## A192751.P11563584245577778898

`5*floor(∑[ϕ*A000045(n)])-4*n`
-/

namespace A192751.P11563584245577778898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (A000045 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (4 * n : ℤ)

end

end A192751.P11563584245577778898

namespace A192751

/-- `5*floor(∑[ϕ*A000045(n)])-4*n` -/
def P11563584245577778898.Spec : Prop :=
  ∀ n, P11563584245577778898.a n = A192751 n

end A192751

/-! ## A192751.P12405574393031314628

`A210730(n)+A192951(n)`
-/

namespace A192751.P12405574393031314628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A192951 n

end

end A192751.P12405574393031314628

namespace A192751

/-- `A210730(n)+A192951(n)` -/
def P12405574393031314628.Spec : Prop :=
  ∀ n, P12405574393031314628.a n = A192751 n

end A192751

/-! ## A192751.P4558800829790227009

`A210731(n)+A192952(n)`
-/

namespace A192751.P4558800829790227009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A192952 n

end

end A192751.P4558800829790227009

namespace A192751

/-- `A210731(n)+A192952(n)` -/
def P4558800829790227009.Spec : Prop :=
  ∀ n, P4558800829790227009.a n = A192751 n

end A192751

/-! ## A192751.P6260643751083657160

`A192961(n)-A014283(n)`
-/

namespace A192751.P6260643751083657160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192961 n - A014283 n

end

end A192751.P6260643751083657160

namespace A192751

/-- `A192961(n)-A014283(n)` -/
def P6260643751083657160.Spec : Prop :=
  ∀ n, P6260643751083657160.a n = A192751 n

end A192751

/-! ## A192751.P6591034400239597776

`A192756(n)-A065220(n)`
-/

namespace A192751.P6591034400239597776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192756 n - A065220 n

end

end A192751.P6591034400239597776

namespace A192751

/-- `A192756(n)-A065220(n)` -/
def P6591034400239597776.Spec : Prop :=
  ∀ n, P6591034400239597776.a n = A192751 n

end A192751

/-! ## A192751.P11640997289518795595

`A192975(n)-A212804(n)`
-/

namespace A192751.P11640997289518795595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192975 n - A212804 n

end

end A192751.P11640997289518795595

namespace A192751

/-- `A192975(n)-A212804(n)` -/
def P11640997289518795595.Spec : Prop :=
  ∀ n, P11640997289518795595.a n = A192751 n

end A192751

/-! ## A192751.P8429782337980282269

`A192749(n)+A000071(n+1)`
-/

namespace A192751.P8429782337980282269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 n + A000071 (n + 1)

end

end A192751.P8429782337980282269

namespace A192751

/-- `A192749(n)+A000071(n+1)` -/
def P8429782337980282269.Spec : Prop :=
  ∀ n, P8429782337980282269.a n = A192751 n

end A192751

/-! ## A192751.P11275958419575518620

`A192753(n)-A000071(n+1)`
-/

namespace A192751.P11275958419575518620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192753 n - A000071 (n + 1)

end

end A192751.P11275958419575518620

namespace A192751

/-- `A192753(n)-A000071(n+1)` -/
def P11275958419575518620.Spec : Prop :=
  ∀ n, P11275958419575518620.a n = A192751 n

end A192751

/-! ## A192751.P2742821184141320032

`A192971(n)-A000045(n+1)`
-/

namespace A192751.P2742821184141320032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 n - A000045 (n + 1)

end

end A192751.P2742821184141320032

namespace A192751

/-- `A192971(n)-A000045(n+1)` -/
def P2742821184141320032.Spec : Prop :=
  ∀ n, P2742821184141320032.a n = A192751 n

end A192751

/-! ## A192751.P12756176072202807066

`2*A001891(n)-A000045(n)`
-/

namespace A192751.P12756176072202807066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001891 n - A000045 n

end

end A192751.P12756176072202807066

namespace A192751

/-- `2*A001891(n)-A000045(n)` -/
def P12756176072202807066.Spec : Prop :=
  ∀ n, P12756176072202807066.a n = A192751 n

end A192751

/-! ## A192751.P7087470873342459899

`A001891(n)+A192761(n)-n`
-/

namespace A192751.P7087470873342459899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A192761 n - (n : ℤ))

end

end A192751.P7087470873342459899

namespace A192751

/-- `A001891(n)+A192761(n)-n` -/
def P7087470873342459899.Spec : Prop :=
  ∀ n, P7087470873342459899.a n = A192751 n

end A192751

/-! ## A192751.P3377695675133657747

`∑[A182415(n)-A000045(n)]-1`
-/

namespace A192751.P3377695675133657747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192751.P3377695675133657747

namespace A192751

/-- `∑[A182415(n)-A000045(n)]-1` -/
def P3377695675133657747.Spec : Prop :=
  ∀ n, P3377695675133657747.a n = A192751 n

end A192751

/-!
# A192752: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192752, the canonical program `A192752.P7492823185746885535` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192752 has offset 0).

The definition of A192752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192752.P7492823185746885535

`a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192752

/-- `a(n-1)+a(n-2)+4` -/
def P7492823185746885535.Spec : Prop :=
  ∀ n, (P7492823185746885535.a n : ℤ) = A192752 n

theorem P7492823185746885535.correct : P7492823185746885535.Spec := by
  intro n
  simp only [A192752]

end A192752

/-! ## A192752.P1688373405015190867

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=12`
-/

namespace A192752.P1688373405015190867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 12] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A192752.P1688373405015190867

namespace A192752

/-- `2*a(n-1)-a(n-3)` -/
def P1688373405015190867.Spec : Prop :=
  ∀ n, P1688373405015190867.a n = A192752 n

end A192752

/-! ## A192752.P2525289856624201938

`abs(Δ[a(n-2)-a(n-1)])-4` with `a(0)=1, a(1)=6`
-/

namespace A192752.P2525289856624201938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 4

end

end A192752.P2525289856624201938

namespace A192752

/-- `abs(Δ[a(n-2)-a(n-1)])-4` -/
def P2525289856624201938.Spec : Prop :=
  ∀ n, P2525289856624201938.a n = A192752 n

end A192752

/-! ## A192752.P2335552302834735868

`∑[a(n-1)-floor(-a(n-2))]` with `a(0)=1, a(1)=6, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A192752.P2335552302834735868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 5] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192752.P2335552302834735868

namespace A192752

/-- `∑[a(n-1)-floor(-a(n-2))]` -/
def P2335552302834735868.Spec : Prop :=
  ∀ n, P2335552302834735868.a n = A192752 n

end A192752

/-! ## A192752.P14198248682049932684

`A022136(n)-4`
-/

namespace A192752.P14198248682049932684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022136 n - 4

end

end A192752.P14198248682049932684

namespace A192752

/-- `A022136(n)-4` -/
def P14198248682049932684.Spec : Prop :=
  ∀ n, P14198248682049932684.a n = A192752 n

end A192752

/-! ## A192752.P6314244658753547217

`A154691(n)+A022309(n)`
-/

namespace A192752.P6314244658753547217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n + A022309 n

end

end A192752.P6314244658753547217

namespace A192752

/-- `A154691(n)+A022309(n)` -/
def P6314244658753547217.Spec : Prop :=
  ∀ n, P6314244658753547217.a n = A192752 n

end A192752

/-! ## A192752.P7662299393524137242

`A168193(n)+A022095(n)`
-/

namespace A192752.P7662299393524137242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + A022095 n

end

end A192752.P7662299393524137242

namespace A192752

/-- `A168193(n)+A022095(n)` -/
def P7662299393524137242.Spec : Prop :=
  ∀ n, P7662299393524137242.a n = A192752 n

end A192752

/-! ## A192752.P4554805856036954930

`A192750(n)+A000045(n)`
-/

namespace A192752.P4554805856036954930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192750 n + A000045 n

end

end A192752.P4554805856036954930

namespace A192752

/-- `A192750(n)+A000045(n)` -/
def P4554805856036954930.Spec : Prop :=
  ∀ n, P4554805856036954930.a n = A192752 n

end A192752

/-! ## A192752.P380645644140712074

`A171516(n)+A022310(n)`
-/

namespace A192752.P380645644140712074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + A022310 n

end

end A192752.P380645644140712074

namespace A192752

/-- `A171516(n)+A022310(n)` -/
def P380645644140712074.Spec : Prop :=
  ∀ n, P380645644140712074.a n = A192752 n

end A192752

/-! ## A192752.P4910247003133628153

`A192746(n)+A001610(n)`
-/

namespace A192752.P4910247003133628153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 n + A001610 n

end

end A192752.P4910247003133628153

namespace A192752

/-- `A192746(n)+A001610(n)` -/
def P4910247003133628153.Spec : Prop :=
  ∀ n, P4910247003133628153.a n = A192752 n

end A192752

/-! ## A192752.P8004046087379145373

`A182415(n)+A022088(n)`
-/

namespace A192752.P8004046087379145373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + A022088 n

end

end A192752.P8004046087379145373

namespace A192752

/-- `A182415(n)+A022088(n)` -/
def P8004046087379145373.Spec : Prop :=
  ∀ n, P8004046087379145373.a n = A192752 n

end A192752

/-! ## A192752.P2088824884315024854

`A187892(n)+A111721(n)`
-/

namespace A192752.P2088824884315024854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A111721 n

end

end A192752.P2088824884315024854

namespace A192752

/-- `A187892(n)+A111721(n)` -/
def P2088824884315024854.Spec : Prop :=
  ∀ n, P2088824884315024854.a n = A192752 n

end A192752

/-! ## A192752.P11623729266470284208

`A022137(n)-A157727(n)`
-/

namespace A192752.P11623729266470284208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n - A157727 n

end

end A192752.P11623729266470284208

namespace A192752

/-- `A022137(n)-A157727(n)` -/
def P11623729266470284208.Spec : Prop :=
  ∀ n, P11623729266470284208.a n = A192752 n

end A192752

/-! ## A192752.P7350712241017976671

`A001611(n)+∑[A022088(n)]`
-/

namespace A192752.P7350712241017976671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192752.P7350712241017976671

namespace A192752

/-- `A001611(n)+∑[A022088(n)]` -/
def P7350712241017976671.Spec : Prop :=
  ∀ n, P7350712241017976671.a n = A192752 n

end A192752

/-! ## A192752.P1167282715079059323

`A027961(n+1)+A022308(n)`
-/

namespace A192752.P1167282715079059323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + A022308 n

end

end A192752.P1167282715079059323

namespace A192752

/-- `A027961(n+1)+A022308(n)` -/
def P1167282715079059323.Spec : Prop :=
  ∀ n, P1167282715079059323.a n = A192752 n

end A192752

/-! ## A192752.P12088302042781775737

`A168674(n)+A001911(n+1)`
-/

namespace A192752.P12088302042781775737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A001911 (n + 1)

end

end A192752.P12088302042781775737

namespace A192752

/-- `A168674(n)+A001911(n+1)` -/
def P12088302042781775737.Spec : Prop :=
  ∀ n, P12088302042781775737.a n = A192752 n

end A192752

/-! ## A192752.P11670598658972594411

`A206417(n+1)+A000285(n)`
-/

namespace A192752.P11670598658972594411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 1) + A000285 n

end

end A192752.P11670598658972594411

namespace A192752

/-- `A206417(n+1)+A000285(n)` -/
def P11670598658972594411.Spec : Prop :=
  ∀ n, P11670598658972594411.a n = A192752 n

end A192752

/-! ## A192752.P8536830123078888569

`A182415(n+1)-A212804(n)`
-/

namespace A192752.P8536830123078888569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 (n + 1) - A212804 n

end

end A192752.P8536830123078888569

namespace A192752

/-- `A182415(n+1)-A212804(n)` -/
def P8536830123078888569.Spec : Prop :=
  ∀ n, P8536830123078888569.a n = A192752 n

end A192752

/-! ## A192752.P15962866328039377741

`A022319(n)+A006327(n+4)`
-/

namespace A192752.P15962866328039377741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A006327 (n + 4)

end

end A192752.P15962866328039377741

namespace A192752

/-- `A022319(n)+A006327(n+4)` -/
def P15962866328039377741.Spec : Prop :=
  ∀ n, P15962866328039377741.a n = A192752 n

end A192752

/-!
# A192753: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192753, the canonical program `A192753.P2062702028771195969` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192753 has offset 0).

The definition of A192753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192753.P2062702028771195969

`∑[a(n-1)+a(n-2)+4]` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192753

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P2062702028771195969.Spec : Prop :=
  ∀ n, (P2062702028771195969.a n : ℤ) = A192753 n

theorem P2062702028771195969.correct : P2062702028771195969.Spec := by
  intro n
  simp only [A192753]

end A192753

/-! ## A192753.P7481829146430540349

`2*(a(n-1)+2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A192753.P7481829146430540349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  2 * (a (n - 1) + 2) - a (n - 3)

end

end A192753.P7481829146430540349

namespace A192753

/-- `2*(a(n-1)+2)-a(n-3)` -/
def P7481829146430540349.Spec : Prop :=
  ∀ n, P7481829146430540349.a n = A192753 n

end A192753

/-! ## A192753.P6577261981154723025

`2*a(n-1)-(a(n-3)-4)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A192753.P6577261981154723025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 4)

end

end A192753.P6577261981154723025

namespace A192753

/-- `2*a(n-1)-(a(n-3)-4)` -/
def P6577261981154723025.Spec : Prop :=
  ∀ n, P6577261981154723025.a n = A192753 n

end A192753

/-! ## A192753.P5197362190350709702

`A192971(n)-1`
-/

namespace A192753.P5197362190350709702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 n - 1

end

end A192753.P5197362190350709702

namespace A192753

/-- `A192971(n)-1` -/
def P5197362190350709702.Spec : Prop :=
  ∀ n, P5197362190350709702.a n = A192753 n

end A192753

/-! ## A192753.P16058580851099375935

`A210731(n)+A192951(n)`
-/

namespace A192753.P16058580851099375935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A192951 n

end

end A192753.P16058580851099375935

namespace A192753

/-- `A210731(n)+A192951(n)` -/
def P16058580851099375935.Spec : Prop :=
  ∀ n, P16058580851099375935.a n = A192753 n

end A192753

/-! ## A192753.P7611069150338349482

`A192755(n)-A065220(n)`
-/

namespace A192753.P7611069150338349482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 n - A065220 n

end

end A192753.P7611069150338349482

namespace A192753

/-- `A192755(n)-A065220(n)` -/
def P7611069150338349482.Spec : Prop :=
  ∀ n, P7611069150338349482.a n = A192753 n

end A192753

/-! ## A192753.P7388263804497578088

`A192751(n)+A000071(n+1)`
-/

namespace A192753.P7388263804497578088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 n + A000071 (n + 1)

end

end A192753.P7388263804497578088

namespace A192753

/-- `A192751(n)+A000071(n+1)` -/
def P7388263804497578088.Spec : Prop :=
  ∀ n, P7388263804497578088.a n = A192753 n

end A192753

/-! ## A192753.P114261354058029216

`A192749(n)+A019274(n+1)`
-/

namespace A192753.P114261354058029216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 n + A019274 (n + 1)

end

end A192753.P114261354058029216

namespace A192753

/-- `A192749(n)+A019274(n+1)` -/
def P114261354058029216.Spec : Prop :=
  ∀ n, P114261354058029216.a n = A192753 n

end A192753

/-! ## A192753.P15512488929392253529

`A210730(n)+A192748(n+1)`
-/

namespace A192753.P15512488929392253529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A192748 (n + 1)

end

end A192753.P15512488929392253529

namespace A192753

/-- `A210730(n)+A192748(n+1)` -/
def P15512488929392253529.Spec : Prop :=
  ∀ n, P15512488929392253529.a n = A192753 n

end A192753

/-! ## A192753.P14448678199491551867

`A023652(n+1)-A022318(n)`
-/

namespace A192753.P14448678199491551867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023652 (n + 1) - A022318 n

end

end A192753.P14448678199491551867

namespace A192753

/-- `A023652(n+1)-A022318(n)` -/
def P14448678199491551867.Spec : Prop :=
  ∀ n, P14448678199491551867.a n = A192753 n

end A192753

/-! ## A192753.P14884459645535926242

`A000045(n)+A192975(n)-1`
-/

namespace A192753.P14884459645535926242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A192975 n - 1)

end

end A192753.P14884459645535926242

namespace A192753

/-- `A000045(n)+A192975(n)-1` -/
def P14884459645535926242.Spec : Prop :=
  ∀ n, P14884459645535926242.a n = A192753 n

end A192753

/-! ## A192753.P13890568449752448938

`A001595(n)+A192749(n)-1`
-/

namespace A192753.P13890568449752448938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A192749 n - 1)

end

end A192753.P13890568449752448938

namespace A192753

/-- `A001595(n)+A192749(n)-1` -/
def P13890568449752448938.Spec : Prop :=
  ∀ n, P13890568449752448938.a n = A192753 n

end A192753

/-! ## A192753.P13701351764027128817

`A192973(n+1)-A001611(n)`
-/

namespace A192753.P13701351764027128817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (n + 1) - A001611 n

end

end A192753.P13701351764027128817

namespace A192753

/-- `A192973(n+1)-A001611(n)` -/
def P13701351764027128817.Spec : Prop :=
  ∀ n, P13701351764027128817.a n = A192753 n

end A192753

/-! ## A192753.P6859641039529846671

`A001891(n)+A192954(n)-1`
-/

namespace A192753.P6859641039529846671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A192954 n - 1)

end

end A192753.P6859641039529846671

namespace A192753

/-- `A001891(n)+A192954(n)-1` -/
def P6859641039529846671.Spec : Prop :=
  ∀ n, P6859641039529846671.a n = A192753 n

end A192753

/-! ## A192753.P10030638963514715686

`A192951(n)+A210678(n)-1`
-/

namespace A192753.P10030638963514715686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A210678 n - 1)

end

end A192753.P10030638963514715686

namespace A192753

/-- `A192951(n)+A210678(n)-1` -/
def P10030638963514715686.Spec : Prop :=
  ∀ n, P10030638963514715686.a n = A192753 n

end A192753

/-! ## A192753.P13256198229282114021

`A192973(n+1)-(A000045(n)+1)`
-/

namespace A192753.P13256198229282114021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (n + 1) - (A000045 n + 1)

end

end A192753.P13256198229282114021

namespace A192753

/-- `A192973(n+1)-(A000045(n)+1)` -/
def P13256198229282114021.Spec : Prop :=
  ∀ n, P13256198229282114021.a n = A192753 n

end A192753

/-! ## A192753.P16694565119610345593

`A116730(n+1)+A210730(n)-1`
-/

namespace A192753.P16694565119610345593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116730 (n + 1) + (A210730 n - 1)

end

end A192753.P16694565119610345593

namespace A192753

/-- `A116730(n+1)+A210730(n)-1` -/
def P16694565119610345593.Spec : Prop :=
  ∀ n, P16694565119610345593.a n = A192753 n

end A192753

/-! ## A192753.P13269799898186183260

`A192748(n+1)+A210677(n)-1`
-/

namespace A192753.P13269799898186183260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 1) + (A210677 n - 1)

end

end A192753.P13269799898186183260

namespace A192753

/-- `A192748(n+1)+A210677(n)-1` -/
def P13269799898186183260.Spec : Prop :=
  ∀ n, P13269799898186183260.a n = A192753 n

end A192753

/-! ## A192753.P11282348112697031678

`A192749(n)+2*A000071(n+1)`
-/

namespace A192753.P11282348112697031678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 n + 2 * A000071 (n + 1)

end

end A192753.P11282348112697031678

namespace A192753

/-- `A192749(n)+2*A000071(n+1)` -/
def P11282348112697031678.Spec : Prop :=
  ∀ n, P11282348112697031678.a n = A192753 n

end A192753

/-!
# A192754: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192754, the canonical program `A192754.P11914899321187777329` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192754 has offset 0).

The definition of A192754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192754.P11914899321187777329

`∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192754

/-- `∑[a(n-1)+a(n-2)]` -/
def P11914899321187777329.Spec : Prop :=
  ∀ n, (P11914899321187777329.a n : ℤ) = A192754 n

theorem P11914899321187777329.correct : P11914899321187777329.Spec := by
  intro n
  simp only [A192754]

end A192754

/-! ## A192754.P1741422694153359700

`a(n-1)+a(n-2)+5` with `a(0)=1, a(1)=6`
-/

namespace A192754.P1741422694153359700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 2) + 5)

end

end A192754.P1741422694153359700

namespace A192754

/-- `a(n-1)+a(n-2)+5` -/
def P1741422694153359700.Spec : Prop :=
  ∀ n, (P1741422694153359700.a n : ℤ) = A192754 n

end A192754

/-! ## A192754.P10524163412718275452

`∑[a(n-1)-floor(-a(n-2))]` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A192754.P10524163412718275452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P10524163412718275452

namespace A192754

/-- `∑[a(n-1)-floor(-a(n-2))]` -/
def P10524163412718275452.Spec : Prop :=
  ∀ n, P10524163412718275452.a n = A192754 n

end A192754

/-! ## A192754.P5184229697177798878

`∑[a(n-1)-ceil(-a(n-2))]` with `a(0)=1, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A192754.P5184229697177798878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P5184229697177798878

namespace A192754

/-- `∑[a(n-1)-ceil(-a(n-2))]` -/
def P5184229697177798878.Spec : Prop :=
  ∀ n, P5184229697177798878.a n = A192754 n

end A192754

/-! ## A192754.P8566097352452114476

`∑[2*a(n-1)-a(n-3)]` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A192754.P8566097352452114476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P8566097352452114476

namespace A192754

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P8566097352452114476.Spec : Prop :=
  ∀ n, P8566097352452114476.a n = A192754 n

end A192754

/-! ## A192754.P7630260671571587023

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A192754.P7630260671571587023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P7630260671571587023

namespace A192754

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P7630260671571587023.Spec : Prop :=
  ∀ n, P7630260671571587023.a n = A192754 n

end A192754

/-! ## A192754.P4502401098638310210

`∑[A022095(n)]`
-/

namespace A192754.P4502401098638310210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P4502401098638310210

namespace A192754

/-- `∑[A022095(n)]` -/
def P4502401098638310210.Spec : Prop :=
  ∀ n, P4502401098638310210.a n = A192754 n

end A192754

/-! ## A192754.P14397033595879747608

`∑[A022309(n)+1]`
-/

namespace A192754.P14397033595879747608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P14397033595879747608

namespace A192754

/-- `∑[A022309(n)+1]` -/
def P14397033595879747608.Spec : Prop :=
  ∀ n, P14397033595879747608.a n = A192754 n

end A192754

/-! ## A192754.P3862618421587970577

`∑[A022367(n)/2]`
-/

namespace A192754.P3862618421587970577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022367 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P3862618421587970577

namespace A192754

/-- `∑[A022367(n)/2]` -/
def P3862618421587970577.Spec : Prop :=
  ∀ n, P3862618421587970577.a n = (A192754 n : ℚ)

end A192754

/-! ## A192754.P5803829819964057296

`∑[A022381(n)/3]`
-/

namespace A192754.P5803829819964057296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022381 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P5803829819964057296

namespace A192754

/-- `∑[A022381(n)/3]` -/
def P5803829819964057296.Spec : Prop :=
  ∀ n, P5803829819964057296.a n = (A192754 n : ℚ)

end A192754

/-! ## A192754.P13524517868560100802

`∑[abs(Δ[A171237(n)])]`
-/

namespace A192754.P13524517868560100802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192754.P13524517868560100802

namespace A192754

/-- `∑[abs(Δ[A171237(n)])]` -/
def P13524517868560100802.Spec : Prop :=
  ∀ n, P13524517868560100802.a n = A192754 n

end A192754

/-! ## A192754.P5021845316212285595

`A182415(n+1)-1`
-/

namespace A192754.P5021845316212285595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 (n + 1) - 1

end

end A192754.P5021845316212285595

namespace A192754

/-- `A182415(n+1)-1` -/
def P5021845316212285595.Spec : Prop :=
  ∀ n, P5021845316212285595.a n = A192754 n

end A192754

/-! ## A192754.P14806511551587001170

`A171237(n+1)-2`
-/

namespace A192754.P14806511551587001170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 (n + 1) - 2

end

end A192754.P14806511551587001170

namespace A192754

/-- `A171237(n+1)-2` -/
def P14806511551587001170.Spec : Prop :=
  ∀ n, P14806511551587001170.a n = A192754 n

end A192754

/-! ## A192754.P16673214601175153401

`A022309(n+2)-4`
-/

namespace A192754.P16673214601175153401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 2) - 4

end

end A192754.P16673214601175153401

namespace A192754

/-- `A022309(n+2)-4` -/
def P16673214601175153401.Spec : Prop :=
  ∀ n, P16673214601175153401.a n = A192754 n

end A192754

/-! ## A192754.P10264793626278431604

`A022095(n+2)-5`
-/

namespace A192754.P10264793626278431604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 2) - 5

end

end A192754.P10264793626278431604

namespace A192754

/-- `A022095(n+2)-5` -/
def P10264793626278431604.Spec : Prop :=
  ∀ n, P10264793626278431604.a n = A192754 n

end A192754

/-! ## A192754.P11612645854098559479

`A210677(n+1)+n`
-/

namespace A192754.P11612645854098559479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 (n + 1) + (n : ℤ)

end

end A192754.P11612645854098559479

namespace A192754

/-- `A210677(n+1)+n` -/
def P11612645854098559479.Spec : Prop :=
  ∀ n, P11612645854098559479.a n = A192754 n

end A192754

/-! ## A192754.P7655672910887497696

`A210730(n+1)+1+n`
-/

namespace A192754.P7655672910887497696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 (n + 1) + 1 + (n : ℤ)

end

end A192754.P7655672910887497696

namespace A192754

/-- `A210730(n+1)+1+n` -/
def P7655672910887497696.Spec : Prop :=
  ∀ n, P7655672910887497696.a n = A192754 n

end A192754

/-! ## A192754.P15234163348869013701

`A192964(n+1)+Δ[n²]`
-/

namespace A192754.P15234163348869013701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192754.P15234163348869013701

namespace A192754

/-- `A192964(n+1)+Δ[n²]` -/
def P15234163348869013701.Spec : Prop :=
  ∀ n, P15234163348869013701.a n = A192754 n

end A192754

/-! ## A192754.P9577791061974737430

`A111721(n)+A022088(n)`
-/

namespace A192754.P9577791061974737430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 n + A022088 n

end

end A192754.P9577791061974737430

namespace A192754

/-- `A111721(n)+A022088(n)` -/
def P9577791061974737430.Spec : Prop :=
  ∀ n, P9577791061974737430.a n = A192754 n

end A192754

/-!
# A192755: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192755, the canonical program `A192755.P1771596068933849955` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192755 has offset 0).

The definition of A192755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192755.P1771596068933849955

`∑[a(n-1)+a(n-2)+5]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192755

/-- `∑[a(n-1)+a(n-2)+5]` -/
def P1771596068933849955.Spec : Prop :=
  ∀ n, (P1771596068933849955.a n : ℤ) = A192755 n

theorem P1771596068933849955.correct : P1771596068933849955.Spec := by
  intro n
  simp only [A192755]

end A192755

/-! ## A192755.P15204528843726598148

`∑[2*a(n-1)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A192755.P15204528843726598148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P15204528843726598148

namespace A192755

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P15204528843726598148.Spec : Prop :=
  ∀ n, P15204528843726598148.a n = A192755 n

end A192755

/-! ## A192755.P10246940396534294247

`2*a(n-1)+5-a(n-3)` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A192755.P10246940396534294247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  2 * a (n - 1) + (5 - a (n - 3))

end

end A192755.P10246940396534294247

namespace A192755

/-- `2*a(n-1)+5-a(n-3)` -/
def P10246940396534294247.Spec : Prop :=
  ∀ n, P10246940396534294247.a n = A192755 n

end A192755

/-! ## A192755.P15350278388921333181

`2*a(n-1)-(a(n-3)-5)` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A192755.P15350278388921333181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 5)

end

end A192755.P15350278388921333181

namespace A192755

/-- `2*a(n-1)-(a(n-3)-5)` -/
def P15350278388921333181.Spec : Prop :=
  ∀ n, P15350278388921333181.a n = A192755 n

end A192755

/-! ## A192755.P7293510042646760708

`∑[A182415(n)-1]`
-/

namespace A192755.P7293510042646760708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P7293510042646760708

namespace A192755

/-- `∑[A182415(n)-1]` -/
def P7293510042646760708.Spec : Prop :=
  ∀ n, P7293510042646760708.a n = A192755 n

end A192755

/-! ## A192755.P17182203622440570716

`∑[A171237(n)-2]`
-/

namespace A192755.P17182203622440570716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P17182203622440570716

namespace A192755

/-- `∑[A171237(n)-2]` -/
def P17182203622440570716.Spec : Prop :=
  ∀ n, P17182203622440570716.a n = A192755 n

end A192755

/-! ## A192755.P2270941413969873982

`∑[A210730(n)+n]`
-/

namespace A192755.P2270941413969873982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P2270941413969873982

namespace A192755

/-- `∑[A210730(n)+n]` -/
def P2270941413969873982.Spec : Prop :=
  ∀ n, P2270941413969873982.a n = A192755 n

end A192755

/-! ## A192755.P3846735956222703974

`∑[A022309(n+1)-4]`
-/

namespace A192755.P3846735956222703974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P3846735956222703974

namespace A192755

/-- `∑[A022309(n+1)-4]` -/
def P3846735956222703974.Spec : Prop :=
  ∀ n, P3846735956222703974.a n = A192755 n

end A192755

/-! ## A192755.P9269530592545945849

`∑[A022095(n+1)-5]`
-/

namespace A192755.P9269530592545945849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P9269530592545945849

namespace A192755

/-- `∑[A022095(n+1)-5]` -/
def P9269530592545945849.Spec : Prop :=
  ∀ n, P9269530592545945849.a n = A192755 n

end A192755

/-! ## A192755.P9213893844005317347

`∑[A210677(n)-1+n]`
-/

namespace A192755.P9213893844005317347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P9213893844005317347

namespace A192755

/-- `∑[A210677(n)-1+n]` -/
def P9213893844005317347.Spec : Prop :=
  ∀ n, P9213893844005317347.a n = A192755 n

end A192755

/-! ## A192755.P5703702376510997032

`A192973(n+1)-(n+1)`
-/

namespace A192755.P5703702376510997032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (n + 1) - (n + 1 : ℤ)

end

end A192755.P5703702376510997032

namespace A192755

/-- `A192973(n+1)-(n+1)` -/
def P5703702376510997032.Spec : Prop :=
  ∀ n, P5703702376510997032.a n = A192755 n

end A192755

/-! ## A192755.P17201770076007505165

`A192964(n+2)-3*(n+1)`
-/

namespace A192755.P17201770076007505165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 (n + 2) - (3 * (n + 1) : ℤ)

end

end A192755.P17201770076007505165

namespace A192755

/-- `A192964(n+2)-3*(n+1)` -/
def P17201770076007505165.Spec : Prop :=
  ∀ n, P17201770076007505165.a n = A192755 n

end A192755

/-! ## A192755.P3196199594727228013

`A192965(n+1)+(n+1)*(n-1)`
-/

namespace A192755.P3196199594727228013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192965 (n + 1) + (n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A192755.P3196199594727228013

namespace A192755

/-- `A192965(n+1)+(n+1)*(n-1)` -/
def P3196199594727228013.Spec : Prop :=
  ∀ n, P3196199594727228013.a n = A192755 n

end A192755

/-! ## A192755.P6298783937002627661

`A192753(n)+A065220(n)`
-/

namespace A192755.P6298783937002627661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192753 n + A065220 n

end

end A192755.P6298783937002627661

namespace A192755

/-- `A192753(n)+A065220(n)` -/
def P6298783937002627661.Spec : Prop :=
  ∀ n, P6298783937002627661.a n = A192755 n

end A192755

/-! ## A192755.P15908688626488172820

`A192978(n)-A014283(n)`
-/

namespace A192755.P15908688626488172820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n - A014283 n

end

end A192755.P15908688626488172820

namespace A192755

/-- `A192978(n)-A014283(n)` -/
def P15908688626488172820.Spec : Prop :=
  ∀ n, P15908688626488172820.a n = A192755 n

end A192755

/-! ## A192755.P15989496384599499112

`A192756(n)+A000071(n+1)`
-/

namespace A192755.P15989496384599499112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192756 n + A000071 (n + 1)

end

end A192755.P15989496384599499112

namespace A192755

/-- `A192756(n)+A000071(n+1)` -/
def P15989496384599499112.Spec : Prop :=
  ∀ n, P15989496384599499112.a n = A192755 n

end A192755

/-! ## A192755.P11823320515766426659

`A192951(n)+A192954(n)-1`
-/

namespace A192755.P11823320515766426659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192954 n - 1)

end

end A192755.P11823320515766426659

namespace A192755

/-- `A192951(n)+A192954(n)-1` -/
def P11823320515766426659.Spec : Prop :=
  ∀ n, P11823320515766426659.a n = A192755 n

end A192755

/-! ## A192755.P10678022089960100909

`∑[∑[A022095(n)]-A022095(n)]`
-/

namespace A192755.P10678022089960100909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A022095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192755.P10678022089960100909

namespace A192755

/-- `∑[∑[A022095(n)]-A022095(n)]` -/
def P10678022089960100909.Spec : Prop :=
  ∀ n, P10678022089960100909.a n = A192755 n

end A192755

/-!
# A192756: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192756, the canonical program `A192756.P6899909662621532497` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192756 has offset 0).

The definition of A192756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192756.P6870849409060480500

`∑[round(ϕ*(a(n-1)+2))]` with `a(0)=0, a(1)=1`
-/

namespace A192756.P6870849409060480500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) + 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192756.P6870849409060480500

namespace A192756

/-- `∑[round(ϕ*(a(n-1)+2))]` -/
def P6870849409060480500.Spec : Prop :=
  ∀ n, P6870849409060480500.a n = A192756 n

end A192756

/-! ## A192756.P13371494049112096954

`∑[ceil(ϕ*(a(n-1)+ϕ))]` with `a(0)=0, a(1)=1`
-/

namespace A192756.P13371494049112096954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈Real.goldenRatio * ((f1 (n - 1) : ℝ) + Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192756.P13371494049112096954

namespace A192756

/-- `∑[ceil(ϕ*(a(n-1)+ϕ))]` -/
def P13371494049112096954.Spec : Prop :=
  ∀ n, P13371494049112096954.a n = A192756 n

end A192756

/-! ## A192756.P9626287346185296383

`∑[floor(ϕ*(a(n-1)+2))]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A192756.P9626287346185296383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192756.P9626287346185296383

namespace A192756

/-- `∑[floor(ϕ*(a(n-1)+2))]` -/
def P9626287346185296383.Spec : Prop :=
  ∀ n, P9626287346185296383.a n = A192756 n

end A192756

/-! ## A192756.P11151559568311124792

`∑[3-round(-ϕ*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A192756.P11151559568311124792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (f1 (n - 1) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192756.P11151559568311124792

namespace A192756

/-- `∑[3-round(-ϕ*a(n-1))]` -/
def P11151559568311124792.Spec : Prop :=
  ∀ n, P11151559568311124792.a n = A192756 n

end A192756

/-! ## A192756.P6899909662621532497

`∑[a(n-1)+a(n-2)+5]` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192756

/-- `∑[a(n-1)+a(n-2)+5]` -/
def P6899909662621532497.Spec : Prop :=
  ∀ n, (P6899909662621532497.a n : ℤ) = A192756 n

theorem P6899909662621532497.correct : P6899909662621532497.Spec := by
  intro n
  simp only [A192756]

end A192756

/-! ## A192756.P17158602464381051943

`∑[2*a(n-1)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11`
-/

namespace A192756.P17158602464381051943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192756.P17158602464381051943

namespace A192756

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P17158602464381051943.Spec : Prop :=
  ∀ n, P17158602464381051943.a n = A192756 n

end A192756

/-! ## A192756.P7886327354637052016

`∑[A168193(n)]-n`
-/

namespace A192756.P7886327354637052016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192756.P7886327354637052016

namespace A192756

/-- `∑[A168193(n)]-n` -/
def P7886327354637052016.Spec : Prop :=
  ∀ n, P7886327354637052016.a n = A192756 n

end A192756

/-! ## A192756.P9131562468359867063

`2*A001891(n)-n`
-/

namespace A192756.P9131562468359867063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001891 n - (n : ℤ)

end

end A192756.P9131562468359867063

namespace A192756

/-- `2*A001891(n)-n` -/
def P9131562468359867063.Spec : Prop :=
  ∀ n, P9131562468359867063.a n = A192756 n

end A192756

/-! ## A192756.P4009549198388094425

`∑[A154691(n)-2]+1`
-/

namespace A192756.P4009549198388094425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192756.P4009549198388094425

namespace A192756

/-- `∑[A154691(n)-2]+1` -/
def P4009549198388094425.Spec : Prop :=
  ∀ n, P4009549198388094425.a n = A192756 n

end A192756

/-! ## A192756.P10206174735898846461

`∑[2*A001911(n)]-n`
-/

namespace A192756.P10206174735898846461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192756.P10206174735898846461

namespace A192756

/-- `∑[2*A001911(n)]-n` -/
def P10206174735898846461.Spec : Prop :=
  ∀ n, P10206174735898846461.a n = A192756 n

end A192756

/-! ## A192756.P13208897489083731870

`n²+A192961(n)-n`
-/

namespace A192756.P13208897489083731870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A192961 n - (n : ℤ))

end

end A192756.P13208897489083731870

namespace A192756

/-- `n²+A192961(n)-n` -/
def P13208897489083731870.Spec : Prop :=
  ∀ n, P13208897489083731870.a n = A192756 n

end A192756

/-! ## A192756.P12874652833669056227

`A192748(n+2)-Δ[n²]`
-/

namespace A192756.P12874652833669056227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192756.P12874652833669056227

namespace A192756

/-- `A192748(n+2)-Δ[n²]` -/
def P12874652833669056227.Spec : Prop :=
  ∀ n, P12874652833669056227.a n = A192756 n

end A192756

/-! ## A192756.P12654288044938291749

`∑[∑[A019274(n+1)]]+n²`
-/

namespace A192756.P12654288044938291749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A192756.P12654288044938291749

namespace A192756

/-- `∑[∑[A019274(n+1)]]+n²` -/
def P12654288044938291749.Spec : Prop :=
  ∀ n, P12654288044938291749.a n = A192756 n

end A192756

/-! ## A192756.P11828230575758004584

`A192960(n+1)-3*(n+1)`
-/

namespace A192756.P11828230575758004584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 (n + 1) - (3 * (n + 1) : ℤ)

end

end A192756.P11828230575758004584

namespace A192756

/-- `A192960(n+1)-3*(n+1)` -/
def P11828230575758004584.Spec : Prop :=
  ∀ n, P11828230575758004584.a n = A192756 n

end A192756

/-! ## A192756.P8860102755163950829

`∑[2*A000045(n+3)-5]+1`
-/

namespace A192756.P8860102755163950829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 3) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192756.P8860102755163950829

namespace A192756

/-- `∑[2*A000045(n+3)-5]+1` -/
def P8860102755163950829.Spec : Prop :=
  ∀ n, P8860102755163950829.a n = A192756 n

end A192756

/-! ## A192756.P5798171706908542300

`2*A000045(n+5)-5*(n+2)`
-/

namespace A192756.P5798171706908542300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 5) - (5 * (n + 2) : ℤ)

end

end A192756.P5798171706908542300

namespace A192756

/-- `2*A000045(n+5)-5*(n+2)` -/
def P5798171706908542300.Spec : Prop :=
  ∀ n, P5798171706908542300.a n = A192756 n

end A192756

/-! ## A192756.P14206292246937975277

`A192751(n)+A065220(n)`
-/

namespace A192756.P14206292246937975277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 n + A065220 n

end

end A192756.P14206292246937975277

namespace A192756

/-- `A192751(n)+A065220(n)` -/
def P14206292246937975277.Spec : Prop :=
  ∀ n, P14206292246937975277.a n = A192756 n

end A192756

/-! ## A192756.P11644361971339240708

`A192963(n)-A014283(n)`
-/

namespace A192756.P11644361971339240708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192963 n - A014283 n

end

end A192756.P11644361971339240708

namespace A192756

/-- `A192963(n)-A014283(n)` -/
def P11644361971339240708.Spec : Prop :=
  ∀ n, P11644361971339240708.a n = A192756 n

end A192756

/-!
# A192757: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192757, the canonical program `A192757.P10346380195433472354` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192757 has offset 0).

The definition of A192757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192757.P10346380195433472354

`Δ[A023611(n)]-A014675(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192757

/-- `Δ[A023611(n)]-A014675(n)-a(n-1)` -/
def P10346380195433472354.Spec : Prop :=
  ∀ n, P10346380195433472354.a n = A192757 n

theorem P10346380195433472354.correct : P10346380195433472354.Spec := by
  intro n
  simp only [A192757]

end A192757

/-! ## A192757.P11829977872470452119

`A023611(n)+A023611(n)-A023653(n+1)`
-/

namespace A192757.P11829977872470452119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 n + (A023611 n - A023653 (n + 1))

end

end A192757.P11829977872470452119

namespace A192757

/-- `A023611(n)+A023611(n)-A023653(n+1)` -/
def P11829977872470452119.Spec : Prop :=
  ∀ n, P11829977872470452119.a n = A192757 n

end A192757

/-! ## A192757.P15898958377904006019

`Δ[A023653(n+1)-A023611(n)]`
-/

namespace A192757.P15898958377904006019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023653 (n + 1) - A023611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192757.P15898958377904006019

namespace A192757

/-- `Δ[A023653(n+1)-A023611(n)]` -/
def P15898958377904006019.Spec : Prop :=
  ∀ n, P15898958377904006019.a n = A192757 n

end A192757

/-! ## A192757.P2184570044588406308

`Δ[A023611(n+1)-A000201(n+2)-A023611(n)]`
-/

namespace A192757.P2184570044588406308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023611 (n + 1) - A000201 (n + 2) - A023611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192757.P2184570044588406308

namespace A192757

/-- `Δ[A023611(n+1)-A000201(n+2)-A023611(n)]` -/
def P2184570044588406308.Spec : Prop :=
  ∀ n, P2184570044588406308.a n = A192757 n

end A192757

/-! ## A192757.P1740448644357534966

`Δ[A023621(n+1)-A023653(n+1)]`
-/

namespace A192757.P1740448644357534966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023621 (n + 1) - A023653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192757.P1740448644357534966

namespace A192757

/-- `Δ[A023621(n+1)-A023653(n+1)]` -/
def P1740448644357534966.Spec : Prop :=
  ∀ n, P1740448644357534966.a n = A192757 n

end A192757

/-! ## A192757.P7086439280452186008

`Δ[(A023621(n+1)-A023611(n))/2]`
-/

namespace A192757.P7086439280452186008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023621 (n + 1) - A023611 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192757.P7086439280452186008

namespace A192757

/-- `Δ[(A023621(n+1)-A023611(n))/2]` -/
def P7086439280452186008.Spec : Prop :=
  ∀ n, P7086439280452186008.a n = (A192757 n : ℚ)

end A192757

/-!
# A192758: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192758, the canonical program `A192758.P14548166972359364836` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192758 has offset 1).

The definition of A192758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192758.P14548166972359364836

`ceil(a(n-1)+a(n-2)+n/4)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192758

/-- `ceil(a(n-1)+a(n-2)+n/4)` -/
def P14548166972359364836.Spec : Prop :=
  ∀ n, P14548166972359364836.a n = A192758 (n + 1)

theorem P14548166972359364836.correct : P14548166972359364836.Spec := by
  intro n
  simp only [A192758, Nat.add_sub_cancel]

end A192758

/-! ## A192758.P9155832577321181122

`∑[floor(A293411(n)/2)]`
-/

namespace A192758.P9155832577321181122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293411 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192758.P9155832577321181122

namespace A192758

/-- `∑[floor(A293411(n)/2)]` -/
def P9155832577321181122.Spec : Prop :=
  ∀ n, P9155832577321181122.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P146458369839861295

`∑[round(∑[A000032(n)/5])]`
-/

namespace A192758.P146458369839861295
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192758.P146458369839861295

namespace A192758

/-- `∑[round(∑[A000032(n)/5])]` -/
def P146458369839861295.Spec : Prop :=
  ∀ n, P146458369839861295.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P5718353564511687415

`∑[A000045(n)+a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A192758.P5718353564511687415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  A000045 n + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192758.P5718353564511687415

namespace A192758

/-- `∑[A000045(n)+a(n-4)]` -/
def P5718353564511687415.Spec : Prop :=
  ∀ n, P5718353564511687415.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P9737869450320906344

`A097083(n+1)-A008621(n)`
-/

namespace A192758.P9737869450320906344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 1) - A008621 n

end

end A192758.P9737869450320906344

namespace A192758

/-- `A097083(n+1)-A008621(n)` -/
def P9737869450320906344.Spec : Prop :=
  ∀ n, P9737869450320906344.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P851900358044990338

`A080239(n+2)-A002265(n+5)`
-/

namespace A192758.P851900358044990338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (n + 2) - A002265 (n + 5)

end

end A192758.P851900358044990338

namespace A192758

/-- `A080239(n+2)-A002265(n+5)` -/
def P851900358044990338.Spec : Prop :=
  ∀ n, P851900358044990338.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P18387325337823122036

`A020695(n)-(A008619(A008619(n))+A006498(n))`
-/

namespace A192758.P18387325337823122036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (A008619 (A008619 n).toNat + A006498 n)

end

end A192758.P18387325337823122036

namespace A192758

/-- `A020695(n)-(A008619(A008619(n))+A006498(n))` -/
def P18387325337823122036.Spec : Prop :=
  ∀ n, P18387325337823122036.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P13648189364054614256

`∑[round(ceil(∑[ϕ^n])/5)]`
-/

namespace A192758.P13648189364054614256
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192758.P13648189364054614256

namespace A192758

/-- `∑[round(ceil(∑[ϕ^n])/5)]` -/
def P13648189364054614256.Spec : Prop :=
  ∀ n, P13648189364054614256.a n = A192758 (n + 1)

end A192758

/-! ## A192758.P10620600119019569831

`floor(A000032(n+4)/5)-∑[char[4*n]]`
-/

namespace A192758.P10620600119019569831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (n + 4) : ℚ) / 5⌋ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192758.P10620600119019569831

namespace A192758

/-- `floor(A000032(n+4)/5)-∑[char[4*n]]` -/
def P10620600119019569831.Spec : Prop :=
  ∀ n, P10620600119019569831.a n = A192758 (n + 1)

end A192758

/-!
# A192759: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192759, the canonical program `A192759.P1638705020545309869` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192759 has offset 0).

The definition of A192759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192759.P1638705020545309869

`ceil(a(n-1)+a(n-2)+n/5)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192759

/-- `ceil(a(n-1)+a(n-2)+n/5)` -/
def P1638705020545309869.Spec : Prop :=
  ∀ n, P1638705020545309869.a n = A192759 n

theorem P1638705020545309869.correct : P1638705020545309869.Spec := by
  intro n
  simp only [A192759]

end A192759

/-! ## A192759.P16272763564879994299

`∑[round(Δ[A020695(n)/(4-ϕ)])]`
-/

namespace A192759.P16272763564879994299
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020695 n : ℝ) / (4 - Real.goldenRatio)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192759.P16272763564879994299

namespace A192759

/-- `∑[round(Δ[A020695(n)/(4-ϕ)])]` -/
def P16272763564879994299.Spec : Prop :=
  ∀ n, P16272763564879994299.a n = A192759 n

end A192759

/-! ## A192759.P15410074793386439832

`∑[round(A000285(n+2)/11)]`
-/

namespace A192759.P15410074793386439832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000285 (n + 2) : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192759.P15410074793386439832

namespace A192759

/-- `∑[round(A000285(n+2)/11)]` -/
def P15410074793386439832.Spec : Prop :=
  ∀ n, P15410074793386439832.a n = A192759 n

end A192759

/-! ## A192759.P1808486197177711130

`∑[round(Δ[A022308(n+3)/11])]`
-/

namespace A192759.P1808486197177711130
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022308 (n + 3) : ℚ) / 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192759.P1808486197177711130

namespace A192759

/-- `∑[round(Δ[A022308(n+3)/11])]` -/
def P1808486197177711130.Spec : Prop :=
  ∀ n, P1808486197177711130.a n = A192759 n

end A192759

/-! ## A192759.P13627135654920965329

`∑[round(Δ[A104449(n+4)/11])]`
-/

namespace A192759.P13627135654920965329
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104449 (n + 4) : ℚ) / 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192759.P13627135654920965329

namespace A192759

/-- `∑[round(Δ[A104449(n+4)/11])]` -/
def P13627135654920965329.Spec : Prop :=
  ∀ n, P13627135654920965329.a n = A192759 n

end A192759

/-!
# A192760: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192760, the canonical program `A192760.P17355774611942595853` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192760 has offset 0).

The definition of A192760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192760.P3096389450180464641

`∑[ceil(ϕ*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192760.P3096389450180464641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192760.P3096389450180464641

namespace A192760

/-- `∑[ceil(ϕ*a(n-1))]` -/
def P3096389450180464641.Spec : Prop :=
  ∀ n, P3096389450180464641.a n = A192760 n

end A192760

/-! ## A192760.P18076763364878559122

`floor((n+2)/ϕ+ϕ*a(n-1))` with `a(0)=0`
-/

namespace A192760.P18076763364878559122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio + Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A192760.P18076763364878559122

namespace A192760

/-- `floor((n+2)/ϕ+ϕ*a(n-1))` -/
def P18076763364878559122.Spec : Prop :=
  ∀ n, P18076763364878559122.a n = A192760 n

end A192760

/-! ## A192760.P17355774611942595853

`∑[a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192760

/-- `∑[a(n-1)+a(n-2)+1]` -/
def P17355774611942595853.Spec : Prop :=
  ∀ n, (P17355774611942595853.a n : ℤ) = A192760 n

theorem P17355774611942595853.correct : P17355774611942595853.Spec := by
  intro n
  simp only [A192760]

end A192760

/-! ## A192760.P297090327305535357

`n+1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192760.P297090327305535357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n + 1 + (a (n - 1) + a (n - 2))

end

end A192760.P297090327305535357

namespace A192760

/-- `n+1+a(n-1)+a(n-2)` -/
def P297090327305535357.Spec : Prop :=
  ∀ n, (P297090327305535357.a n : ℤ) = A192760 n

end A192760

/-! ## A192760.P12526264698808681242

`1-(a(n-3)-2*a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192760.P12526264698808681242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  1 - (a (n - 3) - 2 * a (n - 1))

end

end A192760.P12526264698808681242

namespace A192760

/-- `1-(a(n-3)-2*a(n-1))` -/
def P12526264698808681242.Spec : Prop :=
  ∀ n, P12526264698808681242.a n = A192760 n

end A192760

/-! ## A192760.P3304665472076381706

`n-∑[a(n-1)-(2-a(n-2))]` with `a(0)=0, a(1)=0`
-/

namespace A192760.P3304665472076381706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192760.P3304665472076381706

namespace A192760

/-- `n-∑[a(n-1)-(2-a(n-2))]` -/
def P3304665472076381706.Spec : Prop :=
  ∀ n, P3304665472076381706.a n = A192760 n

end A192760

/-! ## A192760.P4813290137476471252

`1-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192760.P4813290137476471252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  1 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A192760.P4813290137476471252

namespace A192760

/-- `1-(a(n-3)-a(n-1)-a(n-1))` -/
def P4813290137476471252.Spec : Prop :=
  ∀ n, P4813290137476471252.a n = A192760 n

end A192760

/-! ## A192760.P13143021128266621122

`A168193(n)-n`
-/

namespace A192760.P13143021128266621122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n - (n : ℤ)

end

end A192760.P13143021128266621122

namespace A192760

/-- `A168193(n)-n` -/
def P13143021128266621122.Spec : Prop :=
  ∀ n, P13143021128266621122.a n = A192760 n

end A192760

/-! ## A192760.P17153641230806809931

`∑[A001595(n)]-1`
-/

namespace A192760.P17153641230806809931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192760.P17153641230806809931

namespace A192760

/-- `∑[A001595(n)]-1` -/
def P17153641230806809931.Spec : Prop :=
  ∀ n, P17153641230806809931.a n = A192760 n

end A192760

/-! ## A192760.P5778455182172364282

`A104161(n+1)-1`
-/

namespace A192760.P5778455182172364282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 (n + 1) - 1

end

end A192760.P5778455182172364282

namespace A192760

/-- `A104161(n+1)-1` -/
def P5778455182172364282.Spec : Prop :=
  ∀ n, P5778455182172364282.a n = A192760 n

end A192760

/-! ## A192760.P836716950245509630

`A131269(n+1)-2`
-/

namespace A192760.P836716950245509630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 (n + 1) - 2

end

end A192760.P836716950245509630

namespace A192760

/-- `A131269(n+1)-2` -/
def P836716950245509630.Spec : Prop :=
  ∀ n, P836716950245509630.a n = A192760 n

end A192760

/-! ## A192760.P12988058916100648236

`A154691(n)-(n+1)`
-/

namespace A192760.P12988058916100648236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - (n + 1 : ℤ)

end

end A192760.P12988058916100648236

namespace A192760

/-- `A154691(n)-(n+1)` -/
def P12988058916100648236.Spec : Prop :=
  ∀ n, P12988058916100648236.a n = A192760 n

end A192760

/-! ## A192760.P4203345477295096474

`2*A001911(n)-n`
-/

namespace A192760.P4203345477295096474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001911 n - (n : ℤ)

end

end A192760.P4203345477295096474

namespace A192760

/-- `2*A001911(n)-n` -/
def P4203345477295096474.Spec : Prop :=
  ∀ n, P4203345477295096474.a n = A192760 n

end A192760

/-! ## A192760.P3556651605828258413

`∑[∑[A006355(n)]]-1`
-/

namespace A192760.P3556651605828258413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192760.P3556651605828258413

namespace A192760

/-- `∑[∑[A006355(n)]]-1` -/
def P3556651605828258413.Spec : Prop :=
  ∀ n, P3556651605828258413.a n = A192760 n

end A192760

/-! ## A192760.P16011995426570723673

`∑[A128588(n+1)-1]`
-/

namespace A192760.P16011995426570723673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192760.P16011995426570723673

namespace A192760

/-- `∑[A128588(n+1)-1]` -/
def P16011995426570723673.Spec : Prop :=
  ∀ n, P16011995426570723673.a n = A192760 n

end A192760

/-! ## A192760.P18322041282342576859

`∑[A019274(n+1)]+n`
-/

namespace A192760.P18322041282342576859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A192760.P18322041282342576859

namespace A192760

/-- `∑[A019274(n+1)]+n` -/
def P18322041282342576859.Spec : Prop :=
  ∀ n, P18322041282342576859.a n = A192760 n

end A192760

/-! ## A192760.P3800769303854461522

`A001595(n+2)-(n+3)`
-/

namespace A192760.P3800769303854461522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) - (n + 3 : ℤ)

end

end A192760.P3800769303854461522

namespace A192760

/-- `A001595(n+2)-(n+3)` -/
def P3800769303854461522.Spec : Prop :=
  ∀ n, P3800769303854461522.a n = A192760 n

end A192760

/-! ## A192760.P16698556359000501483

`A019274(n+3)-(n+2)`
-/

namespace A192760.P16698556359000501483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 3) - (n + 2 : ℤ)

end

end A192760.P16698556359000501483

namespace A192760

/-- `A019274(n+3)-(n+2)` -/
def P16698556359000501483.Spec : Prop :=
  ∀ n, P16698556359000501483.a n = A192760 n

end A192760

/-! ## A192760.P1627710408514933573

`A078642(n+1)-(n+4)`
-/

namespace A192760.P1627710408514933573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - (n + 4 : ℤ)

end

end A192760.P1627710408514933573

namespace A192760

/-- `A078642(n+1)-(n+4)` -/
def P1627710408514933573.Spec : Prop :=
  ∀ n, P1627710408514933573.a n = A192760 n

end A192760

/-!
# A192761: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192761, the canonical program `A192761.P3688288370924065045` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192761 has offset 0).

The definition of A192761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192761.P3688288370924065045

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192761

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P3688288370924065045.Spec : Prop :=
  ∀ n, P3688288370924065045.a n = A192761 n

theorem P3688288370924065045.correct : P3688288370924065045.Spec := by
  intro n
  simp only [A192761]

end A192761

/-! ## A192761.P16563502021975776916

`∑[a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192761.P16563502021975776916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192761.P16563502021975776916

namespace A192761

/-- `∑[a(n-1)+a(n-2)+1]` -/
def P16563502021975776916.Spec : Prop :=
  ∀ n, (P16563502021975776916.a n : ℤ) = A192761 n

end A192761

/-! ## A192761.P2887349439208876851

`a(n-1)+2+a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A192761.P2887349439208876851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 2 + (a (n - 2) + n)

end

end A192761.P2887349439208876851

namespace A192761

/-- `a(n-1)+2+a(n-2)+n` -/
def P2887349439208876851.Spec : Prop :=
  ∀ n, (P2887349439208876851.a n : ℤ) = A192761 n

end A192761

/-! ## A192761.P12492809045866053487

`1-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A192761.P12492809045866053487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  1 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A192761.P12492809045866053487

namespace A192761

/-- `1-(a(n-3)-a(n-1)-a(n-1))` -/
def P12492809045866053487.Spec : Prop :=
  ∀ n, P12492809045866053487.a n = A192761 n

end A192761

/-! ## A192761.P4905077323428253328

`A192969(n)-1`
-/

namespace A192761.P4905077323428253328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - 1

end

end A192761.P4905077323428253328

namespace A192761

/-- `A192969(n)-1` -/
def P4905077323428253328.Spec : Prop :=
  ∀ n, P4905077323428253328.a n = A192761 n

end A192761

/-! ## A192761.P13164842166162596599

`A192979(n)-1+n`
-/

namespace A192761.P13164842166162596599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - 1 + (n : ℤ)

end

end A192761.P13164842166162596599

namespace A192761

/-- `A192979(n)-1+n` -/
def P13164842166162596599.Spec : Prop :=
  ∀ n, P13164842166162596599.a n = A192761 n

end A192761

/-! ## A192761.P52683925335135067

`∑[A013655(n)-1]-2`
-/

namespace A192761.P52683925335135067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A192761.P52683925335135067

namespace A192761

/-- `∑[A013655(n)-1]-2` -/
def P52683925335135067.Spec : Prop :=
  ∀ n, P52683925335135067.a n = A192761 n

end A192761

/-! ## A192761.P5788676241848265660

`A013915(n+2)-(2*n+7)`
-/

namespace A192761.P5788676241848265660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 (n + 2) - (2 * n + 7 : ℤ)

end

end A192761.P5788676241848265660

namespace A192761

/-- `A013915(n+2)-(2*n+7)` -/
def P5788676241848265660.Spec : Prop :=
  ∀ n, P5788676241848265660.a n = A192761 n

end A192761

/-! ## A192761.P2944791629474283296

`A210730(n)+A000045(n)`
-/

namespace A192761.P2944791629474283296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A000045 n

end

end A192761.P2944791629474283296

namespace A192761

/-- `A210730(n)+A000045(n)` -/
def P2944791629474283296.Spec : Prop :=
  ∀ n, P2944791629474283296.a n = A192761 n

end A192761

/-! ## A192761.P3369118006446687253

`A192979(n)+A023443(n)`
-/

namespace A192761.P3369118006446687253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n + A023443 n

end

end A192761.P3369118006446687253

namespace A192761

/-- `A192979(n)+A023443(n)` -/
def P3369118006446687253.Spec : Prop :=
  ∀ n, P3369118006446687253.a n = A192761 n

end A192761

/-! ## A192761.P17811264390723480465

`A001891(n)-A065220(n)`
-/

namespace A192761.P17811264390723480465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n - A065220 n

end

end A192761.P17811264390723480465

namespace A192761

/-- `A001891(n)-A065220(n)` -/
def P17811264390723480465.Spec : Prop :=
  ∀ n, P17811264390723480465.a n = A192761 n

end A192761

/-! ## A192761.P3289998453600034541

`A192979(n)-A024000(n)`
-/

namespace A192761.P3289998453600034541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - A024000 n

end

end A192761.P3289998453600034541

namespace A192761

/-- `A192979(n)-A024000(n)` -/
def P3289998453600034541.Spec : Prop :=
  ∀ n, P3289998453600034541.a n = A192761 n

end A192761

/-! ## A192761.P9575460801111114251

`A210678(n)-A212804(n)`
-/

namespace A192761.P9575460801111114251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - A212804 n

end

end A192761.P9575460801111114251

namespace A192761

/-- `A210678(n)-A212804(n)` -/
def P9575460801111114251.Spec : Prop :=
  ∀ n, P9575460801111114251.a n = A192761 n

end A192761

/-! ## A192761.P17544226514649848648

`A019274(n+1)+A001924(n)`
-/

namespace A192761.P17544226514649848648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + A001924 n

end

end A192761.P17544226514649848648

namespace A192761

/-- `A019274(n+1)+A001924(n)` -/
def P17544226514649848648.Spec : Prop :=
  ∀ n, P17544226514649848648.a n = A192761 n

end A192761

/-! ## A192761.P6756747311694017640

`A192760(n)+A000071(n+1)`
-/

namespace A192761.P6756747311694017640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + A000071 (n + 1)

end

end A192761.P6756747311694017640

namespace A192761

/-- `A192760(n)+A000071(n+1)` -/
def P6756747311694017640.Spec : Prop :=
  ∀ n, P6756747311694017640.a n = A192761 n

end A192761

/-! ## A192761.P10580080221930916007

`A001595(n)+A001924(n)-1`
-/

namespace A192761.P10580080221930916007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A001924 n - 1)

end

end A192761.P10580080221930916007

namespace A192761

/-- `A001595(n)+A001924(n)-1` -/
def P10580080221930916007.Spec : Prop :=
  ∀ n, P10580080221930916007.a n = A192761 n

end A192761

/-! ## A192761.P5655035399433716688

`A192762(n)-A000071(n+1)`
-/

namespace A192761.P5655035399433716688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n - A000071 (n + 1)

end

end A192761.P5655035399433716688

namespace A192761

/-- `A192762(n)-A000071(n+1)` -/
def P5655035399433716688.Spec : Prop :=
  ∀ n, P5655035399433716688.a n = A192761 n

end A192761

/-! ## A192761.P414845283844311647

`A002062(n)+A192964(n)-1`
-/

namespace A192761.P414845283844311647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (A192964 n - 1)

end

end A192761.P414845283844311647

namespace A192761

/-- `A002062(n)+A192964(n)-1` -/
def P414845283844311647.Spec : Prop :=
  ∀ n, P414845283844311647.a n = A192761 n

end A192761

/-! ## A192761.P4232153216240992712

`A000045(n)+A210677(n)-1`
-/

namespace A192761.P4232153216240992712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A210677 n - 1)

end

end A192761.P4232153216240992712

namespace A192761

/-- `A000045(n)+A210677(n)-1` -/
def P4232153216240992712.Spec : Prop :=
  ∀ n, P4232153216240992712.a n = A192761 n

end A192761

/-!
# A192762: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x) defined below in Comments.

The programs for A192762, the canonical program `A192762.P11696652505136177306` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192762 has offset 0).

The definition of A192762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192762.P11696652505136177306

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192762

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P11696652505136177306.Spec : Prop :=
  ∀ n, P11696652505136177306.a n = A192762 n

theorem P11696652505136177306.correct : P11696652505136177306.Spec := by
  intro n
  simp only [A192762]

end A192762

/-! ## A192762.P16850044568277246987

`2*(round(ϕ^(n+2))-3)-n`
-/

namespace A192762.P16850044568277246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2)) - 3) - (n : ℤ)

end

end A192762.P16850044568277246987

namespace A192762

/-- `2*(round(ϕ^(n+2))-3)-n` -/
def P16850044568277246987.Spec : Prop :=
  ∀ n, P16850044568277246987.a n = A192762 n

end A192762

/-! ## A192762.P15290465516108079086

`∑[a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A192762.P15290465516108079086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192762.P15290465516108079086

namespace A192762

/-- `∑[a(n-1)+a(n-2)+1]` -/
def P15290465516108079086.Spec : Prop :=
  ∀ n, (P15290465516108079086.a n : ℤ) = A192762 n

end A192762

/-! ## A192762.P13474393257238182366

`abs(1-A210728(n))`
-/

namespace A192762.P13474393257238182366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A210728 n|

end

end A192762.P13474393257238182366

namespace A192762

/-- `abs(1-A210728(n))` -/
def P13474393257238182366.Spec : Prop :=
  ∀ n, P13474393257238182366.a n = A192762 n

end A192762

/-! ## A192762.P13978019845656500962

`abs(2-A179991(n+1))`
-/

namespace A192762.P13978019845656500962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A179991 (n + 1)|

end

end A192762.P13978019845656500962

namespace A192762

/-- `abs(2-A179991(n+1))` -/
def P13978019845656500962.Spec : Prop :=
  ∀ n, P13978019845656500962.a n = A192762 n

end A192762

/-! ## A192762.P2371154638278372834

`abs(A192954(n)-1+n)`
-/

namespace A192762.P2371154638278372834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192954 n - 1 + (n : ℤ)|

end

end A192762.P2371154638278372834

namespace A192762

/-- `abs(A192954(n)-1+n)` -/
def P2371154638278372834.Spec : Prop :=
  ∀ n, P2371154638278372834.a n = A192762 n

end A192762

/-! ## A192762.P532523713584154206

`abs(2*A066982(n+1)+n-2)`
-/

namespace A192762.P532523713584154206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A066982 (n + 1) + ((n : ℤ) - 2)|

end

end A192762.P532523713584154206

namespace A192762

/-- `abs(2*A066982(n+1)+n-2)` -/
def P532523713584154206.Spec : Prop :=
  ∀ n, P532523713584154206.a n = A192762 n

end A192762

/-! ## A192762.P11854385465270029954

`record[A179991(A123390(n+1))-2]`
-/

namespace A192762.P11854385465270029954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (A123390 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192762.P11854385465270029954

namespace A192762

/-- `record[A179991(A123390(n+1))-2]` -/
def P11854385465270029954.Spec : Prop :=
  ∀ n, P11854385465270029954.a n = A192762 n

end A192762

/-! ## A192762.P3384485350153800629

`record[A192969(n)-A022095(n)]`
-/

namespace A192762.P3384485350153800629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - A022095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192762.P3384485350153800629

namespace A192762

/-- `record[A192969(n)-A022095(n)]` -/
def P3384485350153800629.Spec : Prop :=
  ∀ n, P3384485350153800629.a n = A192762 n

end A192762

/-! ## A192762.P16299319109073363528

`(A210675(n)+A192761(n))/2`
-/

namespace A192762.P16299319109073363528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210675 n + A192761 n : ℚ) / 2

end

end A192762.P16299319109073363528

namespace A192762

/-- `(A210675(n)+A192761(n))/2` -/
def P16299319109073363528.Spec : Prop :=
  ∀ n, P16299319109073363528.a n = (A192762 n : ℚ)

end A192762

/-!
# A192764: Numbers k such that 2^(k-1)+2*k-1 is a prime number.

The programs for A192764, there is no canonical definition to state claims against.
-/

/-! ## A192764.P16347873732760472917

`A301634(n+1)+1`
-/

namespace A192764.P16347873732760472917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301634 (n + 1) + 1

end

end A192764.P16347873732760472917

/-!
# A192765: Number of n X n symmetric 0..2 arrays with each element equal to at least one horizontal or vertical neighbor, containing at least one 2 and with new values 0..2 introduced in lower triangular row major order.

The programs for A192765, there is no canonical definition to state claims against.
-/

/-! ## A192765.P9310433254640491729

`A030568(C(A000108(n), n))`
-/

namespace A192765.P9310433254640491729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030568 (Nat.choose (A000108 n).toNat n)

end

end A192765.P9310433254640491729

/-!
# A192766: Number of n X n symmetric 0..3 arrays with each element equal to at least one horizontal or vertical neighbor, containing at least one 3 and with new values 0..3 introduced in lower triangular row major order.

The programs for A192766, there is no canonical definition to state claims against.
-/

/-! ## A192766.P6218081161024636899

`A192640(n+1)-A192639(n+1)`
-/

namespace A192766.P6218081161024636899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192640 (n + 1) - A192639 (n + 1)

end

end A192766.P6218081161024636899

/-! ## A192766.P14639320330045612291

`A192641(n+1)-(A192767(n+1)+A192639(n+1))`
-/

namespace A192766.P14639320330045612291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192641 (n + 1) - (A192767 (n + 1) + A192639 (n + 1))

end

end A192766.P14639320330045612291

/-!
# A192767: Number of n X n symmetric 0..4 arrays with each element equal to at least one horizontal or vertical neighbor, containing at least one 4 and with new values 0..4 introduced in lower triangular row major order.

The programs for A192767, there is no canonical definition to state claims against.
-/

/-! ## A192767.P13006873404956886739

`A192641(n+1)-A192640(n+1)`
-/

namespace A192767.P13006873404956886739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192641 (n + 1) - A192640 (n + 1)

end

end A192767.P13006873404956886739

/-! ## A192767.P6672180174087689578

`A192641(n+1)-(A192766(n+1)+A192639(n+1))`
-/

namespace A192767.P6672180174087689578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192641 (n + 1) - (A192766 (n + 1) + A192639 (n + 1))

end

end A192767.P6672180174087689578

/-!
# A192768: G.f. satisfies: A(x) = Product_{n>=1} 1/(1 - x^n*A(x)^(n^2)).

The programs for A192768, there is no canonical definition to state claims against.
-/

/-! ## A192768.P5076367397561907121

`A265522(a(n-1))+n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A192768.P5076367397561907121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265522 (a (n - 1)).toNat + (n : ℤ) * a (n - 1)

end

end A192768.P5076367397561907121

/-! ## A192768.P12321668263112421232

`A108954(A370474(n))`
-/

namespace A192768.P12321668263112421232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A370474 n).toNat

end

end A192768.P12321668263112421232

/-!
# A192769: G.f. satisfies: A(x) = exp( Sum_{n>=} (x^n/n)*[Sum_{d|n} d*A(x)^d]^n ).

The programs for A192769, there is no canonical definition to state claims against.
-/

/-! ## A192769.P13757993732233195971

`A131452((n-1)^(n+2)+n+1)`
-/

namespace A192769.P13757993732233195971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (((n : ℤ) - 1) ^ (n + 2) + (n + 1 : ℤ)).toNat

end

end A192769.P13757993732233195971

/-!
# A192770: Numbers k such that k^2 + 1 is divisible by precisely four distinct primes where the sum of the largest and the smallest is equal to the sum of the other two.

The programs for A192770, there is no canonical definition to state claims against.
-/

/-! ## A192770.P9926068200361738948

`filter[A215950(n+1), A117567(#)]`
-/

namespace A192770.P9926068200361738948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117567 (f1 j).toNat = 1) n)

end

end A192770.P9926068200361738948

/-! ## A192770.P11372789440097133865

`filter[A199924(n+1), A369048(#)]`
-/

namespace A192770.P11372789440097133865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A192770.P11372789440097133865

/-! ## A192770.P496204769242363024

`filter[A215950(n+1), A355447(#)]`
-/

namespace A192770.P496204769242363024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A192770.P496204769242363024

/-!
# A192771: Numbers k such that k^2 + 1 is divisible by precisely five distinct primes where the sum of the largest and the smallest is equal to the sum of the other three.

The programs for A192771, there is no canonical definition to state claims against.
-/

/-! ## A192771.P5053324158695871224

`filter[A199924(n+1), A039982(#)]`
-/

namespace A192771.P5053324158695871224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A192771.P5053324158695871224

/-! ## A192771.P8459316108794926474

`filter[A199924(n+1), A098725(#)]`
-/

namespace A192771.P8459316108794926474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A192771.P8459316108794926474

/-! ## A192771.P5599264516799920583

`filter[A199924(n+1), A166486(#)]`
-/

namespace A192771.P5599264516799920583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A192771.P5599264516799920583

/-! ## A192771.P2452213120703765886

`filter[A199924(n+1), A323158(#)]`
-/

namespace A192771.P2452213120703765886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A192771.P2452213120703765886

/-! ## A192771.P1469065194984781694

`filter[A199924(n+1), A324908(#)]`
-/

namespace A192771.P1469065194984781694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A192771.P1469065194984781694

/-!
# A192772: Constant term in the reduction of the n-th Fibonacci polynomial by x^3->x^2+2x+1.

The programs for A192772, there is no canonical definition to state claims against.
-/

/-! ## A192772.P6417865441845739818

`A192774(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A192772.P6417865441845739818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A192774 n + a (n - 2)

end

end A192772.P6417865441845739818

/-! ## A192772.P12122241301206077895

`A303788(A192777(n+1)^A273190(n))`
-/

namespace A192772.P12122241301206077895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (SequenceMachineLib.roundAway ((A192777 (n + 1) : ℚ) ^ (A273190 n : ℤ))).toNat

end

end A192772.P12122241301206077895

/-! ## A192772.P1438006106759067774

`A303788(C(A192777(n+1), A273190(n)))`
-/

namespace A192772.P1438006106759067774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (Nat.choose (A192777 (n + 1)).toNat (A273190 n).toNat)

end

end A192772.P1438006106759067774

/-! ## A192772.P2366633931135963154

`A303788(A192777(n+1)^A147395(n+1))`
-/

namespace A192772.P2366633931135963154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (SequenceMachineLib.roundAway ((A192777 (n + 1) : ℚ) ^ (A147395 (n + 1) : ℤ))).toNat

end

end A192772.P2366633931135963154

/-! ## A192772.P12218821439691522450

`A303788(A192777(n+1)^A147401(n+1))`
-/

namespace A192772.P12218821439691522450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (SequenceMachineLib.roundAway ((A192777 (n + 1) : ℚ) ^ (A147401 (n + 1) : ℤ))).toNat

end

end A192772.P12218821439691522450

/-!
# A192775: The numbers n^2 as n runs through the numbers which are palindromes in base 2.

The programs for A192775, the canonical program `A192775.P9811464463579055224` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192775 has offset 1).

The definition of A192775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192775.P9811464463579055224

`A006995(n+1)²`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A192775

/-- `A006995(n+1)²` -/
def P9811464463579055224.Spec : Prop :=
  ∀ n, P9811464463579055224.a n = A192775 (n + 1)

theorem P9811464463579055224.correct : P9811464463579055224.Spec := by
  intro n
  simp only [A192775, Nat.add_sub_cancel]

end A192775

/-! ## A192775.P8568526214797105795

`eq[0, A178226(n)]²`
-/

namespace A192775.P8568526214797105795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A192775.P8568526214797105795

namespace A192775

/-- `eq[0, A178226(n)]²` -/
def P8568526214797105795.Spec : Prop :=
  ∀ n, (P8568526214797105795.a n : ℤ) = A192775 (n + 1)

end A192775

/-! ## A192775.P10524747152588201706

`eq[0, A303534(n)]²`
-/

namespace A192775.P10524747152588201706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A192775.P10524747152588201706

namespace A192775

/-- `eq[0, A303534(n)]²` -/
def P10524747152588201706.Spec : Prop :=
  ∀ n, (P10524747152588201706.a n : ℤ) = A192775 (n + 1)

end A192775

/-! ## A192775.P10182039272026728643

`eq[0, A055945(n)]²`
-/

namespace A192775.P10182039272026728643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A192775.P10182039272026728643

namespace A192775

/-- `eq[0, A055945(n)]²` -/
def P10182039272026728643.Spec : Prop :=
  ∀ n, (P10182039272026728643.a n : ℤ) = A192775 (n + 1)

end A192775

/-! ## A192775.P6284442424177059108

`eq[0, A175919(n)]²`
-/

namespace A192775.P6284442424177059108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A192775.P6284442424177059108

namespace A192775

/-- `eq[0, A175919(n)]²` -/
def P6284442424177059108.Spec : Prop :=
  ∀ n, (P6284442424177059108.a n : ℤ) = A192775 (n + 1)

end A192775

/-! ## A192775.P1411210547286817875

`eq[0, A193239(n)]²`
-/

namespace A192775.P1411210547286817875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A192775.P1411210547286817875

namespace A192775

/-- `eq[0, A193239(n)]²` -/
def P1411210547286817875.Spec : Prop :=
  ∀ n, (P1411210547286817875.a n : ℤ) = A192775 (n + 1)

end A192775

/-! ## A192775.P8859820823900779198

`record[A330717(n)²]`
-/

namespace A192775.P8859820823900779198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192775.P8859820823900779198

namespace A192775

/-- `record[A330717(n)²]` -/
def P8859820823900779198.Spec : Prop :=
  ∀ n, P8859820823900779198.a n = A192775 (n + 1)

end A192775

/-! ## A192775.P6765431554743950349

`record[A331471(n)²]`
-/

namespace A192775.P6765431554743950349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192775.P6765431554743950349

namespace A192775

/-- `record[A331471(n)²]` -/
def P6765431554743950349.Spec : Prop :=
  ∀ n, P6765431554743950349.a n = A192775 (n + 1)

end A192775

/-! ## A192775.P14512347693249216001

`record[A331804(n)²]`
-/

namespace A192775.P14512347693249216001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192775.P14512347693249216001

namespace A192775

/-- `record[A331804(n)²]` -/
def P14512347693249216001.Spec : Prop :=
  ∀ n, P14512347693249216001.a n = A192775 (n + 1)

end A192775

/-! ## A192775.P8145951567751076680

`eq[0, A344220(n)]²`
-/

namespace A192775.P8145951567751076680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A192775.P8145951567751076680

namespace A192775

/-- `eq[0, A344220(n)]²` -/
def P8145951567751076680.Spec : Prop :=
  ∀ n, (P8145951567751076680.a n : ℤ) = A192775 (n + 1)

end A192775

/-!
# A192776: Squares of binary palindromes.

The programs for A192776, there is no canonical definition to state claims against.
-/

/-! ## A192776.P8216177937106832844

`A001737(A006995(n+1))`
-/

namespace A192776.P8216177937106832844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (A006995 (n + 1)).toNat

end

end A192776.P8216177937106832844

/-! ## A192776.P12031224178738173775

`A001737(record[gcd(n, A175298(n))])`
-/

namespace A192776.P12031224178738173775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A175298 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A192776.P12031224178738173775

/-! ## A192776.P1468720757286558688

`A001737(record[and(n, A030101(n))])`
-/

namespace A192776.P1468720757286558688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A030101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192776.P1468720757286558688

/-! ## A192776.P14945507857030841557

`A001737(record[A175298(n)%(n+1)])`
-/

namespace A192776.P14945507857030841557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175298 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192776.P14945507857030841557

/-! ## A192776.P14353493242970499451

`A001737(record[A206914(n)%(n+1)])`
-/

namespace A192776.P14353493242970499451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206914 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192776.P14353493242970499451

/-!
# A192777: Constant term in the reduction of the n-th Fibonacci polynomial by x^3->x^2+3x+1. See Comments.

The programs for A192777, there is no canonical definition to state claims against.
-/

/-! ## A192777.P4710030691512955994

`A192779(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A192777.P4710030691512955994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A192779 n + a (n - 2)

end

end A192777.P4710030691512955994

/-!
# A192778: Coefficient of x in the reduction of the n-th Fibonacci polynomial by x^3->x^2+3x+1.

The programs for A192778, there is no canonical definition to state claims against.
-/

/-! ## A192778.P7002253718822646883

`A099626(n)-2*A192779(n+1)`
-/

namespace A192778.P7002253718822646883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099626 n - 2 * A192779 (n + 1)

end

end A192778.P7002253718822646883

/-! ## A192778.P7635586953986744246

`Δ[A192779(n+1)]-A192779(A028310(n))`
-/

namespace A192778.P7635586953986744246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192779 (A028310 n).toNat

end

end A192778.P7635586953986744246

/-! ## A192778.P2143518997097330395

`A099626(n)-A005843(A192779(n+1))`
-/

namespace A192778.P2143518997097330395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099626 n - A005843 (A192779 (n + 1)).toNat

end

end A192778.P2143518997097330395

/-!
# A192779: Coefficient of x^2 in the reduction of the n-th Fibonacci polynomial by x^3->x^2+3x+1.

The programs for A192779, there is no canonical definition to state claims against.
-/

/-! ## A192779.P6805020117405690727

`(A099626(n)-A192778(n+1))/2`
-/

namespace A192779.P6805020117405690727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099626 n - A192778 (n + 1) : ℚ) / 2

end

end A192779.P6805020117405690727

/-! ## A192779.P4984364091125488209

`A004525(A099626(n)-A192778(n+1))`
-/

namespace A192779.P4984364091125488209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A099626 n - A192778 (n + 1)).toNat

end

end A192779.P4984364091125488209

/-! ## A192779.P814863187513060469

`A004526(A099626(n)-A192778(n+1))`
-/

namespace A192779.P814863187513060469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A099626 n - A192778 (n + 1)).toNat

end

end A192779.P814863187513060469

/-! ## A192779.P11767323242561406524

`A033862(A148023(n))-A208644(A046640(3*n+1))`
-/

namespace A192779.P11767323242561406524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148023 n).toNat - A208644 (A046640 (3 * n + 1)).toNat

end

end A192779.P11767323242561406524

/-!
# A192780: Constant term in the reduction of the n-th Fibonacci polynomial by x^3->x^2+1. See Comments.

The programs for A192780, there is no canonical definition to state claims against.
-/

/-! ## A192780.P10571551093289373629

`A192782(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A192780.P10571551093289373629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A192782 n + a (n - 2)

end

end A192780.P10571551093289373629

/-! ## A192780.P11324714730801235611

`A192781(n+2)-A192781(A028310(n))`
-/

namespace A192780.P11324714730801235611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192781 (n + 2) - A192781 (A028310 n).toNat

end

end A192780.P11324714730801235611

/-! ## A192780.P11923049146017078967

`Δ[A192781(n+1)+A192781(A028310(n))]`
-/

namespace A192780.P11923049146017078967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192781 (n + 1) + A192781 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192780.P11923049146017078967

/-! ## A192780.P9035124817235107223

`∑[A291219(n+2)-Δ[A291219(n+2)]]`
-/

namespace A192780.P9035124817235107223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192780.P9035124817235107223

/-! ## A192780.P10607146093270267787

`A271315(∑[∑[A173758(n)]-1])`
-/

namespace A192780.P10607146093270267787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192780.P10607146093270267787

/-!
# A192781: Coefficient of x in the reduction of the n-th Fibonacci polynomial by x^3->x^2+1.

The programs for A192781, there is no canonical definition to state claims against.
-/

/-! ## A192781.P689142296370772135

`A192780(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192781.P689142296370772135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A192780 n + a (n - 2)

end

end A192781.P689142296370772135

/-! ## A192781.P9870183227570402608

`Δ[A192782(n+1)]-A192782(A028310(n))`
-/

namespace A192781.P9870183227570402608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192782 (A028310 n).toNat

end

end A192781.P9870183227570402608

/-! ## A192781.P13349418613428471058

`Δ[A192782(n+1)]-A192782(A233583(n+1))`
-/

namespace A192781.P13349418613428471058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192782 (A233583 (n + 1)).toNat

end

end A192781.P13349418613428471058

/-! ## A192781.P18208284123335696954

`A192782(n+4)%(A192782(n+2)+A192780(n+4))`
-/

namespace A192781.P18208284123335696954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192782 (n + 4)) (A192782 (n + 2) + A192780 (n + 4))

end

end A192781.P18208284123335696954

/-!
# A192782: Coefficient of x in the reduction of the n-th Fibonacci polynomial by x^3->x^2+1.

The programs for A192782, there is no canonical definition to state claims against.
-/

/-! ## A192782.P5352585045854845434

`floor(A233583(gcd(n+1, ∑[n])+2^n)/5)`
-/

namespace A192782.P5352585045854845434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233583 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + 2 ^ n) : ℚ) / 5⌋

end

end A192782.P5352585045854845434

/-! ## A192782.P5976763194666036436

`A287524(A054391(n))+A136444(n)`
-/

namespace A192782.P5976763194666036436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A054391 n).toNat + A136444 n

end

end A192782.P5976763194666036436

/-! ## A192782.P7237882997612551771

`A321402(n+1)-A214526(A323436(3*n+1))`
-/

namespace A192782.P7237882997612551771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 (n + 1) - A214526 (A323436 (3 * n + 1)).toNat

end

end A192782.P7237882997612551771

/-! ## A192782.P3365054350043290295

`A135664(Δ[A056292(n+1)])`
-/

namespace A192782.P3365054350043290295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (f1 (n + 1) - f1 n).toNat

end

end A192782.P3365054350043290295

/-! ## A192782.P4247152168671117781

`A324760(A036378(n))-A036378(n)`
-/

namespace A192782.P4247152168671117781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (A036378 n).toNat - A036378 n

end

end A192782.P4247152168671117781

/-!
# A192783: G.f. satisfies: A(x) = Product_{n>=1} 1/(1 - x^n*A(x)^(n^3)).

The programs for A192783, there is no canonical definition to state claims against.
-/

/-! ## A192783.P2528441247263853826

`A239467(A005727(n))+A112936(n)`
-/

namespace A192783.P2528441247263853826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239467 (A005727 n).toNat + A112936 n

end

end A192783.P2528441247263853826

/-! ## A192783.P4090456995259557116

`A083920(A340903(n))+A015113(n)`
-/

namespace A192783.P4090456995259557116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A340903 n).toNat + A015113 n

end

end A192783.P4090456995259557116

/-!
# A192784: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n*A(x)^(n^2)).

The programs for A192784, there is no canonical definition to state claims against.
-/

/-! ## A192784.P6048718300970215314

`A008620(A134664(n+1)+1-n)`
-/

namespace A192784.P6048718300970215314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A134664 (n + 1) + (1 - (n : ℤ))).toNat

end

end A192784.P6048718300970215314

/-! ## A192784.P15488487058068980690

`A034887(A122951(n)+A086953(n))`
-/

namespace A192784.P15488487058068980690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A122951 n + A086953 n).toNat

end

end A192784.P15488487058068980690

/-! ## A192784.P1774940696461045224

`A034887(A127620(n)+A086953(n))`
-/

namespace A192784.P1774940696461045224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A127620 n + A086953 n).toNat

end

end A192784.P1774940696461045224

/-!
# A192785: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^n)*(1 + x^(2*n)*A(x)^2).

The programs for A192785, there is no canonical definition to state claims against.
-/

/-! ## A192785.P1973446222973702472

`A032539(A178578(n))`
-/

namespace A192785.P1973446222973702472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A178578 n).toNat

end

end A192785.P1973446222973702472

/-! ## A192785.P1425631202108048363

`A032539(A371819(n))`
-/

namespace A192785.P1425631202108048363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A371819 n).toNat

end

end A192785.P1425631202108048363

/-! ## A192785.P6173507912262827512

`A062005(A055086(n!))`
-/

namespace A192785.P6173507912262827512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062005 (A055086 (Nat.factorial n)).toNat

end

end A192785.P6173507912262827512

/-! ## A192785.P12074275647274910219

`A100196(A151468(n)+1)`
-/

namespace A192785.P12074275647274910219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A151468 n + 1).toNat

end

end A192785.P12074275647274910219

/-!
# A192789: Number of distinct solutions of 4/p = 1/a + 1/b + 1/c in positive integers satisfying 1<=a<=b<=c where p is the n-th prime.

The programs for A192789, there is no canonical definition to state claims against.
-/

/-! ## A192789.P13440055101584871130

`A192787(p?[comp[n²]])`
-/

namespace A192789.P13440055101584871130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A192789.P13440055101584871130

/-! ## A192789.P5053063661234371640

`A192787(A000040(n+1))`
-/

namespace A192789.P5053063661234371640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (A000040 (n + 1)).toNat

end

end A192789.P5053063661234371640

/-! ## A192789.P14330304701226961632

`A192787(A008578(n+2))`
-/

namespace A192789.P14330304701226961632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (A008578 (n + 2)).toNat

end

end A192789.P14330304701226961632

/-! ## A192789.P8202938685808613722

`A192787(A182986(n+2))`
-/

namespace A192789.P8202938685808613722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (A182986 (n + 2)).toNat

end

end A192789.P8202938685808613722

/-! ## A192789.P15866264259544360668

`A192787(record[A006530(n+2)])`
-/

namespace A192789.P15866264259544360668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192789.P15866264259544360668

/-! ## A192789.P3376731923479022108

`A192787(record[A014963(n+2)])`
-/

namespace A192789.P3376731923479022108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192789.P3376731923479022108

/-! ## A192789.P9114041340655787822

`A192787(record[A020639(n+2)])`
-/

namespace A192789.P9114041340655787822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192789.P9114041340655787822

/-!
# A192790: Molecular topological index of the Andrásfai graphs.

The programs for A192790, the canonical program `A192790.P15887283549555883010` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192790 has offset 1).

The definition of A192790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192790.P15887283549555883010

`2*(n+1)*(3*(n+1)-2)*(3*(n+1)-1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192790

/-- `2*(n+1)*(3*(n+1)-2)*(3*(n+1)-1)` -/
def P15887283549555883010.Spec : Prop :=
  ∀ n, P15887283549555883010.a n = A192790 (n + 1)

theorem P15887283549555883010.correct : P15887283549555883010.Spec := by
  intro n
  simp only [A192790, Nat.add_sub_cancel]

end A192790

/-! ## A192790.P8000126473117167255

`∑[4*Δ[C(3*n, 3)]]`
-/

namespace A192790.P8000126473117167255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192790.P8000126473117167255

namespace A192790

/-- `∑[4*Δ[C(3*n, 3)]]` -/
def P8000126473117167255.Spec : Prop :=
  ∀ n, P8000126473117167255.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P5230345281581408707

`∑[4*A093485(n)]`
-/

namespace A192790.P5230345281581408707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192790.P5230345281581408707

namespace A192790

/-- `∑[4*A093485(n)]` -/
def P5230345281581408707.Spec : Prop :=
  ∀ n, P5230345281581408707.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P14919586848755097406

`lcm(∑[12*n+2], A016957(n))`
-/

namespace A192790.P14919586848755097406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A016957 n)

end

end A192790.P14919586848755097406

namespace A192790

/-- `lcm(∑[12*n+2], A016957(n))` -/
def P14919586848755097406.Spec : Prop :=
  ∀ n, (P14919586848755097406.a n : ℤ) = A192790 (n + 1)

end A192790

/-! ## A192790.P14373006592973170809

`(n+1)*(A001513(n)+3)/2`
-/

namespace A192790.P14373006592973170809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A001513 n + 3) : ℚ) / 2

end

end A192790.P14373006592973170809

namespace A192790

/-- `(n+1)*(A001513(n)+3)/2` -/
def P14373006592973170809.Spec : Prop :=
  ∀ n, P14373006592973170809.a n = (A192790 (n + 1) : ℚ)

end A192790

/-! ## A192790.P11544229071592458500

`lcm(2, A000217(A016777(n))*4*(n+1))`
-/

namespace A192790.P11544229071592458500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000217 (A016777 n).toNat * (4 * (n + 1) : ℤ))

end

end A192790.P11544229071592458500

namespace A192790

/-- `lcm(2, A000217(A016777(n))*4*(n+1))` -/
def P11544229071592458500.Spec : Prop :=
  ∀ n, (P11544229071592458500.a n : ℤ) = A192790 (n + 1)

end A192790

/-! ## A192790.P11814460303075376521

`A016777(n)*A201279(n)-A016777(n)`
-/

namespace A192790.P11814460303075376521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A201279 n - A016777 n

end

end A192790.P11814460303075376521

namespace A192790

/-- `A016777(n)*A201279(n)-A016777(n)` -/
def P11814460303075376521.Spec : Prop :=
  ∀ n, P11814460303075376521.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P5503978008208212555

`A016933(n)+A016933(n)*A144390(n+1)`
-/

namespace A192790.P5503978008208212555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n + A016933 n * A144390 (n + 1)

end

end A192790.P5503978008208212555

namespace A192790

/-- `A016933(n)+A016933(n)*A144390(n+1)` -/
def P5503978008208212555.Spec : Prop :=
  ∀ n, P5503978008208212555.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P7782580733558921091

`A000326(n+1)*A017581(n)-A000326(n+1)`
-/

namespace A192790.P7782580733558921091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) * A017581 n - A000326 (n + 1)

end

end A192790.P7782580733558921091

namespace A192790

/-- `A000326(n+1)*A017581(n)-A000326(n+1)` -/
def P7782580733558921091.Spec : Prop :=
  ∀ n, P7782580733558921091.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P6113577411515831487

`Δ[4*A116689(n)]`
-/

namespace A192790.P6113577411515831487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A116689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192790.P6113577411515831487

namespace A192790

/-- `Δ[4*A116689(n)]` -/
def P6113577411515831487.Spec : Prop :=
  ∀ n, P6113577411515831487.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P15795275181342762830

`Δ[Δ[A152015(n)]²/2]`
-/

namespace A192790.P15795275181342762830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192790.P15795275181342762830

namespace A192790

/-- `Δ[Δ[A152015(n)]²/2]` -/
def P15795275181342762830.Spec : Prop :=
  ∀ n, P15795275181342762830.a n = (A192790 (n + 1) : ℚ)

end A192790

/-! ## A192790.P14432660968875981920

`Δ[(3*n+1)*A007586(n)]`
-/

namespace A192790.P14432660968875981920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A007586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192790.P14432660968875981920

namespace A192790

/-- `Δ[(3*n+1)*A007586(n)]` -/
def P14432660968875981920.Spec : Prop :=
  ∀ n, P14432660968875981920.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P526562218339571444

`lcm(∑[A017569(n)], A139267(n+1))`
-/

namespace A192790.P526562218339571444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A139267 (n + 1))

end

end A192790.P526562218339571444

namespace A192790

/-- `lcm(∑[A017569(n)], A139267(n+1))` -/
def P526562218339571444.Spec : Prop :=
  ∀ n, (P526562218339571444.a n : ℤ) = A192790 (n + 1)

end A192790

/-! ## A192790.P3494445994859005008

`A008586(n+1)+A001105(n+1)*A008591(n)`
-/

namespace A192790.P3494445994859005008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) + A001105 (n + 1) * A008591 n

end

end A192790.P3494445994859005008

namespace A192790

/-- `A008586(n+1)+A001105(n+1)*A008591(n)` -/
def P3494445994859005008.Spec : Prop :=
  ∀ n, P3494445994859005008.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P17637076159711951245

`A046092(n+1)+A008586(n)*A022266(n+1)`
-/

namespace A192790.P17637076159711951245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) + A008586 n * A022266 (n + 1)

end

end A192790.P17637076159711951245

namespace A192790

/-- `A046092(n+1)+A008586(n)*A022266(n+1)` -/
def P17637076159711951245.Spec : Prop :=
  ∀ n, P17637076159711951245.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P1040170801121025047

`A033579(n+1)+A008588(n)*A049450(n+1)`
-/

namespace A192790.P1040170801121025047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (n + 1) + A008588 n * A049450 (n + 1)

end

end A192790.P1040170801121025047

namespace A192790

/-- `A033579(n+1)+A008588(n)*A049450(n+1)` -/
def P1040170801121025047.Spec : Prop :=
  ∀ n, P1040170801121025047.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P15155911091016726361

`A000567(n+1)*A016969(n)-A000567(n+1)`
-/

namespace A192790.P15155911091016726361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) * A016969 n - A000567 (n + 1)

end

end A192790.P15155911091016726361

namespace A192790

/-- `A000567(n+1)*A016969(n)-A000567(n+1)` -/
def P15155911091016726361.Spec : Prop :=
  ∀ n, P15155911091016726361.a n = A192790 (n + 1)

end A192790

/-! ## A192790.P3472902584109860526

`A054776(n+1)-(A006566(n+1)+A006566(n+1))`
-/

namespace A192790.P3472902584109860526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054776 (n + 1) - (A006566 (n + 1) + A006566 (n + 1))

end

end A192790.P3472902584109860526

namespace A192790

/-- `A054776(n+1)-(A006566(n+1)+A006566(n+1))` -/
def P3472902584109860526.Spec : Prop :=
  ∀ n, P3472902584109860526.a n = A192790 (n + 1)

end A192790

/-!
# A192791: Molecular topological index of the n-antiprism graph.

The programs for A192791, the canonical program `A192791.P14640264182925885651` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192791 has offset 1).

The definition of A192791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192791.P2594375705140623680

`4*(n+1)*((n+1)²+n+9)`
-/

namespace A192791.P2594375705140623680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) * ((n + 1) ^ 2 + (n + 9)))

end

end A192791.P2594375705140623680

namespace A192791

/-- `4*(n+1)*((n+1)²+n+9)` -/
def P2594375705140623680.Spec : Prop :=
  ∀ n, (P2594375705140623680.a n : ℤ) = A192791 (n + 1)

theorem P2594375705140623680.correct : P2594375705140623680.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A192791, Nat.add_sub_cancel, A192791.P2594375705140623680.a, A192791.P14640264182925885651.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A192791, Nat.add_sub_cancel, A192791.P2594375705140623680.a, A192791.P14640264182925885651.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A192791

/-! ## A192791.P14640264182925885651

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=40, a(1)=112, a(2)=240, a(3)=448`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192791

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14640264182925885651.Spec : Prop :=
  ∀ n, P14640264182925885651.a n = A192791 (n + 1)

theorem P14640264182925885651.correct : P14640264182925885651.Spec := by
  intro n
  simp only [A192791, Nat.add_sub_cancel]

end A192791

/-! ## A192791.P4229202575291666370

`∑[∑[a(n-1)+24]]` with `a(0)=40, a(1)=32`
-/

namespace A192791.P4229202575291666370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [40, 32] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192791.P4229202575291666370

namespace A192791

/-- `∑[∑[a(n-1)+24]]` -/
def P4229202575291666370.Spec : Prop :=
  ∀ n, (P4229202575291666370.a n : ℤ) = A192791 (n + 1)

end A192791

/-! ## A192791.P11027553918195514277

`∑[8*(∑[A016777(n)]+4)]`
-/

namespace A192791.P11027553918195514277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192791.P11027553918195514277

namespace A192791

/-- `∑[8*(∑[A016777(n)]+4)]` -/
def P11027553918195514277.Spec : Prop :=
  ∀ n, P11027553918195514277.a n = A192791 (n + 1)

end A192791

/-! ## A192791.P15366907362698371690

`A167561(n+1)+4*4*(n+1)`
-/

namespace A192791.P15366907362698371690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167561 (n + 1) + (4 * (4 * (n + 1)) : ℤ)

end

end A192791.P15366907362698371690

namespace A192791

/-- `A167561(n+1)+4*4*(n+1)` -/
def P15366907362698371690.Spec : Prop :=
  ∀ n, P15366907362698371690.a n = A192791 (n + 1)

end A192791

/-! ## A192791.P3555991448127999035

`(n+1)*(A016754(n+1)+32)-(n+1)`
-/

namespace A192791.P3555991448127999035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A016754 (n + 1) + 32) - (n + 1 : ℤ)

end

end A192791.P3555991448127999035

namespace A192791

/-- `(n+1)*(A016754(n+1)+32)-(n+1)` -/
def P3555991448127999035.Spec : Prop :=
  ∀ n, P3555991448127999035.a n = A192791 (n + 1)

end A192791

/-! ## A192791.P16526303262879555462

`∑[A016802(n+1)+33-A016754(n+1)]`
-/

namespace A192791.P16526303262879555462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (n + 1) + (33 - A016754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192791.P16526303262879555462

namespace A192791

/-- `∑[A016802(n+1)+33-A016754(n+1)]` -/
def P16526303262879555462.Spec : Prop :=
  ∀ n, P16526303262879555462.a n = A192791 (n + 1)

end A192791

/-! ## A192791.P4152686290926631053

`(n+1)*A114964(2*n+3)+n+1`
-/

namespace A192791.P4152686290926631053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A114964 (2 * n + 3) + (n + 1 : ℤ)

end

end A192791.P4152686290926631053

namespace A192791

/-- `(n+1)*A114964(2*n+3)+n+1` -/
def P4152686290926631053.Spec : Prop :=
  ∀ n, P4152686290926631053.a n = A192791 (n + 1)

end A192791

/-!
# A192793: Molecular topological indices of the crossed prism graphs.

The programs for A192793, the canonical program `A192793.P12209930306789916798` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192793 has offset 1).

The definition of A192793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192793.P12209930306789916798

`12*(n+1)*(2*(n+1)²+7)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192793

/-- `12*(n+1)*(2*(n+1)²+7)` -/
def P12209930306789916798.Spec : Prop :=
  ∀ n, (P12209930306789916798.a n : ℤ) = A192793 (n + 1)

theorem P12209930306789916798.correct : P12209930306789916798.Spec := by
  intro n
  simp only [A192793, Nat.add_sub_cancel]

end A192793

/-! ## A192793.P9237967377726328003

`Δ[∑[12*n]*A027692(n)]`
-/

namespace A192793.P9237967377726328003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A027692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192793.P9237967377726328003

namespace A192793

/-- `Δ[∑[12*n]*A027692(n)]` -/
def P9237967377726328003.Spec : Prop :=
  ∀ n, P9237967377726328003.a n = A192793 (n + 1)

end A192793

/-! ## A192793.P1121023548572698294

`A180413(n+2)-A162940(2*n+1)`
-/

namespace A192793.P1121023548572698294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180413 (n + 2) - A162940 (2 * n + 1)

end

end A192793.P1121023548572698294

namespace A192793

/-- `A180413(n+2)-A162940(2*n+1)` -/
def P1121023548572698294.Spec : Prop :=
  ∀ n, P1121023548572698294.a n = A192793 (n + 1)

end A192793

/-! ## A192793.P12141408542889792045

`Δ[12*A014106(A000124(n))]`
-/

namespace A192793.P12141408542889792045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A014106 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192793.P12141408542889792045

namespace A192793

/-- `Δ[12*A014106(A000124(n))]` -/
def P12141408542889792045.Spec : Prop :=
  ∀ n, P12141408542889792045.a n = A192793 (n + 1)

end A192793

/-! ## A192793.P17533781894684761566

`Δ[A103115(2*(∑[n]+2))]`
-/

namespace A192793.P17533781894684761566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192793.P17533781894684761566

namespace A192793

/-- `Δ[A103115(2*(∑[n]+2))]` -/
def P17533781894684761566.Spec : Prop :=
  ∀ n, P17533781894684761566.a n = A192793 (n + 1)

end A192793

/-! ## A192793.P16250196993027250155

`Δ[A027865(n²+1+n)]`
-/

namespace A192793.P16250196993027250155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027865 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192793.P16250196993027250155

namespace A192793

/-- `Δ[A027865(n²+1+n)]` -/
def P16250196993027250155.Spec : Prop :=
  ∀ n, P16250196993027250155.a n = A192793 (n + 1)

end A192793

/-! ## A192793.P3814043619679254874

`Δ[A049598(n²+3+n)]`
-/

namespace A192793.P3814043619679254874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 (n ^ 2 + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192793.P3814043619679254874

namespace A192793

/-- `Δ[A049598(n²+3+n)]` -/
def P3814043619679254874.Spec : Prop :=
  ∀ n, P3814043619679254874.a n = A192793 (n + 1)

end A192793

/-!
# A192794: Numbers k such that k + 2 and k^2 + 4 are primes.

The programs for A192794, there is no canonical definition to state claims against.
-/

/-! ## A192794.P7495219874091988083

`p?[A089747(n+1)+1]-2`
-/

namespace A192794.P7495219874091988083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089747 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A192794.P7495219874091988083

/-! ## A192794.P5562932317395818668

`p?[A007591(n+1)+2]-2`
-/

namespace A192794.P5562932317395818668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A192794.P5562932317395818668

/-! ## A192794.P1348462155664719330

`∩[A007591(n+1), A042991(n+1)-2]`
-/

namespace A192794.P1348462155664719330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P1348462155664719330

/-! ## A192794.P10097604004592952651

`∩[A007591(n+1), A040179(n+1)-2]`
-/

namespace A192794.P10097604004592952651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P10097604004592952651

/-! ## A192794.P1101936672590847640

`∩[A007591(n+1), A040161(n+1)-2]`
-/

namespace A192794.P1101936672590847640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P1101936672590847640

/-! ## A192794.P6354200927323602386

`∩[A007591(n+1), A040970(n+1)-2]`
-/

namespace A192794.P6354200927323602386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P6354200927323602386

/-! ## A192794.P10145852373583997339

`∩[A007591(n+1), A040972(n+1)-2]`
-/

namespace A192794.P10145852373583997339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P10145852373583997339

/-! ## A192794.P1320038286345123251

`∩[A007591(n+1), A040986(n+1)-2]`
-/

namespace A192794.P1320038286345123251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P1320038286345123251

/-! ## A192794.P13810094527319059560

`∩[A007591(n+1), A040990(n+1)-2]`
-/

namespace A192794.P13810094527319059560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P13810094527319059560

/-! ## A192794.P5656174946413732355

`∩[A007591(n+1), A040159(n+1)-2]`
-/

namespace A192794.P5656174946413732355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P5656174946413732355

/-! ## A192794.P760698314340680100

`∩[A007591(n+1), A040169(n+1)-2]`
-/

namespace A192794.P760698314340680100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P760698314340680100

/-! ## A192794.P17294743578646920321

`∩[A007591(n+1), A040980(n+1)-2]`
-/

namespace A192794.P17294743578646920321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P17294743578646920321

/-! ## A192794.P14868125489966648703

`∩[A007591(n+1), A040165(n+1)-2]`
-/

namespace A192794.P14868125489966648703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P14868125489966648703

/-! ## A192794.P10853849044727632401

`∩[A007591(n+1), A040171(n+1)-2]`
-/

namespace A192794.P10853849044727632401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P10853849044727632401

/-! ## A192794.P15296846314816040494

`∩[A007591(n+1), A040177(n+1)-2]`
-/

namespace A192794.P15296846314816040494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P15296846314816040494

/-! ## A192794.P16366149610021909995

`∩[A007591(n+1), A040976(n+1)]`
-/

namespace A192794.P16366149610021909995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P16366149610021909995

/-! ## A192794.P12959365813515231902

`record[A006530(A007591(n+1)+2)]-2`
-/

namespace A192794.P12959365813515231902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007591 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A192794.P12959365813515231902

/-! ## A192794.P15379504190860929792

`record[A020639(A007591(n+1)+2)-2]`
-/

namespace A192794.P15379504190860929792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007591 (n + 1) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192794.P15379504190860929792

/-! ## A192794.P15256014453491301597

`record[A006530(A089747(n+2)+1)]-2`
-/

namespace A192794.P15256014453491301597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089747 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A192794.P15256014453491301597

/-! ## A192794.P7425250647354106910

`∩[A007591(n+1), A030173(n+1)]`
-/

namespace A192794.P7425250647354106910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192794.P7425250647354106910

/-!
# A192795: Number of equivalence classes of permutations under the combined operations of rotating, adding, multiplying, and reversing.

The programs for A192795, there is no canonical definition to state claims against.
-/

/-! ## A192795.P1149912767716119957

`A337144(4-A335813(n))`
-/

namespace A192795.P1149912767716119957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (4 - A335813 n).toNat

end

end A192795.P1149912767716119957

/-! ## A192795.P13999227584948071927

`A274888(2*(∑[n]+1)-A275333(n))`
-/

namespace A192795.P13999227584948071927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 (((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - A275333 n).toNat

end

end A192795.P13999227584948071927

/-! ## A192795.P8239206363041273388

`A003638(A137828(n)+A007097(n))`
-/

namespace A192795.P8239206363041273388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003638 (A137828 n + A007097 n).toNat

end

end A192795.P8239206363041273388

/-! ## A192795.P3038889098881716934

`A112564(A319646(n)+A026796(n))`
-/

namespace A192795.P3038889098881716934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (A319646 n + A026796 n).toNat

end

end A192795.P3038889098881716934

/-! ## A192795.P12774773183114105195

`A274888(A228085(n)+A002378(n))`
-/

namespace A192795.P12774773183114105195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 (A228085 n + A002378 n).toNat

end

end A192795.P12774773183114105195

/-!
# A192796: Molecular topological indices of the crown graphs.

The programs for A192796, the canonical program `A192796.P10760598557991137529` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192796 has offset 1).

The definition of A192796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192796.P10760598557991137529

`2*(n+1)*n*(4*(n+1)-1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192796

/-- `2*(n+1)*n*(4*(n+1)-1)` -/
def P10760598557991137529.Spec : Prop :=
  ∀ n, P10760598557991137529.a n = A192796 (n + 1)

theorem P10760598557991137529.correct : P10760598557991137529.Spec := by
  intro n
  simp only [A192796, Nat.add_sub_cancel]

end A192796

/-! ## A192796.P15260310848696122580

`lcm(2, n*C(4*(n+1), 2))`
-/

namespace A192796.P15260310848696122580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * Nat.choose (4 * (n + 1)) 2)

end

end A192796.P15260310848696122580

namespace A192796

/-- `lcm(2, n*C(4*(n+1), 2))` -/
def P15260310848696122580.Spec : Prop :=
  ∀ n, (P15260310848696122580.a n : ℤ) = A192796 (n + 1)

end A192796

/-! ## A192796.P8763491171250900412

`n*(C(4*(n+1), 2)-1)+n`
-/

namespace A192796.P8763491171250900412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (4 * (n + 1)) 2 : ℤ) - 1) + (n : ℤ)

end

end A192796.P8763491171250900412

namespace A192796

/-- `n*(C(4*(n+1), 2)-1)+n` -/
def P8763491171250900412.Spec : Prop :=
  ∀ n, P8763491171250900412.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P5305725348480121843

`lcm((2*n+1)*2*n+n, (n+1)*2*n)`
-/

namespace A192796.P5305725348480121843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n + 1) * (2 * n) + n) ((n + 1) * (2 * n))

end

end A192796.P5305725348480121843

namespace A192796

/-- `lcm((2*n+1)*2*n+n, (n+1)*2*n)` -/
def P5305725348480121843.Spec : Prop :=
  ∀ n, (P5305725348480121843.a n : ℤ) = A192796 (n + 1)

end A192796

/-! ## A192796.P10632705685326025813

`∑[4*A049453(n)]`
-/

namespace A192796.P10632705685326025813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192796.P10632705685326025813

namespace A192796

/-- `∑[4*A049453(n)]` -/
def P10632705685326025813.Spec : Prop :=
  ∀ n, P10632705685326025813.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P5180894272496331990

`A079588(n)-(n+1)`
-/

namespace A192796.P5180894272496331990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 n - (n + 1 : ℤ)

end

end A192796.P5180894272496331990

namespace A192796

/-- `A079588(n)-(n+1)` -/
def P5180894272496331990.Spec : Prop :=
  ∀ n, P5180894272496331990.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P7207384255622736716

`n*A181890(n)+n`
-/

namespace A192796.P7207384255622736716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181890 n + (n : ℤ)

end

end A192796.P7207384255622736716

namespace A192796

/-- `n*A181890(n)+n` -/
def P7207384255622736716.Spec : Prop :=
  ∀ n, P7207384255622736716.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P2533441517610868080

`∑[2*(A194454(n)-1)]`
-/

namespace A192796.P2533441517610868080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194454 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192796.P2533441517610868080

namespace A192796

/-- `∑[2*(A194454(n)-1)]` -/
def P2533441517610868080.Spec : Prop :=
  ∀ n, P2533441517610868080.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P4009910578867342286

`∑[n*A063140(n+1)]`
-/

namespace A192796.P4009910578867342286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192796.P4009910578867342286

namespace A192796

/-- `∑[n*A063140(n+1)]` -/
def P4009910578867342286.Spec : Prop :=
  ∀ n, P4009910578867342286.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P9184360377244832764

`∑[2*(A063436(n)-n)]`
-/

namespace A192796.P9184360377244832764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063436 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192796.P9184360377244832764

namespace A192796

/-- `∑[2*(A063436(n)-n)]` -/
def P9184360377244832764.Spec : Prop :=
  ∀ n, P9184360377244832764.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P4352243286804456711

`∑[2*n*A017545(n)]`
-/

namespace A192796.P4352243286804456711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A017545 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192796.P4352243286804456711

namespace A192796

/-- `∑[2*n*A017545(n)]` -/
def P4352243286804456711.Spec : Prop :=
  ∀ n, P4352243286804456711.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P5966830619393340458

`∑[4*n*A016921(n)]`
-/

namespace A192796.P5966830619393340458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A016921 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192796.P5966830619393340458

namespace A192796

/-- `∑[4*n*A016921(n)]` -/
def P5966830619393340458.Spec : Prop :=
  ∀ n, P5966830619393340458.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P12992986180314837304

`A056220(n)+A016755(n)`
-/

namespace A192796.P12992986180314837304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + A016755 n

end

end A192796.P12992986180314837304

namespace A192796

/-- `A056220(n)+A016755(n)` -/
def P12992986180314837304.Spec : Prop :=
  ∀ n, P12992986180314837304.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P1276699471583424434

`A195027(n)+A144138(n)`
-/

namespace A192796.P1276699471583424434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195027 n + A144138 n

end

end A192796.P1276699471583424434

namespace A192796

/-- `A195027(n)+A144138(n)` -/
def P1276699471583424434.Spec : Prop :=
  ∀ n, P1276699471583424434.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P15233798058616942180

`A316224(n)+A139277(n)`
-/

namespace A192796.P15233798058616942180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + A139277 n

end

end A192796.P15233798058616942180

namespace A192796

/-- `A316224(n)+A139277(n)` -/
def P15233798058616942180.Spec : Prop :=
  ∀ n, P15233798058616942180.a n = A192796 (n + 1)

end A192796

/-! ## A192796.P2009183184636723678

`A015219(n)-A168574(n)`
-/

namespace A192796.P2009183184636723678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n - A168574 n

end

end A192796.P2009183184636723678

namespace A192796

/-- `A015219(n)-A168574(n)` -/
def P2009183184636723678.Spec : Prop :=
  ∀ n, P2009183184636723678.a n = A192796 (n + 1)

end A192796

/-!
# A192797: Molecular topological indices of the cycle graphs.

The programs for A192797, the canonical program `A192797.P1488213393847642836` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192797 has offset 1).

The definition of A192797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192797.P1488213393847642836

`(n+1)*(2*(n+1)²+(-1)^(n+1)+15)/4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192797

/-- `(n+1)*(2*(n+1)²+(-1)^(n+1)+15)/4` -/
def P1488213393847642836.Spec : Prop :=
  ∀ n, P1488213393847642836.a n = (A192797 (n + 1) : ℚ)

end A192797

/-! ## A192797.P14460717491126679116

`∑[2*(∑[lcm(2, n)]+2)]`
-/

namespace A192797.P14460717491126679116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192797.P14460717491126679116

namespace A192797

/-- `∑[2*(∑[lcm(2, n)]+2)]` -/
def P14460717491126679116.Spec : Prop :=
  ∀ n, (P14460717491126679116.a n : ℤ) = A192797 (n + 1)

end A192797

/-! ## A192797.P1918368643932857007

`∑[∑[lcm(4, n+n)]+4]`
-/

namespace A192797.P1918368643932857007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192797.P1918368643932857007

namespace A192797

/-- `∑[∑[lcm(4, n+n)]+4]` -/
def P1918368643932857007.Spec : Prop :=
  ∀ n, (P1918368643932857007.a n : ℤ) = A192797 (n + 1)

end A192797

/-! ## A192797.P12785259593936767936

`∑[4*(∑[gcd(n, ∑[n])]+1)]`
-/

namespace A192797.P12785259593936767936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192797.P12785259593936767936

namespace A192797

/-- `∑[4*(∑[gcd(n, ∑[n])]+1)]` -/
def P12785259593936767936.Spec : Prop :=
  ∀ n, (P12785259593936767936.a n : ℤ) = A192797 (n + 1)

end A192797

/-! ## A192797.P10924008757899005982

`A074149(n+1)+3*(n+1)`
-/

namespace A192797.P10924008757899005982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) + (3 * (n + 1) : ℤ)

end

end A192797.P10924008757899005982

namespace A192797

/-- `A074149(n+1)+3*(n+1)` -/
def P10924008757899005982.Spec : Prop :=
  ∀ n, P10924008757899005982.a n = A192797 (n + 1)

end A192797

/-! ## A192797.P17381147257798622699

`A055232(n+1)-A212965(n)`
-/

namespace A192797.P17381147257798622699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 (n + 1) - A212965 n

end

end A192797.P17381147257798622699

namespace A192797

/-- `A055232(n+1)-A212965(n)` -/
def P17381147257798622699.Spec : Prop :=
  ∀ n, P17381147257798622699.a n = A192797 (n + 1)

end A192797

/-! ## A192797.P12556822935033776279

`A213399(n+1)+A212975(n)-A213399(n)`
-/

namespace A192797.P12556822935033776279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 (n + 1) + (A212975 n - A213399 n)

end

end A192797.P12556822935033776279

namespace A192797

/-- `A213399(n+1)+A212975(n)-A213399(n)` -/
def P12556822935033776279.Spec : Prop :=
  ∀ n, P12556822935033776279.a n = A192797 (n + 1)

end A192797

/-! ## A192797.P3573299169859847418

`A246697(n+1)+A006003(n)-A006003(n+1)`
-/

namespace A192797.P3573299169859847418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246697 (n + 1) + (A006003 n - A006003 (n + 1))

end

end A192797.P3573299169859847418

namespace A192797

/-- `A246697(n+1)+A006003(n)-A006003(n+1)` -/
def P3573299169859847418.Spec : Prop :=
  ∀ n, P3573299169859847418.a n = A192797 (n + 1)

end A192797

/-! ## A192797.P11655988882486027934

`A317614(n+2)-A186423(2*n)`
-/

namespace A192797.P11655988882486027934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 2) - A186423 (2 * n)

end

end A192797.P11655988882486027934

namespace A192797

/-- `A317614(n+2)-A186423(2*n)` -/
def P11655988882486027934.Spec : Prop :=
  ∀ n, P11655988882486027934.a n = A192797 (n + 1)

end A192797

/-!
# A192798: Constant term in the reduction of the n-th Fibonacci polynomial by x^3->x^2+2. See Comments.

The programs for A192798, the canonical program `A192798.P10106109617847757644` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192798 has offset 1).

The definition of A192798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192798.P10106109617847757644

`a(n-1)+3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192798

/-- `a(n-1)+3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P10106109617847757644.Spec : Prop :=
  ∀ n, P10106109617847757644.a n = A192798 (n + 1)

theorem P10106109617847757644.correct : P10106109617847757644.Spec := by
  intro n
  simp only [A192798, Nat.add_sub_cancel]

end A192798

/-! ## A192798.P11925178118606425522

`A192799(n+2)-A192799(A028310(n))`
-/

namespace A192798.P11925178118606425522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192799 (n + 2) - A192799 (A028310 n).toNat

end

end A192798.P11925178118606425522

namespace A192798

/-- `A192799(n+2)-A192799(A028310(n))` -/
def P11925178118606425522.Spec : Prop :=
  ∀ n, P11925178118606425522.a n = A192798 (n + 1)

end A192798

/-! ## A192798.P3198162156068476352

`Δ[A192799(n+1)+A192799(A028310(n))]`
-/

namespace A192798.P3198162156068476352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192799 (n + 1) + A192799 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192798.P3198162156068476352

namespace A192798

/-- `Δ[A192799(n+1)+A192799(A028310(n))]` -/
def P3198162156068476352.Spec : Prop :=
  ∀ n, P3198162156068476352.a n = A192798 (n + 1)

end A192798

/-!
# A192799: Coefficient of x in the reduction of the n-th Fibonacci polynomial by x^3->x^2+2.

The programs for A192799, the canonical program `A192799.P14849266154241046476` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192799 has offset 1).

The definition of A192799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192799.P14849266154241046476

`a(n-1)+3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=2, a(5)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A192799

/-- `a(n-1)+3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P14849266154241046476.Spec : Prop :=
  ∀ n, P14849266154241046476.a n = A192799 (n + 1)

theorem P14849266154241046476.correct : P14849266154241046476.Spec := by
  intro n
  simp only [A192799, Nat.add_sub_cancel]

end A192799

/-! ## A192799.P5452735454175472637

`A192798(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192799.P5452735454175472637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A192798 n + a (n - 2)

end

end A192799.P5452735454175472637

namespace A192799

/-- `A192798(n)+a(n-2)` -/
def P5452735454175472637.Spec : Prop :=
  ∀ n, P5452735454175472637.a n = A192799 (n + 1)

end A192799

/-! ## A192799.P11026186840373945681

`Δ[A192800(n+1)]-A192800(A028310(n))`
-/

namespace A192799.P11026186840373945681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192800 (A028310 n).toNat

end

end A192799.P11026186840373945681

namespace A192799

/-- `Δ[A192800(n+1)]-A192800(A028310(n))` -/
def P11026186840373945681.Spec : Prop :=
  ∀ n, P11026186840373945681.a n = A192799 (n + 1)

end A192799

/-! ## A192799.P12082291749292567419

`A115318(A068011(n))-A289978(n)`
-/

namespace A192799.P12082291749292567419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115318 (A068011 n).toNat - A289978 n

end

end A192799.P12082291749292567419

namespace A192799

/-- `A115318(A068011(n))-A289978(n)` -/
def P12082291749292567419.Spec : Prop :=
  ∀ n, P12082291749292567419.a n = A192799 (n + 1)

end A192799

