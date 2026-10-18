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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186001: Expansion of 1/(1-x/(1-x/(1-x/(1-2x/(1-x/(1-4x/(1-x/(1-6x/(1-... (continued fraction).

The programs for A186001, there is no canonical definition to state claims against.
-/

/-! ## A186001.P3010647630443846105

`A319071(A185160(n))+A000110(n)`
-/

namespace A186001.P3010647630443846105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319071 (A185160 n).toNat + A000110 n

end

end A186001.P3010647630443846105

/-! ## A186001.P9803199995420246905

`A107589(n)-A048728(A048742(n))`
-/

namespace A186001.P9803199995420246905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107589 n - A048728 (A048742 n).toNat

end

end A186001.P9803199995420246905

/-! ## A186001.P4567805716171536842

`A098854(A005250(n+1))+A000110(n)`
-/

namespace A186001.P4567805716171536842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (A005250 (n + 1)).toNat + A000110 n

end

end A186001.P4567805716171536842

/-! ## A186001.P4662594137859372427

`A098854(A131984(n+1))+A000110(n)`
-/

namespace A186001.P4662594137859372427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (A131984 (n + 1)).toNat + A000110 n

end

end A186001.P4662594137859372427

/-!
# A186002: Hankel transform of A186001.

The programs for A186002, there is no canonical definition to state claims against.
-/

/-! ## A186002.P8420122441550546999

`∏[∏[a(n-1)+2]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A186002.P8420122441550546999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186002.P8420122441550546999

/-! ## A186002.P11996379873563701381

`∏[2*(n-1)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A186002.P11996379873563701381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (((n : ℤ) - 1) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186002.P11996379873563701381

/-! ## A186002.P6445559377966595116

`∏[2^n*n!/floor(2/acot(n))]`
-/

namespace A186002.P6445559377966595116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℚ) / (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186002.P6445559377966595116

/-! ## A186002.P17701054303188111614

`∏[A136668(∑[n+1])]`
-/

namespace A186002.P17701054303188111614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136668 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186002.P17701054303188111614

/-! ## A186002.P18241177291430591662

`∏[∏[A352745(2*n)]]`
-/

namespace A186002.P18241177291430591662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186002.P18241177291430591662

/-!
# A186006: Lexicographic ordering of N x N x N x N x N, where N={1,2,3,...}.

The programs for A186006, there is no canonical definition to state claims against.
-/

/-! ## A186006.P17419573308411402662

`gcd(C(n, 2), A167965(3*n+4))`
-/

namespace A186006.P17419573308411402662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n 2 : ℤ) (A167965 (3 * n + 4))

end

end A186006.P17419573308411402662

/-! ## A186006.P3179677387929229777

`gcd(2^val(n+1, 2), A045912(2*n-n%2))`
-/

namespace A186006.P3179677387929229777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A045912 (2 * n - n % 2))

end

end A186006.P3179677387929229777

/-! ## A186006.P4406823163577383555

`gcd(A115251(n), A263845(n))`
-/

namespace A186006.P4406823163577383555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115251 n) (A263845 n)

end

end A186006.P4406823163577383555

/-! ## A186006.P3868842726961270827

`gcd(A306446(n+1), A337270(n))`
-/

namespace A186006.P3868842726961270827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306446 (n + 1)) (A337270 n)

end

end A186006.P3868842726961270827

/-! ## A186006.P12725168195245044341

`A054868(lcm(5, A386641(3*n+1)))`
-/

namespace A186006.P12725168195245044341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (Int.lcm 5 (A386641 (3 * n + 1)))

end

end A186006.P12725168195245044341

/-!
# A186007: Array by antidiagonals: R(i,j)=number of the row of the Wythoff array which includes row(i+j)-row(i).

The programs for A186007, there is no canonical definition to state claims against.
-/

/-! ## A186007.P2530496024980593105

`A227736(A182174(n+1)-A004006(n))`
-/

namespace A186007.P2530496024980593105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227736 (A182174 (n + 1) - A004006 n).toNat

end

end A186007.P2530496024980593105

/-! ## A186007.P5227877477445951281

`gcd(A143173(A004280(n+4)), A308558(2*n+1))`
-/

namespace A186007.P5227877477445951281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143173 (A004280 (n + 4)).toNat) (A308558 (2 * n + 1))

end

end A186007.P5227877477445951281

/-! ## A186007.P16483397604786257638

`A316979(A022298(n+1)+1)`
-/

namespace A186007.P16483397604786257638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316979 (A022298 (n + 1) + 1).toNat

end

end A186007.P16483397604786257638

/-! ## A186007.P3083336075285782946

`gcd(A020639(A058170(n+1)), A053262(n))`
-/

namespace A186007.P3083336075285782946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A058170 (n + 1)).toNat) (A053262 n)

end

end A186007.P3083336075285782946

/-! ## A186007.P11850718251307749260

`gcd(A001221(A206429(n+2)), A090664(n+2))`
-/

namespace A186007.P11850718251307749260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A206429 (n + 2)).toNat) (A090664 (n + 2))

end

end A186007.P11850718251307749260

/-!
# A186009: Length of Collatz dropping time patterns in A186008.

The programs for A186009, there is no canonical definition to state claims against.
-/

/-! ## A186009.P576442790912880297

`A100982(gcd(n, C(2, n)))`
-/

namespace A186009.P576442790912880297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100982 (Nat.gcd n (Nat.choose 2 n))

end

end A186009.P576442790912880297

/-! ## A186009.P1758975575313810340

`A100982(floor(acot(n)+n))`
-/

namespace A186009.P1758975575313810340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100982 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A186009.P1758975575313810340

/-! ## A186009.P11447555982372758654

`A100982(round(acot(n)+n))`
-/

namespace A186009.P11447555982372758654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100982 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A186009.P11447555982372758654

/-! ## A186009.P13772913854306455083

`A100982(or(n, floor(acot(n))))`
-/

namespace A186009.P13772913854306455083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100982 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A186009.P13772913854306455083

/-! ## A186009.P15884763647881980271

`A100982(xor(n, floor(acot(n))))`
-/

namespace A186009.P15884763647881980271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100982 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A186009.P15884763647881980271

/-!
# A186010: 

The programs for A186010, there is no canonical definition to state claims against.
-/

/-! ## A186010.P17280861551247729392

`A186019((n+1)²+n²)`
-/

namespace A186010.P17280861551247729392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 ((n + 1) ^ 2 + n ^ 2)

end

end A186010.P17280861551247729392

/-!
# A186011: 1/8192 the number of (n+2) X 3 0..3 arrays with no 3 X 3 subblock trace equal to any horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A186011, there is no canonical definition to state claims against.
-/

/-! ## A186011.P7706417212893762548

`A186019(∑[n]+1)`
-/

namespace A186011.P7706417212893762548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186011.P7706417212893762548

/-! ## A186011.P18119287729175015770

`lcm(2, A186019(A000124(n)))`
-/

namespace A186011.P18119287729175015770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186019 (A000124 n).toNat)

end

end A186011.P18119287729175015770

/-! ## A186011.P8894432572165929178

`record[A010054(n)*A186019(n+1)]`
-/

namespace A186011.P8894432572165929178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186011.P8894432572165929178

/-! ## A186011.P13003539465446088026

`record[root(A186019(n+1), A157152(n))]`
-/

namespace A186011.P13003539465446088026
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186019 (n + 1) : ℝ) ^ (1 / (A157152 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186011.P13003539465446088026

/-! ## A186011.P11852043007003393567

`record[gcd(A002262(n), A186019(n+1))]`
-/

namespace A186011.P11852043007003393567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186019 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186011.P11852043007003393567

/-!
# A186012: 1/8192 the number of (n+2)X4 0..3 arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186012, there is no canonical definition to state claims against.
-/

/-! ## A186012.P3881234220898040752

`A186019(∑[n+1]+2)`
-/

namespace A186012.P3881234220898040752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186012.P3881234220898040752

/-!
# A186013: 1/8192 the number of (n+2)X5 0..3 arrays with no 3X3 subblock trace equal to any horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186013, there is no canonical definition to state claims against.
-/

/-! ## A186013.P1751008386839548798

`A186019(∑[n+1]+5+n)`
-/

namespace A186013.P1751008386839548798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 (∑ j ∈ Finset.range (n + 1), f1 j + 5 + n)

end

end A186013.P1751008386839548798

/-!
# A186015: 

The programs for A186015, there is no canonical definition to state claims against.
-/

/-! ## A186015.P5998518718020488962

`A186019(A167499(n+3))`
-/

namespace A186015.P5998518718020488962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 (A167499 (n + 3)).toNat

end

end A186015.P5998518718020488962

/-! ## A186015.P6192022844697520370

`A186019(eq[4, A002262(n)]+1)`
-/

namespace A186015.P6192022844697520370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186015.P6192022844697520370

/-!
# A186016: 

The programs for A186016, there is no canonical definition to state claims against.
-/

/-! ## A186016.P3000699606317596693

`A186019(A167499(n+4)+1)`
-/

namespace A186016.P3000699606317596693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186019 (A167499 (n + 4) + 1).toNat

end

end A186016.P3000699606317596693

/-!
# A186020: Eigentriangle of the binomial matrix.

The programs for A186020, there is no canonical definition to state claims against.
-/

/-! ## A186020.P8057969815677929881

`A121207(A061579(n))`
-/

namespace A186020.P8057969815677929881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A061579 n).toNat

end

end A186020.P8057969815677929881

/-! ## A186020.P1493285154577254303

`A121207(A038722(n+1)-1)`
-/

namespace A186020.P1493285154577254303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A038722 (n + 1) - 1).toNat

end

end A186020.P1493285154577254303

/-! ## A186020.P15768205681054373355

`A121207(A002024(n+1)²-(n+1))`
-/

namespace A186020.P15768205681054373355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A186020.P15768205681054373355

/-! ## A186020.P14312156112050973296

`A121207(A002024(n+2)*A002024(n+1)-(n+1))`
-/

namespace A186020.P14312156112050973296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A002024 (n + 2) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A186020.P14312156112050973296

/-! ## A186020.P17340957958143474859

`A121207(A038722(n+2))`
-/

namespace A186020.P17340957958143474859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (A038722 (n + 2)).toNat

end

end A186020.P17340957958143474859

/-!
# A186021: a(n) = Bell(n)*(2 - 0^n).

The programs for A186021, there is no canonical definition to state claims against.
-/

/-! ## A186021.P15902376743749065416

`A271466(∑[n+1])`
-/

namespace A186021.P15902376743749065416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186021.P15902376743749065416

/-! ## A186021.P980723576551249088

`∑[A259691(∑[n]+1)]`
-/

namespace A186021.P980723576551249088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186021.P980723576551249088

/-! ## A186021.P2158274558334056395

`(ceil(sin(n)²)+1)*Δ[A005001(n)]`
-/

namespace A186021.P2158274558334056395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * (f1 (n + 1) - f1 n)

end

end A186021.P2158274558334056395

/-! ## A186021.P3680053209743806508

`A000110(n)*A000122(n²)`
-/

namespace A186021.P3680053209743806508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000122 (n ^ 2)

end

end A186021.P3680053209743806508

/-! ## A186021.P4849042828588365785

`(A057427(n)+1)*A000110(n)`
-/

namespace A186021.P4849042828588365785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A000110 n

end

end A186021.P4849042828588365785

/-! ## A186021.P5932815700794342359

`(A178334(n)+1)*A000110(n)`
-/

namespace A186021.P5932815700794342359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A000110 n

end

end A186021.P5932815700794342359

/-! ## A186021.P2468389205976925031

`(1-A057428(n))*A000110(n)`
-/

namespace A186021.P2468389205976925031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A000110 n

end

end A186021.P2468389205976925031

/-! ## A186021.P10823514890424528778

`A000110(n)*A152765(2*n)`
-/

namespace A186021.P10823514890424528778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A152765 (2 * n)

end

end A186021.P10823514890424528778

/-!
# A186022: Diagonal sums of number triangle A186020.

The programs for A186022, there is no canonical definition to state claims against.
-/

/-! ## A186022.P1244796785988607282

`A026819(or(3, A335626(n)))`
-/

namespace A186022.P1244796785988607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor 3 (A335626 n)).toNat

end

end A186022.P1244796785988607282

/-! ## A186022.P14499228706317572550

`A046155(or(3, A335626(n)))`
-/

namespace A186022.P14499228706317572550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor 3 (A335626 n)).toNat

end

end A186022.P14499228706317572550

/-! ## A186022.P9851364206244696796

`A026819(xor(3, A335626(n)))`
-/

namespace A186022.P9851364206244696796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.xor 3 (A335626 n)).toNat

end

end A186022.P9851364206244696796

/-!
# A186023: Eigentriangle of triangle A085478.

The programs for A186023, there is no canonical definition to state claims against.
-/

/-! ## A186023.P9745278591555564207

`A128559(A090238(n+1)+1)`
-/

namespace A186023.P9745278591555564207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A090238 (n + 1) + 1).toNat

end

end A186023.P9745278591555564207

/-!
# A186024: Inverse of eigentriangle of triangle A085478.

The programs for A186024, there is no canonical definition to state claims against.
-/

/-! ## A186024.P11897861089638903346

`(-A165253(n))^(1-char[∑[n-1]])`
-/

namespace A186024.P11897861089638903346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A165253 n : ℚ) ^ (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A186024.P11897861089638903346

/-! ## A186024.P16768805953992064616

`floor(acot(n)²)^A165253(n)-A165253(n)`
-/

namespace A186024.P16768805953992064616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ : ℚ) ^ (A165253 n : ℤ) - (A165253 n : ℚ)

end

end A186024.P16768805953992064616

/-! ## A186024.P13923157448825408723

`char[∑[n-1]]-(A085478(n)-A128908(n))`
-/

namespace A186024.P13923157448825408723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A085478 n - A128908 n)

end

end A186024.P13923157448825408723

/-! ## A186024.P14647623864473503662

`A023531(n)-A165253(n)%(2*n+1)²`
-/

namespace A186024.P14647623864473503662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n - Int.tmod (A165253 n) ((2 * n + 1) ^ 2 : ℤ)

end

end A186024.P14647623864473503662

/-! ## A186024.P4526988714084677300

`A073423(A061579(n))-A165253(n)`
-/

namespace A186024.P4526988714084677300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (A061579 n).toNat - A165253 n

end

end A186024.P4526988714084677300

/-! ## A186024.P5418442106042297619

`A019426(A130123(n))-A165253(n)`
-/

namespace A186024.P5418442106042297619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A130123 n).toNat - A165253 n

end

end A186024.P5418442106042297619

/-! ## A186024.P2817468026486721218

`A236376(n)-A087156(A078812(n))`
-/

namespace A186024.P2817468026486721218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236376 n - A087156 (A078812 n).toNat

end

end A186024.P2817468026486721218

/-! ## A186024.P12754626313226786625

`A023531(n)+A128908(n)-A085478(n)`
-/

namespace A186024.P12754626313226786625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + (A128908 n - A085478 n)

end

end A186024.P12754626313226786625

/-! ## A186024.P1544678273349083072

`A000038(n)^A165253(n)-A165253(n)`
-/

namespace A186024.P1544678273349083072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A165253 n : ℤ) - (A165253 n : ℚ)

end

end A186024.P1544678273349083072

/-! ## A186024.P13133805697251623786

`A128908(n)-A085478(n)%A053122(n)`
-/

namespace A186024.P13133805697251623786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 n - Int.tmod (A085478 n) (A053122 n)

end

end A186024.P13133805697251623786

/-!
# A186025: a(n) = 0^n + 1 - F(n-1)^2 - F(n)^2, where F = A000045.

The programs for A186025, the canonical program `A186025.P8246837127777176698` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186025 has offset 0).

The definition of A186025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186025.P17633936297159801906

`∑[ogf((1-4x+3x^2-x^3)/(1-3x+x^2))]`
-/

namespace A186025.P17633936297159801906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3, -1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186025.P17633936297159801906

namespace A186025

/-- `∑[ogf((1-4x+3x^2-x^3)/(1-3x+x^2))]` -/
def P17633936297159801906.Spec : Prop :=
  ∀ n, P17633936297159801906.a n = A186025 n

end A186025

/-! ## A186025.P1203905936418890557

`ogf((1-4x+3x^2-x^3)/(1-4x+4x^2-x^3))`
-/

namespace A186025.P1203905936418890557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3, -1] [1, -4, 4, -1] n

end

end A186025.P1203905936418890557

namespace A186025

/-- `ogf((1-4x+3x^2-x^3)/(1-4x+4x^2-x^3))` -/
def P1203905936418890557.Spec : Prop :=
  ∀ n, P1203905936418890557.a n = A186025 n

end A186025

/-! ## A186025.P7967848868478883284

`floor(ϕ²*a(n-1))-1` with `a(0)=1, a(1)=0`
-/

namespace A186025.P7967848868478883284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ - 1

end

end A186025.P7967848868478883284

namespace A186025

/-- `floor(ϕ²*a(n-1))-1` -/
def P7967848868478883284.Spec : Prop :=
  ∀ n, P7967848868478883284.a n = A186025 n

end A186025

/-! ## A186025.P8246837127777176698

`1-record[a(n-2)-a(n-1)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186025

/-- `1-record[a(n-2)-a(n-1)]` -/
def P8246837127777176698.Spec : Prop :=
  ∀ n, P8246837127777176698.a n = A186025 n

theorem P8246837127777176698.correct : P8246837127777176698.Spec := by
  intro n
  simp only [A186025]

end A186025

/-! ## A186025.P18442501667821429892

`3*a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A186025.P18442501667821429892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1)

end

end A186025.P18442501667821429892

namespace A186025

/-- `3*a(n-1)-(a(n-2)+1)` -/
def P18442501667821429892.Spec : Prop :=
  ∀ n, P18442501667821429892.a n = A186025 n

end A186025

/-! ## A186025.P10112222884784039688

`3*a(n-1)-1-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A186025.P10112222884784039688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  3 * a (n - 1) - 1 - a (n - 2)

end

end A186025.P10112222884784039688

namespace A186025

/-- `3*a(n-1)-1-a(n-2)` -/
def P10112222884784039688.Spec : Prop :=
  ∀ n, P10112222884784039688.a n = A186025 n

end A186025

/-! ## A186025.P15245575549110675278

`2-A093467(n+1)`
-/

namespace A186025.P15245575549110675278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A093467 (n + 1)

end

end A186025.P15245575549110675278

namespace A186025

/-- `2-A093467(n+1)` -/
def P15245575549110675278.Spec : Prop :=
  ∀ n, P15245575549110675278.a n = A186025 n

end A186025

/-! ## A186025.P2545779245108197403

`-record[A119282(n+1)]`
-/

namespace A186025.P2545779245108197403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186025.P2545779245108197403

namespace A186025

/-- `-record[A119282(n+1)]` -/
def P2545779245108197403.Spec : Prop :=
  ∀ n, P2545779245108197403.a n = A186025 n

end A186025

/-! ## A186025.P12916782625822312405

`1-A000045(comp[2*(n+1)])`
-/

namespace A186025.P12916782625822312405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A186025.P12916782625822312405

namespace A186025

/-- `1-A000045(comp[2*(n+1)])` -/
def P12916782625822312405.Spec : Prop :=
  ∀ n, P12916782625822312405.a n = A186025 n

end A186025

/-! ## A186025.P1491657463214539587

`1-ceil(A000045(2*n)/ϕ)`
-/

namespace A186025.P1491657463214539587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(A000045 (2 * n) : ℝ) / Real.goldenRatio⌉

end

end A186025.P1491657463214539587

namespace A186025

/-- `1-ceil(A000045(2*n)/ϕ)` -/
def P1491657463214539587.Spec : Prop :=
  ∀ n, P1491657463214539587.a n = A186025 n

end A186025

/-! ## A186025.P322020835846632584

`1-record[and(1, n)*A000045(n)]`
-/

namespace A186025.P322020835846632584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186025.P322020835846632584

namespace A186025

/-- `1-record[and(1, n)*A000045(n)]` -/
def P322020835846632584.Spec : Prop :=
  ∀ n, P322020835846632584.a n = A186025 n

end A186025

/-! ## A186025.P7407592957825206008

`2-∑[A000045(abs(2-n)+n)]`
-/

namespace A186025.P7407592957825206008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - (n : ℤ)| + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186025.P7407592957825206008

namespace A186025

/-- `2-∑[A000045(abs(2-n)+n)]` -/
def P7407592957825206008.Spec : Prop :=
  ∀ n, P7407592957825206008.a n = A186025 n

end A186025

/-! ## A186025.P481362623647665547

`floor(acot(n))-A000045(abs(1-2*n))+1`
-/

namespace A186025.P481362623647665547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - A000045 |1 - (2 * n : ℤ)|.toNat + 1

end

end A186025.P481362623647665547

namespace A186025

/-- `floor(acot(n))-A000045(abs(1-2*n))+1` -/
def P481362623647665547.Spec : Prop :=
  ∀ n, P481362623647665547.a n = A186025 n

end A186025

/-! ## A186025.P9959793780477474321

`floor(a(n-1)-A000045(2*(n-1)))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A186025.P9959793780477474321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - A000045 (2 * ((n : ℤ) - 1)).toNat

end

end A186025.P9959793780477474321

namespace A186025

/-- `floor(a(n-1)-A000045(2*(n-1)))` -/
def P9959793780477474321.Spec : Prop :=
  ∀ n, P9959793780477474321.a n = A186025 n

end A186025

/-! ## A186025.P11966613406245541181

`A355020(A004273(n))`
-/

namespace A186025.P11966613406245541181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 (A004273 n).toNat

end

end A186025.P11966613406245541181

namespace A186025

/-- `A355020(A004273(n))` -/
def P11966613406245541181.Spec : Prop :=
  ∀ n, P11966613406245541181.a n = A186025 n

end A186025

/-! ## A186025.P15249750740030324486

`1-A212804(A004277(n))`
-/

namespace A186025.P15249750740030324486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A212804 (A004277 n).toNat

end

end A186025.P15249750740030324486

namespace A186025

/-- `1-A212804(A004277(n))` -/
def P15249750740030324486.Spec : Prop :=
  ∀ n, P15249750740030324486.a n = A186025 n

end A186025

/-! ## A186025.P9600279553668287632

`A054977(n)-A001519(n)`
-/

namespace A186025.P9600279553668287632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A001519 n

end

end A186025.P9600279553668287632

namespace A186025

/-- `A054977(n)-A001519(n)` -/
def P9600279553668287632.Spec : Prop :=
  ∀ n, P9600279553668287632.a n = A186025 n

end A186025

/-! ## A186025.P15959211687290293539

`1-record[A000045(A006257(n))]`
-/

namespace A186025.P15959211687290293539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186025.P15959211687290293539

namespace A186025

/-- `1-record[A000045(A006257(n))]` -/
def P15959211687290293539.Spec : Prop :=
  ∀ n, P15959211687290293539.a n = A186025 n

end A186025

/-! ## A186025.P551483187446533578

`1-record[A000045(A006369(n))]`
-/

namespace A186025.P551483187446533578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186025.P551483187446533578

namespace A186025

/-- `1-record[A000045(A006369(n))]` -/
def P551483187446533578.Spec : Prop :=
  ∀ n, P551483187446533578.a n = A186025 n

end A186025

/-!
# A186026: Hankel transform of Thue-Morse related sequence A106400.

The programs for A186026, there is no canonical definition to state claims against.
-/

/-! ## A186026.P8113983265502263129

`∏[A002448(A054173(n)²)]`
-/

namespace A186026.P8113983265502263129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A054173 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186026.P8113983265502263129

/-! ## A186026.P9295550503793544349

`∏[A280560(A054173(n)²)]`
-/

namespace A186026.P9295550503793544349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A054173 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186026.P9295550503793544349

/-! ## A186026.P14783001971292439271

`∏[A084100(A075211(n+1))]`
-/

namespace A186026.P14783001971292439271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (A075211 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186026.P14783001971292439271

/-! ## A186026.P5724755373592272576

`∏[A084100(record[A300930(n+1)])]`
-/

namespace A186026.P5724755373592272576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186026.P5724755373592272576

/-! ## A186026.P7178240847552089649

`ceil(2^(n-1))*A020985(A122983(n))`
-/

namespace A186026.P7178240847552089649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A020985 (A122983 n).toNat

end

end A186026.P7178240847552089649

/-!
# A186027: Numerators of coefficients of x^2 in continued fraction expansion of A106400.

The programs for A186027, there is no canonical definition to state claims against.
-/

/-! ## A186027.P13230218307859337122

`A283669(A283554(n+1))+(-1)^n`
-/

namespace A186027.P13230218307859337122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283669 (A283554 (n + 1)).toNat + (-1) ^ n

end

end A186027.P13230218307859337122

/-! ## A186027.P7363298076753154936

`(-1)^n-A067898(A112271(2*n+1))`
-/

namespace A186027.P7363298076753154936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - A067898 (A112271 (2 * n + 1)).toNat

end

end A186027.P7363298076753154936

/-!
# A186028: Denominators of coefficients of x^2 in continued fraction expansion of A106400.

The programs for A186028, there is no canonical definition to state claims against.
-/

/-! ## A186028.P3123195279664343713

`gcd(A146253(n+1), A186026(n))`
-/

namespace A186028.P3123195279664343713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146253 (n + 1)) (A186026 n)

end

end A186028.P3123195279664343713

/-!
# A186029: a(n) = n*(7*n+3)/2.

The programs for A186029, the canonical program `A186029.P5831791685190948445` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186029 has offset 0).

The definition of A186029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n+3)/2` (program `A186029.P3723918214709116241`, by `A186029.P3723918214709116241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186029.P3723918214709116241

`n*(7*n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186029.P3723918214709116241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((7 * n + 3 : ℚ) / 2)

end

end A186029.P3723918214709116241

namespace A186029

/-- `n*(7*n+3)/2` -/
def P3723918214709116241.Spec : Prop :=
  ∀ n, P3723918214709116241.a n = (A186029 n : ℚ)

theorem P3723918214709116241.correct : P3723918214709116241.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A186029, Nat.add_sub_cancel, A186029.P3723918214709116241.a, A186029.P5831791685190948445.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A186029, Nat.add_sub_cancel, A186029.P3723918214709116241.a, A186029.P5831791685190948445.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A186029

/-! ## A186029.P5831791685190948445

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=17`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186029

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5831791685190948445.Spec : Prop :=
  ∀ n, P5831791685190948445.a n = A186029 n

theorem P5831791685190948445.correct : P5831791685190948445.Spec := by
  intro n
  simp only [A186029]

end A186029

/-! ## A186029.P9800204812247601653

`A174738(7*n+4)`
-/

namespace A186029.P9800204812247601653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n + 4)

end

end A186029.P9800204812247601653

namespace A186029

/-- `A174738(7*n+4)` -/
def P9800204812247601653.Spec : Prop :=
  ∀ n, P9800204812247601653.a n = A186029 n

end A186029

/-! ## A186029.P8189581467957809244

`∑[a(n-1)+7]` with `a(0)=0, a(1)=5`
-/

namespace A186029.P8189581467957809244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186029.P8189581467957809244

namespace A186029

/-- `∑[a(n-1)+7]` -/
def P8189581467957809244.Spec : Prop :=
  ∀ n, (P8189581467957809244.a n : ℤ) = A186029 n

end A186029

/-! ## A186029.P17614543324952351506

`∑[record[lcm(2, n)]+3*n]`
-/

namespace A186029.P17614543324952351506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186029.P17614543324952351506

namespace A186029

/-- `∑[record[lcm(2, n)]+3*n]` -/
def P17614543324952351506.Spec : Prop :=
  ∀ n, (P17614543324952351506.a n : ℤ) = A186029 n

end A186029

/-! ## A186029.P10161704213488424157

`∑[ogf((5x+2x^2)/(1-2x+x^2))]`
-/

namespace A186029.P10161704213488424157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186029.P10161704213488424157

namespace A186029

/-- `∑[ogf((5x+2x^2)/(1-2x+x^2))]` -/
def P10161704213488424157.Spec : Prop :=
  ∀ n, P10161704213488424157.a n = A186029 n

end A186029

/-! ## A186029.P3003456988706187358

`ogf((5x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A186029.P3003456988706187358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2] [1, -3, 3, -1] n

end

end A186029.P3003456988706187358

namespace A186029

/-- `ogf((5x+2x^2)/(1-3x+3x^2-x^3))` -/
def P3003456988706187358.Spec : Prop :=
  ∀ n, P3003456988706187358.a n = A186029 n

end A186029

/-! ## A186029.P8129706919837111236

`(2*n)²-C(n, 2)+n`
-/

namespace A186029.P8129706919837111236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) + (n : ℤ)

end

end A186029.P8129706919837111236

namespace A186029

/-- `(2*n)²-C(n, 2)+n` -/
def P8129706919837111236.Spec : Prop :=
  ∀ n, P8129706919837111236.a n = A186029 n

end A186029

/-! ## A186029.P4829236282608520730

`(2*n)²-(C(n, 2)-n)`
-/

namespace A186029.P4829236282608520730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - (n : ℤ))

end

end A186029.P4829236282608520730

namespace A186029

/-- `(2*n)²-(C(n, 2)-n)` -/
def P4829236282608520730.Spec : Prop :=
  ∀ n, P4829236282608520730.a n = A186029 n

end A186029

/-! ## A186029.P752705558935070987

`7*n+a(n-1)-2` with `a(0)=0`
-/

namespace A186029.P752705558935070987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) + a (n - 1) - 2

end

end A186029.P752705558935070987

namespace A186029

/-- `7*n+a(n-1)-2` -/
def P752705558935070987.Spec : Prop :=
  ∀ n, P752705558935070987.a n = A186029 n

end A186029

/-! ## A186029.P8246280197995336578

`7*n-(2-a(n-1))` with `a(0)=0`
-/

namespace A186029.P8246280197995336578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (2 - a (n - 1))

end

end A186029.P8246280197995336578

namespace A186029

/-- `7*n-(2-a(n-1))` -/
def P8246280197995336578.Spec : Prop :=
  ∀ n, P8246280197995336578.a n = A186029 n

end A186029

/-! ## A186029.P17405223890389888817

`(2*n+1)*2*n-C(n+1, 2)`
-/

namespace A186029.P17405223890389888817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (2 * n) : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A186029.P17405223890389888817

namespace A186029

/-- `(2*n+1)*2*n-C(n+1, 2)` -/
def P17405223890389888817.Spec : Prop :=
  ∀ n, P17405223890389888817.a n = A186029 n

end A186029

/-! ## A186029.P17311106388882858474

`A389615(n)-1`
-/

namespace A186029.P17311106388882858474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - 1

end

end A186029.P17311106388882858474

namespace A186029

/-- `A389615(n)-1` -/
def P17311106388882858474.Spec : Prop :=
  ∀ n, P17311106388882858474.a n = A186029 n

end A186029

/-! ## A186029.P3290729013430024772

`A022265(n)+n`
-/

namespace A186029.P3290729013430024772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + (n : ℤ)

end

end A186029.P3290729013430024772

namespace A186029

/-- `A022265(n)+n` -/
def P3290729013430024772.Spec : Prop :=
  ∀ n, P3290729013430024772.a n = A186029 n

end A186029

/-! ## A186029.P6202083115855994316

`A179986(n)-n`
-/

namespace A186029.P6202083115855994316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n - (n : ℤ)

end

end A186029.P6202083115855994316

namespace A186029

/-- `A179986(n)-n` -/
def P6202083115855994316.Spec : Prop :=
  ∀ n, P6202083115855994316.a n = A186029 n

end A186029

/-! ## A186029.P4292895125553178482

`A147875(n)+n²`
-/

namespace A186029.P4292895125553178482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + (n ^ 2 : ℤ)

end

end A186029.P4292895125553178482

namespace A186029

/-- `A147875(n)+n²` -/
def P4292895125553178482.Spec : Prop :=
  ∀ n, P4292895125553178482.a n = A186029 n

end A186029

/-! ## A186029.P2134206765867850480

`A081266(n)-n²`
-/

namespace A186029.P2134206765867850480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n - (n ^ 2 : ℤ)

end

end A186029.P2134206765867850480

namespace A186029

/-- `A081266(n)-n²` -/
def P2134206765867850480.Spec : Prop :=
  ∀ n, P2134206765867850480.a n = A186029 n

end A186029

/-! ## A186029.P13234107704934245496

`A049451(n)+∑[n]`
-/

namespace A186029.P13234107704934245496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A186029.P13234107704934245496

namespace A186029

/-- `A049451(n)+∑[n]` -/
def P13234107704934245496.Spec : Prop :=
  ∀ n, P13234107704934245496.a n = A186029 n

end A186029

/-! ## A186029.P15201978686030153577

`A002943(n)-∑[n]`
-/

namespace A186029.P15201978686030153577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A186029.P15201978686030153577

namespace A186029

/-- `A002943(n)-∑[n]` -/
def P15201978686030153577.Spec : Prop :=
  ∀ n, P15201978686030153577.a n = A186029 n

end A186029

/-! ## A186029.P6406248400603326675

`(A381109(n)-1)/3`
-/

namespace A186029.P6406248400603326675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381109 n - 1 : ℚ) / 3

end

end A186029.P6406248400603326675

namespace A186029

/-- `(A381109(n)-1)/3` -/
def P6406248400603326675.Spec : Prop :=
  ∀ n, P6406248400603326675.a n = (A186029 n : ℚ)

end A186029

/-!
# A186030: a(n) = n*(13*n-3)/2.

The programs for A186030, the canonical program `A186030.P4013852376364942325` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186030 has offset 0).

The definition of A186030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186030.P4013852376364942325

`n*(13*n-3)/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A186030

/-- `n*(13*n-3)/2` -/
def P4013852376364942325.Spec : Prop :=
  ∀ n, P4013852376364942325.a n = (A186030 n : ℚ)

end A186030

/-! ## A186030.P7150446451770829258

`∑[a(n-1)+13]` with `a(0)=0, a(1)=5`
-/

namespace A186030.P7150446451770829258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186030.P7150446451770829258

namespace A186030

/-- `∑[a(n-1)+13]` -/
def P7150446451770829258.Spec : Prop :=
  ∀ n, (P7150446451770829258.a n : ℤ) = A186030 n

end A186030

/-! ## A186030.P2267080097685628196

`∑[ogf((5x+8x^2)/(1-2x+x^2))]`
-/

namespace A186030.P2267080097685628196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186030.P2267080097685628196

namespace A186030

/-- `∑[ogf((5x+8x^2)/(1-2x+x^2))]` -/
def P2267080097685628196.Spec : Prop :=
  ∀ n, P2267080097685628196.a n = A186030 n

end A186030

/-! ## A186030.P2489520409724082872

`ogf((5x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A186030.P2489520409724082872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 8] [1, -3, 3, -1] n

end

end A186030.P2489520409724082872

namespace A186030

/-- `ogf((5x+8x^2)/(1-3x+3x^2-x^3))` -/
def P2489520409724082872.Spec : Prop :=
  ∀ n, P2489520409724082872.a n = A186030 n

end A186030

/-! ## A186030.P5396276453242038194

`A022270(n)-n`
-/

namespace A186030.P5396276453242038194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n - (n : ℤ)

end

end A186030.P5396276453242038194

namespace A186030

/-- `A022270(n)-n` -/
def P5396276453242038194.Spec : Prop :=
  ∀ n, P5396276453242038194.a n = A186030 n

end A186030

/-! ## A186030.P15813257934108744637

`A033579(n)+∑[n]`
-/

namespace A186030.P15813257934108744637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A186030.P15813257934108744637

namespace A186030

/-- `A033579(n)+∑[n]` -/
def P15813257934108744637.Spec : Prop :=
  ∀ n, P15813257934108744637.a n = A186030 n

end A186030

/-! ## A186030.P12218055815259496830

`A022271(n)-2*n`
-/

namespace A186030.P12218055815259496830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n - (2 * n : ℤ)

end

end A186030.P12218055815259496830

namespace A186030

/-- `A022271(n)-2*n` -/
def P12218055815259496830.Spec : Prop :=
  ∀ n, P12218055815259496830.a n = A186030 n

end A186030

/-! ## A186030.P4882498934442526029

`A226488(n)+3*n`
-/

namespace A186030.P4882498934442526029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + (3 * n : ℤ)

end

end A186030.P4882498934442526029

namespace A186030

/-- `A226488(n)+3*n` -/
def P4882498934442526029.Spec : Prop :=
  ∀ n, P4882498934442526029.a n = A186030 n

end A186030

/-! ## A186030.P6682530580082061330

`A051867(n)+4*n`
-/

namespace A186030.P6682530580082061330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + (4 * n : ℤ)

end

end A186030.P6682530580082061330

namespace A186030

/-- `A051867(n)+4*n` -/
def P6682530580082061330.Spec : Prop :=
  ∀ n, P6682530580082061330.a n = A186030 n

end A186030

/-! ## A186030.P4751027953658493250

`(A062783(n)+n²)/2`
-/

namespace A186030.P4751027953658493250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062783 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A186030.P4751027953658493250

namespace A186030

/-- `(A062783(n)+n²)/2` -/
def P4751027953658493250.Spec : Prop :=
  ∀ n, P4751027953658493250.a n = (A186030 n : ℚ)

end A186030

/-! ## A186030.P14559954433617842804

`(A185019(n)-n²)/2`
-/

namespace A186030.P14559954433617842804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185019 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A186030.P14559954433617842804

namespace A186030

/-- `(A185019(n)-n²)/2` -/
def P14559954433617842804.Spec : Prop :=
  ∀ n, P14559954433617842804.a n = (A186030 n : ℚ)

end A186030

/-! ## A186030.P4350124418922336375

`7*n²-A000096(n)`
-/

namespace A186030.P4350124418922336375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - A000096 n

end

end A186030.P4350124418922336375

namespace A186030

/-- `7*n²-A000096(n)` -/
def P4350124418922336375.Spec : Prop :=
  ∀ n, P4350124418922336375.a n = A186030 n

end A186030

/-! ## A186030.P11103799578150564649

`A247541(n)-∑[n+1]`
-/

namespace A186030.P11103799578150564649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A186030.P11103799578150564649

namespace A186030

/-- `A247541(n)-∑[n+1]` -/
def P11103799578150564649.Spec : Prop :=
  ∀ n, P11103799578150564649.a n = A186030 n

end A186030

/-! ## A186030.P8166947493006228527

`A226492(n)+n²+n`
-/

namespace A186030.P8166947493006228527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + (n ^ 2 + n : ℤ)

end

end A186030.P8166947493006228527

namespace A186030

/-- `A226492(n)+n²+n` -/
def P8166947493006228527.Spec : Prop :=
  ∀ n, P8166947493006228527.a n = A186030 n

end A186030

/-! ## A186030.P71824485929205714

`A022272(n)-(n²+n)`
-/

namespace A186030.P71824485929205714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n - (n ^ 2 + n : ℤ)

end

end A186030.P71824485929205714

namespace A186030

/-- `A022272(n)-(n²+n)` -/
def P71824485929205714.Spec : Prop :=
  ∀ n, P71824485929205714.a n = A186030 n

end A186030

/-! ## A186030.P8427816096806311151

`A005475(n)+A002939(n)`
-/

namespace A186030.P8427816096806311151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n + A002939 n

end

end A186030.P8427816096806311151

namespace A186030

/-- `A005475(n)+A002939(n)` -/
def P8427816096806311151.Spec : Prop :=
  ∀ n, P8427816096806311151.a n = A186030 n

end A186030

/-! ## A186030.P14754026721940492739

`A016742(n)+A000566(n)`
-/

namespace A186030.P14754026721940492739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A000566 n

end

end A186030.P14754026721940492739

namespace A186030

/-- `A016742(n)+A000566(n)` -/
def P14754026721940492739.Spec : Prop :=
  ∀ n, P14754026721940492739.a n = A186030 n

end A186030

/-! ## A186030.P12792358275333038273

`A022266(n)+A000384(n)`
-/

namespace A186030.P12792358275333038273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n + A000384 n

end

end A186030.P12792358275333038273

namespace A186030

/-- `A022266(n)+A000384(n)` -/
def P12792358275333038273.Spec : Prop :=
  ∀ n, P12792358275333038273.a n = A186030 n

end A186030

/-! ## A186030.P13827357243760641625

`A022265(n)+A000567(n)`
-/

namespace A186030.P13827357243760641625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + A000567 n

end

end A186030.P13827357243760641625

namespace A186030

/-- `A022265(n)+A000567(n)` -/
def P13827357243760641625.Spec : Prop :=
  ∀ n, P13827357243760641625.a n = A186030 n

end A186030

/-! ## A186030.P3047648092941208020

`A033991(n)+A005476(n)`
-/

namespace A186030.P3047648092941208020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n + A005476 n

end

end A186030.P3047648092941208020

namespace A186030

/-- `A033991(n)+A005476(n)` -/
def P3047648092941208020.Spec : Prop :=
  ∀ n, P3047648092941208020.a n = A186030 n

end A186030

/-!
# A186031: Number of Dyck paths of semilength n with a valley (DU) spanning the midpoint.

The programs for A186031, the canonical program `A186031.P15911966878136021821` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186031 has offset 1).

The definition of A186031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186031.P15911966878136021821

`A000108(n)-A126120(n)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A186031

/-- `A000108(n)-A126120(n)²` -/
def P15911966878136021821.Spec : Prop :=
  ∀ n, P15911966878136021821.a n = A186031 (n + 1)

theorem P15911966878136021821.correct : P15911966878136021821.Spec := by
  intro n
  simp only [A186031, Nat.add_sub_cancel]

end A186031

/-! ## A186031.P11255807895233182692

`abs(A126120(n)²-A168491(n))`
-/

namespace A186031.P11255807895233182692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126120 n ^ 2 - A168491 n|

end

end A186031.P11255807895233182692

namespace A186031

/-- `abs(A126120(n)²-A168491(n))` -/
def P11255807895233182692.Spec : Prop :=
  ∀ n, P11255807895233182692.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P16815948688814275685

`A000108(n)-A090192(n+1)²`
-/

namespace A186031.P16815948688814275685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A090192 (n + 1) ^ 2

end

end A186031.P16815948688814275685

namespace A186031

/-- `A000108(n)-A090192(n+1)²` -/
def P16815948688814275685.Spec : Prop :=
  ∀ n, P16815948688814275685.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P2251900780015132073

`A000108(n)-A097331(n+1)²`
-/

namespace A186031.P2251900780015132073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A097331 (n + 1) ^ 2

end

end A186031.P2251900780015132073

namespace A186031

/-- `A000108(n)-A097331(n+1)²` -/
def P2251900780015132073.Spec : Prop :=
  ∀ n, P2251900780015132073.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P9366991602820821341

`A000108(n)-A105523(n+1)²`
-/

namespace A186031.P9366991602820821341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A105523 (n + 1) ^ 2

end

end A186031.P9366991602820821341

namespace A186031

/-- `A000108(n)-A105523(n+1)²` -/
def P9366991602820821341.Spec : Prop :=
  ∀ n, P9366991602820821341.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P8649179409026898504

`A000108(n)-A210628(n+1)²`
-/

namespace A186031.P8649179409026898504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A210628 (n + 1) ^ 2

end

end A186031.P8649179409026898504

namespace A186031

/-- `A000108(n)-A210628(n+1)²` -/
def P8649179409026898504.Spec : Prop :=
  ∀ n, P8649179409026898504.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P7148227187246367993

`A120588(n+1)-A126120(n)²`
-/

namespace A186031.P7148227187246367993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A126120 n ^ 2

end

end A186031.P7148227187246367993

namespace A186031

/-- `A120588(n+1)-A126120(n)²` -/
def P7148227187246367993.Spec : Prop :=
  ∀ n, P7148227187246367993.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P8669580394436694817

`A120304(n)+2-A126120(n)²`
-/

namespace A186031.P8669580394436694817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (2 - A126120 n ^ 2)

end

end A186031.P8669580394436694817

namespace A186031

/-- `A120304(n)+2-A126120(n)²` -/
def P8669580394436694817.Spec : Prop :=
  ∀ n, P8669580394436694817.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P13307646931023934904

`A028304(2*n)-A126120(n)²`
-/

namespace A186031.P13307646931023934904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A126120 n ^ 2

end

end A186031.P13307646931023934904

namespace A186031

/-- `A028304(2*n)-A126120(n)²` -/
def P13307646931023934904.Spec : Prop :=
  ∀ n, P13307646931023934904.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P3395855252960541119

`A126120(2*n)-A126120(n)²`
-/

namespace A186031.P3395855252960541119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A126120 n ^ 2

end

end A186031.P3395855252960541119

namespace A186031

/-- `A126120(2*n)-A126120(n)²` -/
def P3395855252960541119.Spec : Prop :=
  ∀ n, P3395855252960541119.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P6276431873091777746

`A120588(n+1)-A097331(n+1)²`
-/

namespace A186031.P6276431873091777746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A097331 (n + 1) ^ 2

end

end A186031.P6276431873091777746

namespace A186031

/-- `A120588(n+1)-A097331(n+1)²` -/
def P6276431873091777746.Spec : Prop :=
  ∀ n, P6276431873091777746.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P2128502966240169677

`A126324(2*n)-A097331(n+1)²`
-/

namespace A186031.P2128502966240169677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - A097331 (n + 1) ^ 2

end

end A186031.P2128502966240169677

namespace A186031

/-- `A126324(2*n)-A097331(n+1)²` -/
def P2128502966240169677.Spec : Prop :=
  ∀ n, P2128502966240169677.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P10467913741078718714

`A208355(2*n)-A097331(n+1)²`
-/

namespace A186031.P10467913741078718714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - A097331 (n + 1) ^ 2

end

end A186031.P10467913741078718714

namespace A186031

/-- `A208355(2*n)-A097331(n+1)²` -/
def P10467913741078718714.Spec : Prop :=
  ∀ n, P10467913741078718714.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P17551398266225099333

`A089408(2*n+1)-A090192(n+1)²`
-/

namespace A186031.P17551398266225099333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A090192 (n + 1) ^ 2

end

end A186031.P17551398266225099333

namespace A186031

/-- `A089408(2*n+1)-A090192(n+1)²` -/
def P17551398266225099333.Spec : Prop :=
  ∀ n, P17551398266225099333.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P1158668497031604495

`A089408(2*n+1)-A097331(n+1)²`
-/

namespace A186031.P1158668497031604495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A097331 (n + 1) ^ 2

end

end A186031.P1158668497031604495

namespace A186031

/-- `A089408(2*n+1)-A097331(n+1)²` -/
def P1158668497031604495.Spec : Prop :=
  ∀ n, P1158668497031604495.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P8187144803054921777

`A097331(2*n+1)-A090192(n+1)²`
-/

namespace A186031.P8187144803054921777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A090192 (n + 1) ^ 2

end

end A186031.P8187144803054921777

namespace A186031

/-- `A097331(2*n+1)-A090192(n+1)²` -/
def P8187144803054921777.Spec : Prop :=
  ∀ n, P8187144803054921777.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P17596197019246236004

`A097331(2*n+1)-A097331(n+1)²`
-/

namespace A186031.P17596197019246236004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A097331 (n + 1) ^ 2

end

end A186031.P17596197019246236004

namespace A186031

/-- `A097331(2*n+1)-A097331(n+1)²` -/
def P17596197019246236004.Spec : Prop :=
  ∀ n, P17596197019246236004.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P10641483459635566566

`A000108(n)-(A138364(n+1)/(n+1))²`
-/

namespace A186031.P10641483459635566566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) - ((A138364 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A186031.P10641483459635566566

namespace A186031

/-- `A000108(n)-(A138364(n+1)/(n+1))²` -/
def P10641483459635566566.Spec : Prop :=
  ∀ n, P10641483459635566566.a n = (A186031 (n + 1) : ℚ)

end A186031

/-! ## A186031.P11309276755112298620

`abs(A105523(2*n+1)+A105523(n+1)²)`
-/

namespace A186031.P11309276755112298620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 (2 * n + 1) + A105523 (n + 1) ^ 2|

end

end A186031.P11309276755112298620

namespace A186031

/-- `abs(A105523(2*n+1)+A105523(n+1)²)` -/
def P11309276755112298620.Spec : Prop :=
  ∀ n, P11309276755112298620.a n = A186031 (n + 1)

end A186031

/-! ## A186031.P1357378946070876034

`A089408(A005408(n))-A126120(n)²`
-/

namespace A186031.P1357378946070876034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A005408 n).toNat - A126120 n ^ 2

end

end A186031.P1357378946070876034

namespace A186031

/-- `A089408(A005408(n))-A126120(n)²` -/
def P1357378946070876034.Spec : Prop :=
  ∀ n, P1357378946070876034.a n = A186031 (n + 1)

end A186031

/-!
# A186032: a(n) = (-1)^A048881(n).

The programs for A186032, the canonical program `A186032.P2427232051721781939` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186032 has offset 0).

The definition of A186032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186032.P2427232051721781939

`(-1)^A048881(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186032

/-- `(-1)^A048881(n)` -/
def P2427232051721781939.Spec : Prop :=
  ∀ n, P2427232051721781939.a n = (A186032 n : ℚ)

end A186032

/-! ## A186032.P7218097056958462963

`A107757(n+1)-A107755(n+1)`
-/

namespace A186032.P7218097056958462963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107757 (n + 1) - A107755 (n + 1)

end

end A186032.P7218097056958462963

namespace A186032

/-- `A107757(n+1)-A107755(n+1)` -/
def P7218097056958462963.Spec : Prop :=
  ∀ n, P7218097056958462963.a n = A186032 n

end A186032

/-! ## A186032.P783639206266880588

`-a(∑[n%4-1])` with `a(0)=1, a(1)=1`
-/

namespace A186032.P783639206266880588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 4 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186032.P783639206266880588

namespace A186032

/-- `-a(∑[n%4-1])` -/
def P783639206266880588.Spec : Prop :=
  ∀ n, P783639206266880588.a n = A186032 n

end A186032

/-! ## A186032.P5342426040634605064

`(-1)^(∑[val(n+1, 2)]+n)`
-/

namespace A186032.P5342426040634605064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A186032.P5342426040634605064

namespace A186032

/-- `(-1)^(∑[val(n+1, 2)]+n)` -/
def P5342426040634605064.Spec : Prop :=
  ∀ n, P5342426040634605064.a n = A186032 n

end A186032

/-! ## A186032.P4295150939785442157

`-∏[-(-1)^val(n+1, 2)]`
-/

namespace A186032.P4295150939785442157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A186032.P4295150939785442157

namespace A186032

/-- `-∏[-(-1)^val(n+1, 2)]` -/
def P4295150939785442157.Spec : Prop :=
  ∀ n, P4295150939785442157.a n = A186032 n

end A186032

/-! ## A186032.P2691121220483544706

`or(1, -char[xor(n, 2*(n+1))])`
-/

namespace A186032.P2691121220483544706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A186032.P2691121220483544706

namespace A186032

/-- `or(1, -char[xor(n, 2*(n+1))])` -/
def P2691121220483544706.Spec : Prop :=
  ∀ n, P2691121220483544706.a n = A186032 n

end A186032

/-! ## A186032.P14112655226152012795

`or(1, -char[xor(n, 2*n)-1])`
-/

namespace A186032.P14112655226152012795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A186032.P14112655226152012795

namespace A186032

/-- `or(1, -char[xor(n, 2*n)-1])` -/
def P14112655226152012795.Spec : Prop :=
  ∀ n, P14112655226152012795.a n = A186032 n

end A186032

/-! ## A186032.P18250207983656768450

`1-2*char[xor(n, 2*(n+1))]`
-/

namespace A186032.P18250207983656768450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A186032.P18250207983656768450

namespace A186032

/-- `1-2*char[xor(n, 2*(n+1))]` -/
def P18250207983656768450.Spec : Prop :=
  ∀ n, P18250207983656768450.a n = A186032 n

end A186032

/-! ## A186032.P6708610558573602792

`2*char[comp[xor(n-1, 2*n)]]-1`
-/

namespace A186032.P6708610558573602792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 1

end

end A186032.P6708610558573602792

namespace A186032

/-- `2*char[comp[xor(n-1, 2*n)]]-1` -/
def P6708610558573602792.Spec : Prop :=
  ∀ n, P6708610558573602792.a n = A186032 n

end A186032

/-! ## A186032.P10755464295147751179

`3-2*gcd(2, ∑[val(n+1, 2)+1])`
-/

namespace A186032.P10755464295147751179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 * Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A186032.P10755464295147751179

namespace A186032

/-- `3-2*gcd(2, ∑[val(n+1, 2)+1])` -/
def P10755464295147751179.Spec : Prop :=
  ∀ n, P10755464295147751179.a n = A186032 n

end A186032

/-! ## A186032.P5980039221338314209

`2*(2-char[xor(n-1, 2*n)])-3`
-/

namespace A186032.P5980039221338314209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) - 3

end

end A186032.P5980039221338314209

namespace A186032

/-- `2*(2-char[xor(n-1, 2*n)])-3` -/
def P5980039221338314209.Spec : Prop :=
  ∀ n, P5980039221338314209.a n = A186032 n

end A186032

/-! ## A186032.P13534418267015021028

`a(n-1)-Δ[-a(and(n, n-1))]` with `a(0)=1`
-/

namespace A186032.P13534418267015021028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A186032.P13534418267015021028

namespace A186032

/-- `a(n-1)-Δ[-a(and(n, n-1))]` -/
def P13534418267015021028.Spec : Prop :=
  ∀ n, P13534418267015021028.a n = A186032 n

end A186032

/-! ## A186032.P8240314874266508491

`(-1)^(n+1)*a(floor((n+1)/2)-1)` with `a(0)=1`
-/

namespace A186032.P8240314874266508491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (n + 1) * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A186032.P8240314874266508491

namespace A186032

/-- `(-1)^(n+1)*a(floor((n+1)/2)-1)` -/
def P8240314874266508491.Spec : Prop :=
  ∀ n, P8240314874266508491.a n = A186032 n

end A186032

/-! ## A186032.P2105509912853809932

`-A106400(n+1)`
-/

namespace A186032.P2105509912853809932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106400 (n + 1)

end

end A186032.P2105509912853809932

namespace A186032

/-- `-A106400(n+1)` -/
def P2105509912853809932.Spec : Prop :=
  ∀ n, P2105509912853809932.a n = A186032 n

end A186032

/-! ## A186032.P10156970317943472398

`Δ[A193494(n)%3]`
-/

namespace A186032.P10156970317943472398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193494 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186032.P10156970317943472398

namespace A186032

/-- `Δ[A193494(n)%3]` -/
def P10156970317943472398.Spec : Prop :=
  ∀ n, P10156970317943472398.a n = A186032 n

end A186032

/-! ## A186032.P7097959458510859580

`1-2*A010059(n+1)`
-/

namespace A186032.P7097959458510859580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A010059 (n + 1)

end

end A186032.P7097959458510859580

namespace A186032

/-- `1-2*A010059(n+1)` -/
def P7097959458510859580.Spec : Prop :=
  ∀ n, P7097959458510859580.a n = A186032 n

end A186032

/-! ## A186032.P11876901348090061171

`2*A010060(n+1)-1`
-/

namespace A186032.P11876901348090061171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010060 (n + 1) - 1

end

end A186032.P11876901348090061171

namespace A186032

/-- `2*A010060(n+1)-1` -/
def P11876901348090061171.Spec : Prop :=
  ∀ n, P11876901348090061171.a n = A186032 n

end A186032

/-! ## A186032.P13130978249228870305

`1-2*A092436(n+1)`
-/

namespace A186032.P13130978249228870305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A092436 (n + 1)

end

end A186032.P13130978249228870305

namespace A186032

/-- `1-2*A092436(n+1)` -/
def P13130978249228870305.Spec : Prop :=
  ∀ n, P13130978249228870305.a n = A186032 n

end A186032

/-! ## A186032.P18075485056556185901

`2*A001285(n+1)-3`
-/

namespace A186032.P18075485056556185901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001285 (n + 1) - 3

end

end A186032.P18075485056556185901

namespace A186032

/-- `2*A001285(n+1)-3` -/
def P18075485056556185901.Spec : Prop :=
  ∀ n, P18075485056556185901.a n = A186032 n

end A186032

/-! ## A186032.P7036492561870756300

`3-2*A161175(n+1)`
-/

namespace A186032.P7036492561870756300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A161175 (n + 1)

end

end A186032.P7036492561870756300

namespace A186032

/-- `3-2*A161175(n+1)` -/
def P7036492561870756300.Spec : Prop :=
  ∀ n, P7036492561870756300.a n = A186032 n

end A186032

/-!
# A186033: Hankel transform of A186032.

The programs for A186033, there is no canonical definition to state claims against.
-/

/-! ## A186033.P12572603449800340016

`2^n*A087003(A042891(n))`
-/

namespace A186033.P12572603449800340016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A087003 (A042891 n).toNat

end

end A186033.P12572603449800340016

/-! ## A186033.P13121376446671623107

`2^n*A008683(A006889(n+1))`
-/

namespace A186033.P13121376446671623107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008683 (A006889 (n + 1)).toNat

end

end A186033.P13121376446671623107

/-! ## A186033.P15810815679980644611

`2^n*A008683(A030818(n+1))`
-/

namespace A186033.P15810815679980644611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008683 (A030818 (n + 1)).toNat

end

end A186033.P15810815679980644611

/-! ## A186033.P1523065422534804593

`2^n*A008683(A030977(n+1))`
-/

namespace A186033.P1523065422534804593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008683 (A030977 (n + 1)).toNat

end

end A186033.P1523065422534804593

/-!
# A186034: 2-adic valuation of the n-th Motzkin number.

The programs for A186034, the canonical program `A186034.P3246974925784444499` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186034 has offset 0).

The definition of A186034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186034.P3246974925784444499

`val(A299918(n), 2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186034

/-- `val(A299918(n), 2)` -/
def P3246974925784444499.Spec : Prop :=
  ∀ n, (P3246974925784444499.a n : ℤ) = A186034 n

theorem P3246974925784444499.correct : P3246974925784444499.Spec := by
  intro n
  simp only [A186034]

end A186034

/-! ## A186034.P17602845522290217168

`log2(gcd(4, A299919(n)))`
-/

namespace A186034.P17602845522290217168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A299919 n) : ℝ)

end

end A186034.P17602845522290217168

namespace A186034

/-- `log2(gcd(4, A299919(n)))` -/
def P17602845522290217168.Spec : Prop :=
  ∀ n, P17602845522290217168.a n = (A186034 n : ℝ)

end A186034

/-! ## A186034.P3693699345122589096

`A007814(or(A007814(n+1)², A299918(n)))`
-/

namespace A186034.P3693699345122589096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A007814 (n + 1) ^ 2) (A299918 n)).toNat

end

end A186034.P3693699345122589096

namespace A186034

/-- `A007814(or(A007814(n+1)², A299918(n)))` -/
def P3693699345122589096.Spec : Prop :=
  ∀ n, P3693699345122589096.a n = A186034 n

end A186034

/-! ## A186034.P228308119450820005

`A029183(Δ[A065882(n+1)]+4)`
-/

namespace A186034.P228308119450820005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 (f1 (n + 1) - f1 n + 4).toNat

end

end A186034.P228308119450820005

namespace A186034

/-- `A029183(Δ[A065882(n+1)]+4)` -/
def P228308119450820005.Spec : Prop :=
  ∀ n, P228308119450820005.a n = A186034 n

end A186034

/-! ## A186034.P692002260861080799

`A007814(A299918(n)+A007814(2*n+1))`
-/

namespace A186034.P692002260861080799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A299918 n + A007814 (2 * n + 1)).toNat

end

end A186034.P692002260861080799

namespace A186034

/-- `A007814(A299918(n)+A007814(2*n+1))` -/
def P692002260861080799.Spec : Prop :=
  ∀ n, P692002260861080799.a n = A186034 n

end A186034

/-! ## A186034.P16044980757125515453

`A007814(or(A008574(n), A299918(n)))`
-/

namespace A186034.P16044980757125515453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A008574 n) (A299918 n)).toNat

end

end A186034.P16044980757125515453

namespace A186034

/-- `A007814(or(A008574(n), A299918(n)))` -/
def P16044980757125515453.Spec : Prop :=
  ∀ n, P16044980757125515453.a n = A186034 n

end A186034

/-! ## A186034.P10431714710461881234

`A007814(A038712(n+1)*A299918(n))`
-/

namespace A186034.P10431714710461881234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A038712 (n + 1) * A299918 n).toNat

end

end A186034.P10431714710461881234

namespace A186034

/-- `A007814(A038712(n+1)*A299918(n))` -/
def P10431714710461881234.Spec : Prop :=
  ∀ n, P10431714710461881234.a n = A186034 n

end A186034

/-! ## A186034.P16445485882962431705

`A007814(or(1, n)*A299918(n))`
-/

namespace A186034.P16445485882962431705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((Nat.lor 1 n : ℤ) * A299918 n).toNat

end

end A186034.P16445485882962431705

namespace A186034

/-- `A007814(or(1, n)*A299918(n))` -/
def P16445485882962431705.Spec : Prop :=
  ∀ n, P16445485882962431705.a n = A186034 n

end A186034

/-! ## A186034.P16340812140425883389

`A007814(2*A008574(n)-A299918(n))`
-/

namespace A186034.P16340812140425883389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A008574 n - A299918 n).toNat

end

end A186034.P16340812140425883389

namespace A186034

/-- `A007814(2*A008574(n)-A299918(n))` -/
def P16340812140425883389.Spec : Prop :=
  ∀ n, P16340812140425883389.a n = A186034 n

end A186034

/-! ## A186034.P1677055728810798404

`A007814(A008574(n)-(A299918(n)-A008574(n)))`
-/

namespace A186034.P1677055728810798404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008574 n - (A299918 n - A008574 n)).toNat

end

end A186034.P1677055728810798404

namespace A186034

/-- `A007814(A008574(n)-(A299918(n)-A008574(n)))` -/
def P1677055728810798404.Spec : Prop :=
  ∀ n, P1677055728810798404.a n = A186034 n

end A186034

/-! ## A186034.P10154600197995745312

`A007814(A299918(n)+2*A008574(n))`
-/

namespace A186034.P10154600197995745312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A299918 n + 2 * A008574 n).toNat

end

end A186034.P10154600197995745312

namespace A186034

/-- `A007814(A299918(n)+2*A008574(n))` -/
def P10154600197995745312.Spec : Prop :=
  ∀ n, P10154600197995745312.a n = A186034 n

end A186034

/-! ## A186034.P13802159274614257517

`A007814(A079523(n+1)*A299918(n))`
-/

namespace A186034.P13802159274614257517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A079523 (n + 1) * A299918 n).toNat

end

end A186034.P13802159274614257517

namespace A186034

/-- `A007814(A079523(n+1)*A299918(n))` -/
def P13802159274614257517.Spec : Prop :=
  ∀ n, P13802159274614257517.a n = A186034 n

end A186034

/-! ## A186034.P11242552284976302760

`A007814(A016813(n)*A299918(n))`
-/

namespace A186034.P11242552284976302760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016813 n * A299918 n).toNat

end

end A186034.P11242552284976302760

namespace A186034

/-- `A007814(A016813(n)*A299918(n))` -/
def P11242552284976302760.Spec : Prop :=
  ∀ n, P11242552284976302760.a n = A186034 n

end A186034

/-! ## A186034.P1400244862039586528

`A007814(A065091(n+1)*A299918(n))`
-/

namespace A186034.P1400244862039586528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A065091 (n + 1) * A299918 n).toNat

end

end A186034.P1400244862039586528

namespace A186034

/-- `A007814(A065091(n+1)*A299918(n))` -/
def P1400244862039586528.Spec : Prop :=
  ∀ n, P1400244862039586528.a n = A186034 n

end A186034

/-! ## A186034.P6038402960949884978

`val(A001006(n), 2)`
-/

namespace A186034.P6038402960949884978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001006 n).toNat 2

end

end A186034.P6038402960949884978

namespace A186034

/-- `val(A001006(n), 2)` -/
def P6038402960949884978.Spec : Prop :=
  ∀ n, (P6038402960949884978.a n : ℤ) = A186034 n

end A186034

/-! ## A186034.P12205985638646116229

`val(A086246(n+2), 2)`
-/

namespace A186034.P12205985638646116229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086246 (n + 2)).toNat 2

end

end A186034.P12205985638646116229

namespace A186034

/-- `val(A086246(n+2), 2)` -/
def P12205985638646116229.Spec : Prop :=
  ∀ n, (P12205985638646116229.a n : ℤ) = A186034 n

end A186034

/-! ## A186034.P7679363516132756475

`val(A168049(n+2), 2)`
-/

namespace A186034.P7679363516132756475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A168049 (n + 2)).toNat 2

end

end A186034.P7679363516132756475

namespace A186034

/-- `val(A168049(n+2), 2)` -/
def P7679363516132756475.Spec : Prop :=
  ∀ n, (P7679363516132756475.a n : ℤ) = A186034 n

end A186034

/-! ## A186034.P11510763337987989788

`val(A168073(n+2), 2)`
-/

namespace A186034.P11510763337987989788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A168073 (n + 2)).toNat 2

end

end A186034.P11510763337987989788

namespace A186034

/-- `val(A168073(n+2), 2)` -/
def P11510763337987989788.Spec : Prop :=
  ∀ n, (P11510763337987989788.a n : ℤ) = A186034 n

end A186034

/-! ## A186034.P2281180964895808402

`val(A002212(n+1), 2)`
-/

namespace A186034.P2281180964895808402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002212 (n + 1)).toNat 2

end

end A186034.P2281180964895808402

namespace A186034

/-- `val(A002212(n+1), 2)` -/
def P2281180964895808402.Spec : Prop :=
  ∀ n, (P2281180964895808402.a n : ℤ) = A186034 n

end A186034

/-! ## A186034.P16019238742603092635

`val(A025238(n+2), 2)`
-/

namespace A186034.P16019238742603092635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025238 (n + 2)).toNat 2

end

end A186034.P16019238742603092635

namespace A186034

/-- `val(A025238(n+2), 2)` -/
def P16019238742603092635.Spec : Prop :=
  ∀ n, (P16019238742603092635.a n : ℤ) = A186034 n

end A186034

/-!
# A186035: a(n) = (-1)^A186034(n).

The programs for A186035, the canonical program `A186035.P7318932329708112188` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186035 has offset 0).

The definition of A186035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186035.P7318932329708112188

`(-1)^A186034(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186035

/-- `(-1)^A186034(n)` -/
def P7318932329708112188.Spec : Prop :=
  ∀ n, P7318932329708112188.a n = (A186035 n : ℚ)

end A186035

/-! ## A186035.P13093115833178403875

`and(2, A083481(n+1)+1)-1`
-/

namespace A186035.P13093115833178403875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A083481 (n + 1) + 1) - 1

end

end A186035.P13093115833178403875

namespace A186035

/-- `and(2, A083481(n+1)+1)-1` -/
def P13093115833178403875.Spec : Prop :=
  ∀ n, P13093115833178403875.a n = A186035 n

end A186035

/-! ## A186035.P11820874972448065479

`A187036((a(n-1)+1)*A299919(n))` with `a(0)=1`
-/

namespace A186035.P11820874972448065479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187036 ((a (n - 1) + 1) * A299919 n).toNat

end

end A186035.P11820874972448065479

namespace A186035

/-- `A187036((a(n-1)+1)*A299919(n))` -/
def P11820874972448065479.Spec : Prop :=
  ∀ n, P11820874972448065479.a n = A186035 n

end A186035

/-! ## A186035.P8804562760833402566

`A059341(abs(Δ[A065882(n+1)]))`
-/

namespace A186035.P8804562760833402566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 |f1 (n + 1) - f1 n|.toNat

end

end A186035.P8804562760833402566

namespace A186035

/-- `A059341(abs(Δ[A065882(n+1)]))` -/
def P8804562760833402566.Spec : Prop :=
  ∀ n, P8804562760833402566.a n = A186035 n

end A186035

/-! ## A186035.P9355565673719926789

`A119724(abs(Δ[A065882(n+1)]))`
-/

namespace A186035.P9355565673719926789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119724 |f1 (n + 1) - f1 n|.toNat

end

end A186035.P9355565673719926789

namespace A186035

/-- `A119724(abs(Δ[A065882(n+1)]))` -/
def P9355565673719926789.Spec : Prop :=
  ∀ n, P9355565673719926789.a n = A186035 n

end A186035

/-! ## A186035.P7443294841138037406

`A059341(Δ[A065882(n+1)]²)`
-/

namespace A186035.P7443294841138037406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A186035.P7443294841138037406

namespace A186035

/-- `A059341(Δ[A065882(n+1)]²)` -/
def P7443294841138037406.Spec : Prop :=
  ∀ n, P7443294841138037406.a n = A186035 n

end A186035

/-! ## A186035.P10242300962138709844

`A160357(Δ[A065882(n+1)]²)`
-/

namespace A186035.P10242300962138709844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A186035.P10242300962138709844

namespace A186035

/-- `A160357(Δ[A065882(n+1)]²)` -/
def P10242300962138709844.Spec : Prop :=
  ∀ n, P10242300962138709844.a n = A186035 n

end A186035

/-! ## A186035.P4185653956385276252

`A160357(2-Δ[A065882(n+1)])`
-/

namespace A186035.P4185653956385276252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A186035.P4185653956385276252

namespace A186035

/-- `A160357(2-Δ[A065882(n+1)])` -/
def P4185653956385276252.Spec : Prop :=
  ∀ n, P4185653956385276252.a n = A186035 n

end A186035

/-! ## A186035.P3531101694193125865

`2-A008619(Δ[A065882(n+1)]²)`
-/

namespace A186035.P3531101694193125865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008619 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A186035.P3531101694193125865

namespace A186035

/-- `2-A008619(Δ[A065882(n+1)]²)` -/
def P3531101694193125865.Spec : Prop :=
  ∀ n, P3531101694193125865.a n = A186035 n

end A186035

/-! ## A186035.P1925291692343650188

`1-A186034(A004442(n*A186034(n)))`
-/

namespace A186035.P1925291692343650188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A186034 (A004442 ((n : ℤ) * A186034 n).toNat).toNat

end

end A186035.P1925291692343650188

namespace A186035

/-- `1-A186034(A004442(n*A186034(n)))` -/
def P1925291692343650188.Spec : Prop :=
  ∀ n, P1925291692343650188.a n = A186035 n

end A186035

/-! ## A186035.P13100213776669822879

`A181472(val(A001006(n), 2))`
-/

namespace A186035.P13100213776669822879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181472 (SequenceMachineLib.valuation (A001006 n).toNat 2)

end

end A186035.P13100213776669822879

namespace A186035

/-- `A181472(val(A001006(n), 2))` -/
def P13100213776669822879.Spec : Prop :=
  ∀ n, P13100213776669822879.a n = A186035 n

end A186035

/-! ## A186035.P2617015417412309623

`A225682(and(3, -A001006(n)))`
-/

namespace A186035.P2617015417412309623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225682 (Int.land 3 (-A001006 n)).toNat

end

end A186035.P2617015417412309623

namespace A186035

/-- `A225682(and(3, -A001006(n)))` -/
def P2617015417412309623.Spec : Prop :=
  ∀ n, P2617015417412309623.a n = A186035 n

end A186035

/-! ## A186035.P17518096609651809867

`A034947(∑[n+1])^A007814(∑[n+1])`
-/

namespace A186035.P17518096609651809867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034947 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A007814 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A186035.P17518096609651809867

namespace A186035

/-- `A034947(∑[n+1])^A007814(∑[n+1])` -/
def P17518096609651809867.Spec : Prop :=
  ∀ n, P17518096609651809867.a n = (A186035 n : ℚ)

end A186035

/-!
# A186036: Hankel transform of A186035.

The programs for A186036, there is no canonical definition to state claims against.
-/

/-! ## A186036.P17720470240301742230

`2^n*A244895(A323128(3*n+2))`
-/

namespace A186036.P17720470240301742230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A244895 (A323128 (3 * n + 2)).toNat

end

end A186036.P17720470240301742230

/-! ## A186036.P10917025955449174598

`A000079(n)*A013595(A004304(n))`
-/

namespace A186036.P10917025955449174598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A013595 (A004304 n).toNat

end

end A186036.P10917025955449174598

/-! ## A186036.P2573140745465435330

`A000079(n)*A291137(A000292(n))`
-/

namespace A186036.P2573140745465435330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A291137 (A000292 n).toNat

end

end A186036.P2573140745465435330

/-! ## A186036.P885431557094863004

`A000079(n)*A008683(A301433(n))`
-/

namespace A186036.P885431557094863004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A008683 (A301433 n).toNat

end

end A186036.P885431557094863004

/-!
# A186037: a(n) = log_2((1+A002426(n))/numerator((1+A002426(n))/2^n)).

The programs for A186037, the canonical program `A186037.P1859243056867817178` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186037 has offset 0).

The definition of A186037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186037.P1859243056867817178

`A057427(n)+val(A257520(n), 2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186037

/-- `A057427(n)+val(A257520(n), 2)` -/
def P1859243056867817178.Spec : Prop :=
  ∀ n, P1859243056867817178.a n = A186037 n

theorem P1859243056867817178.correct : P1859243056867817178.Spec := by
  intro n
  simp only [A186037]

end A186037

/-! ## A186037.P10243639988765613361

`val(record[A005213(n+1)+1], 2)`
-/

namespace A186037.P10243639988765613361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A186037.P10243639988765613361

namespace A186037

/-- `val(record[A005213(n+1)+1], 2)` -/
def P10243639988765613361.Spec : Prop :=
  ∀ n, (P10243639988765613361.a n : ℤ) = A186037 n

end A186037

/-! ## A186037.P6910042125383455214

`val(A057427(n)+A002426(n), 2)`
-/

namespace A186037.P6910042125383455214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057427 n + A002426 n).toNat 2

end

end A186037.P6910042125383455214

namespace A186037

/-- `val(A057427(n)+A002426(n), 2)` -/
def P6910042125383455214.Spec : Prop :=
  ∀ n, (P6910042125383455214.a n : ℤ) = A186037 n

end A186037

/-! ## A186037.P17055013784414379947

`val(A002426(n)-A057428(n), 2)`
-/

namespace A186037.P17055013784414379947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002426 n - A057428 n).toNat 2

end

end A186037.P17055013784414379947

namespace A186037

/-- `val(A002426(n)-A057428(n), 2)` -/
def P17055013784414379947.Spec : Prop :=
  ∀ n, (P17055013784414379947.a n : ℤ) = A186037 n

end A186037

/-! ## A186037.P2052026124925743150

`val(A114569(n)-A002426(n), 2)`
-/

namespace A186037.P2052026124925743150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114569 n - A002426 n).toNat 2

end

end A186037.P2052026124925743150

namespace A186037

/-- `val(A114569(n)-A002426(n), 2)` -/
def P2052026124925743150.Spec : Prop :=
  ∀ n, (P2052026124925743150.a n : ℤ) = A186037 n

end A186037

/-!
# A186038: a(n) = log_3(A002426(n)/numerator(A002426(n)/3^n)).

The programs for A186038, the canonical program `A186038.P6899057204950467925` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186038 has offset 0).

The definition of A186038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186038.P6899057204950467925

`val(A002426(n), 3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186038

/-- `val(A002426(n), 3)` -/
def P6899057204950467925.Spec : Prop :=
  ∀ n, (P6899057204950467925.a n : ℤ) = A186038 n

theorem P6899057204950467925.correct : P6899057204950467925.Spec := by
  intro n
  simp only [A186038]

end A186038

/-! ## A186038.P7788710575050273275

`val(A005213(2*n), 3)`
-/

namespace A186038.P7788710575050273275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005213 (2 * n)).toNat 3

end

end A186038.P7788710575050273275

namespace A186038

/-- `val(A005213(2*n), 3)` -/
def P7788710575050273275.Spec : Prop :=
  ∀ n, (P7788710575050273275.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P2344628815979658585

`val(A097861(n)+A097861(n)+1, 3)`
-/

namespace A186038.P2344628815979658585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097861 n + (A097861 n + 1)).toNat 3

end

end A186038.P2344628815979658585

namespace A186038

/-- `val(A097861(n)+A097861(n)+1, 3)` -/
def P2344628815979658585.Spec : Prop :=
  ∀ n, (P2344628815979658585.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P7548624794221277900

`A001222(gcd(A002426(n), A166450(n+1)))`
-/

namespace A186038.P7548624794221277900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A002426 n) (A166450 (n + 1)))

end

end A186038.P7548624794221277900

namespace A186038

/-- `A001222(gcd(A002426(n), A166450(n+1)))` -/
def P7548624794221277900.Spec : Prop :=
  ∀ n, P7548624794221277900.a n = A186038 n

end A186038

/-! ## A186038.P1194850949212823863

`val(A116410(n), 3)`
-/

namespace A186038.P1194850949212823863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A116410 n).toNat 3

end

end A186038.P1194850949212823863

namespace A186038

/-- `val(A116410(n), 3)` -/
def P1194850949212823863.Spec : Prop :=
  ∀ n, (P1194850949212823863.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P1580701840745090799

`val(A027914(n), 3)`
-/

namespace A186038.P1580701840745090799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027914 n).toNat 3

end

end A186038.P1580701840745090799

namespace A186038

/-- `val(A027914(n), 3)` -/
def P1580701840745090799.Spec : Prop :=
  ∀ n, (P1580701840745090799.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P936845357509979006

`A001222(gcd(A002426(n), A027914(n)))`
-/

namespace A186038.P936845357509979006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A002426 n) (A027914 n))

end

end A186038.P936845357509979006

namespace A186038

/-- `A001222(gcd(A002426(n), A027914(n)))` -/
def P936845357509979006.Spec : Prop :=
  ∀ n, P936845357509979006.a n = A186038 n

end A186038

/-! ## A186038.P10459639561802338721

`val(A115990(∑[n]), 3)`
-/

namespace A186038.P10459639561802338721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115990 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A186038.P10459639561802338721

namespace A186038

/-- `val(A115990(∑[n]), 3)` -/
def P10459639561802338721.Spec : Prop :=
  ∀ n, (P10459639561802338721.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P4511857187712170613

`val(A098453(n), 3)`
-/

namespace A186038.P4511857187712170613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098453 n).toNat 3

end

end A186038.P4511857187712170613

namespace A186038

/-- `val(A098453(n), 3)` -/
def P4511857187712170613.Spec : Prop :=
  ∀ n, (P4511857187712170613.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P16583336443574981605

`val(A168597(n), 9)`
-/

namespace A186038.P16583336443574981605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A168597 n).toNat 9

end

end A186038.P16583336443574981605

namespace A186038

/-- `val(A168597(n), 9)` -/
def P16583336443574981605.Spec : Prop :=
  ∀ n, (P16583336443574981605.a n : ℤ) = A186038 n

end A186038

/-! ## A186038.P5036221864042101388

`A059782(∑[2*n])`
-/

namespace A186038.P5036221864042101388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186038.P5036221864042101388

namespace A186038

/-- `A059782(∑[2*n])` -/
def P5036221864042101388.Spec : Prop :=
  ∀ n, P5036221864042101388.a n = A186038 n

end A186038

/-! ## A186038.P18175029219809052122

`val(A027907(n²+n), 3)`
-/

namespace A186038.P18175029219809052122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027907 (n ^ 2 + n)).toNat 3

end

end A186038.P18175029219809052122

namespace A186038

/-- `val(A027907(n²+n), 3)` -/
def P18175029219809052122.Spec : Prop :=
  ∀ n, (P18175029219809052122.a n : ℤ) = A186038 n

end A186038

/-!
# A186039: a(n) = (-1)^A186038(n).

The programs for A186039, the canonical program `A186039.P9738146870542267959` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186039 has offset 0).

The definition of A186039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186038, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186039.P9738146870542267959

`(-1)^A186038(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186039

/-- `(-1)^A186038(n)` -/
def P9738146870542267959.Spec : Prop :=
  ∀ n, P9738146870542267959.a n = (A186039 n : ℚ)

end A186039

/-! ## A186039.P3476112825323121845

`A015415(A186038(n))`
-/

namespace A186039.P3476112825323121845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015415 (A186038 n).toNat

end

end A186039.P3476112825323121845

namespace A186039

/-- `A015415(A186038(n))` -/
def P3476112825323121845.Spec : Prop :=
  ∀ n, P3476112825323121845.a n = A186039 n

end A186039

/-! ## A186039.P16684472204482112806

`A010892(3*A186038(n))`
-/

namespace A186039.P16684472204482112806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * A186038 n).toNat

end

end A186039.P16684472204482112806

namespace A186039

/-- `A010892(3*A186038(n))` -/
def P16684472204482112806.Spec : Prop :=
  ∀ n, P16684472204482112806.a n = A186039 n

end A186039

/-! ## A186039.P18093078429603229674

`A081729(3*A186038(n))`
-/

namespace A186039.P18093078429603229674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (3 * A186038 n).toNat

end

end A186039.P18093078429603229674

namespace A186039

/-- `A081729(3*A186038(n))` -/
def P18093078429603229674.Spec : Prop :=
  ∀ n, P18093078429603229674.a n = A186039 n

end A186039

/-! ## A186039.P15888144414633967676

`A081729(lcm(3, A186038(n)))`
-/

namespace A186039.P15888144414633967676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (Int.lcm 3 (A186038 n))

end

end A186039.P15888144414633967676

namespace A186039

/-- `A081729(lcm(3, A186038(n)))` -/
def P15888144414633967676.Spec : Prop :=
  ∀ n, P15888144414633967676.a n = A186039 n

end A186039

/-! ## A186039.P8091753368099233017

`A008683(or(46, A186038(n)))`
-/

namespace A186039.P8091753368099233017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor 46 (A186038 n)).toNat

end

end A186039.P8091753368099233017

namespace A186039

/-- `A008683(or(46, A186038(n)))` -/
def P8091753368099233017.Spec : Prop :=
  ∀ n, P8091753368099233017.a n = A186039 n

end A186039

/-! ## A186039.P15629998297263029012

`1-A010873(2*A186038(n))`
-/

namespace A186039.P15629998297263029012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010873 (2 * A186038 n).toNat

end

end A186039.P15629998297263029012

namespace A186039

/-- `1-A010873(2*A186038(n))` -/
def P15629998297263029012.Spec : Prop :=
  ∀ n, P15629998297263029012.a n = A186039 n

end A186039

/-! ## A186039.P8032506712422138037

`A010892((A186038(n)²+1)²)`
-/

namespace A186039.P8032506712422138037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 ((A186038 n ^ 2 + 1) ^ 2).toNat

end

end A186039.P8032506712422138037

namespace A186039

/-- `A010892((A186038(n)²+1)²)` -/
def P8032506712422138037.Spec : Prop :=
  ∀ n, P8032506712422138037.a n = A186039 n

end A186039

/-! ## A186039.P10022170006844185952

`A033999(val(A002426(n), 3))`
-/

namespace A186039.P10022170006844185952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.valuation (A002426 n).toNat 3)

end

end A186039.P10022170006844185952

namespace A186039

/-- `A033999(val(A002426(n), 3))` -/
def P10022170006844185952.Spec : Prop :=
  ∀ n, P10022170006844185952.a n = A186039 n

end A186039

/-!
# A186041: Numbers of the form 3*k + 2, 5*k + 3, or 7*k + 4.

The programs for A186041, there is no canonical definition to state claims against.
-/

/-! ## A186041.P6828431015014408032

`lt[A020639(2*n+3), 8]+2`
-/

namespace A186041.P6828431015014408032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A186041.P6828431015014408032

/-! ## A186041.P2641860326020398987

`record[A319716(2*A319716(n+1)+1)]-(n+1)`
-/

namespace A186041.P2641860326020398987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319716 (2 * A319716 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A186041.P2641860326020398987

/-! ## A186041.P2107333373154029490

`eq[A038802(n+1), A038802(A038802(n+1))]+2`
-/

namespace A186041.P2107333373154029490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038802 (A038802 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A186041.P2107333373154029490

/-! ## A186041.P16450967230550254296

`eq[dr(A090368(n+2)), A090368(n+2)]+2`
-/

namespace A186041.P16450967230550254296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090368 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A186041.P16450967230550254296

/-! ## A186041.P6961936528890200710

`eq[A000041(A195508(n+1)), A195508(n+1)]+2`
-/

namespace A186041.P6961936528890200710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A195508 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A186041.P6961936528890200710

/-!
# A186042: Numbers of the form 2*k + 1, 3*k + 2, or 5*k + 3.

The programs for A186042, the canonical program `A186042.P1830360839014229339` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186042 has offset 1).

The definition of A186042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186042.P7307150009739313015

`lt[A020639(n+7), 6]`
-/

namespace A186042.P7307150009739313015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186042.P7307150009739313015

namespace A186042

/-- `lt[A020639(n+7), 6]` -/
def P7307150009739313015.Spec : Prop :=
  ∀ n, (P7307150009739313015.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P5852885249080178283

`lt[A074828(n+7), 6]`
-/

namespace A186042.P5852885249080178283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186042.P5852885249080178283

namespace A186042

/-- `lt[A074828(n+7), 6]` -/
def P5852885249080178283.Spec : Prop :=
  ∀ n, (P5852885249080178283.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P1830360839014229339

`comp[A007775(n+1)-7]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186042

/-- `comp[A007775(n+1)-7]` -/
def P1830360839014229339.Spec : Prop :=
  ∀ n, (P1830360839014229339.a n : ℤ) = A186042 (n + 1)

theorem P1830360839014229339.correct : P1830360839014229339.Spec := by
  intro n
  simp only [A186042, Nat.add_sub_cancel]

end A186042

/-! ## A186042.P17093648325124135564

`comp[A054403(n+1)-7]`
-/

namespace A186042.P17093648325124135564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186042.P17093648325124135564

namespace A186042

/-- `comp[A054403(n+1)-7]` -/
def P17093648325124135564.Spec : Prop :=
  ∀ n, (P17093648325124135564.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P5074350460242479684

`∪[A047255(n+1), A016885(n)]`
-/

namespace A186042.P5074350460242479684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186042.P5074350460242479684

namespace A186042

/-- `∪[A047255(n+1), A016885(n)]` -/
def P5074350460242479684.Spec : Prop :=
  ∀ n, (P5074350460242479684.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P10686845994684384233

`∪[A047255(n+1), A017365(n)]`
-/

namespace A186042.P10686845994684384233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186042.P10686845994684384233

namespace A186042

/-- `∪[A047255(n+1), A017365(n)]` -/
def P10686845994684384233.Spec : Prop :=
  ∀ n, (P10686845994684384233.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P1312120221560621094

`eq[2, A000010(A020639(n+7)+1)]`
-/

namespace A186042.P1312120221560621094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020639 (n + 7) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186042.P1312120221560621094

namespace A186042

/-- `eq[2, A000010(A020639(n+7)+1)]` -/
def P1312120221560621094.Spec : Prop :=
  ∀ n, (P1312120221560621094.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P105329599730696023

`∪[A047255(n+1), A306277(n+1)]`
-/

namespace A186042.P105329599730696023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186042.P105329599730696023

namespace A186042

/-- `∪[A047255(n+1), A306277(n+1)]` -/
def P105329599730696023.Spec : Prop :=
  ∀ n, (P105329599730696023.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P1675532982023957282

`record[(n+1)/A007318(A020639(n+8))]`
-/

namespace A186042.P1675532982023957282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007318 (A020639 (n + 8)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186042.P1675532982023957282

namespace A186042

/-- `record[(n+1)/A007318(A020639(n+8))]` -/
def P1675532982023957282.Spec : Prop :=
  ∀ n, P1675532982023957282.a n = (A186042 (n + 1) : ℚ)

end A186042

/-! ## A186042.P13191291299542507029

`eq[1, A007318(A020639(n+37))]`
-/

namespace A186042.P13191291299542507029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (n + 37)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186042.P13191291299542507029

namespace A186042

/-- `eq[1, A007318(A020639(n+37))]` -/
def P13191291299542507029.Spec : Prop :=
  ∀ n, (P13191291299542507029.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P7755013999660749672

`lt[3, gcd(26*n+2, A212766(n))]`
-/

namespace A186042.P7755013999660749672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (26 * n + 2 : ℤ) (A212766 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186042.P7755013999660749672

namespace A186042

/-- `lt[3, gcd(26*n+2, A212766(n))]` -/
def P7755013999660749672.Spec : Prop :=
  ∀ n, (P7755013999660749672.a n : ℤ) = A186042 (n + 1)

end A186042

/-! ## A186042.P6532718996879624014

`lt[A000040(n+1)*char[A054403(n+1)-7], 2]`
-/

namespace A186042.P6532718996879624014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1) - 7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186042.P6532718996879624014

namespace A186042

/-- `lt[A000040(n+1)*char[A054403(n+1)-7], 2]` -/
def P6532718996879624014.Spec : Prop :=
  ∀ n, (P6532718996879624014.a n : ℤ) = A186042 (n + 1)

end A186042

/-!
# A186043: Number of (n+2)X(n+2) binary arrays with each 3X3 subblock singular.

The programs for A186043, there is no canonical definition to state claims against.
-/

/-! ## A186043.P60545425005644268

`A186052((n+1)²+n²)`
-/

namespace A186043.P60545425005644268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 ((n + 1) ^ 2 + n ^ 2)

end

end A186043.P60545425005644268

/-! ## A186043.P17300511259325309086

`record[gcd(A186052(n+1), A226207(n+1))]`
-/

namespace A186043.P17300511259325309086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186052 (n + 1)) (A226207 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186043.P17300511259325309086

/-!
# A186044: Number of (n+2) X 3 binary arrays with each 3 X 3 subblock singular.

The programs for A186044, there is no canonical definition to state claims against.
-/

/-! ## A186044.P13996404200221205709

`A186052(∑[n]+1)`
-/

namespace A186044.P13996404200221205709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186044.P13996404200221205709

/-! ## A186044.P16580132574481181707

`lcm(2, A186052(A000124(n)))`
-/

namespace A186044.P16580132574481181707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186052 (A000124 n).toNat)

end

end A186044.P16580132574481181707

/-! ## A186044.P6345060531677756731

`record[root(A186052(n+1), A007318(n))]`
-/

namespace A186044.P6345060531677756731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186052 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186044.P6345060531677756731

/-! ## A186044.P8004625471512626563

`record[root(A186052(n+1), A028313(n))]`
-/

namespace A186044.P8004625471512626563
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186052 (n + 1) : ℝ) ^ (1 / (A028313 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186044.P8004625471512626563

/-! ## A186044.P5696106675381484462

`record[root(A186052(n+1), A059268(n))]`
-/

namespace A186044.P5696106675381484462
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186052 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186044.P5696106675381484462

/-!
# A186045: Number of (n+2)X4 binary arrays with each 3X3 subblock singular.

The programs for A186045, there is no canonical definition to state claims against.
-/

/-! ## A186045.P11633319605765135783

`A186052(∑[n+1]+2)`
-/

namespace A186045.P11633319605765135783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186045.P11633319605765135783

/-! ## A186045.P7366846261721974416

`record[root(A186052(n+2), A059268(n))]`
-/

namespace A186045.P7366846261721974416
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186052 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186045.P7366846261721974416

/-! ## A186045.P9541133987270967019

`record[A186052(A198455(n+1))]`
-/

namespace A186045.P9541133987270967019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186045.P9541133987270967019

/-! ## A186045.P4925342030251750855

`record[root(A186052(n+2), A186020(n+1))]`
-/

namespace A186045.P4925342030251750855
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186052 (n + 2) : ℝ) ^ (1 / (A186020 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186045.P4925342030251750855

/-! ## A186045.P599620443788392239

`record[A186024(n)*A186052(n+3)]`
-/

namespace A186045.P599620443788392239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186024 n * A186052 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186045.P599620443788392239

/-!
# A186046: Number of (n+2) X 5 binary arrays with each 3 X 3 subblock singular.

The programs for A186046, there is no canonical definition to state claims against.
-/

/-! ## A186046.P16570575224641883761

`A186052(∑[n+2]+4)`
-/

namespace A186046.P16570575224641883761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186046.P16570575224641883761

/-! ## A186046.P10053316728728281880

`lcm(2, A186052(A167614(n+1)))`
-/

namespace A186046.P10053316728728281880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186052 (A167614 (n + 1)).toNat)

end

end A186046.P10053316728728281880

/-! ## A186046.P9925593727960276439

`A308975(n)+A186052(A167614(n+1))`
-/

namespace A186046.P9925593727960276439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A186052 (A167614 (n + 1)).toNat

end

end A186046.P9925593727960276439

/-! ## A186046.P7518518263362722228

`A186052(A167614(n+1))+A000007(n+1)`
-/

namespace A186046.P7518518263362722228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A186046.P7518518263362722228

/-! ## A186046.P14617979247980168514

`A186052(A167614(n+1))%A186061(n+1)`
-/

namespace A186046.P14617979247980168514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186052 (A167614 (n + 1)).toNat) (A186061 (n + 1))

end

end A186046.P14617979247980168514

/-!
# A186047: Number of (n+2)X6 binary arrays with each 3X3 subblock singular.

The programs for A186047, there is no canonical definition to state claims against.
-/

/-! ## A186047.P17766608444819239751

`A186052(A374004(n+1))`
-/

namespace A186047.P17766608444819239751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A374004 (n + 1)).toNat

end

end A186047.P17766608444819239751

/-! ## A186047.P8511933516622391527

`A186052(A052905(n)+9)`
-/

namespace A186047.P8511933516622391527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A052905 n + 9).toNat

end

end A186047.P8511933516622391527

/-! ## A186047.P5816364693478934734

`A186052(A167614(n+2)+1)`
-/

namespace A186047.P5816364693478934734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A167614 (n + 2) + 1).toNat

end

end A186047.P5816364693478934734

/-! ## A186047.P8046552678537366042

`A186052(eq[5, A131818(n+1)])`
-/

namespace A186047.P8046552678537366042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186047.P8046552678537366042

/-! ## A186047.P14333935187458633179

`A186052(Δ[A023545(n+1)-n²])`
-/

namespace A186047.P14333935187458633179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (f1 (n + 1) - f1 n).toNat

end

end A186047.P14333935187458633179

/-!
# A186048: Number of (n+2)X7 binary arrays with each 3X3 subblock singular.

The programs for A186048, there is no canonical definition to state claims against.
-/

/-! ## A186048.P7051203332810775421

`A186052(A374005(n+1))`
-/

namespace A186048.P7051203332810775421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A374005 (n + 1)).toNat

end

end A186048.P7051203332810775421

/-! ## A186048.P18225191082978497456

`A186052(A155212(n)+13)`
-/

namespace A186048.P18225191082978497456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A155212 n + 13).toNat

end

end A186048.P18225191082978497456

/-! ## A186048.P17991716644895709196

`A186052(A056000(n)+15)`
-/

namespace A186048.P17991716644895709196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A056000 n + 15).toNat

end

end A186048.P17991716644895709196

/-! ## A186048.P10932145370209979071

`A186052(eq[6, A131818(n+1)])`
-/

namespace A186048.P10932145370209979071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186048.P10932145370209979071

/-! ## A186048.P8503557060279545002

`A186052(A056115(n)+11)`
-/

namespace A186048.P8503557060279545002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A056115 n + 11).toNat

end

end A186048.P8503557060279545002

/-!
# A186049: Number of (n+2) X 8 binary arrays with each 3 X 3 subblock singular.

The programs for A186049, there is no canonical definition to state claims against.
-/

/-! ## A186049.P11259510288123154951

`A186052(A374007(n+1))`
-/

namespace A186049.P11259510288123154951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (A374007 (n + 1)).toNat

end

end A186049.P11259510288123154951

/-! ## A186049.P14625362223659129419

`A186052(eq[7, A131818(n+1)])`
-/

namespace A186049.P14625362223659129419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186049.P14625362223659129419

/-! ## A186049.P5729036384819815168

`A186052(Δ[A023545(n+1)]+10)`
-/

namespace A186049.P5729036384819815168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (f1 (n + 1) - f1 n + 10).toNat

end

end A186049.P5729036384819815168

/-!
# A186050: Number of (n+2)X9 binary arrays with each 3X3 subblock singular.

The programs for A186050, there is no canonical definition to state claims against.
-/

/-! ## A186050.P14831762167358051833

`A186052(eq[8, A131818(n+1)])`
-/

namespace A186050.P14831762167358051833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186050.P14831762167358051833

/-! ## A186050.P18437034451570823538

`A186052(eq[6, A193592(n)])`
-/

namespace A186050.P18437034451570823538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186050.P18437034451570823538

/-!
# A186051: 

The programs for A186051, there is no canonical definition to state claims against.
-/

/-! ## A186051.P3887150851274617753

`A186052(eq[9, A131818(n+1)])`
-/

namespace A186051.P3887150851274617753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186052 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186051.P3887150851274617753

/-!
# A186053: Smallest perimeter among all sets of nonnegative integers whose volume (sum) is n.

The programs for A186053, there is no canonical definition to state claims against.
-/

/-! ## A186053.P4677932790488203308

`A374478(n+1)-A090996(A335456(n))`
-/

namespace A186053.P4677932790488203308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374478 (n + 1) - A090996 (A335456 n).toNat

end

end A186053.P4677932790488203308

/-! ## A186053.P11607199038341947553

`A076620(A286785(n)*A329798(n+1))`
-/

namespace A186053.P11607199038341947553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A286785 n * A329798 (n + 1)).toNat

end

end A186053.P11607199038341947553

/-!
# A186054: Number of (n+2)X(n+2) binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186054, there is no canonical definition to state claims against.
-/

/-! ## A186054.P6660859937895188712

`A186063(∑[4*n]+1)`
-/

namespace A186054.P6660859937895188712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186054.P6660859937895188712

/-! ## A186054.P10184495144570118281

`record[A003982(n)*A186063(n+1)]`
-/

namespace A186054.P10184495144570118281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186054.P10184495144570118281

/-! ## A186054.P12385771836161017394

`A186063(A001844(n))+A185238(n)`
-/

namespace A186054.P12385771836161017394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A001844 n).toNat + A185238 n

end

end A186054.P12385771836161017394

/-! ## A186054.P6641643969780555016

`or(A000007(n), A186063(A001844(n)))`
-/

namespace A186054.P6641643969780555016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186063 (A001844 n).toNat)

end

end A186054.P6641643969780555016

/-! ## A186054.P15622728880906479087

`or(A003982(n), A186063(A001844(n)))`
-/

namespace A186054.P15622728880906479087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A186063 (A001844 n).toNat)

end

end A186054.P15622728880906479087

/-!
# A186055: Number of (n+2) X 3 binary arrays with each 3 X 3 subblock having a positive determinant.

The programs for A186055, there is no canonical definition to state claims against.
-/

/-! ## A186055.P11576116413574901220

`A186063(∑[n]+1)`
-/

namespace A186055.P11576116413574901220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186055.P11576116413574901220

/-! ## A186055.P16364583427567731619

`record[A010054(n)*A186063(n+1)]`
-/

namespace A186055.P16364583427567731619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186055.P16364583427567731619

/-! ## A186055.P11352811057071321862

`record[A186063(n+1)/A181543(n)]`
-/

namespace A186055.P11352811057071321862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186063 (n + 1) : ℚ) / (A181543 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186055.P11352811057071321862

/-! ## A186055.P13799935992200712174

`record[gcd(A002262(n), A186063(n+1))]`
-/

namespace A186055.P13799935992200712174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186063 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186055.P13799935992200712174

/-! ## A186055.P14332981739320854905

`A186063(A000124(n))+A034427(n+1)`
-/

namespace A186055.P14332981739320854905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A000124 n).toNat + A034427 (n + 1)

end

end A186055.P14332981739320854905

/-!
# A186056: Number of (n+2)X4 binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186056, there is no canonical definition to state claims against.
-/

/-! ## A186056.P3370802862082029045

`A186063(∑[n+1]+2)`
-/

namespace A186056.P3370802862082029045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186056.P3370802862082029045

/-! ## A186056.P2239823267667024026

`record[A010054(n)*A186063(n+2)]`
-/

namespace A186056.P2239823267667024026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186056.P2239823267667024026

/-! ## A186056.P13837160813832722518

`record[gcd(A002262(n), A186063(n+2))]`
-/

namespace A186056.P13837160813832722518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186063 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186056.P13837160813832722518

/-! ## A186056.P17376773784810432437

`record[A186063(A101881(n)+1)]`
-/

namespace A186056.P17376773784810432437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186056.P17376773784810432437

/-! ## A186056.P4923418203299954047

`record[A186063(Δ[A003453(n+5)])]`
-/

namespace A186056.P4923418203299954047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186056.P4923418203299954047

/-!
# A186057: Number of (n+2)X5 binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186057, there is no canonical definition to state claims against.
-/

/-! ## A186057.P15863829204191764933

`A186063(∑[n+2]+4)`
-/

namespace A186057.P15863829204191764933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186057.P15863829204191764933

/-! ## A186057.P16146201654885339022

`lcm((-1)^n, A186063(A167614(n+1)))`
-/

namespace A186057.P16146201654885339022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A186063 (A167614 (n + 1)).toNat)

end

end A186057.P16146201654885339022

/-! ## A186057.P1438389990013420108

`A186063(A167614(n+1))+A034427(n+1)`
-/

namespace A186057.P1438389990013420108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A167614 (n + 1)).toNat + A034427 (n + 1)

end

end A186057.P1438389990013420108

/-! ## A186057.P14888079888124180918

`A186063(A000217(n+2)+3)+A034533(n+1)`
-/

namespace A186057.P14888079888124180918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A000217 (n + 2) + 3).toNat + A034533 (n + 1)

end

end A186057.P14888079888124180918

/-! ## A186057.P5021229906293324785

`A186063(A000217(n+2)+3)%A186058(n+1)`
-/

namespace A186057.P5021229906293324785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186063 (A000217 (n + 2) + 3).toNat) (A186058 (n + 1))

end

end A186057.P5021229906293324785

/-!
# A186058: Number of (n+2) X 6 binary arrays with each 3 X 3 subblock having a positive determinant.

The programs for A186058, there is no canonical definition to state claims against.
-/

/-! ## A186058.P13697934537886382675

`A186063(A374004(n+1))`
-/

namespace A186058.P13697934537886382675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A374004 (n + 1)).toNat

end

end A186058.P13697934537886382675

/-! ## A186058.P3111325438009200177

`A186063(A141214(n)+7)`
-/

namespace A186058.P3111325438009200177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A141214 n + 7).toNat

end

end A186058.P3111325438009200177

/-! ## A186058.P14444119903685063636

`A186063(A052905(n)+9)`
-/

namespace A186058.P14444119903685063636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A052905 n + 9).toNat

end

end A186058.P14444119903685063636

/-! ## A186058.P14886107625542780181

`A186063(A055999(n)+10)`
-/

namespace A186058.P14886107625542780181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A055999 n + 10).toNat

end

end A186058.P14886107625542780181

/-! ## A186058.P14496535203178218743

`A186063(A167614(n+2)+1)`
-/

namespace A186058.P14496535203178218743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A167614 (n + 2) + 1).toNat

end

end A186058.P14496535203178218743

/-!
# A186059: Number of (n+2)X7 binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186059, there is no canonical definition to state claims against.
-/

/-! ## A186059.P18074045821965616964

`A186063(A374005(n+1))`
-/

namespace A186059.P18074045821965616964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A374005 (n + 1)).toNat

end

end A186059.P18074045821965616964

/-! ## A186059.P4763089015586915304

`A186063(A167499(n+3))`
-/

namespace A186059.P4763089015586915304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A167499 (n + 3)).toNat

end

end A186059.P4763089015586915304

/-! ## A186059.P11960274552447073759

`A186063(eq[6, A131818(n+1)])`
-/

namespace A186059.P11960274552447073759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186059.P11960274552447073759

/-! ## A186059.P13751480603125675015

`A186063(A052905(n+3)-Δ[n²])`
-/

namespace A186059.P13751480603125675015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A052905 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A186059.P13751480603125675015

/-! ## A186059.P17476697444282430637

`A186063(A133263(A020705(n))+3)`
-/

namespace A186059.P17476697444282430637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A133263 (A020705 n).toNat + 3).toNat

end

end A186059.P17476697444282430637

/-!
# A186060: Number of (n+2)X8 binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186060, there is no canonical definition to state claims against.
-/

/-! ## A186060.P8395253513690284370

`A186063(A374007(n+1))`
-/

namespace A186060.P8395253513690284370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A374007 (n + 1)).toNat

end

end A186060.P8395253513690284370

/-! ## A186060.P324825255238034930

`A186063(A052905(n+3))`
-/

namespace A186060.P324825255238034930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A052905 (n + 3)).toNat

end

end A186060.P324825255238034930

/-! ## A186060.P1433930165098838976

`A186063(eq[3, A219347(n)])`
-/

namespace A186060.P1433930165098838976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186060.P1433930165098838976

/-! ## A186060.P11415683131724649988

`A186063(eq[5, A193592(n)])`
-/

namespace A186060.P11415683131724649988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186060.P11415683131724649988

/-! ## A186060.P14561137489666360947

`A186063(Δ[Δ[A006504(n+1)]])`
-/

namespace A186060.P14561137489666360947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (f1 (n + 1) - f1 n).toNat

end

end A186060.P14561137489666360947

/-!
# A186061: Number of (n+2)X9 binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186061, there is no canonical definition to state claims against.
-/

/-! ## A186061.P894488810501056006

`A186063(A374008(n+1))`
-/

namespace A186061.P894488810501056006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A374008 (n + 1)).toNat

end

end A186061.P894488810501056006

/-! ## A186061.P6839983231551802690

`A186063(eq[8, A131818(n+1)])`
-/

namespace A186061.P6839983231551802690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186061.P6839983231551802690

/-! ## A186061.P1676645954236347838

`A186063(A055999(n+4))`
-/

namespace A186061.P1676645954236347838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A055999 (n + 4)).toNat

end

end A186061.P1676645954236347838

/-! ## A186061.P595932907296140862

`A186063(eq[4, A219347(n)])`
-/

namespace A186061.P595932907296140862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186061.P595932907296140862

/-! ## A186061.P14409499539576712461

`A186063(eq[6, A193592(n)])`
-/

namespace A186061.P14409499539576712461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186061.P14409499539576712461

/-!
# A186062: Number of (n+2)X10 binary arrays with each 3X3 subblock having a positive determinant.

The programs for A186062, there is no canonical definition to state claims against.
-/

/-! ## A186062.P10295888779713582135

`A186063(A374009(n+1))`
-/

namespace A186062.P10295888779713582135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (A374009 (n + 1)).toNat

end

end A186062.P10295888779713582135

/-! ## A186062.P4196674713227168624

`A186063(eq[13, A066657(n)])`
-/

namespace A186062.P4196674713227168624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186062.P4196674713227168624

/-! ## A186062.P15464650368252157467

`A186063(eq[9, A131818(n+1)])`
-/

namespace A186062.P15464650368252157467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186062.P15464650368252157467

/-! ## A186062.P10557519955609027149

`A186063(eq[5, A219347(n)])`
-/

namespace A186062.P10557519955609027149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186062.P10557519955609027149

/-! ## A186062.P3650681997608646951

`A186063(eq[7, A193592(n)])`
-/

namespace A186062.P3650681997608646951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186062.P3650681997608646951

/-!
# A186064: Number of (n+2)X3 0..2 arrays with each 3X3 subblock having a positive determinant.

The programs for A186064, there is no canonical definition to state claims against.
-/

/-! ## A186064.P6081914929239006396

`A186068(∑[n]+1)`
-/

namespace A186064.P6081914929239006396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186064.P6081914929239006396

/-! ## A186064.P2595153978009071877

`lcm(3, A186068(A000124(n)))`
-/

namespace A186064.P2595153978009071877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186068 (A000124 n).toNat)

end

end A186064.P2595153978009071877

/-! ## A186064.P6960614607805151718

`record[A186068(A056534(n+1))]`
-/

namespace A186064.P6960614607805151718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186064.P6960614607805151718

/-! ## A186064.P6540929816687642449

`record[A010054(n)*A186068(n+1)]`
-/

namespace A186064.P6540929816687642449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186064.P6540929816687642449

/-! ## A186064.P10312353692086897738

`record[A033806(n)*A186068(n+1)]`
-/

namespace A186064.P10312353692086897738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A186068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186064.P10312353692086897738

/-!
# A186065: Number of (n+2)X4 0..2 arrays with each 3X3 subblock having a positive determinant.

The programs for A186065, there is no canonical definition to state claims against.
-/

/-! ## A186065.P8233366860007570617

`A186068(∑[n+1]+2)`
-/

namespace A186065.P8233366860007570617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186065.P8233366860007570617

/-! ## A186065.P4167398006082077158

`record[A010054(n)*A186068(n+2)]`
-/

namespace A186065.P4167398006082077158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186065.P4167398006082077158

/-! ## A186065.P13199101567505572895

`record[A033806(n)*A186068(n+2)]`
-/

namespace A186065.P13199101567505572895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A186068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186065.P13199101567505572895

/-! ## A186065.P8539296117657035030

`record[A186068(n+3)*A243148(n)]`
-/

namespace A186065.P8539296117657035030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (n + 3) * A243148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186065.P8539296117657035030

/-!
# A186066: Number of (n+2)X5 0..2 arrays with each 3X3 subblock having a positive determinant.

The programs for A186066, there is no canonical definition to state claims against.
-/

/-! ## A186066.P7920823774544536240

`A186068(A167614(n+1))`
-/

namespace A186066.P7920823774544536240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (A167614 (n + 1)).toNat

end

end A186066.P7920823774544536240

/-! ## A186066.P8313985747113486335

`A186068(A020752(n)-1)`
-/

namespace A186066.P8313985747113486335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (A020752 n - 1).toNat

end

end A186066.P8313985747113486335

/-!
# A186067: Number of (n+2)X6 0..2 arrays with each 3X3 subblock having a positive determinant.

The programs for A186067, there is no canonical definition to state claims against.
-/

/-! ## A186067.P1279364724960075351

`A186068(A020752(n+1))`
-/

namespace A186067.P1279364724960075351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (A020752 (n + 1)).toNat

end

end A186067.P1279364724960075351

/-! ## A186067.P8557697189486487263

`A186068(A167614(n+2)+1)`
-/

namespace A186067.P8557697189486487263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186068 (A167614 (n + 2) + 1).toNat

end

end A186067.P8557697189486487263

/-!
# A186069: a(n) is the smallest prefix such that the numbers with k digits "3" appended are primes for k = 1..n.

The programs for A186069, there is no canonical definition to state claims against.
-/

/-! ## A186069.P4490637442228947920

`A099370(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A186069.P4490637442228947920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  A099370 (a (n - 1)).toNat

end

end A186069.P4490637442228947920

/-!
# A186070: a(n) is the smallest prefix such that the numbers with k digits "9" appended are primes for k = 1, 2, ..., n.

The programs for A186070, there is no canonical definition to state claims against.
-/

/-! ## A186070.P7135209611216300549

`A011185(A051263(n)!)`
-/

namespace A186070.P7135209611216300549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (Nat.factorial (A051263 n).toNat)

end

end A186070.P7135209611216300549

/-! ## A186070.P15087956351041153061

`A198409(A032020(n)!)`
-/

namespace A186070.P15087956351041153061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198409 (Nat.factorial (A032020 n).toNat)

end

end A186070.P15087956351041153061

/-!
# A186071: Irregular triangle, read by rows, of primes with suffix n and digits "3" prepended , otherwise 0.

The programs for A186071, there is no canonical definition to state claims against.
-/

/-! ## A186071.P7524800309164615841

`∑[A181639(2*(n+1))]+1`
-/

namespace A186071.P7524800309164615841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181639 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A186071.P7524800309164615841

/-! ## A186071.P17373087918093863745

`A007284(A083584(n+1))`
-/

namespace A186071.P17373087918093863745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (A083584 (n + 1)).toNat

end

end A186071.P17373087918093863745

/-! ## A186071.P8888483477965890148

`A174813(A058481(n+2))`
-/

namespace A186071.P8888483477965890148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (A058481 (n + 2)).toNat

end

end A186071.P8888483477965890148

/-!
# A186075: Irregular triangle, read by rows, of primes with suffix n and digits "9" prepended, otherwise 0.

The programs for A186075, there is no canonical definition to state claims against.
-/

/-! ## A186075.P7339320208942016401

`A090468(2*n+5)%A210668(C(n, ceil(n/2)+2))`
-/

namespace A186075.P7339320208942016401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090468 (2 * n + 5)) (A210668 (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat))

end

end A186075.P7339320208942016401

/-! ## A186075.P2530550291052049845

`A218599(A054391(n)*A218629(n))`
-/

namespace A186075.P2530550291052049845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218599 (A054391 n * A218629 n).toNat

end

end A186075.P2530550291052049845

/-! ## A186075.P12475413389310656778

`A088115(A145977(n)^A063695(n))`
-/

namespace A186075.P12475413389310656778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088115 (SequenceMachineLib.roundAway ((A145977 n : ℚ) ^ (A063695 n : ℤ))).toNat

end

end A186075.P12475413389310656778

/-! ## A186075.P12623195596843499164

`A088115(A282582(n)^A063695(n))`
-/

namespace A186075.P12623195596843499164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088115 (SequenceMachineLib.roundAway ((A282582 n : ℚ) ^ (A063695 n : ℤ))).toNat

end

end A186075.P12623195596843499164

/-!
# A186077: Index of Fibonacci and tribonacci numbers having the same last digit.

The programs for A186077, there is no canonical definition to state claims against.
-/

/-! ## A186077.P15532850382261073643

`∑[A033923(record[A185316(n)])]`
-/

namespace A186077.P15532850382261073643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186077.P15532850382261073643

/-! ## A186077.P15205001470960213086

`A002264(A379396(3*n+4)+A073776(n))`
-/

namespace A186077.P15205001470960213086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A379396 (3 * n + 4) + A073776 n).toNat

end

end A186077.P15205001470960213086

/-! ## A186077.P10323264281923857267

`∑[A320053(Δ[A374689(n)])]`
-/

namespace A186077.P10323264281923857267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320053 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186077.P10323264281923857267

/-! ## A186077.P1153992009448596086

`eq[A029302(n), A056974(n+1)]`
-/

namespace A186077.P1153992009448596086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186077.P1153992009448596086

/-!
# A186080: Fourth powers that are palindromic in base 10.

The programs for A186080, there is no canonical definition to state claims against.
-/

/-! ## A186080.P749590156238545740

`A056810(n+1)^4`
-/

namespace A186080.P749590156238545740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056810 (n + 1) ^ 4

end

end A186080.P749590156238545740

/-! ## A186080.P17338457443897157791

`∩[A002778(n+1), A002779(n+1)]²`
-/

namespace A186080.P17338457443897157791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A186080.P17338457443897157791

/-! ## A186080.P3038770564672505478

`∩[A014188(n), A158642(n)]`
-/

namespace A186080.P3038770564672505478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158642 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186080.P3038770564672505478

/-! ## A186080.P14500372350121967643

`∩[A263608(n+1), A263610(n+1)]²`
-/

namespace A186080.P14500372350121967643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A186080.P14500372350121967643

/-!
# A186081: Number of binary relations R on {1,2,...,n} such that the transitive closure of R is the trivial relation.

The programs for A186081, there is no canonical definition to state claims against.
-/

/-! ## A186081.P2917636975266479105

`A361269(A000124(n)%(2^n²))`
-/

namespace A186081.P2917636975266479105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361269 (Int.tmod (A000124 n) (2 ^ n ^ 2 : ℤ)).toNat

end

end A186081.P2917636975266479105

/-!
# A186082: Numbers k such that log(A156668(k)*(1 + k mod 2))/k^2 is smaller than for any prior k.

The programs for A186082, there is no canonical definition to state claims against.
-/

/-! ## A186082.P4795391062674912945

`A034297(n)+A001222(A061955(n+1))`
-/

namespace A186082.P4795391062674912945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034297 n + A001222 (A061955 (n + 1)).toNat

end

end A186082.P4795391062674912945

/-!
# A186083: Values taken by A161903, sorted and duplicates removed.

The programs for A186083, the canonical program `A186083.P13615355468121439967` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186083 has offset 1).

The definition of A186083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186083.P13615355468121439967

`eq[1, char[A161903(n)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186083

/-- `eq[1, char[A161903(n)]]` -/
def P13615355468121439967.Spec : Prop :=
  ∀ n, (P13615355468121439967.a n : ℤ) = A186083 (n + 1)

theorem P13615355468121439967.correct : P13615355468121439967.Spec := by
  intro n
  simp only [A186083, Nat.add_sub_cancel]

end A186083

/-! ## A186083.P556876534469288576

`lt[0, A269175(A057889(n))]`
-/

namespace A186083.P556876534469288576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186083.P556876534469288576

namespace A186083

/-- `lt[0, A269175(A057889(n))]` -/
def P556876534469288576.Spec : Prop :=
  ∀ n, (P556876534469288576.a n : ℤ) = A186083 (n + 1)

end A186083

/-! ## A186083.P17869624519605994105

`comp[A057889(A269176(n+1))]`
-/

namespace A186083.P17869624519605994105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A269176 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186083.P17869624519605994105

namespace A186083

/-- `comp[A057889(A269176(n+1))]` -/
def P17869624519605994105.Spec : Prop :=
  ∀ n, (P17869624519605994105.a n : ℤ) = A186083 (n + 1)

end A186083

/-! ## A186083.P3512445127098752834

`eq[1, char[A057889(A269174(n))]]`
-/

namespace A186083.P3512445127098752834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A269174 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186083.P3512445127098752834

namespace A186083

/-- `eq[1, char[A057889(A269174(n))]]` -/
def P3512445127098752834.Spec : Prop :=
  ∀ n, (P3512445127098752834.a n : ℤ) = A186083 (n + 1)

end A186083

/-! ## A186083.P4144180288807560443

`lt[0, A269175(xor(n, A280508(n)))]`
-/

namespace A186083.P4144180288807560443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (Int.xor (n : ℤ) (A280508 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186083.P4144180288807560443

namespace A186083

/-- `lt[0, A269175(xor(n, A280508(n)))]` -/
def P4144180288807560443.Spec : Prop :=
  ∀ n, (P4144180288807560443.a n : ℤ) = A186083 (n + 1)

end A186083

/-!
# A186084: Triangle T(n,k) read by rows: number of 1-dimensional sandpiles (see A186085) with n grains and base length k.

The programs for A186084, there is no canonical definition to state claims against.
-/

/-! ## A186084.P710106384348740309

`gcd(dr(A010894(n)), A057094(n))`
-/

namespace A186084.P710106384348740309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A010894 (n + 21)) : ℤ) (A057094 n)

end

end A186084.P710106384348740309

/-! ## A186084.P3268415881577209746

`A284938(n+1)+A010894(A026741(n))`
-/

namespace A186084.P3268415881577209746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1) + A010894 ((A026741 n).toNat + 21)

end

end A186084.P3268415881577209746

/-! ## A186084.P9170107583169009582

`A284938(n+1)^A010894(A010894(n))`
-/

namespace A186084.P9170107583169009582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284938 (n + 1) : ℚ) ^ (A010894 ((A010894 (n + 21)).toNat + 21) : ℤ)

end

end A186084.P9170107583169009582

/-! ## A186084.P9023028872704874400

`A018851(A057094(n)²)+A010894(A026741(n))`
-/

namespace A186084.P9023028872704874400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A057094 n ^ 2).toNat + A010894 ((A026741 n).toNat + 21)

end

end A186084.P9023028872704874400

/-! ## A186084.P9898859354570117858

`A262689(A057094(n)²)+A010894(A026741(n))`
-/

namespace A186084.P9898859354570117858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A057094 n ^ 2).toNat + A010894 ((A026741 n).toNat + 21)

end

end A186084.P9898859354570117858

/-!
# A186085: Number of 1-dimensional sandpiles with n grains.

The programs for A186085, there is no canonical definition to state claims against.
-/

/-! ## A186085.P7797463510855515968

`A291895(eq[1, A291969(n)])`
-/

namespace A186085.P7797463510855515968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186085.P7797463510855515968

/-! ## A186085.P12738620141883868135

`A291895(A075349(n+1)+A000007(n))`
-/

namespace A186085.P12738620141883868135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291895 (A075349 (n + 1) + A000007 n).toNat

end

end A186085.P12738620141883868135

/-! ## A186085.P15394801712576020860

`A291895(A075349(n+1)%A000124(n))`
-/

namespace A186085.P15394801712576020860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291895 (Int.tmod (A075349 (n + 1)) (A000124 n)).toNat

end

end A186085.P15394801712576020860

/-! ## A186085.P6455017946605526555

`A291895(A075349(n+1))^A048766(A000120(n))`
-/

namespace A186085.P6455017946605526555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291895 (A075349 (n + 1)).toNat : ℚ) ^ (A048766 (A000120 n).toNat : ℤ)

end

end A186085.P6455017946605526555

/-! ## A186085.P17147361881406345741

`A291895(eq[1, A219311(n)])`
-/

namespace A186085.P17147361881406345741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186085.P17147361881406345741

/-!
# A186087: Number of (n+2)X(n+2) 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186087, there is no canonical definition to state claims against.
-/

/-! ## A186087.P16377331222606194728

`A186096((n+1)²+n²)`
-/

namespace A186087.P16377331222606194728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 ((n + 1) ^ 2 + n ^ 2)

end

end A186087.P16377331222606194728

/-!
# A186088: Number of (n+2)X3 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186088, there is no canonical definition to state claims against.
-/

/-! ## A186088.P15216852299481956616

`A186096(∑[n]+1)`
-/

namespace A186088.P15216852299481956616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186088.P15216852299481956616

/-! ## A186088.P8942698611949180415

`record[A186096(n+1)/A174158(n+1)]`
-/

namespace A186088.P8942698611949180415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186096 (n + 1) : ℚ) / (A174158 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186088.P8942698611949180415

/-! ## A186088.P13262893956925022601

`record[gcd(A172236(n+1), A186096(n+1))]`
-/

namespace A186088.P13262893956925022601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172236 (n + 1)) (A186096 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186088.P13262893956925022601

/-! ## A186088.P13693193976409219468

`A186096(A000124(n))%A186089(n+1)`
-/

namespace A186088.P13693193976409219468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186096 (A000124 n).toNat) (A186089 (n + 1))

end

end A186088.P13693193976409219468

/-! ## A186088.P2188937682995909337

`record[root(A186096(n+1), A004736(n+1))]`
-/

namespace A186088.P2188937682995909337
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186096 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186088.P2188937682995909337

/-!
# A186089: Number of (n+2)X4 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186089, there is no canonical definition to state claims against.
-/

/-! ## A186089.P11188668255858160014

`A186096(∑[n+1]+2)`
-/

namespace A186089.P11188668255858160014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186089.P11188668255858160014

/-! ## A186089.P647382332807835589

`record[A186096(abs(A201163(n)))]`
-/

namespace A186089.P647382332807835589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186089.P647382332807835589

/-! ## A186089.P10342475594847578954

`record[A186096(Δ[A003453(n+5)])]`
-/

namespace A186089.P10342475594847578954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186089.P10342475594847578954

/-! ## A186089.P5643508067766663896

`record[A186096(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A186089.P5643508067766663896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186089.P5643508067766663896

/-! ## A186089.P15670657622542722667

`record[A186096(A198453(n+1))]`
-/

namespace A186089.P15670657622542722667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186089.P15670657622542722667

/-!
# A186090: Number of (n+2)X5 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186090, there is no canonical definition to state claims against.
-/

/-! ## A186090.P17110393578797384440

`A186096(∑[n+2]+4)`
-/

namespace A186090.P17110393578797384440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186090.P17110393578797384440

/-! ## A186090.P7947773448601140850

`lcm(A033999(n), A186096(A167614(n+1)))`
-/

namespace A186090.P7947773448601140850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A186096 (A167614 (n + 1)).toNat)

end

end A186090.P7947773448601140850

/-! ## A186090.P919206715184890488

`or(A000007(n), A186096(A167614(n+1)))`
-/

namespace A186090.P919206715184890488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186096 (A167614 (n + 1)).toNat)

end

end A186090.P919206715184890488

/-! ## A186090.P2757595773320967739

`A061653(n+1)*A186096(A167614(n+1))`
-/

namespace A186090.P2757595773320967739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (n + 1) * A186096 (A167614 (n + 1)).toNat

end

end A186090.P2757595773320967739

/-! ## A186090.P6952933341736831066

`A186096(A167614(n+1))%A186091(n+1)`
-/

namespace A186090.P6952933341736831066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186096 (A167614 (n + 1)).toNat) (A186091 (n + 1))

end

end A186090.P6952933341736831066

/-!
# A186091: Number of (n+2)X6 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186091, there is no canonical definition to state claims against.
-/

/-! ## A186091.P2899938370318478619

`A186096(A374004(n+1))`
-/

namespace A186091.P2899938370318478619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A374004 (n + 1)).toNat

end

end A186091.P2899938370318478619

/-! ## A186091.P17523676947812825085

`A186096(A141214(n)+7)`
-/

namespace A186091.P17523676947812825085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A141214 n + 7).toNat

end

end A186091.P17523676947812825085

/-! ## A186091.P3030080917331852102

`A186096(A167614(n+2)+1)`
-/

namespace A186091.P3030080917331852102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A167614 (n + 2) + 1).toNat

end

end A186091.P3030080917331852102

/-! ## A186091.P8761956236926739445

`A186096(A167499(n+2)-1)`
-/

namespace A186091.P8761956236926739445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A167499 (n + 2) - 1).toNat

end

end A186091.P8761956236926739445

/-! ## A186091.P17203269073541892533

`A186096(A055998(n+1)+7)`
-/

namespace A186091.P17203269073541892533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A055998 (n + 1) + 7).toNat

end

end A186091.P17203269073541892533

/-!
# A186092: Number of (n+2)X7 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186092, there is no canonical definition to state claims against.
-/

/-! ## A186092.P3478324010885611708

`A186096(A374005(n+1))`
-/

namespace A186092.P3478324010885611708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A374005 (n + 1)).toNat

end

end A186092.P3478324010885611708

/-! ## A186092.P17526957616537988552

`A186096(A167499(n+3))`
-/

namespace A186092.P17526957616537988552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A167499 (n + 3)).toNat

end

end A186092.P17526957616537988552

/-! ## A186092.P891573243006521379

`A186096(A055998(n+2)+8)`
-/

namespace A186092.P891573243006521379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A055998 (n + 2) + 8).toNat

end

end A186092.P891573243006521379

/-! ## A186092.P8607527557621435013

`A186096(A046691(n+2)+9)`
-/

namespace A186092.P8607527557621435013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A046691 (n + 2) + 9).toNat

end

end A186092.P8607527557621435013

/-! ## A186092.P13298644485994639190

`A186096(A046691(n+3))`
-/

namespace A186092.P13298644485994639190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A046691 (n + 3)).toNat

end

end A186092.P13298644485994639190

/-!
# A186093: Number of (n+2)X8 0..4 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186093, there is no canonical definition to state claims against.
-/

/-! ## A186093.P18202972179858416486

`A186096(A374007(n+1))`
-/

namespace A186093.P18202972179858416486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A374007 (n + 1)).toNat

end

end A186093.P18202972179858416486

/-! ## A186093.P12399508257468838358

`A186096(eq[6, A004736(n+1)]+1)`
-/

namespace A186093.P12399508257468838358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186093.P12399508257468838358

/-! ## A186093.P13573287713873110077

`A186096(eq[6, A195079(n+1)])`
-/

namespace A186093.P13573287713873110077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186093.P13573287713873110077

/-!
# A186094: 

The programs for A186094, there is no canonical definition to state claims against.
-/

/-! ## A186094.P15689412657316170812

`A186096(A167614(n+5)+4)`
-/

namespace A186094.P15689412657316170812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A167614 (n + 5) + 4).toNat

end

end A186094.P15689412657316170812

/-! ## A186094.P16970901099524817143

`A186096(A055999(n+4))`
-/

namespace A186094.P16970901099524817143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186096 (A055999 (n + 4)).toNat

end

end A186094.P16970901099524817143

/-!
# A186097: G.f. satisfies: A(x) = Sum_{n>=0} x^n*[Sum_{k=0..n} C(n,k)^3 *x^k* A(x)^k].

The programs for A186097, there is no canonical definition to state claims against.
-/

/-! ## A186097.P579986078659046456

`xor(A006535(n+1), A055087(A057973(n+1)))`
-/

namespace A186097.P579986078659046456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006535 (n + 1)) (A055087 (A057973 (n + 1)).toNat)

end

end A186097.P579986078659046456

/-! ## A186097.P7149425621658031686

`ceil(A092179(2*n+5)/97)`
-/

namespace A186097.P7149425621658031686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092179 (2 * n + 5) : ℚ) / 97⌉

end

end A186097.P7149425621658031686

/-!
# A186098: Primes removed by sieve generating A095117.

The programs for A186098, the canonical program `A186098.P11267662135029825083` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186098 has offset 1).

The definition of A186098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186098.P14632454729150384673

`p?[A031368(n+1)+2*n]`
-/

namespace A186098.P14632454729150384673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P14632454729150384673

namespace A186098

/-- `p?[A031368(n+1)+2*n]` -/
def P14632454729150384673.Spec : Prop :=
  ∀ n, P14632454729150384673.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P11267662135029825083

`p?[A095116(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186098

/-- `p?[A095116(n+1)]` -/
def P11267662135029825083.Spec : Prop :=
  ∀ n, P11267662135029825083.a n = A186098 (n + 1)

theorem P11267662135029825083.correct : P11267662135029825083.Spec := by
  intro n
  simp only [A186098, Nat.add_sub_cancel]

end A186098

/-! ## A186098.P15642567361969997226

`p?[∑[A230846(n+1)]]`
-/

namespace A186098.P15642567361969997226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P15642567361969997226

namespace A186098

/-- `p?[∑[A230846(n+1)]]` -/
def P15642567361969997226.Spec : Prop :=
  ∀ n, P15642567361969997226.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P12932412791207246192

`p?[Δ[A007504(n)]+n]`
-/

namespace A186098.P12932412791207246192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P12932412791207246192

namespace A186098

/-- `p?[Δ[A007504(n)]+n]` -/
def P12932412791207246192.Spec : Prop :=
  ∀ n, P12932412791207246192.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P441134838227271526

`p?[A014688(n+1)-1]`
-/

namespace A186098.P441134838227271526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P441134838227271526

namespace A186098

/-- `p?[A014688(n+1)-1]` -/
def P441134838227271526.Spec : Prop :=
  ∀ n, P441134838227271526.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P10697310389452700686

`p?[A167136(n+1)-1]`
-/

namespace A186098.P10697310389452700686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P10697310389452700686

namespace A186098

/-- `p?[A167136(n+1)-1]` -/
def P10697310389452700686.Spec : Prop :=
  ∀ n, P10697310389452700686.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P2117277432902968085

`p?[A090178(n+1)-2]`
-/

namespace A186098.P2117277432902968085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P2117277432902968085

namespace A186098

/-- `p?[A090178(n+1)-2]` -/
def P2117277432902968085.Spec : Prop :=
  ∀ n, P2117277432902968085.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P1190850043339477106

`p?[A000040(n+1)+n]`
-/

namespace A186098.P1190850043339477106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P1190850043339477106

namespace A186098

/-- `p?[A000040(n+1)+n]` -/
def P1190850043339477106.Spec : Prop :=
  ∀ n, P1190850043339477106.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P9273791895950569166

`p?[A008578(n+2)+n]`
-/

namespace A186098.P9273791895950569166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P9273791895950569166

namespace A186098

/-- `p?[A008578(n+2)+n]` -/
def P9273791895950569166.Spec : Prop :=
  ∀ n, P9273791895950569166.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P6741611738699205786

`p?[A182986(n+2)+n]`
-/

namespace A186098.P6741611738699205786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P6741611738699205786

namespace A186098

/-- `p?[A182986(n+2)+n]` -/
def P6741611738699205786.Spec : Prop :=
  ∀ n, P6741611738699205786.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P5147331393275585539

`p?[n-A273960(n+1)]`
-/

namespace A186098.P5147331393275585539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A273960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P5147331393275585539

namespace A186098

/-- `p?[n-A273960(n+1)]` -/
def P5147331393275585539.Spec : Prop :=
  ∀ n, P5147331393275585539.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P8511285085718361798

`p?[A028815(n)-2+n]`
-/

namespace A186098.P8511285085718361798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186098.P8511285085718361798

namespace A186098

/-- `p?[A028815(n)-2+n]` -/
def P8511285085718361798.Spec : Prop :=
  ∀ n, P8511285085718361798.a n = A186098 (n + 1)

end A186098

/-! ## A186098.P17282603900678019874

`∩[A095116(n+1), A106118(n+1)]`
-/

namespace A186098.P17282603900678019874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186098.P17282603900678019874

namespace A186098

/-- `∩[A095116(n+1), A106118(n+1)]` -/
def P17282603900678019874.Spec : Prop :=
  ∀ n, (P17282603900678019874.a n : ℤ) = A186098 (n + 1)

end A186098

/-! ## A186098.P5287706467401238913

`∩[A095116(n+1), A197636(n+1)]`
-/

namespace A186098.P5287706467401238913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186098.P5287706467401238913

namespace A186098

/-- `∩[A095116(n+1), A197636(n+1)]` -/
def P5287706467401238913.Spec : Prop :=
  ∀ n, (P5287706467401238913.a n : ℤ) = A186098 (n + 1)

end A186098

/-! ## A186098.P2748850195705476170

`∩[A095116(n+1), A261123(n+1)]`
-/

namespace A186098.P2748850195705476170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186098.P2748850195705476170

namespace A186098

/-- `∩[A095116(n+1), A261123(n+1)]` -/
def P2748850195705476170.Spec : Prop :=
  ∀ n, (P2748850195705476170.a n : ℤ) = A186098 (n + 1)

end A186098

/-! ## A186098.P7043308740093259105

`∩[A000040(n+1), A095116(n+1)]`
-/

namespace A186098.P7043308740093259105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186098.P7043308740093259105

namespace A186098

/-- `∩[A000040(n+1), A095116(n+1)]` -/
def P7043308740093259105.Spec : Prop :=
  ∀ n, (P7043308740093259105.a n : ℤ) = A186098 (n + 1)

end A186098

/-! ## A186098.P14954405293128382135

`∩[A008578(n+1), A095116(n+1)]`
-/

namespace A186098.P14954405293128382135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186098.P14954405293128382135

namespace A186098

/-- `∩[A008578(n+1), A095116(n+1)]` -/
def P14954405293128382135.Spec : Prop :=
  ∀ n, (P14954405293128382135.a n : ℤ) = A186098 (n + 1)

end A186098

/-! ## A186098.P1806720705053138869

`∩[A045319(n+1), A095116(n+1)]`
-/

namespace A186098.P1806720705053138869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186098.P1806720705053138869

namespace A186098

/-- `∩[A045319(n+1), A095116(n+1)]` -/
def P1806720705053138869.Spec : Prop :=
  ∀ n, (P1806720705053138869.a n : ℤ) = A186098 (n + 1)

end A186098

/-!
# A186099: Sum of divisors of n congruent to 1 or 5 mod 6.

The programs for A186099, the canonical program `A186099.P16380765776800973491` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186099 has offset 1).

The definition of A186099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284098, A284104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186099.P16380765776800973491

`A284098(n+1)+A284104(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A186099

/-- `A284098(n+1)+A284104(n+1)` -/
def P16380765776800973491.Spec : Prop :=
  ∀ n, P16380765776800973491.a n = A186099 (n + 1)

theorem P16380765776800973491.correct : P16380765776800973491.Spec := by
  intro n
  simp only [A186099, Nat.add_sub_cancel]

end A186099

/-! ## A186099.P3233275554342787113

`∑{d}[floor((n+1)/and(n+1, -(n+1)))/3^val(n+1, 3), #]`
-/

namespace A186099.P3233275554342787113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A186099.P3233275554342787113

namespace A186099

/-- `∑{d}[floor((n+1)/and(n+1, -(n+1)))/3^val(n+1, 3), #]` -/
def P3233275554342787113.Spec : Prop :=
  ∀ n, (P3233275554342787113.a n : ℤ) = A186099 (n + 1)

end A186099

/-! ## A186099.P12106404962435647434

`∑{d}[A065330(n+1), #]`
-/

namespace A186099.P12106404962435647434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A186099.P12106404962435647434

namespace A186099

/-- `∑{d}[A065330(n+1), #]` -/
def P12106404962435647434.Spec : Prop :=
  ∀ n, (P12106404962435647434.a n : ℤ) = A186099 (n + 1)

end A186099

/-! ## A186099.P8282182091532101189

`∑{d}[n+1, A091685(#)]`
-/

namespace A186099.P8282182091532101189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091685 d

end

end A186099.P8282182091532101189

namespace A186099

/-- `∑{d}[n+1, A091685(#)]` -/
def P8282182091532101189.Spec : Prop :=
  ∀ n, P8282182091532101189.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P17199132712486518103

`∑{d}[n+1, #*A354354(#)]`
-/

namespace A186099.P17199132712486518103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A354354 d

end

end A186099.P17199132712486518103

namespace A186099

/-- `∑{d}[n+1, #*A354354(#)]` -/
def P17199132712486518103.Spec : Prop :=
  ∀ n, P17199132712486518103.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P9809200543701322317

`∑{d}[n+1, #*A232991(#-1)]`
-/

namespace A186099.P9809200543701322317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A232991 (d - 1)

end

end A186099.P9809200543701322317

namespace A186099

/-- `∑{d}[n+1, #*A232991(#-1)]` -/
def P9809200543701322317.Spec : Prop :=
  ∀ n, P9809200543701322317.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P8476944172653672842

`A000593(A038502(n+1))`
-/

namespace A186099.P8476944172653672842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A038502 (n + 1)).toNat

end

end A186099.P8476944172653672842

namespace A186099

/-- `A000593(A038502(n+1))` -/
def P8476944172653672842.Spec : Prop :=
  ∀ n, P8476944172653672842.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P15745793777405925723

`A046913(A000265(n+1))`
-/

namespace A186099.P15745793777405925723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (A000265 (n + 1)).toNat

end

end A186099.P15745793777405925723

namespace A186099

/-- `A046913(A000265(n+1))` -/
def P15745793777405925723.Spec : Prop :=
  ∀ n, P15745793777405925723.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P3542707615065121546

`A000203(A065330(n+1))`
-/

namespace A186099.P3542707615065121546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065330 (n + 1)).toNat

end

end A186099.P3542707615065121546

namespace A186099

/-- `A000203(A065330(n+1))` -/
def P3542707615065121546.Spec : Prop :=
  ∀ n, P3542707615065121546.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P5552298149751183571

`A113262(A065883(n+1))`
-/

namespace A186099.P5552298149751183571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113262 (A065883 (n + 1)).toNat

end

end A186099.P5552298149751183571

namespace A186099

/-- `A113262(A065883(n+1))` -/
def P5552298149751183571.Spec : Prop :=
  ∀ n, P5552298149751183571.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P3561965188968370517

`A113262(A259445(n+1))`
-/

namespace A186099.P3561965188968370517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113262 (A259445 (n + 1)).toNat

end

end A186099.P3561965188968370517

namespace A186099

/-- `A113262(A259445(n+1))` -/
def P3561965188968370517.Spec : Prop :=
  ∀ n, P3561965188968370517.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P2386255500976241544

`A366442(A126760(n+1))`
-/

namespace A186099.P2386255500976241544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366442 (A126760 (n + 1)).toNat

end

end A186099.P2386255500976241544

namespace A186099

/-- `A366442(A126760(n+1))` -/
def P2386255500976241544.Spec : Prop :=
  ∀ n, P2386255500976241544.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P15104107145922179567

`A284362(A244414(n+1))`
-/

namespace A186099.P15104107145922179567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284362 (A244414 (n + 1)).toNat

end

end A186099.P15104107145922179567

namespace A186099

/-- `A284362(A244414(n+1))` -/
def P15104107145922179567.Spec : Prop :=
  ∀ n, P15104107145922179567.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P158305236286508976

`A354205(A354203(n+1))`
-/

namespace A186099.P158305236286508976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354205 (A354203 (n + 1)).toNat

end

end A186099.P158305236286508976

namespace A186099

/-- `A354205(A354203(n+1))` -/
def P158305236286508976.Spec : Prop :=
  ∀ n, P158305236286508976.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P10413881234661609924

`A000593((n+1)/A038500(n+1))`
-/

namespace A186099.P10413881234661609924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A186099.P10413881234661609924

namespace A186099

/-- `A000593((n+1)/A038500(n+1))` -/
def P10413881234661609924.Spec : Prop :=
  ∀ n, P10413881234661609924.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P14266526154416188396

`A046913((n+1)/A006519(n+1))`
-/

namespace A186099.P14266526154416188396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A186099.P14266526154416188396

namespace A186099

/-- `A046913((n+1)/A006519(n+1))` -/
def P14266526154416188396.Spec : Prop :=
  ∀ n, P14266526154416188396.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P9214727545485631247

`A000203((n+1)/A065331(n+1))`
-/

namespace A186099.P9214727545485631247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A186099.P9214727545485631247

namespace A186099

/-- `A000203((n+1)/A065331(n+1))` -/
def P9214727545485631247.Spec : Prop :=
  ∀ n, P9214727545485631247.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P17717050127758177402

`A000593((n+1)/A065331(n+1))`
-/

namespace A186099.P17717050127758177402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A186099.P17717050127758177402

namespace A186099

/-- `A000593((n+1)/A065331(n+1))` -/
def P17717050127758177402.Spec : Prop :=
  ∀ n, P17717050127758177402.a n = A186099 (n + 1)

end A186099

/-! ## A186099.P13315892061278083438

`A000203(n+1)/A072079(n+1)`
-/

namespace A186099.P13315892061278083438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A072079 (n + 1) : ℚ)

end

end A186099.P13315892061278083438

namespace A186099

/-- `A000203(n+1)/A072079(n+1)` -/
def P13315892061278083438.Spec : Prop :=
  ∀ n, P13315892061278083438.a n = (A186099 (n + 1) : ℚ)

end A186099

/-! ## A186099.P6791698520726955177

`A000593(n+1)/A080278(n+1)`
-/

namespace A186099.P6791698520726955177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A080278 (n + 1) : ℚ)

end

end A186099.P6791698520726955177

namespace A186099

/-- `A000593(n+1)/A080278(n+1)` -/
def P6791698520726955177.Spec : Prop :=
  ∀ n, P6791698520726955177.a n = (A186099 (n + 1) : ℚ)

end A186099

