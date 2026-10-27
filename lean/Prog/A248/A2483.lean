import SequenceMachineLib
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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

/-!
# A248302: Egyptian fraction representation of sqrt(78) (A010530) using a greedy function.

The programs for A248302, there is no canonical definition to state claims against.
-/

/-! ## A248302.P7275967936330096555

`A188181(A190720(a(n-1)))` with `a(0)=8, a(1)=2`
-/

namespace A248302.P7275967936330096555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 2] fun n a =>
  A188181 (A190720 (a (n - 1)).toNat).toNat

end

end A248302.P7275967936330096555

/-!
# A248303: Egyptian fraction representation of sqrt(79) (A010531) using a greedy function.

The programs for A248303, there is no canonical definition to state claims against.
-/

/-! ## A248303.P6972543632984226224

`A352538(a(n-1)+val(n, 3))` with `a(0)=8, a(1)=2`
-/

namespace A248303.P6972543632984226224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 2] fun n a =>
  A352538 (a (n - 1) + (SequenceMachineLib.valuation n 3 : ℤ)).toNat

end

end A248303.P6972543632984226224

/-!
# A248321: Egyptian fraction representation of sqrt(98) (A010549) using a greedy function.

The programs for A248321, there is no canonical definition to state claims against.
-/

/-! ## A248321.P18326365104066613852

`A091594(A023490(a(n-2)+2^(n-2)))` with `a(0)=9, a(1)=2, a(2)=3`
-/

namespace A248321.P18326365104066613852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 2, 3] fun n a =>
  A091594 (A023490 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat).toNat

end

end A248321.P18326365104066613852

/-!
# A248322: Egyptian fraction representation of sqrt(99) (A010550) using a greedy function.

The programs for A248322, there is no canonical definition to state claims against.
-/

/-! ## A248322.P14403305741931909953

`A247225(xor(A202657(n+2), A280302(3*n+1)))`
-/

namespace A248322.P14403305741931909953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247225 (Int.xor (A202657 (n + 2)) (A280302 (3 * n + 1))).toNat

end

end A248322.P14403305741931909953

/-!
# A248323: Numbers n which appear at least twice in A037278(n), concatenation of their divisors written in base 10.

The programs for A248323, there is no canonical definition to state claims against.
-/

/-! ## A248323.P16663822202741785252

`A224908(A316655(2*(n+2))+A000247(n+5))`
-/

namespace A248323.P16663822202741785252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224908 (A316655 (2 * (n + 2)) + A000247 (n + 5)).toNat

end

end A248323.P16663822202741785252

/-!
# A248324: Square array read by antidiagonals downwards: super Patalan numbers of order 3.

The programs for A248324, there is no canonical definition to state claims against.
-/

/-! ## A248324.P6777957771825764905

`gcd(A032120(n), A169836(A032120(n)))`
-/

namespace A248324.P6777957771825764905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032120 n) (A169836 (A032120 n).toNat)

end

end A248324.P6777957771825764905

/-!
# A248325: Square array read by antidiagonals downwards: super Patalan numbers of order 4.

The programs for A248325, there is no canonical definition to state claims against.
-/

/-! ## A248325.P11479861831508784374

`∏[char[∑[n+1]]+1]*A122882(n)`
-/

namespace A248325.P11479861831508784374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A122882 n

end

end A248325.P11479861831508784374

/-! ## A248325.P8222486008903603999

`A122882(n)*A137688(n)`
-/

namespace A248325.P8222486008903603999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122882 n * A137688 n

end

end A248325.P8222486008903603999

/-!
# A248327: Levenshtein distance of n and its reversal in decimal representation, cf. A004086.

The programs for A248327, there is no canonical definition to state claims against.
-/

/-! ## A248327.P13112385502275034475

`A300069(A061901(n)^5)`
-/

namespace A248327.P13112385502275034475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300069 (A061901 n ^ 5).toNat

end

end A248327.P13112385502275034475

/-! ## A248327.P17129654738648293156

`(A061901(n)-2)*A377191(n)`
-/

namespace A248327.P17129654738648293156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061901 n - 2) * A377191 n

end

end A248327.P17129654738648293156

/-! ## A248327.P13239712240043156246

`A007968(A073788(A061901(n)²))`
-/

namespace A248327.P13239712240043156246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A073788 (A061901 n ^ 2).toNat).toNat

end

end A248327.P13239712240043156246

/-! ## A248327.P6915830384608263641

`A028242(A119339(A061901(n)²))`
-/

namespace A248327.P6915830384608263641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A119339 (A061901 n ^ 2).toNat).toNat

end

end A248327.P6915830384608263641

/-! ## A248327.P10590018036489679534

`A004247(A001223(A061901(n)!))`
-/

namespace A248327.P10590018036489679534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A001223 (Nat.factorial (A061901 n).toNat)).toNat

end

end A248327.P10590018036489679534

/-! ## A248327.P11541943686918152709

`A073267(A000194(A061901(n)!))`
-/

namespace A248327.P11541943686918152709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (A000194 (Nat.factorial (A061901 n).toNat)).toNat

end

end A248327.P11541943686918152709

/-! ## A248327.P3985825132901189977

`A142150(A001222(A061901(n)!))`
-/

namespace A248327.P3985825132901189977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A001222 (Nat.factorial (A061901 n).toNat)).toNat

end

end A248327.P3985825132901189977

/-!
# A248328: Square array read by antidiagonals downwards: super Patalan numbers of order 6.

The programs for A248328, there is no canonical definition to state claims against.
-/

/-! ## A248328.P6770321809753191038

`A259445(n!*A002445(n))`
-/

namespace A248328.P6770321809753191038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 ((Nat.factorial n : ℤ) * A002445 n).toNat

end

end A248328.P6770321809753191038

/-! ## A248328.P12492538769216556778

`A259445(n!*A027642(2*n))`
-/

namespace A248328.P12492538769216556778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 ((Nat.factorial n : ℤ) * A027642 (2 * n)).toNat

end

end A248328.P12492538769216556778

/-!
# A248330: The product of the first n Catalan numbers and the number of standard Young tableaux of shape(1,2,...,n).

The programs for A248330, there is no canonical definition to state claims against.
-/

/-! ## A248330.P16399750019782310494

`A005118(n+1)*A003046(n)`
-/

namespace A248330.P16399750019782310494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005118 (n + 1) * A003046 n

end

end A248330.P16399750019782310494

/-! ## A248330.P15184813160317485033

`∏[A000108(n)]*A005118(n+1)`
-/

namespace A248330.P15184813160317485033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005118 (n + 1)

end

end A248330.P15184813160317485033

/-! ## A248330.P8645407271813970280

`A003046(n)*A005118(A077168(n))`
-/

namespace A248330.P8645407271813970280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003046 n * A005118 (A077168 n).toNat

end

end A248330.P8645407271813970280

/-! ## A248330.P12699247482062350447

`A003046(n)*A005118(A291769(n))`
-/

namespace A248330.P12699247482062350447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003046 n * A005118 (A291769 n).toNat

end

end A248330.P12699247482062350447

/-! ## A248330.P1750572223121644361

`∏[A008313(n²)]*A219339(A000217(n))`
-/

namespace A248330.P1750572223121644361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A219339 (A000217 n).toNat

end

end A248330.P1750572223121644361

/-!
# A248332: Square array read by antidiagonals downwards: super Patalan numbers of order 8.

The programs for A248332, there is no canonical definition to state claims against.
-/

/-! ## A248332.P10652630832758998660

`A349162(C(A014602(n+2), n))`
-/

namespace A248332.P10652630832758998660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 (Nat.choose (A014602 (n + 2)).toNat n)

end

end A248332.P10652630832758998660

/-!
# A248333: Number of unit squares enclosed by n lattice points in and along the first quadrant of the coordinate plane starting from (0,0) and moving along each square gnomon starting on the y-axis and ending on the x-axis.

The programs for A248333, there is no canonical definition to state claims against.
-/

/-! ## A248333.P16965714007760079144

`floor((tanh(3)-sqrt(n))²)`
-/

namespace A248333.P16965714007760079144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tanh (3 : ℝ) - Real.sqrt (n : ℝ)) ^ 2⌋

end

end A248333.P16965714007760079144

/-! ## A248333.P13231579502347730069

`floor((sin(11)+sqrt(n))²)`
-/

namespace A248333.P13231579502347730069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sin (11 : ℝ) + Real.sqrt (n : ℝ)) ^ 2⌋

end

end A248333.P13231579502347730069

/-! ## A248333.P10678827310037271015

`floor((tanh(3)-sqrt(n))^2)`
-/

namespace A248333.P10678827310037271015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tanh (3 : ℝ) - Real.sqrt (n : ℝ)) ^ 2⌋

end

end A248333.P10678827310037271015

/-! ## A248333.P1262095042696978081

`floor((sin(11)+sqrt(n))^2)`
-/

namespace A248333.P1262095042696978081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sin (11 : ℝ) + Real.sqrt (n : ℝ)) ^ 2⌋

end

end A248333.P1262095042696978081

/-! ## A248333.P5669491410269206268

`n-floor(record[sqrt(lcm(2, n))])`
-/

namespace A248333.P5669491410269206268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A248333.P5669491410269206268

/-! ## A248333.P5192247269477529837

`∑[char[ceil((sqrt(n+1)+1)²)]]`
-/

namespace A248333.P5192247269477529837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n + 1 : ℝ) + 1) ^ 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248333.P5192247269477529837

/-! ## A248333.P2377018388214298982

`2*n-comp[∑[∑[and(1, n)]+1]]`
-/

namespace A248333.P2377018388214298982
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A248333.P2377018388214298982

/-! ## A248333.P2404224735198528853

`n-(comp[∑[∑[n%2]+1]]-n)`
-/

namespace A248333.P2404224735198528853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A248333.P2404224735198528853

/-! ## A248333.P12473523726888181759

`floor(((a(n-1)+n)/2)²/n)` with `a(0)=0`
-/

namespace A248333.P12473523726888181759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((a (n - 1) + (n : ℤ) : ℚ) / 2) ^ 2 / (n : ℚ)⌋

end

end A248333.P12473523726888181759

/-! ## A248333.P11247900570070618571

`n-∑[char[A033638(n)]]`
-/

namespace A248333.P11247900570070618571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A248333.P11247900570070618571

/-!
# A248334: The subsequence of A246885 having even values.

The programs for A248334, there is no canonical definition to state claims against.
-/

/-! ## A248334.P11688499939181156298

`∩[2*n, A246885(n+1)]`
-/

namespace A248334.P11688499939181156298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248334.P11688499939181156298

/-! ## A248334.P12546895200995593934

`record[n*A010673(A051343(n))]`
-/

namespace A248334.P12546895200995593934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010673 (A051343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248334.P12546895200995593934

/-! ## A248334.P4750193973706749335

`∩[A246885(n+1), A005843(n)]`
-/

namespace A248334.P4750193973706749335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248334.P4750193973706749335

/-! ## A248334.P2575567182793829507

`eq[1, A010146(A173680(n))]`
-/

namespace A248334.P2575567182793829507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248334.P2575567182793829507

/-! ## A248334.P6011166851266655229

`eq[2, A108077(A173680(n)+2)]`
-/

namespace A248334.P6011166851266655229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A173680 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248334.P6011166851266655229

/-! ## A248334.P4380131140063814736

`filter[A246885(n+1), A059841(#)]`
-/

namespace A248334.P4380131140063814736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A248334.P4380131140063814736

/-! ## A248334.P12764299044401036552

`eq[A093178(n), A134451(A173680(n))]`
-/

namespace A248334.P12764299044401036552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248334.P12764299044401036552

/-! ## A248334.P153269054821644342

`A005843(record[A025480(A246885(n+1))])`
-/

namespace A248334.P153269054821644342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A246885 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248334.P153269054821644342

/-! ## A248334.P14109476798011435269

`record[A025480(A246885(n+1))*A036453(n+1)]`
-/

namespace A248334.P14109476798011435269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A246885 (n + 1)).toNat * A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248334.P14109476798011435269

/-! ## A248334.P6090357352980314695

`eq[1, A000034(A173680(n)+1)]`
-/

namespace A248334.P6090357352980314695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A173680 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248334.P6090357352980314695

/-! ## A248334.P17773857416711282885

`eq[1, A000034(A173680(n))-A000034(n)]`
-/

namespace A248334.P17773857416711282885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A173680 n).toNat - A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248334.P17773857416711282885

/-! ## A248334.P6314079875035796197

`eq[2, A000034(A000034(n)*A173680(n))]`
-/

namespace A248334.P6314079875035796197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000034 n * A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248334.P6314079875035796197

/-!
# A248336: Smallest number m such that the Levenshtein distance of m and its reversal equals n.

The programs for A248336, the canonical program `A248336.P3979322780880307297` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248336 has offset 0).

The definition of A248336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248336.P3979322780880307297

`∪[A178501(2*n), A178501(2*n)+A002276(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248336

/-- `∪[A178501(2*n), A178501(2*n)+A002276(n)]` -/
def P3979322780880307297.Spec : Prop :=
  ∀ n, (P3979322780880307297.a n : ℤ) = A248336 n

theorem P3979322780880307297.correct : P3979322780880307297.Spec := by
  intro n
  simp only [A248336]

end A248336

/-!
# A248337: a(n) = 6^n - 4^n.

The programs for A248337, the canonical program `A248337.P11960930676899951942` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248337 has offset 0).

The definition of A248337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-4^n` (program `A248337.P11960930676899951942`, by `A248337.P11960930676899951942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248337.P11960930676899951942

`6^n-4^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248337

/-- `6^n-4^n` -/
def P11960930676899951942.Spec : Prop :=
  ∀ n, P11960930676899951942.a n = A248337 n

theorem P11960930676899951942.correct : P11960930676899951942.Spec := by
  intro n
  simp only [A248337]

end A248337

/-! ## A248337.P1161544947155425770

`ogf(2x/(1-10x+24x^2))`
-/

namespace A248337.P1161544947155425770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -10, 24] n

end

end A248337.P1161544947155425770

namespace A248337

/-- `ogf(2x/(1-10x+24x^2))` -/
def P1161544947155425770.Spec : Prop :=
  ∀ n, P1161544947155425770.a n = A248337 n

end A248337

/-! ## A248337.P7869500371963117535

`2*A081199(n)`
-/

namespace A248337.P7869500371963117535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081199 n

end

end A248337.P7869500371963117535

namespace A248337

/-- `2*A081199(n)` -/
def P7869500371963117535.Spec : Prop :=
  ∀ n, P7869500371963117535.a n = A248337 n

end A248337

/-! ## A248337.P340248813441725847

`lcm(2^n, A056182(n))`
-/

namespace A248337.P340248813441725847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A056182 n)

end

end A248337.P340248813441725847

namespace A248337

/-- `lcm(2^n, A056182(n))` -/
def P340248813441725847.Spec : Prop :=
  ∀ n, (P340248813441725847.a n : ℤ) = A248337 n

end A248337

/-! ## A248337.P1601148328792648127

`A081626(n)%(6^n)`
-/

namespace A248337.P1601148328792648127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081626 n) (6 ^ n : ℤ)

end

end A248337.P1601148328792648127

namespace A248337

/-- `A081626(n)%(6^n)` -/
def P1601148328792648127.Spec : Prop :=
  ∀ n, P1601148328792648127.a n = A248337 n

end A248337

/-! ## A248337.P10643975632428302056

`A000079(n)*A001047(n)`
-/

namespace A248337.P10643975632428302056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001047 n

end

end A248337.P10643975632428302056

namespace A248337

/-- `A000079(n)*A001047(n)` -/
def P10643975632428302056.Spec : Prop :=
  ∀ n, P10643975632428302056.a n = A248337 n

end A248337

/-! ## A248337.P6637970492206950970

`A011782(n)*A056182(n)`
-/

namespace A248337.P6637970492206950970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A056182 n

end

end A248337.P6637970492206950970

namespace A248337

/-- `A011782(n)*A056182(n)` -/
def P6637970492206950970.Spec : Prop :=
  ∀ n, P6637970492206950970.a n = A248337 n

end A248337

/-! ## A248337.P445884237415514804

`A001047(n)*A155559(n)`
-/

namespace A248337.P445884237415514804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n * A155559 n

end

end A248337.P445884237415514804

namespace A248337

/-- `A001047(n)*A155559(n)` -/
def P445884237415514804.Spec : Prop :=
  ∀ n, P445884237415514804.a n = A248337 n

end A248337

/-! ## A248337.P12902567284214361014

`A001047(n)*A171449(n)`
-/

namespace A248337.P12902567284214361014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n * A171449 n

end

end A248337.P12902567284214361014

namespace A248337

/-- `A001047(n)*A171449(n)` -/
def P12902567284214361014.Spec : Prop :=
  ∀ n, P12902567284214361014.a n = A248337 n

end A248337

/-! ## A248337.P6845546643169730574

`A001047(n)*A171559(n)`
-/

namespace A248337.P6845546643169730574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n * A171559 n

end

end A248337.P6845546643169730574

namespace A248337

/-- `A001047(n)*A171559(n)` -/
def P6845546643169730574.Spec : Prop :=
  ∀ n, P6845546643169730574.a n = A248337 n

end A248337

/-! ## A248337.P7479593457548216271

`A056182(n)*A131577(n)`
-/

namespace A248337.P7479593457548216271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n * A131577 n

end

end A248337.P7479593457548216271

namespace A248337

/-- `A056182(n)*A131577(n)` -/
def P7479593457548216271.Spec : Prop :=
  ∀ n, P7479593457548216271.a n = A248337 n

end A248337

/-! ## A248337.P14804817681691262547

`lcm(A056182(n), A120617(n))`
-/

namespace A248337.P14804817681691262547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056182 n) (A120617 n)

end

end A248337.P14804817681691262547

namespace A248337

/-- `lcm(A056182(n), A120617(n))` -/
def P14804817681691262547.Spec : Prop :=
  ∀ n, (P14804817681691262547.a n : ℤ) = A248337 n

end A248337

/-!
# A248338: a(n) = 10^n - 4^n.

The programs for A248338, the canonical program `A248338.P6443409204069801720` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248338 has offset 0).

The definition of A248338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-4^n` (program `A248338.P6443409204069801720`, by `A248338.P6443409204069801720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248338.P6443409204069801720

`10^n-4^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248338

/-- `10^n-4^n` -/
def P6443409204069801720.Spec : Prop :=
  ∀ n, P6443409204069801720.a n = A248338 n

theorem P6443409204069801720.correct : P6443409204069801720.Spec := by
  intro n
  simp only [A248338]

end A248338

/-! ## A248338.P7003980817494869465

`A000079(n)*A005057(n)`
-/

namespace A248338.P7003980817494869465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005057 n

end

end A248338.P7003980817494869465

namespace A248338

/-- `A000079(n)*A005057(n)` -/
def P7003980817494869465.Spec : Prop :=
  ∀ n, P7003980817494869465.a n = A248338 n

end A248338

/-! ## A248338.P17523337176706225971

`abs(A011782(2*n+1)-A011557(n))`
-/

namespace A248338.P17523337176706225971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (2 * n + 1) - A011557 n|

end

end A248338.P17523337176706225971

namespace A248338

/-- `abs(A011782(2*n+1)-A011557(n))` -/
def P17523337176706225971.Spec : Prop :=
  ∀ n, P17523337176706225971.a n = A248338 n

end A248338

/-! ## A248338.P7740326549876182967

`A005057(n)*A156552(A000040(n+1))`
-/

namespace A248338.P7740326549876182967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005057 n * A156552 (A000040 (n + 1)).toNat

end

end A248338.P7740326549876182967

namespace A248338

/-- `A005057(n)*A156552(A000040(n+1))` -/
def P7740326549876182967.Spec : Prop :=
  ∀ n, P7740326549876182967.a n = A248338 n

end A248338

/-! ## A248338.P1538083448835032852

`abs(A155602(n)-A155608(n))`
-/

namespace A248338.P1538083448835032852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155602 n - A155608 n|

end

end A248338.P1538083448835032852

namespace A248338

/-- `abs(A155602(n)-A155608(n))` -/
def P1538083448835032852.Spec : Prop :=
  ∀ n, P1538083448835032852.a n = A248338 n

end A248338

/-!
# A248339: a(n) = 22*n + 19.

The programs for A248339, the canonical program `A248339.P12910854868344435228` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248339 has offset 0).

The definition of A248339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n+19` (program `A248339.P12910854868344435228`, by `A248339.P12910854868344435228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248339.P12910854868344435228

`22*n+19`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248339

/-- `22*n+19` -/
def P12910854868344435228.Spec : Prop :=
  ∀ n, (P12910854868344435228.a n : ℤ) = A248339 n

theorem P12910854868344435228.correct : P12910854868344435228.Spec := by
  intro n
  simp only [A248339]

end A248339

/-!
# A248340: a(n) = 10^n - 5^n.

The programs for A248340, the canonical program `A248340.P11399289618025566446` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248340 has offset 0).

The definition of A248340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-5^n` (program `A248340.P11399289618025566446`, by `A248340.P11399289618025566446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248340.P11399289618025566446

`10^n-5^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248340

/-- `10^n-5^n` -/
def P11399289618025566446.Spec : Prop :=
  ∀ n, P11399289618025566446.a n = A248340 n

theorem P11399289618025566446.correct : P11399289618025566446.Spec := by
  intro n
  simp only [A248340]

end A248340

/-! ## A248340.P4516993269376340181

`A000351(n)*A000225(n)`
-/

namespace A248340.P4516993269376340181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A000225 n

end

end A248340.P4516993269376340181

namespace A248340

/-- `A000351(n)*A000225(n)` -/
def P4516993269376340181.Spec : Prop :=
  ∀ n, P4516993269376340181.a n = A248340 n

end A248340

/-! ## A248340.P6817510797032750626

`5^n*Δ[A000295(n)]`
-/

namespace A248340.P6817510797032750626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A248340.P6817510797032750626

namespace A248340

/-- `5^n*Δ[A000295(n)]` -/
def P6817510797032750626.Spec : Prop :=
  ∀ n, P6817510797032750626.a n = A248340 n

end A248340

/-! ## A248340.P4561585219579320373

`record[n*5^val(n+1, 2)]`
-/

namespace A248340.P4561585219579320373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248340.P4561585219579320373

namespace A248340

/-- `record[n*5^val(n+1, 2)]` -/
def P4561585219579320373.Spec : Prop :=
  ∀ n, (P4561585219579320373.a n : ℤ) = A248340 n

end A248340

/-! ## A248340.P4996991341890930695

`record[A006068(n)]*A000351(n)`
-/

namespace A248340.P4996991341890930695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000351 n

end

end A248340.P4996991341890930695

namespace A248340

/-- `record[A006068(n)]*A000351(n)` -/
def P4996991341890930695.Spec : Prop :=
  ∀ n, P4996991341890930695.a n = A248340 n

end A248340

/-!
# A248341: a(n) = 10^n - 7^n.

The programs for A248341, the canonical program `A248341.P6912478645886946724` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248341 has offset 0).

The definition of A248341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-7^n` (program `A248341.P6912478645886946724`, by `A248341.P6912478645886946724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248341.P6912478645886946724

`10^n-7^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248341

/-- `10^n-7^n` -/
def P6912478645886946724.Spec : Prop :=
  ∀ n, P6912478645886946724.a n = A248341 n

theorem P6912478645886946724.correct : P6912478645886946724.Spec := by
  intro n
  simp only [A248341]

end A248341

/-! ## A248341.P1439626769449003927

`abs(1-A155661(n))`
-/

namespace A248341.P1439626769449003927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155661 n|

end

end A248341.P1439626769449003927

namespace A248341

/-- `abs(1-A155661(n))` -/
def P1439626769449003927.Spec : Prop :=
  ∀ n, P1439626769449003927.a n = A248341 n

end A248341

/-! ## A248341.P3204848735512623784

`abs(A024076(n)-A024115(n))`
-/

namespace A248341.P3204848735512623784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024076 n - A024115 n|

end

end A248341.P3204848735512623784

namespace A248341

/-- `abs(A024076(n)-A024115(n))` -/
def P3204848735512623784.Spec : Prop :=
  ∀ n, P3204848735512623784.a n = A248341 n

end A248341

/-! ## A248341.P761743165230838505

`abs(A024079(n)-A024118(n))`
-/

namespace A248341.P761743165230838505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024079 n - A024118 n|

end

end A248341.P761743165230838505

namespace A248341

/-- `abs(A024079(n)-A024118(n))` -/
def P761743165230838505.Spec : Prop :=
  ∀ n, P761743165230838505.a n = A248341 n

end A248341

/-! ## A248341.P11867127025112843082

`abs(A024080(n)-A024119(n))`
-/

namespace A248341.P11867127025112843082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024080 n - A024119 n|

end

end A248341.P11867127025112843082

namespace A248341

/-- `abs(A024080(n)-A024119(n))` -/
def P11867127025112843082.Spec : Prop :=
  ∀ n, P11867127025112843082.a n = A248341 n

end A248341

/-! ## A248341.P5916989346603961064

`abs(A155598(n)-A155601(n))`
-/

namespace A248341.P5916989346603961064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155598 n - A155601 n|

end

end A248341.P5916989346603961064

namespace A248341

/-- `abs(A155598(n)-A155601(n))` -/
def P5916989346603961064.Spec : Prop :=
  ∀ n, P5916989346603961064.a n = A248341 n

end A248341

/-! ## A248341.P12877799921677285706

`abs(A155612(n)-A155615(n))`
-/

namespace A248341.P12877799921677285706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155612 n - A155615 n|

end

end A248341.P12877799921677285706

namespace A248341

/-- `abs(A155612(n)-A155615(n))` -/
def P12877799921677285706.Spec : Prop :=
  ∀ n, P12877799921677285706.a n = A248341 n

end A248341

/-! ## A248341.P5360044928440971251

`abs(A155640(n)-A155643(n))`
-/

namespace A248341.P5360044928440971251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155640 n - A155643 n|

end

end A248341.P5360044928440971251

namespace A248341

/-- `abs(A155640(n)-A155643(n))` -/
def P5360044928440971251.Spec : Prop :=
  ∀ n, P5360044928440971251.a n = A248341 n

end A248341

/-! ## A248341.P12877165468023903540

`abs(A155650(n)-A155653(n))`
-/

namespace A248341.P12877165468023903540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155650 n - A155653 n|

end

end A248341.P12877165468023903540

namespace A248341

/-- `abs(A155650(n)-A155653(n))` -/
def P12877165468023903540.Spec : Prop :=
  ∀ n, P12877165468023903540.a n = A248341 n

end A248341

/-! ## A248341.P12845040392266877295

`floor(A155661(n)-A000034(n)/2)`
-/

namespace A248341.P12845040392266877295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155661 n : ℚ) - (A000034 n : ℚ) / 2⌋

end

end A248341.P12845040392266877295

namespace A248341

/-- `floor(A155661(n)-A000034(n)/2)` -/
def P12845040392266877295.Spec : Prop :=
  ∀ n, P12845040392266877295.a n = A248341 n

end A248341

/-! ## A248341.P2913905800435317277

`abs(A034491(n)-A062397(n))`
-/

namespace A248341.P2913905800435317277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A062397 n|

end

end A248341.P2913905800435317277

namespace A248341

/-- `abs(A034491(n)-A062397(n))` -/
def P2913905800435317277.Spec : Prop :=
  ∀ n, P2913905800435317277.a n = A248341 n

end A248341

/-! ## A248341.P4693684925808478620

`abs(A155605(n)-A155608(n))`
-/

namespace A248341.P4693684925808478620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155605 n - A155608 n|

end

end A248341.P4693684925808478620

namespace A248341

/-- `abs(A155605(n)-A155608(n))` -/
def P4693684925808478620.Spec : Prop :=
  ∀ n, P4693684925808478620.a n = A248341 n

end A248341

/-! ## A248341.P16410542748238745605

`abs(A155634(n)-A155637(n))`
-/

namespace A248341.P16410542748238745605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155634 n - A155637 n|

end

end A248341.P16410542748238745605

namespace A248341

/-- `abs(A155634(n)-A155637(n))` -/
def P16410542748238745605.Spec : Prop :=
  ∀ n, P16410542748238745605.a n = A248341 n

end A248341

/-! ## A248341.P7590708879213670660

`abs(A155645(n)-A155648(n))`
-/

namespace A248341.P7590708879213670660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155645 n - A155648 n|

end

end A248341.P7590708879213670660

namespace A248341

/-- `abs(A155645(n)-A155648(n))` -/
def P7590708879213670660.Spec : Prop :=
  ∀ n, P7590708879213670660.a n = A248341 n

end A248341

/-! ## A248341.P10281097687559993660

`Δ[A002275(n)-A023000(n)]`
-/

namespace A248341.P10281097687559993660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248341.P10281097687559993660

namespace A248341

/-- `Δ[A002275(n)-A023000(n)]` -/
def P10281097687559993660.Spec : Prop :=
  ∀ n, P10281097687559993660.a n = A248341 n

end A248341

/-! ## A248341.P38328072948366738

`Δ[A002275(n)-A047852(n)]`
-/

namespace A248341.P38328072948366738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A047852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248341.P38328072948366738

namespace A248341

/-- `Δ[A002275(n)-A047852(n)]` -/
def P38328072948366738.Spec : Prop :=
  ∀ n, P38328072948366738.a n = A248341 n

end A248341

/-! ## A248341.P17754618646306155066

`Δ[A047855(n)-A023000(n)]`
-/

namespace A248341.P17754618646306155066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248341.P17754618646306155066

namespace A248341

/-- `Δ[A047855(n)-A023000(n)]` -/
def P17754618646306155066.Spec : Prop :=
  ∀ n, P17754618646306155066.a n = A248341 n

end A248341

/-!
# A248343: a(n) = 10^n - 8^n.

The programs for A248343, the canonical program `A248343.P14688977293311773913` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248343 has offset 0).

The definition of A248343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-8^n` (program `A248343.P14688977293311773913`, by `A248343.P14688977293311773913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248343.P14688977293311773913

`10^n-8^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248343

/-- `10^n-8^n` -/
def P14688977293311773913.Spec : Prop :=
  ∀ n, P14688977293311773913.a n = A248343 n

theorem P14688977293311773913.correct : P14688977293311773913.Spec := by
  intro n
  simp only [A248343]

end A248343

/-! ## A248343.P14961975971453229466

`A000079(n)*A005060(n)`
-/

namespace A248343.P14961975971453229466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005060 n

end

end A248343.P14961975971453229466

namespace A248343

/-- `A000079(n)*A005060(n)` -/
def P14961975971453229466.Spec : Prop :=
  ∀ n, P14961975971453229466.a n = A248343 n

end A248343

/-! ## A248343.P8893753620069872968

`2*A081203(n)`
-/

namespace A248343.P8893753620069872968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081203 n

end

end A248343.P8893753620069872968

namespace A248343

/-- `2*A081203(n)` -/
def P8893753620069872968.Spec : Prop :=
  ∀ n, P8893753620069872968.a n = A248343 n

end A248343

/-! ## A248343.P17097495622342732328

`(A000351(n)-A000302(n))*A000079(n)`
-/

namespace A248343.P17097495622342732328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A000302 n) * A000079 n

end

end A248343.P17097495622342732328

namespace A248343

/-- `(A000351(n)-A000302(n))*A000079(n)` -/
def P17097495622342732328.Spec : Prop :=
  ∀ n, P17097495622342732328.a n = A248343 n

end A248343

/-! ## A248343.P9015516394292240388

`record[A007088(n)-A000578(n)]`
-/

namespace A248343.P9015516394292240388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n - A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248343.P9015516394292240388

namespace A248343

/-- `record[A007088(n)-A000578(n)]` -/
def P9015516394292240388.Spec : Prop :=
  ∀ n, P9015516394292240388.a n = A248343 n

end A248343

/-!
# A248344: Primes of the form x^2 - 2^y.

The programs for A248344, there is no canonical definition to state claims against.
-/

/-! ## A248344.P8668716111161789712

`p?[A051204(n+1)]`
-/

namespace A248344.P8668716111161789712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248344.P8668716111161789712

/-! ## A248344.P13794376162107634312

`∩[A000040(n+1), A051204(n+1)]`
-/

namespace A248344.P13794376162107634312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248344.P13794376162107634312

/-! ## A248344.P26024710266665152

`∩[A051204(n+1), A106118(n+1)]`
-/

namespace A248344.P26024710266665152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248344.P26024710266665152

/-! ## A248344.P16379893526488715304

`∩[A051204(n+1), A116974(n+1)]`
-/

namespace A248344.P16379893526488715304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248344.P16379893526488715304

/-! ## A248344.P10223452735608094621

`∩[A051204(n+1), A001043(n)-a(n-1)]` with `a(0)=2`
-/

namespace A248344.P10223452735608094621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001043 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248344.P10223452735608094621

/-! ## A248344.P1487256584033455117

`record[A020639(A051204(n+3))]`
-/

namespace A248344.P1487256584033455117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051204 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248344.P1487256584033455117

/-! ## A248344.P2079219171377933340

`filter[A051204(n+2), A010051(#)]`
-/

namespace A248344.P2079219171377933340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A248344.P2079219171377933340

/-! ## A248344.P18150938022530022239

`filter[A051204(n+3), A080339(#)]`
-/

namespace A248344.P18150938022530022239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051204 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A248344.P18150938022530022239

/-!
# A248345: Signed version of A094953.

The programs for A248345, the canonical program `A248345.P487880727656073056` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248345 has offset 0).

The definition of A248345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248345.P487880727656073056

`A128176(n+1)*A140756(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A248345

/-- `A128176(n+1)*A140756(n+1)` -/
def P487880727656073056.Spec : Prop :=
  ∀ n, P487880727656073056.a n = A248345 n

theorem P487880727656073056.correct : P487880727656073056.Spec := by
  intro n
  simp only [A248345]

end A248345

/-! ## A248345.P9287361780454663976

`A002260(n+1)*A128176(n+1)*A097807(n)`
-/

namespace A248345.P9287361780454663976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128176 (n + 1) * A097807 n

end

end A248345.P9287361780454663976

namespace A248345

/-- `A002260(n+1)*A128176(n+1)*A097807(n)` -/
def P9287361780454663976.Spec : Prop :=
  ∀ n, P9287361780454663976.a n = A248345 n

end A248345

/-! ## A248345.P208339651351630540

`A035317(A061579(n))*A140756(n+1)`
-/

namespace A248345.P208339651351630540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A061579 n).toNat * A140756 (n + 1)

end

end A248345.P208339651351630540

namespace A248345

/-- `A035317(A061579(n))*A140756(n+1)` -/
def P208339651351630540.Spec : Prop :=
  ∀ n, P208339651351630540.a n = A248345 n

end A248345

/-! ## A248345.P1527618650322698362

`A059260(comp[∑[n]])*A140756(n+1)`
-/

namespace A248345.P1527618650322698362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A140756 (n + 1)

end

end A248345.P1527618650322698362

namespace A248345

/-- `A059260(comp[∑[n]])*A140756(n+1)` -/
def P1527618650322698362.Spec : Prop :=
  ∀ n, P1527618650322698362.a n = A248345 n

end A248345

/-! ## A248345.P17925769459058770278

`A002260(n+1)*A239473(A014132(n+1))`
-/

namespace A248345.P17925769459058770278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A239473 (A014132 (n + 1)).toNat

end

end A248345.P17925769459058770278

namespace A248345

/-- `A002260(n+1)*A239473(A014132(n+1))` -/
def P17925769459058770278.Spec : Prop :=
  ∀ n, P17925769459058770278.a n = A248345 n

end A248345

/-! ## A248345.P11090041370875309694

`(and(2, comp[∑[n]]+n)-1)*A094953(n+2)`
-/

namespace A248345.P11090041370875309694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A094953 (n + 2)

end

end A248345.P11090041370875309694

namespace A248345

/-- `(and(2, comp[∑[n]]+n)-1)*A094953(n+2)` -/
def P11090041370875309694.Spec : Prop :=
  ∀ n, P11090041370875309694.a n = A248345 n

end A248345

/-! ## A248345.P4727912509647469202

`A094953(n+2)*A097807(n)`
-/

namespace A248345.P4727912509647469202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) * A097807 n

end

end A248345.P4727912509647469202

namespace A248345

/-- `A094953(n+2)*A097807(n)` -/
def P4727912509647469202.Spec : Prop :=
  ∀ n, P4727912509647469202.a n = A248345 n

end A248345

/-! ## A248345.P14922864458430075577

`A248810(n)%2*A094953(n+2)`
-/

namespace A248345.P14922864458430075577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248810 n) 2 * A094953 (n + 2)

end

end A248345.P14922864458430075577

namespace A248345

/-- `A248810(n)%2*A094953(n+2)` -/
def P14922864458430075577.Spec : Prop :=
  ∀ n, P14922864458430075577.a n = A248345 n

end A248345

/-! ## A248345.P8531803843496981159

`A033999(A025581(n))*A094953(n+2)`
-/

namespace A248345.P8531803843496981159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A094953 (n + 2)

end

end A248345.P8531803843496981159

namespace A248345

/-- `A033999(A025581(n))*A094953(n+2)` -/
def P8531803843496981159.Spec : Prop :=
  ∀ n, P8531803843496981159.a n = A248345 n

end A248345

/-! ## A248345.P4150526632888362522

`A033999(A067731(n))*A094953(n+2)`
-/

namespace A248345.P4150526632888362522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A067731 n).toNat * A094953 (n + 2)

end

end A248345.P4150526632888362522

namespace A248345

/-- `A033999(A067731(n))*A094953(n+2)` -/
def P4150526632888362522.Spec : Prop :=
  ∀ n, P4150526632888362522.a n = A248345 n

end A248345

/-!
# A248346: Primes of the form 2^x - y^2, with y^2 < 2^x.

The programs for A248346, there is no canonical definition to state claims against.
-/

/-! ## A248346.P18313159763157030712

`p?[A051213(n+1)]`
-/

namespace A248346.P18313159763157030712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248346.P18313159763157030712

/-! ## A248346.P12510315187936800330

`record[A006530(A051213(n+3))]`
-/

namespace A248346.P12510315187936800330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051213 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248346.P12510315187936800330

/-! ## A248346.P15268647940717716876

`filter[A051213(n+1), A358771(#)]`
-/

namespace A248346.P15268647940717716876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A248346.P15268647940717716876

/-! ## A248346.P17531993595108454146

`filter[A051213(n+2), A010051(#)]`
-/

namespace A248346.P17531993595108454146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051213 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A248346.P17531993595108454146

/-! ## A248346.P16121073247337213005

`filter[A051213(n+2), A353499(#)]`
-/

namespace A248346.P16121073247337213005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051213 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A248346.P16121073247337213005

/-!
# A248347: a(n) = floor(1/(Pi - 2^(n+1)*sin(Pi/2^(n+1)))).

The programs for A248347, there is no canonical definition to state claims against.
-/

/-! ## A248347.P2242368535628170581

`A248358(2^(n+2))`
-/

namespace A248347.P2242368535628170581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248358 (2 ^ (n + 2))

end

end A248347.P2242368535628170581

/-! ## A248347.P10220978314417713213

`record[A248358(A048679(n+3))]`
-/

namespace A248347.P10220978314417713213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248358 (A048679 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248347.P10220978314417713213

/-! ## A248347.P17220703352432013339

`record[A248358(A048675(n+5))]`
-/

namespace A248347.P17220703352432013339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248358 (A048675 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248347.P17220703352432013339

/-! ## A248347.P12365155687113959824

`record[A248358(A088837(n+1)+1)]`
-/

namespace A248347.P12365155687113959824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248358 (A088837 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248347.P12365155687113959824

/-! ## A248347.P10625272087195895032

`A248358(A000079(n+2))%A103773(n+1)`
-/

namespace A248347.P10625272087195895032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248358 (A000079 (n + 2)).toNat) (A103773 (n + 1))

end

end A248347.P10625272087195895032

/-!
# A248348: a(n) = number of polynomials a_k*x^k + ... + a_1*x + a_0 with k > 0, integer coefficients, only distinct integer roots, and a_0 = p^n (p is a prime).

The programs for A248348, there is no canonical definition to state claims against.
-/

/-! ## A248348.P10112957538798867812

`∑[2*A192096(n)]-1`
-/

namespace A248348.P10112957538798867812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248348.P10112957538798867812

/-! ## A248348.P8096702745178180299

`∑[4*A022567(n)]-1`
-/

namespace A248348.P8096702745178180299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248348.P8096702745178180299

/-! ## A248348.P16927797982105825711

`∑[record[2*A112166(n+1)]]-1`
-/

namespace A248348.P16927797982105825711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248348.P16927797982105825711

/-! ## A248348.P18232526056433098343

`A153881(n+2)+∑[4*A022567(n)]`
-/

namespace A248348.P18232526056433098343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248348.P18232526056433098343

/-! ## A248348.P9272912524905592075

`A118830(2*n+1)+∑[4*A022567(n)]`
-/

namespace A248348.P9272912524905592075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248348.P9272912524905592075

/-! ## A248348.P11905827615585884143

`A009001(A016825(n))+∑[4*A022567(n)]`
-/

namespace A248348.P11905827615585884143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A016825 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248348.P11905827615585884143

/-!
# A248351: Numbers k such that 10^k + 987654321 is prime.

The programs for A248351, there is no canonical definition to state claims against.
-/

/-! ## A248351.P13584077501538701728

`A001462(A285633(3*n+4)+A271269(n+1))`
-/

namespace A248351.P13584077501538701728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A285633 (3 * n + 4) + A271269 (n + 1)).toNat

end

end A248351.P13584077501538701728

/-! ## A248351.P4388776490630725092

`A001924(n+3)-A257347(A117409(3*n+4))`
-/

namespace A248351.P4388776490630725092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 3) - A257347 (A117409 (3 * n + 4)).toNat

end

end A248351.P4388776490630725092

/-!
# A248353: Kaprekar numbers, allowing powers of 10: numbers k such that k = q + r and k^2 = q*10^m + r, for some m >= 1, q >= 0, and 0 <= r < 10^m.

The programs for A248353, there is no canonical definition to state claims against.
-/

/-! ## A248353.P14705125435154294603

`sqrt(A102766(n+1))`
-/

namespace A248353.P14705125435154294603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102766 (n + 1) : ℝ)

end

end A248353.P14705125435154294603

/-! ## A248353.P8206256515500835086

`root(A102766(n+1), A020639(2*(n+1)))`
-/

namespace A248353.P8206256515500835086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A102766 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A248353.P8206256515500835086

/-!
# A248355: Least k such that Pi - k*sin(Pi/k) < 1/(2n).

The programs for A248355, there is no canonical definition to state claims against.
-/

/-! ## A248355.P15823705777965452594

`round(sqrt(A172334(2*n+3)+A037273(n+1)))`
-/

namespace A248355.P15823705777965452594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A172334 (2 * n + 3) + A037273 (n + 1) : ℝ))

end

end A248355.P15823705777965452594

/-! ## A248355.P10054600101443082431

`A101776(A168252(2*(n+2))+n)`
-/

namespace A248355.P10054600101443082431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A168252 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A248355.P10054600101443082431

/-! ## A248355.P16534261353003935148

`A000267(A029905(n)+A000267(2*(n+2)))`
-/

namespace A248355.P16534261353003935148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A029905 n + A000267 (2 * (n + 2))).toNat

end

end A248355.P16534261353003935148

/-! ## A248355.P10170210334715256047

`A029837(A325866(n+1))+4`
-/

namespace A248355.P10170210334715256047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A325866 (n + 1)).toNat + 4

end

end A248355.P10170210334715256047

/-! ## A248355.P11690601349523380331

`A309407(A247986(n+2))`
-/

namespace A248355.P11690601349523380331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309407 (A247986 (n + 2)).toNat

end

end A248355.P11690601349523380331

/-!
# A248356: Numbers k such that A248355(k+1) = A248355(k).

The programs for A248356, the canonical program `A248356.P367414254056679440` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248356 has offset 1).

The definition of A248356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248356.P367414254056679440

`comp[floor(A248358(n+1)/2)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248356

/-- `comp[floor(A248358(n+1)/2)]` -/
def P367414254056679440.Spec : Prop :=
  ∀ n, (P367414254056679440.a n : ℤ) = A248356 (n + 1)

theorem P367414254056679440.correct : P367414254056679440.Spec := by
  intro n
  simp only [A248356, Nat.add_sub_cancel]

end A248356

/-! ## A248356.P14407206387137432145

`lt[Δ[A248355(n+2)], 1]+2`
-/

namespace A248356.P14407206387137432145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248355 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A248356.P14407206387137432145

namespace A248356

/-- `lt[Δ[A248355(n+2)], 1]+2` -/
def P14407206387137432145.Spec : Prop :=
  ∀ n, (P14407206387137432145.a n : ℤ) = A248356 (n + 1)

end A248356

/-! ## A248356.P11318734424986721704

`lt[char[A248357(n+1)], n/A000041(n)]`
-/

namespace A248356.P11318734424986721704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248357 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000041 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A248356.P11318734424986721704

namespace A248356

/-- `lt[char[A248357(n+1)], n/A000041(n)]` -/
def P11318734424986721704.Spec : Prop :=
  ∀ n, (P11318734424986721704.a n : ℤ) = A248356 (n + 1)

end A248356

/-! ## A248356.P12299564262153043481

`eq[char[A248357(n+1)], A129186(3*n)]`
-/

namespace A248356.P12299564262153043481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248357 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248356.P12299564262153043481

namespace A248356

/-- `eq[char[A248357(n+1)], A129186(3*n)]` -/
def P12299564262153043481.Spec : Prop :=
  ∀ n, (P12299564262153043481.a n : ℤ) = A248356 (n + 1)

end A248356

/-! ## A248356.P10372433287406160937

`lt[char[A248357(n+1)]*A001629(n)+2, n+1]`
-/

namespace A248356.P10372433287406160937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248357 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001629 n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A248356.P10372433287406160937

namespace A248356

/-- `lt[char[A248357(n+1)]*A001629(n)+2, n+1]` -/
def P10372433287406160937.Spec : Prop :=
  ∀ n, (P10372433287406160937.a n : ℤ) = A248356 (n + 1)

end A248356

/-!
# A248357: Numbers k such that A248355(k+1) = A248355(k) + 1.

The programs for A248357, the canonical program `A248357.P6477843238657653900` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248357 has offset 1).

The definition of A248357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248357.P6477843238657653900

`floor(A248358(n+4)/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248357

/-- `floor(A248358(n+4)/2)` -/
def P6477843238657653900.Spec : Prop :=
  ∀ n, P6477843238657653900.a n = A248357 (n + 1)

theorem P6477843238657653900.correct : P6477843238657653900.Spec := by
  intro n
  simp only [A248357, Nat.add_sub_cancel]

end A248357

/-! ## A248357.P9251264222547375576

`record[A123108(A248358(n+1))]`
-/

namespace A248357.P9251264222547375576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A248358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248357.P9251264222547375576

namespace A248357

/-- `record[A123108(A248358(n+1))]` -/
def P9251264222547375576.Spec : Prop :=
  ∀ n, P9251264222547375576.a n = A248357 (n + 1)

end A248357

/-! ## A248357.P12584394398838822816

`eq[char[A248356(n+1)], A055667(3*(n+1))]`
-/

namespace A248357.P12584394398838822816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248357.P12584394398838822816

namespace A248357

/-- `eq[char[A248356(n+1)], A055667(3*(n+1))]` -/
def P12584394398838822816.Spec : Prop :=
  ∀ n, (P12584394398838822816.a n : ℤ) = A248357 (n + 1)

end A248357

/-! ## A248357.P6657919077972564168

`eq[char[A248356(n+1)], A019590(3*n+2)]`
-/

namespace A248357.P6657919077972564168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248357.P6657919077972564168

namespace A248357

/-- `eq[char[A248356(n+1)], A019590(3*n+2)]` -/
def P6657919077972564168.Spec : Prop :=
  ∀ n, (P6657919077972564168.a n : ℤ) = A248357 (n + 1)

end A248357

/-!
# A248358: Floor(1/(Pi - n*sin(Pi/n))).

The programs for A248358, the canonical program `A248358.P8725447531409098879` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248358 has offset 1).

The definition of A248358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1/(π-(n+1)*sin(π/(n+1))))` (program `A248358.P8725447531409098879`, by `A248358.P8725447531409098879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248358.P8725447531409098879

`floor(1/(π-(n+1)*sin(π/(n+1))))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248358

/-- `floor(1/(π-(n+1)*sin(π/(n+1))))` -/
def P8725447531409098879.Spec : Prop :=
  ∀ n, P8725447531409098879.a n = A248358 (n + 1)

theorem P8725447531409098879.correct : P8725447531409098879.Spec := by
  intro n
  simp only [A248358, Nat.add_sub_cancel]

end A248358

/-! ## A248358.P16967694046483411381

`A247064(A005897(n+1))%A005897(n+1)`
-/

namespace A248358.P16967694046483411381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247064 (A005897 (n + 1)).toNat) (A005897 (n + 1))

end

end A248358.P16967694046483411381

namespace A248358

/-- `A247064(A005897(n+1))%A005897(n+1)` -/
def P16967694046483411381.Spec : Prop :=
  ∀ n, P16967694046483411381.a n = A248358 (n + 1)

end A248358

/-! ## A248358.P11327621912347269715

`ceil(sqrt(A002264(∑[floor(n^3/2)])))`
-/

namespace A248358.P11327621912347269715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 3 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ)⌉

end

end A248358.P11327621912347269715

namespace A248358

/-- `ceil(sqrt(A002264(∑[floor(n^3/2)])))` -/
def P11327621912347269715.Spec : Prop :=
  ∀ n, P11327621912347269715.a n = A248358 (n + 1)

end A248358

/-! ## A248358.P15317980501793654115

`A003002(A320224(2*n+1))-1`
-/

namespace A248358.P15317980501793654115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A320224 (2 * n + 1)).toNat - 1

end

end A248358.P15317980501793654115

namespace A248358

/-- `A003002(A320224(2*n+1))-1` -/
def P15317980501793654115.Spec : Prop :=
  ∀ n, P15317980501793654115.a n = A248358 (n + 1)

end A248358

/-! ## A248358.P3431377867123556278

`floor((A054404(A182778((n+1)²))+1)/9)`
-/

namespace A248358.P3431377867123556278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054404 (A182778 ((n + 1) ^ 2)).toNat + 1 : ℚ) / 9⌋

end

end A248358.P3431377867123556278

namespace A248358

/-- `floor((A054404(A182778((n+1)²))+1)/9)` -/
def P3431377867123556278.Spec : Prop :=
  ∀ n, P3431377867123556278.a n = A248358 (n + 1)

end A248358

/-!
# A248359: Least number k such that cos(Pi/k) + 1/(k*n) > 1.

The programs for A248359, there is no canonical definition to state claims against.
-/

/-! ## A248359.P18298986590584590517

`A127450(2*(n+1))+Δ[A110654(A266448(2*n+1))]`
-/

namespace A248359.P18298986590584590517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A266448 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127450 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A248359.P18298986590584590517

/-! ## A248359.P13895321035697300748

`A329509(A292679(n+1))+A224995(2*n+1)`
-/

namespace A248359.P13895321035697300748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 (A292679 (n + 1)).toNat + A224995 (2 * n + 1)

end

end A248359.P13895321035697300748

/-! ## A248359.P18098251368766984077

`A195181(A008620(n))+A038123(n+1)`
-/

namespace A248359.P18098251368766984077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195181 (A008620 n).toNat + A038123 (n + 1)

end

end A248359.P18098251368766984077

/-! ## A248359.P11735053633015451889

`Δ[A109613(A003215(n))]-A046100(n+1)`
-/

namespace A248359.P11735053633015451889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A003215 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046100 (n + 1)

end

end A248359.P11735053633015451889

/-! ## A248359.P2025998406860988875

`2*(n+1)+A061347(A069099(n+1))+A054386(2*(n+1))`
-/

namespace A248359.P2025998406860988875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (A061347 (A069099 (n + 1)).toNat + A054386 (2 * (n + 1)))

end

end A248359.P2025998406860988875

/-!
# A248360: a(n) = floor( 1/(1 - cos(Pi/n)) ).

The programs for A248360, the canonical program `A248360.P14879573604541654222` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248360 has offset 1).

The definition of A248360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1/(1-cos(π/(n+1))))` (program `A248360.P14879573604541654222`, by `A248360.P14879573604541654222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248360.P14879573604541654222

`floor(1/(1-cos(π/(n+1))))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248360

/-- `floor(1/(1-cos(π/(n+1))))` -/
def P14879573604541654222.Spec : Prop :=
  ∀ n, P14879573604541654222.a n = A248360 (n + 1)

theorem P14879573604541654222.correct : P14879573604541654222.Spec := by
  intro n
  simp only [A248360, Nat.add_sub_cancel]

end A248360

/-! ## A248360.P8123054116800201392

`floor(A331903(record[A141310(n)])/2)`
-/

namespace A248360.P8123054116800201392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋

end

end A248360.P8123054116800201392

namespace A248360

/-- `floor(A331903(record[A141310(n)])/2)` -/
def P8123054116800201392.Spec : Prop :=
  ∀ n, P8123054116800201392.a n = A248360 (n + 1)

end A248360

/-! ## A248360.P5346048509977299633

`A004526(A331903(record[A141310(n)]))`
-/

namespace A248360.P5346048509977299633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A248360.P5346048509977299633

namespace A248360

/-- `A004526(A331903(record[A141310(n)]))` -/
def P5346048509977299633.Spec : Prop :=
  ∀ n, P5346048509977299633.a n = A248360 (n + 1)

end A248360

/-! ## A248360.P15419038881952688163

`round(log(A180998(n+2)))`
-/

namespace A248360.P15419038881952688163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A180998 (n + 2) : ℝ))

end

end A248360.P15419038881952688163

namespace A248360

/-- `round(log(A180998(n+2)))` -/
def P15419038881952688163.Spec : Prop :=
  ∀ n, P15419038881952688163.a n = A248360 (n + 1)

end A248360

/-! ## A248360.P13633190236811397340

`A002264(A022784(n+1)%A055036(n+1))`
-/

namespace A248360.P13633190236811397340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A022784 (n + 1)) (A055036 (n + 1))).toNat

end

end A248360.P13633190236811397340

namespace A248360

/-- `A002264(A022784(n+1)%A055036(n+1))` -/
def P13633190236811397340.Spec : Prop :=
  ∀ n, P13633190236811397340.a n = A248360 (n + 1)

end A248360

/-!
# A248365: 4n concatenated with itself.

The programs for A248365, the canonical program `A248365.P6680227823295661139` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248365 has offset 1).

The definition of A248365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248365.P6680227823295661139

`A001704(4*(n+1))-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248365

/-- `A001704(4*(n+1))-1` -/
def P6680227823295661139.Spec : Prop :=
  ∀ n, P6680227823295661139.a n = A248365 (n + 1)

theorem P6680227823295661139.correct : P6680227823295661139.Spec := by
  intro n
  simp only [A248365, Nat.add_sub_cancel]

end A248365

/-! ## A248365.P8271284093259595479

`A127421(4*(n+1)+1)-1`
-/

namespace A248365.P8271284093259595479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (4 * (n + 1) + 1) - 1

end

end A248365.P8271284093259595479

namespace A248365

/-- `A127421(4*(n+1)+1)-1` -/
def P8271284093259595479.Spec : Prop :=
  ∀ n, P8271284093259595479.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P8889541909610638705

`A248422(2*(n+1))`
-/

namespace A248365.P8889541909610638705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248422 (2 * (n + 1))

end

end A248365.P8889541909610638705

namespace A248365

/-- `A248422(2*(n+1))` -/
def P8889541909610638705.Spec : Prop :=
  ∀ n, P8889541909610638705.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P18104224564946265558

`2*(A019550(2*(n+1))-A005843(n+1))`
-/

namespace A248365.P18104224564946265558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A019550 (2 * (n + 1)) - A005843 (n + 1))

end

end A248365.P18104224564946265558

namespace A248365

/-- `2*(A019550(2*(n+1))-A005843(n+1))` -/
def P18104224564946265558.Spec : Prop :=
  ∀ n, P18104224564946265558.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P9609892714811656504

`2*(A309809(2*(n+1))-A005408(n+1))`
-/

namespace A248365.P9609892714811656504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A309809 (2 * (n + 1)) - A005408 (n + 1))

end

end A248365.P9609892714811656504

namespace A248365

/-- `2*(A309809(2*(n+1))-A005408(n+1))` -/
def P9609892714811656504.Spec : Prop :=
  ∀ n, P9609892714811656504.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P233982650086670008

`A030656(2*(n+1))-1`
-/

namespace A248365.P233982650086670008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 (2 * (n + 1)) - 1

end

end A248365.P233982650086670008

namespace A248365

/-- `A030656(2*(n+1))-1` -/
def P233982650086670008.Spec : Prop :=
  ∀ n, P233982650086670008.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P8859961632484543801

`xor(A000034(2*n), A030656(2*(n+1)))`
-/

namespace A248365.P8859961632484543801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A030656 (2 * (n + 1)))

end

end A248365.P8859961632484543801

namespace A248365

/-- `xor(A000034(2*n), A030656(2*(n+1)))` -/
def P8859961632484543801.Spec : Prop :=
  ∀ n, P8859961632484543801.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P2138481696246064390

`A033999(2*n+1)+A030656(2*(n+1))`
-/

namespace A248365.P2138481696246064390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A030656 (2 * (n + 1))

end

end A248365.P2138481696246064390

namespace A248365

/-- `A033999(2*n+1)+A030656(2*(n+1))` -/
def P2138481696246064390.Spec : Prop :=
  ∀ n, P2138481696246064390.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P15626475059265746512

`xor(A001511(2*n+1), A030656(2*(n+1)))`
-/

namespace A248365.P15626475059265746512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001511 (2 * n + 1)) (A030656 (2 * (n + 1)))

end

end A248365.P15626475059265746512

namespace A248365

/-- `xor(A001511(2*n+1), A030656(2*(n+1)))` -/
def P15626475059265746512.Spec : Prop :=
  ∀ n, P15626475059265746512.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P2663164509634845371

`xor(A000120(A006519(n+1)), A030656(2*(n+1)))`
-/

namespace A248365.P2663164509634845371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 (A006519 (n + 1)).toNat) (A030656 (2 * (n + 1)))

end

end A248365.P2663164509634845371

namespace A248365

/-- `xor(A000120(A006519(n+1)), A030656(2*(n+1)))` -/
def P2663164509634845371.Spec : Prop :=
  ∀ n, P2663164509634845371.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P15800899244236293871

`xor(A001222(A079152(n+1)), A030656(2*(n+1)))`
-/

namespace A248365.P15800899244236293871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A079152 (n + 1)).toNat) (A030656 (2 * (n + 1)))

end

end A248365.P15800899244236293871

namespace A248365

/-- `xor(A001222(A079152(n+1)), A030656(2*(n+1)))` -/
def P15800899244236293871.Spec : Prop :=
  ∀ n, P15800899244236293871.a n = A248365 (n + 1)

end A248365

/-! ## A248365.P11445438110140729087

`A020338(4*(n+1))`
-/

namespace A248365.P11445438110140729087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (4 * (n + 1))

end

end A248365.P11445438110140729087

namespace A248365

/-- `A020338(4*(n+1))` -/
def P11445438110140729087.Spec : Prop :=
  ∀ n, P11445438110140729087.a n = A248365 (n + 1)

end A248365

/-!
# A248366: Least positive integer m such that prime(m+n) - prime(m) divides m + n.

The programs for A248366, there is no canonical definition to state claims against.
-/

/-! ## A248366.P11714737632224349679

`A185150((n+2)^n)-n`
-/

namespace A248366.P11714737632224349679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185150 ((n + 2) ^ n) - (n : ℤ)

end

end A248366.P11714737632224349679

/-!
# A248367: Initial members of prime quadruples (n, n+2, n+36, n+38).

The programs for A248367, the canonical program `A248367.P14823438803111161390` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248367 has offset 1).

The definition of A248367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248367.P14823438803111161390

`∩[A156104(n+1)-2, A156104(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A248367

/-- `∩[A156104(n+1)-2, A156104(n+1)]` -/
def P14823438803111161390.Spec : Prop :=
  ∀ n, (P14823438803111161390.a n : ℤ) = A248367 (n + 1)

theorem P14823438803111161390.correct : P14823438803111161390.Spec := by
  intro n
  simp only [A248367, Nat.add_sub_cancel]

end A248367

/-! ## A248367.P14257126947645509826

`p?[Δ[A028242(A156104(n+1))²]]`
-/

namespace A248367.P14257126947645509826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A156104 (n + 1)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248367.P14257126947645509826

namespace A248367

/-- `p?[Δ[A028242(A156104(n+1))²]]` -/
def P14257126947645509826.Spec : Prop :=
  ∀ n, P14257126947645509826.a n = A248367 (n + 1)

end A248367

/-! ## A248367.P6208618899017296967

`∩[A001359(n+1), A023478(A001359(n+1))]`
-/

namespace A248367.P6208618899017296967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A001359 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248367.P6208618899017296967

namespace A248367

/-- `∩[A001359(n+1), A023478(A001359(n+1))]` -/
def P6208618899017296967.Spec : Prop :=
  ∀ n, (P6208618899017296967.a n : ℤ) = A248367 (n + 1)

end A248367

/-!
# A248368: Primes p such that 52*p + 1 is prime.

The programs for A248368, the canonical program `A248368.P16657822915587106588` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248368 has offset 1).

The definition of A248368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248368.P16657822915587106588

`p?[A248221(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248368

/-- `p?[A248221(n+1)]` -/
def P16657822915587106588.Spec : Prop :=
  ∀ n, P16657822915587106588.a n = A248368 (n + 1)

theorem P16657822915587106588.correct : P16657822915587106588.Spec := by
  intro n
  simp only [A248368, Nat.add_sub_cancel]

end A248368

/-! ## A248368.P10510753235609148623

`p?[record[A248221(A324347(n))]]`
-/

namespace A248368.P10510753235609148623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248368.P10510753235609148623

namespace A248368

/-- `p?[record[A248221(A324347(n))]]` -/
def P10510753235609148623.Spec : Prop :=
  ∀ n, P10510753235609148623.a n = A248368 (n + 1)

end A248368

/-! ## A248368.P8470200057897790405

`record[A020639(A248221(n+2))]`
-/

namespace A248368.P8470200057897790405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248221 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248368.P8470200057897790405

namespace A248368

/-- `record[A020639(A248221(n+2))]` -/
def P8470200057897790405.Spec : Prop :=
  ∀ n, P8470200057897790405.a n = A248368 (n + 1)

end A248368

/-! ## A248368.P5358724168655941349

`filter[A248221(n+1), A010051(#)]`
-/

namespace A248368.P5358724168655941349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A248368.P5358724168655941349

namespace A248368

/-- `filter[A248221(n+1), A010051(#)]` -/
def P5358724168655941349.Spec : Prop :=
  ∀ n, P5358724168655941349.a n = A248368 (n + 1)

end A248368

/-! ## A248368.P16800894852987910154

`∩[A000040(n+1), A248221(n+1)]`
-/

namespace A248368.P16800894852987910154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P16800894852987910154

namespace A248368

/-- `∩[A000040(n+1), A248221(n+1)]` -/
def P16800894852987910154.Spec : Prop :=
  ∀ n, (P16800894852987910154.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P7838979467042350270

`∩[A004139(n+1), A248221(n+1)]`
-/

namespace A248368.P7838979467042350270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P7838979467042350270

namespace A248368

/-- `∩[A004139(n+1), A248221(n+1)]` -/
def P7838979467042350270.Spec : Prop :=
  ∀ n, (P7838979467042350270.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P16306485822630596173

`∩[A007645(n+1), A248221(n+1)]`
-/

namespace A248368.P16306485822630596173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P16306485822630596173

namespace A248368

/-- `∩[A007645(n+1), A248221(n+1)]` -/
def P16306485822630596173.Spec : Prop :=
  ∀ n, (P16306485822630596173.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P17358534500518012789

`∩[A040116(n+1), A248221(n+1)]`
-/

namespace A248368.P17358534500518012789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P17358534500518012789

namespace A248368

/-- `∩[A040116(n+1), A248221(n+1)]` -/
def P17358534500518012789.Spec : Prop :=
  ∀ n, (P17358534500518012789.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P1813211543381460439

`∩[A045319(n+1), A248221(n+1)]`
-/

namespace A248368.P1813211543381460439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P1813211543381460439

namespace A248368

/-- `∩[A045319(n+1), A248221(n+1)]` -/
def P1813211543381460439.Spec : Prop :=
  ∀ n, (P1813211543381460439.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P694480239489678549

`∩[A045331(n+1), A248221(n+1)]`
-/

namespace A248368.P694480239489678549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P694480239489678549

namespace A248368

/-- `∩[A045331(n+1), A248221(n+1)]` -/
def P694480239489678549.Spec : Prop :=
  ∀ n, (P694480239489678549.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P14884373977096729160

`∩[A045393(n+1), A248221(n+1)]`
-/

namespace A248368.P14884373977096729160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P14884373977096729160

namespace A248368

/-- `∩[A045393(n+1), A248221(n+1)]` -/
def P14884373977096729160.Spec : Prop :=
  ∀ n, (P14884373977096729160.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P9546809897604798103

`∩[A045402(n+1), A248221(n+1)]`
-/

namespace A248368.P9546809897604798103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P9546809897604798103

namespace A248368

/-- `∩[A045402(n+1), A248221(n+1)]` -/
def P9546809897604798103.Spec : Prop :=
  ∀ n, (P9546809897604798103.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P70035210190100946

`∩[A045405(n+1), A248221(n+1)]`
-/

namespace A248368.P70035210190100946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P70035210190100946

namespace A248368

/-- `∩[A045405(n+1), A248221(n+1)]` -/
def P70035210190100946.Spec : Prop :=
  ∀ n, (P70035210190100946.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P8602447015528648279

`∩[A045428(n+1), A248221(n+1)]`
-/

namespace A248368.P8602447015528648279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P8602447015528648279

namespace A248368

/-- `∩[A045428(n+1), A248221(n+1)]` -/
def P8602447015528648279.Spec : Prop :=
  ∀ n, (P8602447015528648279.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P10681166684196405857

`∩[A049585(n+1), A248221(n+1)]`
-/

namespace A248368.P10681166684196405857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P10681166684196405857

namespace A248368

/-- `∩[A049585(n+1), A248221(n+1)]` -/
def P10681166684196405857.Spec : Prop :=
  ∀ n, (P10681166684196405857.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P5845015857124725554

`∩[A059456(n+1), A248221(n+1)]`
-/

namespace A248368.P5845015857124725554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P5845015857124725554

namespace A248368

/-- `∩[A059456(n+1), A248221(n+1)]` -/
def P5845015857124725554.Spec : Prop :=
  ∀ n, (P5845015857124725554.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P11093854323533880895

`∩[A065091(n+1), A248221(n+1)]`
-/

namespace A248368.P11093854323533880895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P11093854323533880895

namespace A248368

/-- `∩[A065091(n+1), A248221(n+1)]` -/
def P11093854323533880895.Spec : Prop :=
  ∀ n, (P11093854323533880895.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P2469042317814611034

`∩[A070303(n+1), A248221(n+1)]`
-/

namespace A248368.P2469042317814611034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P2469042317814611034

namespace A248368

/-- `∩[A070303(n+1), A248221(n+1)]` -/
def P2469042317814611034.Spec : Prop :=
  ∀ n, (P2469042317814611034.a n : ℤ) = A248368 (n + 1)

end A248368

/-! ## A248368.P17287124068205902069

`∩[A189710(n+1), A248221(n+1)]`
-/

namespace A248368.P17287124068205902069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248368.P17287124068205902069

namespace A248368

/-- `∩[A189710(n+1), A248221(n+1)]` -/
def P17287124068205902069.Spec : Prop :=
  ∀ n, (P17287124068205902069.a n : ℤ) = A248368 (n + 1)

end A248368

/-!
# A248370: a(n+1) is the smallest prime beyond a(n) such that a(n+1) modulo a(n) is (congruent to) a prime; start with a(0)=1.

The programs for A248370, there is no canonical definition to state claims against.
-/

/-! ## A248370.P9645061228665282364

`A204894(a(n-1))` with `a(0)=1`
-/

namespace A248370.P9645061228665282364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204894 (a (n - 1)).toNat

end

end A248370.P9645061228665282364

/-! ## A248370.P602687033660443201

`A204894(round(a(A023443(n))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A248370.P602687033660443201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204894 (a (A023443 n).toNat).toNat

end

end A248370.P602687033660443201

/-! ## A248370.P11097898016911563014

`A000040(A204892(a(n-1)))` with `a(0)=1`
-/

namespace A248370.P11097898016911563014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A204892 (a (n - 1)).toNat).toNat

end

end A248370.P11097898016911563014

/-! ## A248370.P18221563462420668108

`A008578(A204892(a(n-1))+1)` with `a(0)=1`
-/

namespace A248370.P18221563462420668108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008578 (A204892 (a (n - 1)).toNat + 1).toNat

end

end A248370.P18221563462420668108

/-! ## A248370.P16295837444052789035

`A204894(A006530(n*a((n+20)%21)))` with `a(0)=1`
-/

namespace A248370.P16295837444052789035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204894 (A006530 ((n : ℤ) * a ((n + 20) % 21)).toNat).toNat

end

end A248370.P16295837444052789035

/-!
# A248371: Number of primes in Breusch's interval [n; 9(n+3)/8].

The programs for A248371, there is no canonical definition to state claims against.
-/

/-! ## A248371.P10004750370716044447

`gcd(A080589(A251149(3*n+4)), A374587(2*(n+1)))`
-/

namespace A248371.P10004750370716044447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080589 (A251149 (3 * n + 4)).toNat) (A374587 (2 * (n + 1)))

end

end A248371.P10004750370716044447

/-!
# A248373: Partial sums of primes of form n^2 + (n+1)^2 + (n+2)^2 (A027864).

The programs for A248373, there is no canonical definition to state claims against.
-/

/-! ## A248373.P14769003171879135478

`∑[A027864(n+1)]`
-/

namespace A248373.P14769003171879135478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P14769003171879135478

/-! ## A248373.P14026175670891557547

`∑[record[A027864(A286378(n))]]`
-/

namespace A248373.P14026175670891557547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P14026175670891557547

/-! ## A248373.P2941088095707182919

`∑[record[A027864(A324347(n))]]`
-/

namespace A248373.P2941088095707182919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P2941088095707182919

/-! ## A248373.P8301213375961198701

`∑[record[A027864(A328399(n))]]`
-/

namespace A248373.P8301213375961198701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P8301213375961198701

/-! ## A248373.P3054923081728773915

`∑[A257163(n+2)]`
-/

namespace A248373.P3054923081728773915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257163 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P3054923081728773915

/-! ## A248373.P15573263503841918938

`∑[record[A027864(A133310(n))]]`
-/

namespace A248373.P15573263503841918938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027864 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P15573263503841918938

/-! ## A248373.P16698305722428982987

`∑[A056107(A027863(n+1)+1)+1]`
-/

namespace A248373.P16698305722428982987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 (A027863 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P16698305722428982987

/-! ## A248373.P1675498974002778498

`∑[p?[xor(6, 3*n²)]]`
-/

namespace A248373.P1675498974002778498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (3 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248373.P1675498974002778498

/-!
# A248374: The integer partition a(n) (compare A194602) has only the non-one addends n+1 and 2.

The programs for A248374, there is no canonical definition to state claims against.
-/

/-! ## A248374.P8091593444653052022

`A320689(n+3)+A000065(n)`
-/

namespace A248374.P8091593444653052022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320689 (n + 3) + A000065 n

end

end A248374.P8091593444653052022

/-! ## A248374.P13849606182283180690

`A194805(n+3)-Δ[A000070(n)]`
-/

namespace A248374.P13849606182283180690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 (n + 3) - (f1 (n + 1) - f1 n)

end

end A248374.P13849606182283180690

/-! ## A248374.P11922127443320977654

`A002865(n+2)+A000065(n+3)`
-/

namespace A248374.P11922127443320977654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2) + A000065 (n + 3)

end

end A248374.P11922127443320977654

/-! ## A248374.P17554781881528105306

`A027336(n+3)+A000065(n+2)`
-/

namespace A248374.P17554781881528105306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 3) + A000065 (n + 2)

end

end A248374.P17554781881528105306

/-! ## A248374.P11110908925564555154

`A083751(n+2)+A000041(n+3)`
-/

namespace A248374.P11110908925564555154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 2) + A000041 (n + 3)

end

end A248374.P11110908925564555154

/-!
# A248375: a(n) = floor(9*n/8).

The programs for A248375, the canonical program `A248375.P10131833126609079745` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248375 has offset 0).

The definition of A248375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9*n/8)` (program `A248375.P10131833126609079745`, by `A248375.P10131833126609079745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248375.P10131833126609079745

`floor(9*n/8)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248375

/-- `floor(9*n/8)` -/
def P10131833126609079745.Spec : Prop :=
  ∀ n, P10131833126609079745.a n = A248375 n

theorem P10131833126609079745.correct : P10131833126609079745.Spec := by
  intro n
  simp only [A248375]

end A248375

/-! ## A248375.P13582195870775101953

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=9`
-/

namespace A248375.P13582195870775101953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7, 9] fun n a =>
  a (n - 1) + a (n - 8) - a (n - 9)

end

end A248375.P13582195870775101953

namespace A248375

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P13582195870775101953.Spec : Prop :=
  ∀ n, P13582195870775101953.a n = A248375 n

end A248375

/-! ## A248375.P4728872482754585793

`A168183(n+1)-1`
-/

namespace A248375.P4728872482754585793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1) - 1

end

end A248375.P4728872482754585793

namespace A248375

/-- `A168183(n+1)-1` -/
def P4728872482754585793.Spec : Prop :=
  ∀ n, P4728872482754585793.a n = A248375 n

end A248375

/-! ## A248375.P15721472723174386117

`comp[lcm(9, n)-1]`
-/

namespace A248375.P15721472723174386117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P15721472723174386117

namespace A248375

/-- `comp[lcm(9, n)-1]` -/
def P15721472723174386117.Spec : Prop :=
  ∀ n, (P15721472723174386117.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P8043810075814925198

`comp[n-dr(n+1)]`
-/

namespace A248375.P8043810075814925198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P8043810075814925198

namespace A248375

/-- `comp[n-dr(n+1)]` -/
def P8043810075814925198.Spec : Prop :=
  ∀ n, (P8043810075814925198.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P9086010716670890511

`comp[n-dr(n)-1]`
-/

namespace A248375.P9086010716670890511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P9086010716670890511

namespace A248375

/-- `comp[n-dr(n)-1]` -/
def P9086010716670890511.Spec : Prop :=
  ∀ n, (P9086010716670890511.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P15039206802250421014

`comp[a(n-1)+9]` with `a(0)=8`
-/

namespace A248375.P15039206802250421014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A248375.P15039206802250421014

namespace A248375

/-- `comp[a(n-1)+9]` -/
def P15039206802250421014.Spec : Prop :=
  ∀ n, (P15039206802250421014.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P13851487180175008248

`comp[n-(n+1)%9]`
-/

namespace A248375.P13851487180175008248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 9 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P13851487180175008248

namespace A248375

/-- `comp[n-(n+1)%9]` -/
def P13851487180175008248.Spec : Prop :=
  ∀ n, (P13851487180175008248.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P2266793924281887231

`lt[n, n*dr(n)]-2`
-/

namespace A248375.P2266793924281887231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 2

end

end A248375.P2266793924281887231

namespace A248375

/-- `lt[n, n*dr(n)]-2` -/
def P2266793924281887231.Spec : Prop :=
  ∀ n, P2266793924281887231.a n = A248375 n

end A248375

/-! ## A248375.P2570807133875327607

`lt[cosh(cos(n)), dr(n+2)]`
-/

namespace A248375.P2570807133875327607
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.cos (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A248375.P2570807133875327607

namespace A248375

/-- `lt[cosh(cos(n)), dr(n+2)]` -/
def P2570807133875327607.Spec : Prop :=
  ∀ n, (P2570807133875327607.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P13229953854034758273

`lt[cosh(sin(n)), dr(n+2)]`
-/

namespace A248375.P13229953854034758273
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.sin (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A248375.P13229953854034758273

namespace A248375

/-- `lt[cosh(sin(n)), dr(n+2)]` -/
def P13229953854034758273.Spec : Prop :=
  ∀ n, (P13229953854034758273.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P18434977222886248119

`eq[0, n*val(n+1, 9)]`
-/

namespace A248375.P18434977222886248119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 1) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248375.P18434977222886248119

namespace A248375

/-- `eq[0, n*val(n+1, 9)]` -/
def P18434977222886248119.Spec : Prop :=
  ∀ n, (P18434977222886248119.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P2394166789469985887

`lt[n+1, dr(n+2)+n]`
-/

namespace A248375.P2394166789469985887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248375.P2394166789469985887

namespace A248375

/-- `lt[n+1, dr(n+2)+n]` -/
def P2394166789469985887.Spec : Prop :=
  ∀ n, (P2394166789469985887.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P15904349963174438596

`lt[2*n, (2*n)^dr(8*n)]`
-/

namespace A248375.P15904349963174438596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ SequenceMachineLib.digitalRoot (8 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248375.P15904349963174438596

namespace A248375

/-- `lt[2*n, (2*n)^dr(8*n)]` -/
def P15904349963174438596.Spec : Prop :=
  ∀ n, (P15904349963174438596.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P8954717799889750517

`n-floor((2-a(n-1)/3)/3)` with `a(0)=0`
-/

namespace A248375.P8954717799889750517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(2 - (a (n - 1) : ℚ) / 3) / 3⌋

end

end A248375.P8954717799889750517

namespace A248375

/-- `n-floor((2-a(n-1)/3)/3)` -/
def P8954717799889750517.Spec : Prop :=
  ∀ n, P8954717799889750517.a n = A248375 n

end A248375

/-! ## A248375.P16468587166663655896

`comp[A017257(n)]`
-/

namespace A248375.P16468587166663655896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P16468587166663655896

namespace A248375

/-- `comp[A017257(n)]` -/
def P16468587166663655896.Spec : Prop :=
  ∀ n, (P16468587166663655896.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P9457317509308216695

`comp[A168409(n+1)]`
-/

namespace A248375.P9457317509308216695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P9457317509308216695

namespace A248375

/-- `comp[A168409(n+1)]` -/
def P9457317509308216695.Spec : Prop :=
  ∀ n, (P9457317509308216695.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P14169835843813879783

`comp[A008591(n)-1]`
-/

namespace A248375.P14169835843813879783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P14169835843813879783

namespace A248375

/-- `comp[A008591(n)-1]` -/
def P14169835843813879783.Spec : Prop :=
  ∀ n, (P14169835843813879783.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P11411313054190713421

`comp[A017173(n)-2]`
-/

namespace A248375.P11411313054190713421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248375.P11411313054190713421

namespace A248375

/-- `comp[A017173(n)-2]` -/
def P11411313054190713421.Spec : Prop :=
  ∀ n, (P11411313054190713421.a n : ℤ) = A248375 n

end A248375

/-! ## A248375.P733710442075289079

`eq[0, A114099(n+1)]`
-/

namespace A248375.P733710442075289079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248375.P733710442075289079

namespace A248375

/-- `eq[0, A114099(n+1)]` -/
def P733710442075289079.Spec : Prop :=
  ∀ n, (P733710442075289079.a n : ℤ) = A248375 n

end A248375

/-!
# A248377: Number of compositions of 1 into parts 1/2^k with 0 <= k <= n.

The programs for A248377, there is no canonical definition to state claims against.
-/

/-! ## A248377.P14650902980054084806

`A023359(2^n)`
-/

namespace A248377.P14650902980054084806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 (2 ^ n)

end

end A248377.P14650902980054084806

/-! ## A248377.P15013800772848974905

`A100346(2^n)`
-/

namespace A248377.P15013800772848974905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 (2 ^ n)

end

end A248377.P15013800772848974905

/-! ## A248377.P14125892379615131698

`A284839(2^n)`
-/

namespace A248377.P14125892379615131698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284839 (2 ^ n)

end

end A248377.P14125892379615131698

/-! ## A248377.P6301588273747881697

`A284465(2^(n+1))`
-/

namespace A248377.P6301588273747881697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 (2 ^ (n + 1))

end

end A248377.P6301588273747881697

/-! ## A248377.P13355941007274131009

`A294138(2^n)+1`
-/

namespace A248377.P13355941007274131009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 (2 ^ n) + 1

end

end A248377.P13355941007274131009

/-!
# A248378: a(2n) = concatenation of n+1 with n+2, a(2n+1) = concatenation of n+2 with n+1.

The programs for A248378, the canonical program `A248378.P15567605782667338999` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248378 has offset 0).

The definition of A248378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248378.P15567605782667338999

`A066686(A247375(n+2))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A248378

/-- `A066686(A247375(n+2))` -/
def P15567605782667338999.Spec : Prop :=
  ∀ n, P15567605782667338999.a n = A248378 n

theorem P15567605782667338999.correct : P15567605782667338999.Spec := by
  intro n
  simp only [A248378]

end A248378

/-! ## A248378.P9591849686884572185

`A108965(A055645(n)+2)`
-/

namespace A248378.P9591849686884572185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108965 (A055645 n + 2).toNat

end

end A248378.P9591849686884572185

namespace A248378

/-- `A108965(A055645(n)+2)` -/
def P9591849686884572185.Spec : Prop :=
  ∀ n, P9591849686884572185.a n = A248378 n

end A248378

/-! ## A248378.P2299447855540605706

`A216455(A082927(n+2))`
-/

namespace A248378.P2299447855540605706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A082927 (n + 2)).toNat

end

end A248378.P2299447855540605706

namespace A248378

/-- `A216455(A082927(n+2))` -/
def P2299447855540605706.Spec : Prop :=
  ∀ n, P2299447855540605706.a n = A248378 n

end A248378

/-! ## A248378.P17889241019583659452

`A216455(A108965(n+2))`
-/

namespace A248378.P17889241019583659452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A108965 (n + 2)).toNat

end

end A248378.P17889241019583659452

namespace A248378

/-- `A216455(A108965(n+2))` -/
def P17889241019583659452.Spec : Prop :=
  ∀ n, P17889241019583659452.a n = A248378 n

end A248378

/-! ## A248378.P8114248163556408590

`A216455(A366958(n+2))`
-/

namespace A248378.P8114248163556408590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A366958 (n + 2)).toNat

end

end A248378.P8114248163556408590

namespace A248378

/-- `A216455(A366958(n+2))` -/
def P8114248163556408590.Spec : Prop :=
  ∀ n, P8114248163556408590.a n = A248378 n

end A248378

/-!
# A248379: Even terms in A247665 in order of appearance.

The programs for A248379, there is no canonical definition to state claims against.
-/

/-! ## A248379.P10117353676126805207

`A247665(∑[2^n])`
-/

namespace A248379.P10117353676126805207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248379.P10117353676126805207

/-! ## A248379.P4456741220506301672

`lcm(2, A247665(A126646(n)))`
-/

namespace A248379.P4456741220506301672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247665 (A126646 n).toNat)

end

end A248379.P4456741220506301672

/-! ## A248379.P2457317068411014041

`lcm(gcd(2, n+1), A247665(A000225(n+1)))`
-/

namespace A248379.P2457317068411014041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 (n + 1) : ℤ) (A247665 (A000225 (n + 1)).toNat)

end

end A248379.P2457317068411014041

/-! ## A248379.P12497424715121537578

`A247665(A126646(n))+A185284(n)`
-/

namespace A248379.P12497424715121537578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A126646 n).toNat + A185284 n

end

end A248379.P12497424715121537578

/-! ## A248379.P16724427670537619268

`gcd(A000038(n), A247665(A126646(n)))`
-/

namespace A248379.P16724427670537619268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247665 (A126646 n).toNat)

end

end A248379.P16724427670537619268

/-!
# A248381: Multiples of 3 in A247665 in order of appearance.

The programs for A248381, there is no canonical definition to state claims against.
-/

/-! ## A248381.P15483553069986948478

`filter[A248390(n+1), A079978(#)]`
-/

namespace A248381.P15483553069986948478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A248381.P15483553069986948478

/-! ## A248381.P4588904059134329554

`filter[A248390(n+1), A173857(#)]`
-/

namespace A248381.P4588904059134329554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A248381.P4588904059134329554

/-! ## A248381.P18021165723638460208

`filter[A248390(n+1), A329680(#)]`
-/

namespace A248381.P18021165723638460208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A248381.P18021165723638460208

/-!
# A248387: a(n) = index of n-th prime in A247665.

The programs for A248387, there is no canonical definition to state claims against.
-/

/-! ## A248387.P6267083276088503070

`comp[A248388(n+1)-1]+1`
-/

namespace A248387.P6267083276088503070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248388 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248387.P6267083276088503070

/-! ## A248387.P2762437226421322605

`lt[A000005(A247665(n+1)), 3]+1`
-/

namespace A248387.P2762437226421322605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247665 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A248387.P2762437226421322605

/-! ## A248387.P1499838857128921308

`comp[A023443(A248388(n+1))]+1`
-/

namespace A248387.P1499838857128921308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A248388 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248387.P1499838857128921308

/-! ## A248387.P8230478845385661054

`A248918(A027883(n+1))`
-/

namespace A248387.P8230478845385661054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248918 (A027883 (n + 1)).toNat

end

end A248387.P8230478845385661054

/-! ## A248387.P27372970246590402

`A248918(A024620(n+1)-1)`
-/

namespace A248387.P27372970246590402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248918 (A024620 (n + 1) - 1).toNat

end

end A248387.P27372970246590402

/-! ## A248387.P10343456229148855669

`A248918(eq[1, A192015(n+1)])`
-/

namespace A248387.P10343456229148855669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248387.P10343456229148855669

/-! ## A248387.P15903887169198447146

`A248918(eq[2, A086454(n+1)])`
-/

namespace A248387.P15903887169198447146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248387.P15903887169198447146

/-! ## A248387.P14503684872938711137

`A248918(eq[1, A001222(A000961(n+1))])`
-/

namespace A248387.P14503684872938711137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248387.P14503684872938711137

/-! ## A248387.P5711594752099457507

`A248918(eq[2, A000005(A000961(n+1))])`
-/

namespace A248387.P5711594752099457507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248387.P5711594752099457507

/-!
# A248388: Indices of composite terms in A247665.

The programs for A248388, there is no canonical definition to state claims against.
-/

/-! ## A248388.P5559953316529945647

`eq[char[A248387(n+1)], A000007(n)]`
-/

namespace A248388.P5559953316529945647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248388.P5559953316529945647

/-! ## A248388.P4495481063731164712

`eq[char[A248387(n+1)], A000038(n)]`
-/

namespace A248388.P4495481063731164712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248388.P4495481063731164712

/-! ## A248388.P18113425645647540487

`lt[2, A000005(A247665(n+1))]+1`
-/

namespace A248388.P18113425645647540487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A248388.P18113425645647540487

/-! ## A248388.P15274412322293927236

`eq[A153881(n+1)+1, char[A248387(n+1)]]`
-/

namespace A248388.P15274412322293927236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A248388.P15274412322293927236

/-! ## A248388.P14276883613958439230

`eq[char[A248387(n+1)], A010051(2*(n+1))]`
-/

namespace A248388.P14276883613958439230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248388.P14276883613958439230

/-! ## A248388.P6262499289484892335

`eq[char[A248387(n+1)], A285476(n)]`
-/

namespace A248388.P6262499289484892335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A248388.P6262499289484892335

/-!
# A248390: Composite terms in A247665 in order of appearance.

The programs for A248390, there is no canonical definition to state claims against.
-/

/-! ## A248390.P3786564781860365546

`A247665(A248388(n+1))`
-/

namespace A248390.P3786564781860365546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248388 (n + 1)).toNat

end

end A248390.P3786564781860365546

/-! ## A248390.P9071410262275128677

`A247665(eq[char[A248387(n+1)], A000007(n)])`
-/

namespace A248390.P9071410262275128677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A248390.P9071410262275128677

/-! ## A248390.P6550491504447460348

`A247665(eq[char[A248387(n+1)], A000038(n)])`
-/

namespace A248390.P6550491504447460348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A248390.P6550491504447460348

/-! ## A248390.P6053814011392822082

`A247665(eq[char[A248387(n+1)], A010051(2*(n+1))])`
-/

namespace A248390.P6053814011392822082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A248390.P6053814011392822082

/-! ## A248390.P7099639770306079985

`filter[A247665(n+1), A005171(#)]`
-/

namespace A248390.P7099639770306079985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A248390.P7099639770306079985

/-! ## A248390.P8862197673096088466

`filter[A247665(n+1), A066247(#)]`
-/

namespace A248390.P8862197673096088466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A248390.P8862197673096088466

/-! ## A248390.P7133170552316509988

`A247665(eq[char[A248387(n+1)], A285476(n)])`
-/

namespace A248390.P7133170552316509988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A248390.P7133170552316509988

/-!
# A248391: Terms in A247665 which are neither primes nor prime powers, in order of appearance.

The programs for A248391, there is no canonical definition to state claims against.
-/

/-! ## A248391.P17416492509442367893

`filter[A248390(n+1), A132350(#)]`
-/

namespace A248391.P17416492509442367893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A248391.P17416492509442367893

/-! ## A248391.P9664637031516739594

`filter[A248390(n+1), A143731(#)]`
-/

namespace A248391.P9664637031516739594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A248391.P9664637031516739594

/-! ## A248391.P4353634151841358917

`filter[A248390(n+1), A215480(#)]`
-/

namespace A248391.P4353634151841358917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A248391.P4353634151841358917

/-! ## A248391.P13385438441920208841

`filter[A248390(n+1), A341642(#)]`
-/

namespace A248391.P13385438441920208841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A248391.P13385438441920208841

/-!
# A248392: "Look and say" sequence, but say everything mod 2; starting with 1.

The programs for A248392, there is no canonical definition to state claims against.
-/

/-! ## A248392.P5540181385928666015

`and(A097806(A326474(n)), A177994(n))`
-/

namespace A248392.P5540181385928666015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097806 (A326474 n).toNat) (A177994 n)

end

end A248392.P5540181385928666015

/-! ## A248392.P11846973868884384882

`A010054(and(A039948(n), A039961(n+1)))`
-/

namespace A248392.P11846973868884384882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.land (A039948 n) (A039961 (n + 1))).toNat

end

end A248392.P11846973868884384882

/-! ## A248392.P5553738000357831071

`A097806(and(A086863(n+1), A228356(n)))`
-/

namespace A248392.P5553738000357831071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (Int.land (A086863 (n + 1)) (A228356 n)).toNat

end

end A248392.P5553738000357831071

/-! ## A248392.P16602017743312564899

`A353493(gcd(A003991(3*n+2), A324690(2*(n+2))))`
-/

namespace A248392.P16602017743312564899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (Int.gcd (A003991 (3 * n + 2)) (A324690 (2 * (n + 2))))

end

end A248392.P16602017743312564899

/-! ## A248392.P7454671694188834557

`A339051(A364841(n+1))`
-/

namespace A248392.P7454671694188834557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339051 (A364841 (n + 1)).toNat

end

end A248392.P7454671694188834557

/-!
# A248393: Number of 1's in n-th "number" in A248392.

The programs for A248393, there is no canonical definition to state claims against.
-/

/-! ## A248393.P16537325820470470652

`∑{digits}[A045998(n), #]`
-/

namespace A248393.P16537325820470470652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A248393.P16537325820470470652

/-! ## A248393.P12800060912704723160

`A000005(∏{digits}[A045998(n), A001316(#)]/2)`
-/

namespace A248393.P12800060912704723160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001316 x).prod : ℤ) : ℚ) / 2)).toNat

end

end A248393.P12800060912704723160

/-! ## A248393.P6005454591010150796

`A000005(∏{digits}[A045998(n), A045999(#)]/2)`
-/

namespace A248393.P6005454591010150796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A045999 x).prod : ℤ) : ℚ) / 2)).toNat

end

end A248393.P6005454591010150796

/-! ## A248393.P9666090247791809476

`A001222(∏{digits}[A045998(n), #+1])`
-/

namespace A248393.P9666090247791809476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A248393.P9666090247791809476

/-! ## A248393.P1807948266241909436

`A000005(∏{digits}[A045998(n), A001316(#)])-1`
-/

namespace A248393.P1807948266241909436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001316 x).prod.toNat - 1

end

end A248393.P1807948266241909436

/-!
# A248394: q-Expansion of the modular form of weight 3/2, g*theta(2) in Tunnell's notation (see Comments).

The programs for A248394, there is no canonical definition to state claims against.
-/

/-! ## A248394.P14288623607610590605

`A000035(n)/2*A080963(n)`
-/

namespace A248394.P14288623607610590605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2 * (A080963 n : ℚ)

end

end A248394.P14288623607610590605

/-! ## A248394.P307245503936781439

`∑{d}[n+1, A034950(#-1)*A063524((n+1)/#-1)]`
-/

namespace A248394.P307245503936781439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034950 (d - 1) * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A248394.P307245503936781439

/-! ## A248394.P17414305921570277769

`A000035(n)*A034950(A004526(n))`
-/

namespace A248394.P17414305921570277769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034950 (A004526 n).toNat

end

end A248394.P17414305921570277769

/-! ## A248394.P10302705262598879581

`A000035(n)*A034950(A028242(n))`
-/

namespace A248394.P10302705262598879581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034950 (A028242 n).toNat

end

end A248394.P10302705262598879581

/-! ## A248394.P12572308660024590854

`A000035(n)*A034950(A057979(n))`
-/

namespace A248394.P12572308660024590854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034950 (A057979 n).toNat

end

end A248394.P12572308660024590854

/-! ## A248394.P11393276602991163384

`A000035(n)*A034950(A123108(n))`
-/

namespace A248394.P11393276602991163384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034950 (A123108 n).toNat

end

end A248394.P11393276602991163384

/-! ## A248394.P16235306244759483262

`A034950(A057979(n)+1-A000035(n))`
-/

namespace A248394.P16235306244759483262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (A057979 n + (1 - A000035 n)).toNat

end

end A248394.P16235306244759483262

/-! ## A248394.P11022484101642542660

`A034950(1-(A000035(n)-A057979(n)))`
-/

namespace A248394.P11022484101642542660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (1 - (A000035 n - A057979 n)).toNat

end

end A248394.P11022484101642542660

/-! ## A248394.P13243595673661642551

`A034950(A057979(n)+A000035(n+1))`
-/

namespace A248394.P13243595673661642551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (A057979 n + A000035 (n + 1)).toNat

end

end A248394.P13243595673661642551

/-!
# A248395: q-Expansion of the modular form of weight 3/2, g*theta(4) in Tunnell's notation (see Comments).

The programs for A248395, there is no canonical definition to state claims against.
-/

/-! ## A248395.P1682987053979914785

`n%2/2*A080964(n)`
-/

namespace A248395.P1682987053979914785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) / 2 * (A080964 n : ℚ)

end

end A248395.P1682987053979914785

/-! ## A248395.P13512957707441007631

`A000035(n)/2*A080964(n)`
-/

namespace A248395.P13512957707441007631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2 * (A080964 n : ℚ)

end

end A248395.P13512957707441007631

/-! ## A248395.P17621537400170110634

`A034949(A093178(n))-A059841(n)`
-/

namespace A248395.P17621537400170110634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (A093178 n).toNat - A059841 n

end

end A248395.P17621537400170110634

/-! ## A248395.P16119619362941930604

`A000035(n)*A034949(A093178(n))`
-/

namespace A248395.P16119619362941930604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034949 (A093178 n).toNat

end

end A248395.P16119619362941930604

/-! ## A248395.P13274777632291201331

`A000035(n)*A034949(A109613(n))`
-/

namespace A248395.P13274777632291201331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034949 (A109613 n).toNat

end

end A248395.P13274777632291201331

/-! ## A248395.P4242069951203611953

`A034949(A093178(n)+2*A059841(n))`
-/

namespace A248395.P4242069951203611953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (A093178 n + 2 * A059841 n).toNat

end

end A248395.P4242069951203611953

/-! ## A248395.P2905095760542281281

`A034949(A059841(n)+A093178(n)+A059841(n))`
-/

namespace A248395.P2905095760542281281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (A059841 n + (A093178 n + A059841 n)).toNat

end

end A248395.P2905095760542281281

/-! ## A248395.P10125702932900533740

`A034949(A261671(n))`
-/

namespace A248395.P10125702932900533740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (A261671 n).toNat

end

end A248395.P10125702932900533740

/-!
# A248396: "Look and say" sequence, but say everything mod 2; starting with 1101.

The programs for A248396, there is no canonical definition to state claims against.
-/

/-! ## A248396.P13883982605964377024

`A320655(A117396(∑[A000034(n)]))`
-/

namespace A248396.P13883982605964377024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A117396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A248396.P13883982605964377024

/-! ## A248396.P8350458383978347772

`A295892(or(A048146(n+1), A120027(n)))`
-/

namespace A248396.P8350458383978347772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295892 (Int.lor (A048146 (n + 1)) (A120027 n)).toNat

end

end A248396.P8350458383978347772

/-! ## A248396.P817478191161836024

`A286746(A056453(n+1)+A000217(n)+6)`
-/

namespace A248396.P817478191161836024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (A056453 (n + 1) + (A000217 n + 6)).toNat

end

end A248396.P817478191161836024

/-! ## A248396.P14462645380863030207

`A284527(A047321(n+1)+A001248(n+1))`
-/

namespace A248396.P14462645380863030207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (A047321 (n + 1) + A001248 (n + 1)).toNat

end

end A248396.P14462645380863030207

/-! ## A248396.P14604313307372128970

`A266434(A262504(n+3)+A086710(n+2))`
-/

namespace A248396.P14604313307372128970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A262504 (n + 3) + A086710 (n + 2)).toNat

end

end A248396.P14604313307372128970

/-!
# A248397: Noncongruent squarefree numbers n with A248394(n)/d(n) = 1, where d(n) = A000005(n).

The programs for A248397, there is no canonical definition to state claims against.
-/

/-! ## A248397.P5025740854257387213

`eq[A248394(n+1), A299150(2*(n+1))]+1`
-/

namespace A248397.P5025740854257387213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A248397.P5025740854257387213

/-! ## A248397.P17942437544732213073

`eq[A248394(n), A299150(A004277(n))]`
-/

namespace A248397.P17942437544732213073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248397.P17942437544732213073

/-! ## A248397.P5158964169658306981

`eq[A248394(n), A299150(A028310(n))]`
-/

namespace A248397.P5158964169658306981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248397.P5158964169658306981

/-! ## A248397.P15207306275322321984

`eq[A248394(n), A299150(A093178(n))]`
-/

namespace A248397.P15207306275322321984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248397.P15207306275322321984

/-! ## A248397.P7100190155479388174

`eq[A248394(n), A299150(A109613(n))]`
-/

namespace A248397.P7100190155479388174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248397.P7100190155479388174

/-! ## A248397.P2225457451761097318

`eq[A248394(n), A299150(A261671(n))]`
-/

namespace A248397.P2225457451761097318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A261671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248397.P2225457451761097318

/-! ## A248397.P3461925196195632354

`eq[2*A248394(n), A299150(A008574(n))]`
-/

namespace A248397.P3461925196195632354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248397.P3461925196195632354

/-!
# A248398: Noncongruent squarefree numbers n with A248394(n)/d(n) = -1, where d(n) = A000005(n).

The programs for A248398, there is no canonical definition to state claims against.
-/

/-! ## A248398.P9587149536467513570

`eq[1, A248394(n)+A299150(A004277(n))+1]`
-/

namespace A248398.P9587149536467513570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n + (A299150 (A004277 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248398.P9587149536467513570

/-! ## A248398.P14077650666217725614

`A322846(A083190(2*n+3)+A075571(n))`
-/

namespace A248398.P14077650666217725614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322846 (A083190 (2 * n + 3) + A075571 n).toNat

end

end A248398.P14077650666217725614

/-!
# A248399: Noncongruent squarefree numbers n with A248394(n)/d(n) = 2, where d(n) = A000005(n).

The programs for A248399, there is no canonical definition to state claims against.
-/

/-! ## A248399.P8177704748762353541

`eq[A248394(n), A299150(A008574(n))]`
-/

namespace A248399.P8177704748762353541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248399.P8177704748762353541

/-! ## A248399.P16463253232217375028

`eq[2, A248394(n)/A299150(A093178(n))]`
-/

namespace A248399.P16463253232217375028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248394 n : ℚ) / (A299150 (A093178 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A248399.P16463253232217375028

/-! ## A248399.P18179290403634346377

`eq[A000005(A233583(2*n+1)), A248394(n)]`
-/

namespace A248399.P18179290403634346377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248399.P18179290403634346377

