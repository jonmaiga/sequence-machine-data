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
import Seq.B003.C005
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
# A166500: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^12 = I.

The programs for A166500, there is no canonical definition to state claims against.
-/

/-! ## A166500.P7057976947157469015

`floor(6*5^(n-1))-A326688(A156882(n))`
-/

namespace A166500.P7057976947157469015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A326688 (A156882 n).toNat

end

end A166500.P7057976947157469015

/-!
# A166501: Primes p such that (p reversed)+4 is also a prime.

The programs for A166501, there is no canonical definition to state claims against.
-/

/-! ## A166501.P18421417111055559433

`filter[A321523(2*n+1), A086747(#)]`
-/

namespace A166501.P18421417111055559433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321523 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086747 (f1 j).toNat = 1) n)

end

end A166501.P18421417111055559433

/-! ## A166501.P3069699069379059586

`∩[A066148(n+1), A090934(n+1)]`
-/

namespace A166501.P3069699069379059586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166501.P3069699069379059586

/-! ## A166501.P12895118825782516384

`∩[A090934(n+1), A219608(n+1)]`
-/

namespace A166501.P12895118825782516384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166501.P12895118825782516384

/-!
# A166502: The n-th power of the product prime(n)*prime(n+1) of 2 successive primes.

The programs for A166502, there is no canonical definition to state claims against.
-/

/-! ## A166502.P16891604610363445824

`record[A116570(n)]^(n+1)`
-/

namespace A166502.P16891604610363445824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1)

end

end A166502.P16891604610363445824

/-! ## A166502.P8423645090927015863

`A006094(n+1)^(n+1)`
-/

namespace A166502.P8423645090927015863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) ^ (n + 1)

end

end A166502.P8423645090927015863

/-! ## A166502.P16117611375964395366

`(A023515(n+2)+1)^(n+1)`
-/

namespace A166502.P16117611375964395366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023515 (n + 2) + 1) ^ (n + 1)

end

end A166502.P16117611375964395366

/-! ## A166502.P6045214945173279726

`A265398(A000040(n+3))^(n+1)`
-/

namespace A166502.P6045214945173279726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265398 (A000040 (n + 3)).toNat ^ (n + 1)

end

end A166502.P6045214945173279726

/-! ## A166502.P8899172907233242626

`Δ[A135485(n+1)]*A062457(n+1)`
-/

namespace A166502.P8899172907233242626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062457 (n + 1)

end

end A166502.P8899172907233242626

/-!
# A166503: Numbers k with property that k^2 is the concatenation of two or more prime numbers.

The programs for A166503, there is no canonical definition to state claims against.
-/

/-! ## A166503.P9749268683637201448

`sqrt(A038692(n+1))`
-/

namespace A166503.P9749268683637201448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038692 (n + 1) : ℝ)

end

end A166503.P9749268683637201448

/-! ## A166503.P10368162964161503110

`A000265(root(A038692(n+1), 2))`
-/

namespace A166503.P10368162964161503110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A038692 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A166503.P10368162964161503110

/-! ## A166503.P989825923513044689

`root(A038692(n+1), 2%A001358(n+1))`
-/

namespace A166503.P989825923513044689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038692 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A001358 (n + 1)) : ℝ))

end

end A166503.P989825923513044689

/-! ## A166503.P13169958736984917103

`A038692(n+1)^(1/A000005(A019549(n+1)))`
-/

namespace A166503.P13169958736984917103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038692 (n + 1) : ℝ) ^ (1 / (A000005 (A019549 (n + 1)).toNat : ℚ) : ℝ)

end

end A166503.P13169958736984917103

/-! ## A166503.P11018160581702923617

`A038692(n+1)^(1/A000005(A129800(n+1)))`
-/

namespace A166503.P11018160581702923617
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038692 (n + 1) : ℝ) ^ (1 / (A000005 (A129800 (n + 1)).toNat : ℚ) : ℝ)

end

end A166503.P11018160581702923617

/-! ## A166503.P11819770761950528479

`A026741(root(A038692(n+1), 2))`
-/

namespace A166503.P11819770761950528479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A038692 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A166503.P11819770761950528479

/-! ## A166503.P10021754906079160670

`A317324(root(A038692(n+1), 2))`
-/

namespace A166503.P10021754906079160670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 (SequenceMachineLib.roundAway ((A038692 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A166503.P10021754906079160670

/-!
# A166504: Slime numbers: numbers which are the concatenation of primes, with "leading zeros" allowed.

The programs for A166504, there is no canonical definition to state claims against.
-/

/-! ## A166504.P602375101936021604

`A152242(n+1)%288`
-/

namespace A166504.P602375101936021604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152242 (n + 1)) 288

end

end A166504.P602375101936021604

/-! ## A166504.P7718897779840254605

`A152242(A130446(n+1))`
-/

namespace A166504.P7718897779840254605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (A130446 (n + 1)).toNat

end

end A166504.P7718897779840254605

/-! ## A166504.P7944747462121621072

`A152242(A166719(n+1))`
-/

namespace A166504.P7944747462121621072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (A166719 (n + 1)).toNat

end

end A166504.P7944747462121621072

/-! ## A166504.P12315430757831425524

`A152242(A254109(n)+1)`
-/

namespace A166504.P12315430757831425524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (A254109 n + 1).toNat

end

end A166504.P12315430757831425524

/-! ## A166504.P18414988030687196951

`A152242(A292579(n)+1)`
-/

namespace A166504.P18414988030687196951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (A292579 n + 1).toNat

end

end A166504.P18414988030687196951

/-! ## A166504.P2085155903245982779

`A152242(A361338(n)+n)`
-/

namespace A166504.P2085155903245982779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (A361338 n + (n : ℤ)).toNat

end

end A166504.P2085155903245982779

/-! ## A166504.P14422414553285322564

`A243836(n)+A152242(n+1)`
-/

namespace A166504.P14422414553285322564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A152242 (n + 1)

end

end A166504.P14422414553285322564

/-! ## A166504.P6762932253363386635

`and(-A076338(n), A152242(n+1))`
-/

namespace A166504.P6762932253363386635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A076338 n) (A152242 (n + 1))

end

end A166504.P6762932253363386635

/-! ## A166504.P8203718236534035366

`or(char[A129852(n)], A152242(n+1))`
-/

namespace A166504.P8203718236534035366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129852 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A152242 (n + 1))

end

end A166504.P8203718236534035366

/-!
# A166505: Numbers in A166504 which are not in A152242.

The programs for A166505, there is no canonical definition to state claims against.
-/

/-! ## A166505.P17477228849002865247

`∩[A160712(n+1), A213311(n+1)]`
-/

namespace A166505.P17477228849002865247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166505.P17477228849002865247

/-! ## A166505.P8588565506234631723

`∩[A051022(A034895(n+1)), A160712(n+1)]`
-/

namespace A166505.P8588565506234631723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A034895 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166505.P8588565506234631723

/-! ## A166505.P3833926977605439289

`A051022(A034895(n+1))+A004016(A000079(2*n+1))`
-/

namespace A166505.P3833926977605439289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A034895 (n + 1)).toNat + A004016 (A000079 (2 * n + 1)).toNat

end

end A166505.P3833926977605439289

/-!
# A166506: Indices of terms in A166504 which are not in A152242.

The programs for A166506, there is no canonical definition to state claims against.
-/

/-! ## A166506.P13184587883574327672

`A167458(n+1)+A000720(A166505(n+1))`
-/

namespace A166506.P13184587883574327672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167458 (n + 1) + A000720 (A166505 (n + 1)).toNat

end

end A166506.P13184587883574327672

/-!
# A166508: Hypercomma numbers: n occurs in the sequence S[k+1]=S[k]+10*last_digit(S[k-1])+first_digit(S[k]) for each "legal" splitting n=concat(S[0],S[1]).

The programs for A166508, there is no canonical definition to state claims against.
-/

/-! ## A166508.P12739782319539231689

`lt[n, 11*A225693(n)]`
-/

namespace A166508.P12739782319539231689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166508.P12739782319539231689

/-! ## A166508.P16927775634752544221

`∪[eq[1, 11*floor(n/10)-n]-n%9, A010785(n)+1]`
-/

namespace A166508.P16927775634752544221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - ((n % 9 : ℕ) : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A166508.P16927775634752544221

/-! ## A166508.P6586210774437232795

`lt[A064458(n), A225693(n)]`
-/

namespace A166508.P6586210774437232795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166508.P6586210774437232795

/-! ## A166508.P5645045575106068419

`∩[A202272(n+1), A271239(n+1)]`
-/

namespace A166508.P5645045575106068419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166508.P5645045575106068419

/-! ## A166508.P14496859404312741695

`∩[A201982(n+1), A302768(n+1)]`
-/

namespace A166508.P14496859404312741695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166508.P14496859404312741695

/-!
# A166511: Comma numbers: n=concat(a,b) occurs in the sequence S[0]=a, S[1]=b, S[k+1]=S[k]+10*last_digit(S[k-1])+first_digit(S[k]).

The programs for A166511, there is no canonical definition to state claims against.
-/

/-! ## A166511.P1654278753415628018

`eq[1, 11*floor(n/10)-n]-n%9`
-/

namespace A166511.P1654278753415628018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n % 9 : ℕ) : ℤ)

end

end A166511.P1654278753415628018

/-! ## A166511.P15693294297888415462

`lt[n, 11*A062329(n)]`
-/

namespace A166511.P15693294297888415462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166511.P15693294297888415462

/-! ## A166511.P7465860448533467943

`eq[n, A061882(floor(n/10))]`
-/

namespace A166511.P7465860448533467943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166511.P7465860448533467943

/-! ## A166511.P9676966188755947093

`A061882(∑[(n-∑{digits}[n, #])!])`
-/

namespace A166511.P9676966188755947093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166511.P9676966188755947093

/-! ## A166511.P9677199010228541734

`A061882(C(floor((n+1)*log(3)), n))`
-/

namespace A166511.P9677199010228541734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 (Nat.choose ⌊(n + 1 : ℝ) * Real.log (3 : ℝ)⌋.toNat n)

end

end A166511.P9677199010228541734

/-!
# A166514: Zig-zag function for first two columns of a matrix (take numbers in consecutive pairs).

The programs for A166514, the canonical program `A166514.P4151575738637817467` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166514 has offset 0).

The definition of A166514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166514.P4151575738637817467

`and(-(-1)^n, ceil(n/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166514

/-- `and(-(-1)^n, ceil(n/2))` -/
def P4151575738637817467.Spec : Prop :=
  ∀ n, P4151575738637817467.a n = A166514 n

theorem P4151575738637817467.correct : P4151575738637817467.Spec := by
  intro n
  simp only [A166514]

end A166514

/-! ## A166514.P16870618831240886077

`abs(a(n-2)+(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A166514.P16870618831240886077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 2) + (-1) ^ n|

end

end A166514.P16870618831240886077

namespace A166514

/-- `abs(a(n-2)+(-1)^n)` -/
def P16870618831240886077.Spec : Prop :=
  ∀ n, P16870618831240886077.a n = A166514 n

end A166514

/-! ## A166514.P6380721558163109039

`floor(gcd(n+1, C(or(1, n), 2))/2)`
-/

namespace A166514.P6380721558163109039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 1) (Nat.choose (Nat.lor 1 n) 2) : ℚ) / 2⌋

end

end A166514.P6380721558163109039

namespace A166514

/-- `floor(gcd(n+1, C(or(1, n), 2))/2)` -/
def P6380721558163109039.Spec : Prop :=
  ∀ n, P6380721558163109039.a n = A166514 n

end A166514

/-! ## A166514.P18417315812927644506

`gcd(2*n, floor(n/2))-n%2`
-/

namespace A166514.P18417315812927644506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A166514.P18417315812927644506

namespace A166514

/-- `gcd(2*n, floor(n/2))-n%2` -/
def P18417315812927644506.Spec : Prop :=
  ∀ n, P18417315812927644506.a n = A166514 n

end A166514

/-! ## A166514.P488126479967167563

`abs(∑[n+1]²%or(2, n)-1)`
-/

namespace A166514.P488126479967167563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % Nat.lor 2 n : ℕ) : ℤ) - 1|

end

end A166514.P488126479967167563

namespace A166514

/-- `abs(∑[n+1]²%or(2, n)-1)` -/
def P488126479967167563.Spec : Prop :=
  ∀ n, P488126479967167563.a n = A166514 n

end A166514

/-! ## A166514.P5383760603783551915

`(-1)^n*a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A166514.P5383760603783551915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (-1) ^ n * a (n - 2) + 1

end

end A166514.P5383760603783551915

namespace A166514

/-- `(-1)^n*a(n-2)+1` -/
def P5383760603783551915.Spec : Prop :=
  ∀ n, P5383760603783551915.a n = A166514 n

end A166514

/-! ## A166514.P6069688010101423596

`a(n-2)/(-1)^n+1` with `a(0)=0, a(1)=1`
-/

namespace A166514.P6069688010101423596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / ((-1) ^ n : ℚ) + 1

end

end A166514.P6069688010101423596

namespace A166514

/-- `a(n-2)/(-1)^n+1` -/
def P6069688010101423596.Spec : Prop :=
  ∀ n, P6069688010101423596.a n = (A166514 n : ℚ)

end A166514

/-! ## A166514.P11802390246343676290

`∑[gcd(2, n)]%(a(n-2)+2)` with `a(0)=0, a(1)=1`
-/

namespace A166514.P11802390246343676290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (a (n - 2) + 2)

end

end A166514.P11802390246343676290

namespace A166514

/-- `∑[gcd(2, n)]%(a(n-2)+2)` -/
def P11802390246343676290.Spec : Prop :=
  ∀ n, (P11802390246343676290.a n : ℤ) = A166514 n

end A166514

/-! ## A166514.P1340955965539625597

`floor((a(n-2)+1)^(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A166514.P1340955965539625597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) + 1 : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A166514.P1340955965539625597

namespace A166514

/-- `floor((a(n-2)+1)^(-1)^n)` -/
def P1340955965539625597.Spec : Prop :=
  ∀ n, P1340955965539625597.a n = A166514 n

end A166514

/-! ## A166514.P7245647555061894658

`gcd(n-1, and(1, n))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A166514.P7245647555061894658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ) - a (n - 2)

end

end A166514.P7245647555061894658

namespace A166514

/-- `gcd(n-1, and(1, n))-a(n-2)` -/
def P7245647555061894658.Spec : Prop :=
  ∀ n, P7245647555061894658.a n = A166514 n

end A166514

/-! ## A166514.P12481615358944836834

`∑[a(n-4)+4]%(n+1)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=4`
-/

namespace A166514.P12481615358944836834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 4] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A166514.P12481615358944836834

namespace A166514

/-- `∑[a(n-4)+4]%(n+1)` -/
def P12481615358944836834.Spec : Prop :=
  ∀ n, (P12481615358944836834.a n : ℤ) = A166514 n

end A166514

/-! ## A166514.P147632504744768020

`a(n-2)+(-1)^a(n-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A166514.P147632504744768020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((-1 : ℝ) ^ (a (n - 1))) ^ n

end

end A166514.P147632504744768020

namespace A166514

/-- `a(n-2)+(-1)^a(n-1)^n` -/
def P147632504744768020.Spec : Prop :=
  ∀ n, P147632504744768020.a n = (A166514 n : ℝ)

end A166514

/-! ## A166514.P15530607181649661148

`C(n-1, and(1, n+1))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A166514.P15530607181649661148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat (Nat.land 1 (n + 1)) : ℤ) - a (n - 2)

end

end A166514.P15530607181649661148

namespace A166514

/-- `C(n-1, and(1, n+1))-a(n-2)` -/
def P15530607181649661148.Spec : Prop :=
  ∀ n, P15530607181649661148.a n = A166514 n

end A166514

/-! ## A166514.P15493508528131295776

`and(n+1, Δ[n-1-a(n-1)])/2` with `a(0)=1`
-/

namespace A166514.P15493508528131295776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A166514.P15493508528131295776

namespace A166514

/-- `and(n+1, Δ[n-1-a(n-1)])/2` -/
def P15493508528131295776.Spec : Prop :=
  ∀ n, P15493508528131295776.a n = (A166514 n : ℚ)

end A166514

/-! ## A166514.P6038803678208752167

`A186421(n)-floor(n/2)`
-/

namespace A166514.P6038803678208752167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n - ⌊(n : ℚ) / 2⌋

end

end A166514.P6038803678208752167

namespace A166514

/-- `A186421(n)-floor(n/2)` -/
def P6038803678208752167.Spec : Prop :=
  ∀ n, P6038803678208752167.a n = A166514 n

end A166514

/-! ## A166514.P13343572324316710006

`A285869(n)-a(n-1)` with `a(0)=0`
-/

namespace A166514.P13343572324316710006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285869 n - a (n - 1)

end

end A166514.P13343572324316710006

namespace A166514

/-- `A285869(n)-a(n-1)` -/
def P13343572324316710006.Spec : Prop :=
  ∀ n, P13343572324316710006.a n = A166514 n

end A166514

/-! ## A166514.P7683502520525539239

`floor(round(n/2)^Δ[A000120(n)])`
-/

namespace A166514.P7683502520525539239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway ((n : ℚ) / 2) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋

end

end A166514.P7683502520525539239

namespace A166514

/-- `floor(round(n/2)^Δ[A000120(n)])` -/
def P7683502520525539239.Spec : Prop :=
  ∀ n, P7683502520525539239.a n = A166514 n

end A166514

/-! ## A166514.P11179960364822664096

`A004525(A003815(n))`
-/

namespace A166514.P11179960364822664096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003815 n).toNat

end

end A166514.P11179960364822664096

namespace A166514

/-- `A004525(A003815(n))` -/
def P11179960364822664096.Spec : Prop :=
  ∀ n, P11179960364822664096.a n = A166514 n

end A166514

/-! ## A166514.P10018175439521499039

`A004526(A086112(n+1))`
-/

namespace A166514.P10018175439521499039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086112 (n + 1)).toNat

end

end A166514.P10018175439521499039

namespace A166514

/-- `A004526(A086112(n+1))` -/
def P10018175439521499039.Spec : Prop :=
  ∀ n, P10018175439521499039.a n = A166514 n

end A166514

/-! ## A166514.P6025181992130791316

`A098180(n)-A215495(n)`
-/

namespace A166514.P6025181992130791316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n - A215495 n

end

end A166514.P6025181992130791316

namespace A166514

/-- `A098180(n)-A215495(n)` -/
def P6025181992130791316.Spec : Prop :=
  ∀ n, P6025181992130791316.a n = A166514 n

end A166514

/-!
# A166515: Partial sum of A166514.

The programs for A166515, the canonical program `A166515.P119635591312621415` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166515 has offset 0).

The definition of A166515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166515.P119635591312621415

`round(∑[gcd(n, n%2)]/2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166515

/-- `round(∑[gcd(n, n%2)]/2)` -/
def P119635591312621415.Spec : Prop :=
  ∀ n, P119635591312621415.a n = A166515 n

theorem P119635591312621415.correct : P119635591312621415.Spec := by
  intro n
  simp only [A166515]

end A166515

/-! ## A166515.P908338492199937808

`ceil((floor(n/2)²+n)/2)`
-/

namespace A166515.P908338492199937808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(n : ℚ) / 2⌋ ^ 2 + (n : ℤ) : ℚ) / 2⌉

end

end A166515.P908338492199937808

namespace A166515

/-- `ceil((floor(n/2)²+n)/2)` -/
def P908338492199937808.Spec : Prop :=
  ∀ n, P908338492199937808.a n = A166515 n

end A166515

/-! ## A166515.P3614538552207719471

`∑[and(-(-1)^n, ceil(n/2))]`
-/

namespace A166515.P3614538552207719471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P3614538552207719471

namespace A166515

/-- `∑[and(-(-1)^n, ceil(n/2))]` -/
def P3614538552207719471.Spec : Prop :=
  ∀ n, P3614538552207719471.a n = A166515 n

end A166515

/-! ## A166515.P8669317099570338770

`∑[abs(a(n-2)+(-1)^n)]` with `a(0)=0, a(1)=1`
-/

namespace A166515.P8669317099570338770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  |f1 (n - 2) + (-1) ^ n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P8669317099570338770

namespace A166515

/-- `∑[abs(a(n-2)+(-1)^n)]` -/
def P8669317099570338770.Spec : Prop :=
  ∀ n, P8669317099570338770.a n = A166515 n

end A166515

/-! ## A166515.P13887130183962285973

`floor((∑[n^and(1, n+1)]+1)/2)`
-/

namespace A166515.P13887130183962285973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A166515.P13887130183962285973

namespace A166515

/-- `floor((∑[n^and(1, n+1)]+1)/2)` -/
def P13887130183962285973.Spec : Prop :=
  ∀ n, P13887130183962285973.a n = A166515 n

end A166515

/-! ## A166515.P11047608289132978998

`∑[(-1)^n*a(n-2)+1]` with `a(0)=0, a(1)=1`
-/

namespace A166515.P11047608289132978998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (-1) ^ n * f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P11047608289132978998

namespace A166515

/-- `∑[(-1)^n*a(n-2)+1]` -/
def P11047608289132978998.Spec : Prop :=
  ∀ n, P11047608289132978998.a n = A166515 n

end A166515

/-! ## A166515.P5361353648395564263

`∑[a(n-2)/(-1)^n+1]` with `a(0)=0, a(1)=1`
-/

namespace A166515.P5361353648395564263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) / ((-1) ^ n : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P5361353648395564263

namespace A166515

/-- `∑[a(n-2)/(-1)^n+1]` -/
def P5361353648395564263.Spec : Prop :=
  ∀ n, P5361353648395564263.a n = (A166515 n : ℚ)

end A166515

/-! ## A166515.P14996019356925273998

`round((and(1, n)+∑[char[2*n]]²-1)/2)`
-/

namespace A166515.P14996019356925273998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.land 1 n + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1 : ℚ) / 2)

end

end A166515.P14996019356925273998

namespace A166515

/-- `round((and(1, n)+∑[char[2*n]]²-1)/2)` -/
def P14996019356925273998.Spec : Prop :=
  ∀ n, P14996019356925273998.a n = A166515 n

end A166515

/-! ## A166515.P16708133551592247066

`floor(∑[n/2-floor(a(n-1))])-1` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A166515.P16708133551592247066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (n : ℚ) / 2 - (⌊f1 (n - 1)⌋ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A166515.P16708133551592247066

namespace A166515

/-- `floor(∑[n/2-floor(a(n-1))])-1` -/
def P16708133551592247066.Spec : Prop :=
  ∀ n, P16708133551592247066.a n = A166515 n

end A166515

/-! ## A166515.P9716747780144642131

`∑[and(n+1, n+2-a(n-1))]/2` with `a(0)=0`
-/

namespace A166515.P9716747780144642131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.land (n + 1 : ℤ) ((n + 2 : ℤ) - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A166515.P9716747780144642131

namespace A166515

/-- `∑[and(n+1, n+2-a(n-1))]/2` -/
def P9716747780144642131.Spec : Prop :=
  ∀ n, P9716747780144642131.a n = (A166515 n : ℚ)

end A166515

/-! ## A166515.P2700913358042633854

`∑[a(n-2)+(-1)^a(n-1)^n]` with `a(0)=0, a(1)=1`
-/

namespace A166515.P2700913358042633854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + ((-1 : ℝ) ^ (f1 (n - 1))) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P2700913358042633854

namespace A166515

/-- `∑[a(n-2)+(-1)^a(n-1)^n]` -/
def P2700913358042633854.Spec : Prop :=
  ∀ n, P2700913358042633854.a n = (A166515 n : ℝ)

end A166515

/-! ## A166515.P9141379023936469516

`∑[A166514(n)]`
-/

namespace A166515.P9141379023936469516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P9141379023936469516

namespace A166515

/-- `∑[A166514(n)]` -/
def P9141379023936469516.Spec : Prop :=
  ∀ n, P9141379023936469516.a n = A166515 n

end A166515

/-! ## A166515.P17069480935459208772

`A008818(xor(1, n))`
-/

namespace A166515.P17069480935459208772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (Nat.xor 1 n)

end

end A166515.P17069480935459208772

namespace A166515

/-- `A008818(xor(1, n))` -/
def P17069480935459208772.Spec : Prop :=
  ∀ n, P17069480935459208772.a n = A166515 n

end A166515

/-! ## A166515.P903577759026842464

`(A137224(n)+n)/2`
-/

namespace A166515.P903577759026842464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137224 n + (n : ℤ) : ℚ) / 2

end

end A166515.P903577759026842464

namespace A166515

/-- `(A137224(n)+n)/2` -/
def P903577759026842464.Spec : Prop :=
  ∀ n, P903577759026842464.a n = (A166515 n : ℚ)

end A166515

/-! ## A166515.P5541124952676445297

`floor((A135276(n)+1)/2)`
-/

namespace A166515.P5541124952676445297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135276 n + 1 : ℚ) / 2⌋

end

end A166515.P5541124952676445297

namespace A166515

/-- `floor((A135276(n)+1)/2)` -/
def P5541124952676445297.Spec : Prop :=
  ∀ n, P5541124952676445297.a n = A166515 n

end A166515

/-! ## A166515.P12933163854974962172

`A285869(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A166515.P12933163854974962172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A285869 n + a (n - 2)

end

end A166515.P12933163854974962172

namespace A166515

/-- `A285869(n)+a(n-2)` -/
def P12933163854974962172.Spec : Prop :=
  ∀ n, P12933163854974962172.a n = A166515 n

end A166515

/-! ## A166515.P7928018841366160613

`A008818(A004442(n))`
-/

namespace A166515.P7928018841366160613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (A004442 n).toNat

end

end A166515.P7928018841366160613

namespace A166515

/-- `A008818(A004442(n))` -/
def P7928018841366160613.Spec : Prop :=
  ∀ n, P7928018841366160613.a n = A166515 n

end A166515

/-! ## A166515.P16673531039953261839

`∑[A004525(A003815(n))]`
-/

namespace A166515.P16673531039953261839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166515.P16673531039953261839

namespace A166515

/-- `∑[A004525(A003815(n))]` -/
def P16673531039953261839.Spec : Prop :=
  ∀ n, P16673531039953261839.a n = A166515 n

end A166515

/-! ## A166515.P7967831681351889024

`A008818(A219977(n)+n)`
-/

namespace A166515.P7967831681351889024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (A219977 n + (n : ℤ)).toNat

end

end A166515.P7967831681351889024

namespace A166515

/-- `A008818(A219977(n)+n)` -/
def P7967831681351889024.Spec : Prop :=
  ∀ n, P7967831681351889024.a n = A166515 n

end A166515

/-! ## A166515.P7590751497857732495

`A008805(n)-A008624(n)`
-/

namespace A166515.P7590751497857732495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A008624 n

end

end A166515.P7590751497857732495

namespace A166515

/-- `A008805(n)-A008624(n)` -/
def P7590751497857732495.Spec : Prop :=
  ∀ n, P7590751497857732495.a n = A166515 n

end A166515

/-!
# A166516: A product of consecutive doubled Fibonacci numbers.

The programs for A166516, the canonical program `A166516.P17722900836852842197` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166516 has offset 0).

The definition of A166516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166516.P17722900836852842197

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166516

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P17722900836852842197.Spec : Prop :=
  ∀ n, P17722900836852842197.a n = A166516 n

theorem P17722900836852842197.correct : P17722900836852842197.Spec := by
  intro n
  simp only [A166516]

end A166516

/-! ## A166516.P4513654635438641707

`3*a(n-1)-(a(n-2)+n%2)` with `a(0)=1, a(1)=1`
-/

namespace A166516.P4513654635438641707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - (a (n - 2) + ((n % 2 : ℕ) : ℤ))

end

end A166516.P4513654635438641707

namespace A166516

/-- `3*a(n-1)-(a(n-2)+n%2)` -/
def P4513654635438641707.Spec : Prop :=
  ∀ n, P4513654635438641707.a n = A166516 n

end A166516

/-! ## A166516.P6170911525223618365

`(3-a(n-3)/a(n-2))*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A166516.P6170911525223618365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (3 - a (n - 3) / a (n - 2)) * a (n - 1)

end

end A166516.P6170911525223618365

namespace A166516

/-- `(3-a(n-3)/a(n-2))*a(n-1)` -/
def P6170911525223618365.Spec : Prop :=
  ∀ n, P6170911525223618365.a n = (A166516 n : ℚ)

end A166516

/-! ## A166516.P4601634187329875164

`∑[A001654(abs(1-n))]`
-/

namespace A166516.P4601634187329875164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166516.P4601634187329875164

namespace A166516

/-- `∑[A001654(abs(1-n))]` -/
def P4601634187329875164.Spec : Prop :=
  ∀ n, P4601634187329875164.a n = A166516 n

end A166516

/-! ## A166516.P132845670965378647

`∑[A107387(n+1)]-n`
-/

namespace A166516.P132845670965378647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A166516.P132845670965378647

namespace A166516

/-- `∑[A107387(n+1)]-n` -/
def P132845670965378647.Spec : Prop :=
  ∀ n, P132845670965378647.a n = A166516 n

end A166516

/-! ## A166516.P6828709975874160693

`A032908(n)-a(n-1)` with `a(0)=1`
-/

namespace A166516.P6828709975874160693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032908 n - a (n - 1)

end

end A166516.P6828709975874160693

namespace A166516

/-- `A032908(n)-a(n-1)` -/
def P6828709975874160693.Spec : Prop :=
  ∀ n, P6828709975874160693.a n = A166516 n

end A166516

/-! ## A166516.P2480524212175628725

`A093467(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A166516.P2480524212175628725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093467 (n + 1) - a (n - 1)

end

end A166516.P2480524212175628725

namespace A166516

/-- `A093467(n+1)-a(n-1)` -/
def P2480524212175628725.Spec : Prop :=
  ∀ n, P2480524212175628725.a n = A166516 n

end A166516

/-! ## A166516.P9223239015038538567

`A059841(n)+A007598(n)`
-/

namespace A166516.P9223239015038538567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A007598 n

end

end A166516.P9223239015038538567

namespace A166516

/-- `A059841(n)+A007598(n)` -/
def P9223239015038538567.Spec : Prop :=
  ∀ n, P9223239015038538567.a n = A166516 n

end A166516

/-! ## A166516.P1769724997258123204

`A245306(n)-A000035(n)`
-/

namespace A166516.P1769724997258123204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n - A000035 n

end

end A166516.P1769724997258123204

namespace A166516

/-- `A245306(n)-A000035(n)` -/
def P1769724997258123204.Spec : Prop :=
  ∀ n, P1769724997258123204.a n = A166516 n

end A166516

/-! ## A166516.P2160506512017843564

`A059841(n)+A000045(n)²`
-/

namespace A166516.P2160506512017843564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A000045 n ^ 2

end

end A166516.P2160506512017843564

namespace A166516

/-- `A059841(n)+A000045(n)²` -/
def P2160506512017843564.Spec : Prop :=
  ∀ n, P2160506512017843564.a n = A166516 n

end A166516

/-! ## A166516.P8274477999360396738

`A007598(n)+∑[A033999(n)]`
-/

namespace A166516.P8274477999360396738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166516.P8274477999360396738

namespace A166516

/-- `A007598(n)+∑[A033999(n)]` -/
def P8274477999360396738.Spec : Prop :=
  ∀ n, P8274477999360396738.a n = A166516 n

end A166516

/-! ## A166516.P4208552004707349665

`A007598(n)+A000035(n+1)`
-/

namespace A166516.P4208552004707349665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + A000035 (n + 1)

end

end A166516.P4208552004707349665

namespace A166516

/-- `A007598(n)+A000035(n+1)` -/
def P4208552004707349665.Spec : Prop :=
  ∀ n, P4208552004707349665.a n = A166516 n

end A166516

/-! ## A166516.P7057949899207826656

`1-(A000035(n)-A007598(n))`
-/

namespace A166516.P7057949899207826656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 n - A007598 n)

end

end A166516.P7057949899207826656

namespace A166516

/-- `1-(A000035(n)-A007598(n))` -/
def P7057949899207826656.Spec : Prop :=
  ∀ n, P7057949899207826656.a n = A166516 n

end A166516

/-! ## A166516.P5510003091250755302

`A007598(n)+2-A000034(n)`
-/

namespace A166516.P5510003091250755302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (2 - A000034 n)

end

end A166516.P5510003091250755302

namespace A166516

/-- `A007598(n)+2-A000034(n)` -/
def P5510003091250755302.Spec : Prop :=
  ∀ n, P5510003091250755302.a n = A166516 n

end A166516

/-! ## A166516.P2139642569971335806

`A219977(2*n)+A007598(n)`
-/

namespace A166516.P2139642569971335806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (2 * n) + A007598 n

end

end A166516.P2139642569971335806

namespace A166516

/-- `A219977(2*n)+A007598(n)` -/
def P2139642569971335806.Spec : Prop :=
  ∀ n, P2139642569971335806.a n = A166516 n

end A166516

/-! ## A166516.P13193665079854306915

`A000045(n)²+A056594(n)²`
-/

namespace A166516.P13193665079854306915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + A056594 n ^ 2

end

end A166516.P13193665079854306915

namespace A166516

/-- `A000045(n)²+A056594(n)²` -/
def P13193665079854306915.Spec : Prop :=
  ∀ n, P13193665079854306915.a n = A166516 n

end A166516

/-! ## A166516.P4282822751806030116

`∑[A033999(n)]+A000045(n)²`
-/

namespace A166516.P4282822751806030116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 n ^ 2

end

end A166516.P4282822751806030116

namespace A166516

/-- `∑[A033999(n)]+A000045(n)²` -/
def P4282822751806030116.Spec : Prop :=
  ∀ n, P4282822751806030116.a n = A166516 n

end A166516

/-! ## A166516.P10275237004244862014

`A000035(n+1)+A212804(n+1)²`
-/

namespace A166516.P10275237004244862014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + A212804 (n + 1) ^ 2

end

end A166516.P10275237004244862014

namespace A166516

/-- `A000035(n+1)+A212804(n+1)²` -/
def P10275237004244862014.Spec : Prop :=
  ∀ n, P10275237004244862014.a n = A166516 n

end A166516

/-!
# A166517: a(n) = (3 + 5*(-1)^n + 6*n)/4.

The programs for A166517, the canonical program `A166517.P7976499052412207268` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166517 has offset 0).

The definition of A166517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166517.P7976499052412207268

`3*n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166517

/-- `3*n-a(n-1)` -/
def P7976499052412207268.Spec : Prop :=
  ∀ n, P7976499052412207268.a n = A166517 n

theorem P7976499052412207268.correct : P7976499052412207268.Spec := by
  intro n
  simp only [A166517]

end A166517

/-! ## A166517.P1635946449876869422

`(3+5*(-1)^n+6*n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166517.P1635946449876869422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + 5 * (-1) ^ n + (6 * n : ℤ) : ℚ) / 4

end

end A166517.P1635946449876869422

namespace A166517

/-- `(3+5*(-1)^n+6*n)/4` -/
def P1635946449876869422.Spec : Prop :=
  ∀ n, P1635946449876869422.a n = (A166517 n : ℚ)

end A166517

/-! ## A166517.P14014401144257780606

`a(n-2)+3` with `a(0)=2, a(1)=1`
-/

namespace A166517.P14014401144257780606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + 3

end

end A166517.P14014401144257780606

namespace A166517

/-- `a(n-2)+3` -/
def P14014401144257780606.Spec : Prop :=
  ∀ n, (P14014401144257780606.a n : ℤ) = A166517 n

end A166517

/-! ## A166517.P15041199276903417535

`∑[3-a(n-1)]` with `a(0)=2, a(1)=-1`
-/

namespace A166517.P15041199276903417535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166517.P15041199276903417535

namespace A166517

/-- `∑[3-a(n-1)]` -/
def P15041199276903417535.Spec : Prop :=
  ∀ n, P15041199276903417535.a n = A166517 n

end A166517

/-! ## A166517.P15292910189830024997

`3-floor(-a(n-2))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A166517.P15292910189830024997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - (-a (n - 2))

end

end A166517.P15292910189830024997

namespace A166517

/-- `3-floor(-a(n-2))` -/
def P15292910189830024997.Spec : Prop :=
  ∀ n, P15292910189830024997.a n = A166517 n

end A166517

/-! ## A166517.P101222042301267455

`3-ceil(-a(n-2))` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A166517.P101222042301267455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - (-a (n - 2))

end

end A166517.P101222042301267455

namespace A166517

/-- `3-ceil(-a(n-2))` -/
def P101222042301267455.Spec : Prop :=
  ∀ n, P101222042301267455.a n = A166517 n

end A166517

/-! ## A166517.P1244577737554450205

`round(3*xor(3, 2*n)/4)`
-/

namespace A166517.P1244577737554450205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.xor 3 (2 * n) : ℚ) / 4))

end

end A166517.P1244577737554450205

namespace A166517

/-- `round(3*xor(3, 2*n)/4)` -/
def P1244577737554450205.Spec : Prop :=
  ∀ n, P1244577737554450205.a n = A166517 n

end A166517

/-! ## A166517.P16796614908946612324

`3-round(-a(n-2))` with `a(0)=2, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A166517.P16796614908946612324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - (-a (n - 2))

end

end A166517.P16796614908946612324

namespace A166517

/-- `3-round(-a(n-2))` -/
def P16796614908946612324.Spec : Prop :=
  ∀ n, P16796614908946612324.a n = A166517 n

end A166517

/-! ## A166517.P17271380871707875843

`ceil(xor(1, n)+(n+1)/2)`
-/

namespace A166517.P17271380871707875843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) + (n + 1 : ℚ) / 2⌉

end

end A166517.P17271380871707875843

namespace A166517

/-- `ceil(xor(1, n)+(n+1)/2)` -/
def P17271380871707875843.Spec : Prop :=
  ∀ n, P17271380871707875843.a n = A166517 n

end A166517

/-! ## A166517.P10324024925863435902

`floor(xor(1, n)+(n+2)/2)`
-/

namespace A166517.P10324024925863435902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A166517.P10324024925863435902

namespace A166517

/-- `floor(xor(1, n)+(n+2)/2)` -/
def P10324024925863435902.Spec : Prop :=
  ∀ n, P10324024925863435902.a n = A166517 n

end A166517

/-! ## A166517.P18256027325980748039

`round(xor(1, n)+(n+1)/2)`
-/

namespace A166517.P18256027325980748039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) + (n + 1 : ℚ) / 2)

end

end A166517.P18256027325980748039

namespace A166517

/-- `round(xor(1, n)+(n+1)/2)` -/
def P18256027325980748039.Spec : Prop :=
  ∀ n, P18256027325980748039.a n = A166517 n

end A166517

/-! ## A166517.P3337115575490730117

`floor(2*or(1, n)-n/2)`
-/

namespace A166517.P3337115575490730117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * Nat.lor 1 n : ℚ) - (n : ℚ) / 2⌋

end

end A166517.P3337115575490730117

namespace A166517

/-- `floor(2*or(1, n)-n/2)` -/
def P3337115575490730117.Spec : Prop :=
  ∀ n, P3337115575490730117.a n = A166517 n

end A166517

/-! ## A166517.P6602648942479451787

`2*or(1, n)-ceil(n/2)`
-/

namespace A166517.P6602648942479451787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A166517.P6602648942479451787

namespace A166517

/-- `2*or(1, n)-ceil(n/2)` -/
def P6602648942479451787.Spec : Prop :=
  ∀ n, P6602648942479451787.a n = A166517 n

end A166517

/-! ## A166517.P7630311505587959913

`∑[(n+1)%2]+xor(1, n)`
-/

namespace A166517.P7630311505587959913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 n

end

end A166517.P7630311505587959913

namespace A166517

/-- `∑[(n+1)%2]+xor(1, n)` -/
def P7630311505587959913.Spec : Prop :=
  ∀ n, (P7630311505587959913.a n : ℤ) = A166517 n

end A166517

/-! ## A166517.P5557325179836293672

`∑[gcd(2, n)]-2*and(1, n)`
-/

namespace A166517.P5557325179836293672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * Nat.land 1 n : ℤ)

end

end A166517.P5557325179836293672

namespace A166517

/-- `∑[gcd(2, n)]-2*and(1, n)` -/
def P5557325179836293672.Spec : Prop :=
  ∀ n, P5557325179836293672.a n = A166517 n

end A166517

/-! ## A166517.P1224961639501220011

`∑[and(1, n+1)]+xor(1, n)`
-/

namespace A166517.P1224961639501220011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 n

end

end A166517.P1224961639501220011

namespace A166517

/-- `∑[and(1, n+1)]+xor(1, n)` -/
def P1224961639501220011.Spec : Prop :=
  ∀ n, (P1224961639501220011.a n : ℤ) = A166517 n

end A166517

/-! ## A166517.P10918062125346485926

`2-xor(-1, a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A166517.P10918062125346485926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 - Int.xor (-1) (a (n - 2))

end

end A166517.P10918062125346485926

namespace A166517

/-- `2-xor(-1, a(n-2))` -/
def P10918062125346485926.Spec : Prop :=
  ∀ n, P10918062125346485926.a n = A166517 n

end A166517

/-! ## A166517.P15327724894398111980

`3-(char[1]-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A166517.P15327724894398111980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  3 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A166517.P15327724894398111980

namespace A166517

/-- `3-(char[1]-a(n-2))` -/
def P15327724894398111980.Spec : Prop :=
  ∀ n, P15327724894398111980.a n = A166517 n

end A166517

/-!
# A166519: a(n) = 1 + 2*(-1)^n + 2*n.

The programs for A166519, the canonical program `A166519.P18113735301093986505` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166519 has offset 0).

The definition of A166519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*(-1)^n+2*n` (program `A166519.P18113735301093986505`, by `A166519.P18113735301093986505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166519.P9174592077066037422

`4*n-a(n-1)` with `a(0)=3`
-/

namespace A166519.P9174592077066037422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * n : ℤ) - a (n - 1)

end

end A166519.P9174592077066037422

namespace A166519

/-- `4*n-a(n-1)` -/
def P9174592077066037422.Spec : Prop :=
  ∀ n, P9174592077066037422.a n = A166519 n

end A166519

/-! ## A166519.P18113735301093986505

`1+2*(-1)^n+2*n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166519

/-- `1+2*(-1)^n+2*n` -/
def P18113735301093986505.Spec : Prop :=
  ∀ n, P18113735301093986505.a n = A166519 n

theorem P18113735301093986505.correct : P18113735301093986505.Spec := by
  intro n
  simp only [A166519]

end A166519

/-! ## A166519.P11355197381378310099

`xor(3, 2*n)`
-/

namespace A166519.P11355197381378310099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n)

end

end A166519.P11355197381378310099

namespace A166519

/-- `xor(3, 2*n)` -/
def P11355197381378310099.Spec : Prop :=
  ∀ n, (P11355197381378310099.a n : ℤ) = A166519 n

end A166519

/-! ## A166519.P16190792361145085104

`abs(xor(2, Δ[n²]))`
-/

namespace A166519.P16190792361145085104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A166519.P16190792361145085104

namespace A166519

/-- `abs(xor(2, Δ[n²]))` -/
def P16190792361145085104.Spec : Prop :=
  ∀ n, P16190792361145085104.a n = A166519 n

end A166519

/-! ## A166519.P14930190272856738091

`-xor(Δ[n²], -4)`
-/

namespace A166519.P14930190272856738091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-4)

end

end A166519.P14930190272856738091

namespace A166519

/-- `-xor(Δ[n²], -4)` -/
def P14930190272856738091.Spec : Prop :=
  ∀ n, P14930190272856738091.a n = A166519 n

end A166519

/-! ## A166519.P11251243421396919156

`Δ[xor(1, n²+1)]`
-/

namespace A166519.P11251243421396919156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166519.P11251243421396919156

namespace A166519

/-- `Δ[xor(1, n²+1)]` -/
def P11251243421396919156.Spec : Prop :=
  ∀ n, P11251243421396919156.a n = A166519 n

end A166519

/-! ## A166519.P692743848129450402

`Δ[or(2, n²-1)]`
-/

namespace A166519.P692743848129450402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166519.P692743848129450402

namespace A166519

/-- `Δ[or(2, n²-1)]` -/
def P692743848129450402.Spec : Prop :=
  ∀ n, P692743848129450402.a n = A166519 n

end A166519

/-! ## A166519.P14198129406267336228

`Δ[-or(2, -n²)]`
-/

namespace A166519.P14198129406267336228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166519.P14198129406267336228

namespace A166519

/-- `Δ[-or(2, -n²)]` -/
def P14198129406267336228.Spec : Prop :=
  ∀ n, P14198129406267336228.a n = A166519 n

end A166519

/-! ## A166519.P11026609895665470318

`Δ[and(n²-1, -3)]`
-/

namespace A166519.P11026609895665470318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n ^ 2 : ℤ) - 1) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166519.P11026609895665470318

namespace A166519

/-- `Δ[and(n²-1, -3)]` -/
def P11026609895665470318.Spec : Prop :=
  ∀ n, P11026609895665470318.a n = A166519 n

end A166519

/-! ## A166519.P3829003878385725361

`-Δ[and(-3, -n²)]`
-/

namespace A166519.P3829003878385725361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A166519.P3829003878385725361

namespace A166519

/-- `-Δ[and(-3, -n²)]` -/
def P3829003878385725361.Spec : Prop :=
  ∀ n, P3829003878385725361.a n = A166519 n

end A166519

/-! ## A166519.P5865944068899686322

`∑[4-a(n-1)]` with `a(0)=3, a(1)=-2`
-/

namespace A166519.P5865944068899686322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166519.P5865944068899686322

namespace A166519

/-- `∑[4-a(n-1)]` -/
def P5865944068899686322.Spec : Prop :=
  ∀ n, P5865944068899686322.a n = A166519 n

end A166519

/-! ## A166519.P9235636167208702770

`or(1, a(n-2)+3)` with `a(0)=3, a(1)=1`
-/

namespace A166519.P9235636167208702770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  Nat.lor 1 (a (n - 2) + 3)

end

end A166519.P9235636167208702770

namespace A166519

/-- `or(1, a(n-2)+3)` -/
def P9235636167208702770.Spec : Prop :=
  ∀ n, (P9235636167208702770.a n : ℤ) = A166519 n

end A166519

/-! ## A166519.P8700453836715658393

`abs(2*n+1-4*or(1, n))`
-/

namespace A166519.P8700453836715658393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (4 * Nat.lor 1 n : ℤ)|

end

end A166519.P8700453836715658393

namespace A166519

/-- `abs(2*n+1-4*or(1, n))` -/
def P8700453836715658393.Spec : Prop :=
  ∀ n, P8700453836715658393.a n = A166519 n

end A166519

/-! ## A166519.P10050665811843770335

`A092486(2*n)`
-/

namespace A166519.P10050665811843770335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n)

end

end A166519.P10050665811843770335

namespace A166519

/-- `A092486(2*n)` -/
def P10050665811843770335.Spec : Prop :=
  ∀ n, P10050665811843770335.a n = A166519 n

end A166519

/-! ## A166519.P10239807825024242412

`A004443(Δ[n²])`
-/

namespace A166519.P10239807825024242412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166519.P10239807825024242412

namespace A166519

/-- `A004443(Δ[n²])` -/
def P10239807825024242412.Spec : Prop :=
  ∀ n, P10239807825024242412.a n = A166519 n

end A166519

/-! ## A166519.P13058136738354684760

`or(1, A004443(2*n))`
-/

namespace A166519.P13058136738354684760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004443 (2 * n))

end

end A166519.P13058136738354684760

namespace A166519

/-- `or(1, A004443(2*n))` -/
def P13058136738354684760.Spec : Prop :=
  ∀ n, P13058136738354684760.a n = A166519 n

end A166519

/-! ## A166519.P8947145446700576464

`A004273(A014681(n+1))`
-/

namespace A166519.P8947145446700576464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A014681 (n + 1)).toNat

end

end A166519.P8947145446700576464

namespace A166519

/-- `A004273(A014681(n+1))` -/
def P8947145446700576464.Spec : Prop :=
  ∀ n, P8947145446700576464.a n = A166519 n

end A166519

/-! ## A166519.P9791353191219931884

`A004273(A103889(n+1))`
-/

namespace A166519.P9791353191219931884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A103889 (n + 1)).toNat

end

end A166519.P9791353191219931884

namespace A166519

/-- `A004273(A103889(n+1))` -/
def P9791353191219931884.Spec : Prop :=
  ∀ n, P9791353191219931884.a n = A166519 n

end A166519

/-!
# A166520: a(n) = (10*n + 11*(-1)^n + 5)/4.

The programs for A166520, the canonical program `A166520.P5392313697040605010` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166520 has offset 1).

The definition of A166520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166520.P5392313697040605010

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=9, a(2)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166520

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P5392313697040605010.Spec : Prop :=
  ∀ n, P5392313697040605010.a n = A166520 (n + 1)

theorem P5392313697040605010.correct : P5392313697040605010.Spec := by
  intro n
  simp only [A166520, Nat.add_sub_cancel]

end A166520

/-! ## A166520.P9567413190119877157

`a(n-2)+5` with `a(0)=1, a(1)=9`
-/

namespace A166520.P9567413190119877157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + 5

end

end A166520.P9567413190119877157

namespace A166520

/-- `a(n-2)+5` -/
def P9567413190119877157.Spec : Prop :=
  ∀ n, (P9567413190119877157.a n : ℤ) = A166520 (n + 1)

end A166520

/-! ## A166520.P2746054103673001977

`∑[5-a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A166520.P2746054103673001977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166520.P2746054103673001977

namespace A166520

/-- `∑[5-a(n-1)]` -/
def P2746054103673001977.Spec : Prop :=
  ∀ n, P2746054103673001977.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P12745486283626017050

`5-floor(-a(n-2))` with `a(0)=1, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A166520.P12745486283626017050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  5 - (-a (n - 2))

end

end A166520.P12745486283626017050

namespace A166520

/-- `5-floor(-a(n-2))` -/
def P12745486283626017050.Spec : Prop :=
  ∀ n, P12745486283626017050.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P17786909773704873320

`5-ceil(-a(n-2))` with `a(0)=1, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A166520.P17786909773704873320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  5 - (-a (n - 2))

end

end A166520.P17786909773704873320

namespace A166520

/-- `5-ceil(-a(n-2))` -/
def P17786909773704873320.Spec : Prop :=
  ∀ n, P17786909773704873320.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P8127552132825607235

`5-round(-a(n-2))` with `a(0)=1, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A166520.P8127552132825607235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  5 - (-a (n - 2))

end

end A166520.P8127552132825607235

namespace A166520

/-- `5-round(-a(n-2))` -/
def P8127552132825607235.Spec : Prop :=
  ∀ n, P8127552132825607235.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P11440537848849176481

`5*n-a(n-3)` with `a(0)=1, a(1)=9, a(2)=6`
-/

namespace A166520.P11440537848849176481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 6] fun n a =>
  (5 * n : ℤ) - a (n - 3)

end

end A166520.P11440537848849176481

namespace A166520

/-- `5*n-a(n-3)` -/
def P11440537848849176481.Spec : Prop :=
  ∀ n, P11440537848849176481.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P6275325004343601955

`A168197(n+1)+1+n`
-/

namespace A166520.P6275325004343601955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168197 (n + 1) + 1 + (n : ℤ)

end

end A166520.P6275325004343601955

namespace A166520

/-- `A168197(n+1)+1+n` -/
def P6275325004343601955.Spec : Prop :=
  ∀ n, P6275325004343601955.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P757179123026113565

`A175887(n+1)-5*n`
-/

namespace A166520.P757179123026113565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) - (5 * n : ℤ)

end

end A166520.P757179123026113565

namespace A166520

/-- `A175887(n+1)-5*n` -/
def P757179123026113565.Spec : Prop :=
  ∀ n, P757179123026113565.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P3961681154846403716

`5-(a(n-1)-A008706(n))` with `a(0)=1`
-/

namespace A166520.P3961681154846403716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - (a (n - 1) - A008706 n)

end

end A166520.P3961681154846403716

namespace A166520

/-- `5-(a(n-1)-A008706(n))` -/
def P3961681154846403716.Spec : Prop :=
  ∀ n, P3961681154846403716.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P9172668948034270537

`abs(5*Δ[gcd(n+1, A000217(n))]-1)`
-/

namespace A166520.P9172668948034270537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1|

end

end A166520.P9172668948034270537

namespace A166520

/-- `abs(5*Δ[gcd(n+1, A000217(n))]-1)` -/
def P9172668948034270537.Spec : Prop :=
  ∀ n, P9172668948034270537.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P15336613566171307258

`A047215(n)+A010688(n)`
-/

namespace A166520.P15336613566171307258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n + A010688 n

end

end A166520.P15336613566171307258

namespace A166520

/-- `A047215(n)+A010688(n)` -/
def P15336613566171307258.Spec : Prop :=
  ∀ n, P15336613566171307258.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P5427437457331445580

`A187331(n)+A143025(n)`
-/

namespace A166520.P5427437457331445580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n + A143025 n

end

end A166520.P5427437457331445580

namespace A166520

/-- `A187331(n)+A143025(n)` -/
def P5427437457331445580.Spec : Prop :=
  ∀ n, P5427437457331445580.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P16778442492131383996

`A017173(n)-A112653(n)`
-/

namespace A166520.P16778442492131383996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - A112653 n

end

end A166520.P16778442492131383996

namespace A166520

/-- `A017173(n)-A112653(n)` -/
def P16778442492131383996.Spec : Prop :=
  ∀ n, P16778442492131383996.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P4784741610933197246

`A112414(n)-A137235(n)`
-/

namespace A166520.P4784741610933197246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n - A137235 n

end

end A166520.P4784741610933197246

namespace A166520

/-- `A112414(n)-A137235(n)` -/
def P4784741610933197246.Spec : Prop :=
  ∀ n, P4784741610933197246.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P10090817953603069118

`A010689(n)+A008851(n+1)`
-/

namespace A166520.P10090817953603069118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n + A008851 (n + 1)

end

end A166520.P10090817953603069118

namespace A166520

/-- `A010689(n)+A008851(n+1)` -/
def P10090817953603069118.Spec : Prop :=
  ∀ n, P10090817953603069118.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P7458050371336976207

`A047209(n+1)+A010676(n)`
-/

namespace A166520.P7458050371336976207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) + A010676 n

end

end A166520.P7458050371336976207

namespace A166520

/-- `A047209(n+1)+A010676(n)` -/
def P7458050371336976207.Spec : Prop :=
  ∀ n, P7458050371336976207.a n = A166520 (n + 1)

end A166520

/-! ## A166520.P2436618546785349277

`A047208(n+1)+A010686(n)`
-/

namespace A166520.P2436618546785349277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047208 (n + 1) + A010686 n

end

end A166520.P2436618546785349277

namespace A166520

/-- `A047208(n+1)+A010686(n)` -/
def P2436618546785349277.Spec : Prop :=
  ∀ n, P2436618546785349277.a n = A166520 (n + 1)

end A166520

/-!
# A166521: a(n) = (6*n + 7*(-1)^n + 3)/2.

The programs for A166521, the canonical program `A166521.P5829286245959857025` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166521 has offset 1).

The definition of A166521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166521.P5829286245959857025

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=11, a(2)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166521

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P5829286245959857025.Spec : Prop :=
  ∀ n, P5829286245959857025.a n = A166521 (n + 1)

theorem P5829286245959857025.correct : P5829286245959857025.Spec := by
  intro n
  simp only [A166521, Nat.add_sub_cancel]

end A166521

/-! ## A166521.P15347469867152812390

`a(n-2)+6` with `a(0)=1, a(1)=11`
-/

namespace A166521.P15347469867152812390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 2) + 6

end

end A166521.P15347469867152812390

namespace A166521

/-- `a(n-2)+6` -/
def P15347469867152812390.Spec : Prop :=
  ∀ n, (P15347469867152812390.a n : ℤ) = A166521 (n + 1)

end A166521

/-! ## A166521.P801870580045109812

`∑[6-a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A166521.P801870580045109812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166521.P801870580045109812

namespace A166521

/-- `∑[6-a(n-1)]` -/
def P801870580045109812.Spec : Prop :=
  ∀ n, P801870580045109812.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P12918860276413928737

`8^(n%2)+3*n`
-/

namespace A166521.P12918860276413928737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n % 2) + 3 * n

end

end A166521.P12918860276413928737

namespace A166521

/-- `8^(n%2)+3*n` -/
def P12918860276413928737.Spec : Prop :=
  ∀ n, (P12918860276413928737.a n : ℤ) = A166521 (n + 1)

end A166521

/-! ## A166521.P9435710733304465939

`gcd(2, n+1)^3+3*n`
-/

namespace A166521.P9435710733304465939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3 + 3 * n

end

end A166521.P9435710733304465939

namespace A166521

/-- `gcd(2, n+1)^3+3*n` -/
def P9435710733304465939.Spec : Prop :=
  ∀ n, (P9435710733304465939.a n : ℤ) = A166521 (n + 1)

end A166521

/-! ## A166521.P7345411630290739915

`gcd(8, (n+1)%2)+3*n`
-/

namespace A166521.P7345411630290739915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 ((n + 1) % 2) + 3 * n

end

end A166521.P7345411630290739915

namespace A166521

/-- `gcd(8, (n+1)%2)+3*n` -/
def P7345411630290739915.Spec : Prop :=
  ∀ n, (P7345411630290739915.a n : ℤ) = A166521 (n + 1)

end A166521

/-! ## A166521.P3763117176182095568

`6-(a(n-1)-6*n)` with `a(0)=1`
-/

namespace A166521.P3763117176182095568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - (a (n - 1) - (6 * n : ℤ))

end

end A166521.P3763117176182095568

namespace A166521

/-- `6-(a(n-1)-6*n)` -/
def P3763117176182095568.Spec : Prop :=
  ∀ n, P3763117176182095568.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P5794687129819303577

`A010689(n)+3*n`
-/

namespace A166521.P5794687129819303577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n + (3 * n : ℤ)

end

end A166521.P5794687129819303577

namespace A166521

/-- `A010689(n)+3*n` -/
def P5794687129819303577.Spec : Prop :=
  ∀ n, P5794687129819303577.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P1770956685589565122

`2*A168198(n+1)-1`
-/

namespace A166521.P1770956685589565122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168198 (n + 1) - 1

end

end A166521.P1770956685589565122

namespace A166521

/-- `2*A168198(n+1)-1` -/
def P1770956685589565122.Spec : Prop :=
  ∀ n, P1770956685589565122.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P9543697941928082486

`A168203(n+1)+1+n`
-/

namespace A166521.P9543697941928082486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168203 (n + 1) + 1 + (n : ℤ)

end

end A166521.P9543697941928082486

namespace A166521

/-- `A168203(n+1)+1+n` -/
def P9543697941928082486.Spec : Prop :=
  ∀ n, P9543697941928082486.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P6791102958973574444

`A040019(n+1)+3*n`
-/

namespace A166521.P6791102958973574444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (n + 1) + (3 * n : ℤ)

end

end A166521.P6791102958973574444

namespace A166521

/-- `A040019(n+1)+3*n` -/
def P6791102958973574444.Spec : Prop :=
  ∀ n, P6791102958973574444.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P14478501719321508930

`A040043(n+1)+3*(n-2)`
-/

namespace A166521.P14478501719321508930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040043 (n + 1) + 3 * ((n : ℤ) - 2)

end

end A166521.P14478501719321508930

namespace A166521

/-- `A040043(n+1)+3*(n-2)` -/
def P14478501719321508930.Spec : Prop :=
  ∀ n, P14478501719321508930.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P5831781820484551882

`A016777(n)+A010678(n)`
-/

namespace A166521.P5831781820484551882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A010678 n

end

end A166521.P5831781820484551882

namespace A166521

/-- `A016777(n)+A010678(n)` -/
def P5831781820484551882.Spec : Prop :=
  ∀ n, P5831781820484551882.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P895980431953174316

`A010677(n)+A007310(n+1)`
-/

namespace A166521.P895980431953174316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n + A007310 (n + 1)

end

end A166521.P895980431953174316

namespace A166521

/-- `A010677(n)+A007310(n+1)` -/
def P895980431953174316.Spec : Prop :=
  ∀ n, P895980431953174316.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P10284856349953773182

`A047225(n+1)+A010691(n)`
-/

namespace A166521.P10284856349953773182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1) + A010691 n

end

end A166521.P10284856349953773182

namespace A166521

/-- `A047225(n+1)+A010691(n)` -/
def P10284856349953773182.Spec : Prop :=
  ∀ n, P10284856349953773182.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P2478394085514922049

`A047233(n+1)+A010688(n)`
-/

namespace A166521.P2478394085514922049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1) + A010688 n

end

end A166521.P2478394085514922049

namespace A166521

/-- `A047233(n+1)+A010688(n)` -/
def P2478394085514922049.Spec : Prop :=
  ∀ n, P2478394085514922049.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P1124022737064890649

`A047241(n+1)+A010679(n)`
-/

namespace A166521.P1124022737064890649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1) + A010679 n

end

end A166521.P1124022737064890649

namespace A166521

/-- `A047241(n+1)+A010679(n)` -/
def P1124022737064890649.Spec : Prop :=
  ∀ n, P1124022737064890649.a n = A166521 (n + 1)

end A166521

/-! ## A166521.P14527160263157142048

`A047238(n+1)+A010690(n)`
-/

namespace A166521.P14527160263157142048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1) + A010690 n

end

end A166521.P14527160263157142048

namespace A166521

/-- `A047238(n+1)+A010690(n)` -/
def P14527160263157142048.Spec : Prop :=
  ∀ n, P14527160263157142048.a n = A166521 (n + 1)

end A166521

/-!
# A166522: a(n) = 7*n - a(n-1), with a(1) = 1.

The programs for A166522, the canonical program `A166522.P2162385656792353933` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166522 has offset 1).

The definition of A166522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166522.P2162385656792353933

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=13, a(2)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166522

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2162385656792353933.Spec : Prop :=
  ∀ n, P2162385656792353933.a n = A166522 (n + 1)

theorem P2162385656792353933.correct : P2162385656792353933.Spec := by
  intro n
  simp only [A166522, Nat.add_sub_cancel]

end A166522

/-! ## A166522.P12689221073524913977

`a(n-2)+7` with `a(0)=1, a(1)=13`
-/

namespace A166522.P12689221073524913977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n - 2) + 7

end

end A166522.P12689221073524913977

namespace A166522

/-- `a(n-2)+7` -/
def P12689221073524913977.Spec : Prop :=
  ∀ n, (P12689221073524913977.a n : ℤ) = A166522 (n + 1)

end A166522

/-! ## A166522.P375984843818731669

`∑[7-a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A166522.P375984843818731669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166522.P375984843818731669

namespace A166522

/-- `∑[7-a(n-1)]` -/
def P375984843818731669.Spec : Prop :=
  ∀ n, P375984843818731669.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P1112788879733123087

`7-(a(n-1)-7*n)` with `a(0)=1`
-/

namespace A166522.P1112788879733123087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 - (a (n - 1) - (7 * n : ℤ))

end

end A166522.P1112788879733123087

namespace A166522

/-- `7-(a(n-1)-7*n)` -/
def P1112788879733123087.Spec : Prop :=
  ∀ n, P1112788879733123087.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P4285632399107345943

`A168206(n+1)+1+n`
-/

namespace A166522.P4285632399107345943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 1) + 1 + (n : ℤ)

end

end A166522.P4285632399107345943

namespace A166522

/-- `A168206(n+1)+1+n` -/
def P4285632399107345943.Spec : Prop :=
  ∀ n, P4285632399107345943.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P1362213521608122281

`A010677(n)+∑[A010687(n)]`
-/

namespace A166522.P1362213521608122281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166522.P1362213521608122281

namespace A166522

/-- `A010677(n)+∑[A010687(n)]` -/
def P1362213521608122281.Spec : Prop :=
  ∀ n, P1362213521608122281.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P7841185495454710008

`A047336(n+1)+A010678(n)`
-/

namespace A166522.P7841185495454710008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + A010678 n

end

end A166522.P7841185495454710008

namespace A166522

/-- `A047336(n+1)+A010678(n)` -/
def P7841185495454710008.Spec : Prop :=
  ∀ n, P7841185495454710008.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P13781860163750243310

`A047335(n+1)+A010688(n)`
-/

namespace A166522.P13781860163750243310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1) + A010688 n

end

end A166522.P13781860163750243310

namespace A166522

/-- `A047335(n+1)+A010688(n)` -/
def P13781860163750243310.Spec : Prop :=
  ∀ n, P13781860163750243310.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P13592847064299988937

`A047345(n+1)+A010690(n)`
-/

namespace A166522.P13592847064299988937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1) + A010690 n

end

end A166522.P13592847064299988937

namespace A166522

/-- `A047345(n+1)+A010690(n)` -/
def P13592847064299988937.Spec : Prop :=
  ∀ n, P13592847064299988937.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P17824742727856756195

`A047356(n+1)+A010681(n)`
-/

namespace A166522.P17824742727856756195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (n + 1) + A010681 n

end

end A166522.P17824742727856756195

namespace A166522

/-- `A047356(n+1)+A010681(n)` -/
def P17824742727856756195.Spec : Prop :=
  ∀ n, P17824742727856756195.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P4187220455554763367

`A047355(n+1)+A010691(n)`
-/

namespace A166522.P4187220455554763367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + A010691 n

end

end A166522.P4187220455554763367

namespace A166522

/-- `A047355(n+1)+A010691(n)` -/
def P4187220455554763367.Spec : Prop :=
  ∀ n, P4187220455554763367.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P247097980582058744

`A047383(n+1)+A010679(n)`
-/

namespace A166522.P247097980582058744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (n + 1) + A010679 n

end

end A166522.P247097980582058744

namespace A166522

/-- `A047383(n+1)+A010679(n)` -/
def P247097980582058744.Spec : Prop :=
  ∀ n, P247097980582058744.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P14342572139381430250

`A047382(n+1)+A010689(n)`
-/

namespace A166522.P14342572139381430250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) + A010689 n

end

end A166522.P14342572139381430250

namespace A166522

/-- `A047382(n+1)+A010689(n)` -/
def P14342572139381430250.Spec : Prop :=
  ∀ n, P14342572139381430250.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P16989066508842285932

`A168337(n+1)+A010676(n)`
-/

namespace A166522.P16989066508842285932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + A010676 n

end

end A166522.P16989066508842285932

namespace A166522

/-- `A168337(n+1)+A010676(n)` -/
def P16989066508842285932.Spec : Prop :=
  ∀ n, P16989066508842285932.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P12147760054572257824

`A168374(n+1)+A010687(n)`
-/

namespace A166522.P12147760054572257824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + A010687 n

end

end A166522.P12147760054572257824

namespace A166522

/-- `A168374(n+1)+A010687(n)` -/
def P12147760054572257824.Spec : Prop :=
  ∀ n, P12147760054572257824.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P15068694876945290862

`A168210(n+1)+A028242(n)`
-/

namespace A166522.P15068694876945290862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168210 (n + 1) + A028242 n

end

end A166522.P15068694876945290862

namespace A166522

/-- `A168210(n+1)+A028242(n)` -/
def P15068694876945290862.Spec : Prop :=
  ∀ n, P15068694876945290862.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P14713301266023874936

`A166521(n+1)+A030451(n)`
-/

namespace A166522.P14713301266023874936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) + A030451 n

end

end A166522.P14713301266023874936

namespace A166522

/-- `A166521(n+1)+A030451(n)` -/
def P14713301266023874936.Spec : Prop :=
  ∀ n, P14713301266023874936.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P11523517599412484383

`A266327(n)+A047352(n+1)`
-/

namespace A166522.P11523517599412484383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + A047352 (n + 1)

end

end A166522.P11523517599412484383

namespace A166522

/-- `A266327(n)+A047352(n+1)` -/
def P11523517599412484383.Spec : Prop :=
  ∀ n, P11523517599412484383.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P2472876853611549991

`A166523(n+1)-A030451(n)`
-/

namespace A166522.P2472876853611549991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) - A030451 n

end

end A166522.P2472876853611549991

namespace A166522

/-- `A166523(n+1)-A030451(n)` -/
def P2472876853611549991.Spec : Prop :=
  ∀ n, P2472876853611549991.a n = A166522 (n + 1)

end A166522

/-! ## A166522.P9663861707643993285

`A166544(n+1)-A033999(n)`
-/

namespace A166522.P9663861707643993285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166544 (n + 1) - A033999 n

end

end A166522.P9663861707643993285

namespace A166522

/-- `A166544(n+1)-A033999(n)` -/
def P9663861707643993285.Spec : Prop :=
  ∀ n, P9663861707643993285.a n = A166522 (n + 1)

end A166522

/-!
# A166523: a(n) = 8*n - a(n-1), with n>1, a(1)=1.

The programs for A166523, the canonical program `A166523.P7672043741063221629` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166523 has offset 1).

The definition of A166523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166523.P7672043741063221629

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=15, a(2)=9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166523

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7672043741063221629.Spec : Prop :=
  ∀ n, P7672043741063221629.a n = A166523 (n + 1)

theorem P7672043741063221629.correct : P7672043741063221629.Spec := by
  intro n
  simp only [A166523, Nat.add_sub_cancel]

end A166523

/-! ## A166523.P3565327218551638355

`a(n-2)+8` with `a(0)=1, a(1)=15`
-/

namespace A166523.P3565327218551638355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  a (n - 2) + 8

end

end A166523.P3565327218551638355

namespace A166523

/-- `a(n-2)+8` -/
def P3565327218551638355.Spec : Prop :=
  ∀ n, (P3565327218551638355.a n : ℤ) = A166523 (n + 1)

end A166523

/-! ## A166523.P11080830860070287051

`∑[8-a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A166523.P11080830860070287051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166523.P11080830860070287051

namespace A166523

/-- `∑[8-a(n-1)]` -/
def P11080830860070287051.Spec : Prop :=
  ∀ n, P11080830860070287051.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P3607767484045372253

`11^(n%2)+4*n`
-/

namespace A166523.P3607767484045372253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (n % 2) + 4 * n

end

end A166523.P3607767484045372253

namespace A166523

/-- `11^(n%2)+4*n` -/
def P3607767484045372253.Spec : Prop :=
  ∀ n, (P3607767484045372253.a n : ℤ) = A166523 (n + 1)

end A166523

/-! ## A166523.P2135622278702268202

`5*xor(1, n+1)-(n-1)`
-/

namespace A166523.P2135622278702268202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 (n + 1) : ℤ) - ((n : ℤ) - 1)

end

end A166523.P2135622278702268202

namespace A166523

/-- `5*xor(1, n+1)-(n-1)` -/
def P2135622278702268202.Spec : Prop :=
  ∀ n, P2135622278702268202.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P12481507875485539923

`4*n+10*and(1, n)+1`
-/

namespace A166523.P12481507875485539923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + (10 * Nat.land 1 n + 1)

end

end A166523.P12481507875485539923

namespace A166523

/-- `4*n+10*and(1, n)+1` -/
def P12481507875485539923.Spec : Prop :=
  ∀ n, (P12481507875485539923.a n : ℤ) = A166523 (n + 1)

end A166523

/-! ## A166523.P5671234498190249732

`8-(a(n-1)-8*n)` with `a(0)=1`
-/

namespace A166523.P5671234498190249732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - (a (n - 1) - (8 * n : ℤ))

end

end A166523.P5671234498190249732

namespace A166523

/-- `8-(a(n-1)-8*n)` -/
def P5671234498190249732.Spec : Prop :=
  ∀ n, P5671234498190249732.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P16083844151412685561

`xor(5, 2*(or(1, n+1)+n)+2)`
-/

namespace A166523.P16083844151412685561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (2 * (Nat.lor 1 (n + 1) + n) + 2)

end

end A166523.P16083844151412685561

namespace A166523

/-- `xor(5, 2*(or(1, n+1)+n)+2)` -/
def P16083844151412685561.Spec : Prop :=
  ∀ n, (P16083844151412685561.a n : ℤ) = A166523 (n + 1)

end A166523

/-! ## A166523.P13347727053262104268

`A266327(n)+4*n`
-/

namespace A166523.P13347727053262104268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (4 * n : ℤ)

end

end A166523.P13347727053262104268

namespace A166523

/-- `A266327(n)+4*n` -/
def P13347727053262104268.Spec : Prop :=
  ∀ n, P13347727053262104268.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P11807960287007243593

`2*A168204(n+1)-1`
-/

namespace A166523.P11807960287007243593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168204 (n + 1) - 1

end

end A166523.P11807960287007243593

namespace A166523

/-- `2*A168204(n+1)-1` -/
def P11807960287007243593.Spec : Prop :=
  ∀ n, P11807960287007243593.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P1301037969725519908

`A168210(n+1)+1+n`
-/

namespace A166523.P1301037969725519908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168210 (n + 1) + 1 + (n : ℤ)

end

end A166523.P1301037969725519908

namespace A166523

/-- `A168210(n+1)+1+n` -/
def P1301037969725519908.Spec : Prop :=
  ∀ n, P1301037969725519908.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P9525277593296828384

`A212959(Δ[or(1, n)])+4*n`
-/

namespace A166523.P9525277593296828384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (4 * n : ℤ)

end

end A166523.P9525277593296828384

namespace A166523

/-- `A212959(Δ[or(1, n)])+4*n` -/
def P9525277593296828384.Spec : Prop :=
  ∀ n, P9525277593296828384.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P6270910818595053393

`xor(7, 2*(A109613(n)+n+2))`
-/

namespace A166523.P6270910818595053393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (2 * (A109613 n + (n + 2 : ℤ)))

end

end A166523.P6270910818595053393

namespace A166523

/-- `xor(7, 2*(A109613(n)+n+2))` -/
def P6270910818595053393.Spec : Prop :=
  ∀ n, P6270910818595053393.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P12775507694656279651

`4*A103517(n)-a(n-1)` with `a(0)=1`
-/

namespace A166523.P12775507694656279651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A103517 n - a (n - 1)

end

end A166523.P12775507694656279651

namespace A166523

/-- `4*A103517(n)-a(n-1)` -/
def P12775507694656279651.Spec : Prop :=
  ∀ n, P12775507694656279651.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P12779318664921223214

`A016813(n)+A010681(n)`
-/

namespace A166523.P12779318664921223214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A010681 n

end

end A166523.P12779318664921223214

namespace A166523

/-- `A016813(n)+A010681(n)` -/
def P12779318664921223214.Spec : Prop :=
  ∀ n, P12779318664921223214.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P9084019432449991681

`A047451(n+1)+A010690(n)`
-/

namespace A166523.P9084019432449991681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1) + A010690 n

end

end A166523.P9084019432449991681

namespace A166523

/-- `A047451(n+1)+A010690(n)` -/
def P9084019432449991681.Spec : Prop :=
  ∀ n, P9084019432449991681.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P5450636828600288077

`A047522(n+1)+A010679(n)`
-/

namespace A166523.P5450636828600288077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1) + A010679 n

end

end A166523.P5450636828600288077

namespace A166523

/-- `A047522(n+1)+A010679(n)` -/
def P5450636828600288077.Spec : Prop :=
  ∀ n, P5450636828600288077.a n = A166523 (n + 1)

end A166523

/-! ## A166523.P3206476536909836185

`A047521(n+1)+A010689(n)`
-/

namespace A166523.P3206476536909836185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (n + 1) + A010689 n

end

end A166523.P3206476536909836185

namespace A166523

/-- `A047521(n+1)+A010689(n)` -/
def P3206476536909836185.Spec : Prop :=
  ∀ n, P3206476536909836185.a n = A166523 (n + 1)

end A166523

/-!
# A166524: a(n) = 9*n - a(n-1), with n>1, a(1)=1.

The programs for A166524, the canonical program `A166524.P6906063897720420801` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166524 has offset 1).

The definition of A166524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166524.P6906063897720420801

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=17, a(2)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166524

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6906063897720420801.Spec : Prop :=
  ∀ n, P6906063897720420801.a n = A166524 (n + 1)

theorem P6906063897720420801.correct : P6906063897720420801.Spec := by
  intro n
  simp only [A166524, Nat.add_sub_cancel]

end A166524

/-! ## A166524.P3225260339077080103

`a(n-2)+9` with `a(0)=1, a(1)=17`
-/

namespace A166524.P3225260339077080103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 2) + 9

end

end A166524.P3225260339077080103

namespace A166524

/-- `a(n-2)+9` -/
def P3225260339077080103.Spec : Prop :=
  ∀ n, (P3225260339077080103.a n : ℤ) = A166524 (n + 1)

end A166524

/-! ## A166524.P13750725078798187149

`∑[9-a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A166524.P13750725078798187149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166524.P13750725078798187149

namespace A166524

/-- `∑[9-a(n-1)]` -/
def P13750725078798187149.Spec : Prop :=
  ∀ n, P13750725078798187149.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P5154003253881982453

`9-(a(n-1)-9*n)` with `a(0)=1`
-/

namespace A166524.P5154003253881982453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - (a (n - 1) - (9 * n : ℤ))

end

end A166524.P5154003253881982453

namespace A166524

/-- `9-(a(n-1)-9*n)` -/
def P5154003253881982453.Spec : Prop :=
  ∀ n, P5154003253881982453.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P9056515330918800707

`A168211(n+1)+1+n`
-/

namespace A166524.P9056515330918800707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168211 (n + 1) + 1 + (n : ℤ)

end

end A166524.P9056515330918800707

namespace A166524

/-- `A168211(n+1)+1+n` -/
def P9056515330918800707.Spec : Prop :=
  ∀ n, P9056515330918800707.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P16998986776238950894

`A017377(n)-n-a(n-1)` with `a(0)=1`
-/

namespace A166524.P16998986776238950894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017377 n - (n : ℤ) - a (n - 1)

end

end A166524.P16998986776238950894

namespace A166524

/-- `A017377(n)-n-a(n-1)` -/
def P16998986776238950894.Spec : Prop :=
  ∀ n, P16998986776238950894.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P13935963552416054395

`A168416(n+1)+A010678(n)`
-/

namespace A166524.P13935963552416054395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168416 (n + 1) + A010678 n

end

end A166524.P13935963552416054395

namespace A166524

/-- `A168416(n+1)+A010678(n)` -/
def P13935963552416054395.Spec : Prop :=
  ∀ n, P13935963552416054395.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P6839850206703548493

`A168419(n+1)+A010689(n)`
-/

namespace A166524.P6839850206703548493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (n + 1) + A010689 n

end

end A166524.P6839850206703548493

namespace A166524

/-- `A168419(n+1)+A010689(n)` -/
def P6839850206703548493.Spec : Prop :=
  ∀ n, P6839850206703548493.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P2181303623517652170

`A166523(n+1)+A030451(n)`
-/

namespace A166524.P2181303623517652170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) + A030451 n

end

end A166524.P2181303623517652170

namespace A166524

/-- `A166523(n+1)+A030451(n)` -/
def P2181303623517652170.Spec : Prop :=
  ∀ n, P2181303623517652170.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P14269735947726212345

`A274406(n+1)+A010690(n)`
-/

namespace A166524.P14269735947726212345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) + A010690 n

end

end A166524.P14269735947726212345

namespace A166524

/-- `A274406(n+1)+A010690(n)` -/
def P14269735947726212345.Spec : Prop :=
  ∀ n, P14269735947726212345.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P895835011895311135

`A301451(n+1)+A010681(n)`
-/

namespace A166524.P895835011895311135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1) + A010681 n

end

end A166524.P895835011895311135

namespace A166524

/-- `A301451(n+1)+A010681(n)` -/
def P895835011895311135.Spec : Prop :=
  ∀ n, P895835011895311135.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P10979172641228748151

`A056081(n+1)-A008591(n)`
-/

namespace A166524.P10979172641228748151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - A008591 n

end

end A166524.P10979172641228748151

namespace A166524

/-- `A056081(n+1)-A008591(n)` -/
def P10979172641228748151.Spec : Prop :=
  ∀ n, P10979172641228748151.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P622116137441051366

`A166525(n+1)-A030451(n)`
-/

namespace A166524.P622116137441051366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (n + 1) - A030451 n

end

end A166524.P622116137441051366

namespace A166524

/-- `A166525(n+1)-A030451(n)` -/
def P622116137441051366.Spec : Prop :=
  ∀ n, P622116137441051366.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P2371093780377643148

`A168233(n+1)+A168210(n+1)`
-/

namespace A166524.P2371093780377643148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (n + 1) + A168210 (n + 1)

end

end A166524.P2371093780377643148

namespace A166524

/-- `A168233(n+1)+A168210(n+1)` -/
def P2371093780377643148.Spec : Prop :=
  ∀ n, P2371093780377643148.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P6730438152222038892

`A168390(n+1)+A168321(n+1)`
-/

namespace A166524.P6730438152222038892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (n + 1) + A168321 (n + 1)

end

end A166524.P6730438152222038892

namespace A166524

/-- `A168390(n+1)+A168321(n+1)` -/
def P6730438152222038892.Spec : Prop :=
  ∀ n, P6730438152222038892.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P13706509412993147158

`A113541(n+1)-A197652(n+1)`
-/

namespace A166524.P13706509412993147158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (n + 1) - A197652 (n + 1)

end

end A166524.P13706509412993147158

namespace A166524

/-- `A113541(n+1)-A197652(n+1)` -/
def P13706509412993147158.Spec : Prop :=
  ∀ n, P13706509412993147158.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P952670974594834070

`2*A166520(n+1)-A008619(n)`
-/

namespace A166524.P952670974594834070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166520 (n + 1) - A008619 n

end

end A166524.P952670974594834070

namespace A166524

/-- `2*A166520(n+1)-A008619(n)` -/
def P952670974594834070.Spec : Prop :=
  ∀ n, P952670974594834070.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P16948463470359292744

`A166033(n+1)-2*A030451(n)`
-/

namespace A166524.P16948463470359292744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166033 (n + 1) - 2 * A030451 n

end

end A166524.P16948463470359292744

namespace A166524

/-- `A166033(n+1)-2*A030451(n)` -/
def P16948463470359292744.Spec : Prop :=
  ∀ n, P16948463470359292744.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P11811452050775864539

`2*A166522(n+1)-A166520(n+1)`
-/

namespace A166524.P11811452050775864539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166522 (n + 1) - A166520 (n + 1)

end

end A166524.P11811452050775864539

namespace A166524

/-- `2*A166522(n+1)-A166520(n+1)` -/
def P11811452050775864539.Spec : Prop :=
  ∀ n, P11811452050775864539.a n = A166524 (n + 1)

end A166524

/-! ## A166524.P7253591378998664526

`2*A166523(n+1)-A166522(n+1)`
-/

namespace A166524.P7253591378998664526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166523 (n + 1) - A166522 (n + 1)

end

end A166524.P7253591378998664526

namespace A166524

/-- `2*A166523(n+1)-A166522(n+1)` -/
def P7253591378998664526.Spec : Prop :=
  ∀ n, P7253591378998664526.a n = A166524 (n + 1)

end A166524

/-!
# A166525: a(n) = 10*n - a(n-1), with n>1, a(1)=1.

The programs for A166525, the canonical program `A166525.P4983604806446718798` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166525 has offset 1).

The definition of A166525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166525.P4983604806446718798

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=19, a(2)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166525

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P4983604806446718798.Spec : Prop :=
  ∀ n, P4983604806446718798.a n = A166525 (n + 1)

theorem P4983604806446718798.correct : P4983604806446718798.Spec := by
  intro n
  simp only [A166525, Nat.add_sub_cancel]

end A166525

/-! ## A166525.P6066088756109561304

`a(n-2)+10` with `a(0)=1, a(1)=19`
-/

namespace A166525.P6066088756109561304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n a =>
  a (n - 2) + 10

end

end A166525.P6066088756109561304

namespace A166525

/-- `a(n-2)+10` -/
def P6066088756109561304.Spec : Prop :=
  ∀ n, (P6066088756109561304.a n : ℤ) = A166525 (n + 1)

end A166525

/-! ## A166525.P11234896212734788200

`∑[10-a(n-1)]` with `a(0)=1, a(1)=18`
-/

namespace A166525.P11234896212734788200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166525.P11234896212734788200

namespace A166525

/-- `∑[10-a(n-1)]` -/
def P11234896212734788200.Spec : Prop :=
  ∀ n, P11234896212734788200.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P1411029519795624947

`10-(a(n-1)-10*n)` with `a(0)=1`
-/

namespace A166525.P1411029519795624947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 - (a (n - 1) - (10 * n : ℤ))

end

end A166525.P1411029519795624947

namespace A166525

/-- `10-(a(n-1)-10*n)` -/
def P1411029519795624947.Spec : Prop :=
  ∀ n, P1411029519795624947.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P8997960460023527716

`∑[10*n%2]+9^(n%2)`
-/

namespace A166525.P8997960460023527716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 ^ (n % 2)

end

end A166525.P8997960460023527716

namespace A166525

/-- `∑[10*n%2]+9^(n%2)` -/
def P8997960460023527716.Spec : Prop :=
  ∀ n, (P8997960460023527716.a n : ℤ) = A166525 (n + 1)

end A166525

/-! ## A166525.P17739238680398657096

`A090771(n+1)+A010681(n)`
-/

namespace A166525.P17739238680398657096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) + A010681 n

end

end A166525.P17739238680398657096

namespace A166525

/-- `A090771(n+1)+A010681(n)` -/
def P17739238680398657096.Spec : Prop :=
  ∀ n, P17739238680398657096.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P12798714343231417814

`A168459(n+1)+A010679(n)`
-/

namespace A166525.P12798714343231417814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (n + 1) + A010679 n

end

end A166525.P12798714343231417814

namespace A166525

/-- `A168459(n+1)+A010679(n)` -/
def P12798714343231417814.Spec : Prop :=
  ∀ n, P12798714343231417814.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P4940517259051874885

`A168461(n+1)+A010690(n)`
-/

namespace A166525.P4940517259051874885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168461 (n + 1) + A010690 n

end

end A166525.P4940517259051874885

namespace A166525

/-- `A168461(n+1)+A010690(n)` -/
def P4940517259051874885.Spec : Prop :=
  ∀ n, P4940517259051874885.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P9482084546159073537

`A166524(n+1)+A030451(n)`
-/

namespace A166525.P9482084546159073537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1) + A030451 n

end

end A166525.P9482084546159073537

namespace A166525

/-- `A166524(n+1)+A030451(n)` -/
def P9482084546159073537.Spec : Prop :=
  ∀ n, P9482084546159073537.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P5895283427609787652

`A166033(n+1)-A030451(n)`
-/

namespace A166525.P5895283427609787652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166033 (n + 1) - A030451 n

end

end A166525.P5895283427609787652

namespace A166525

/-- `A166033(n+1)-A030451(n)` -/
def P5895283427609787652.Spec : Prop :=
  ∀ n, P5895283427609787652.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P2488167660307870065

`A008619(n)+9*A030451(n)`
-/

namespace A166525.P2488167660307870065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 9 * A030451 n

end

end A166525.P2488167660307870065

namespace A166525

/-- `A008619(n)+9*A030451(n)` -/
def P2488167660307870065.Spec : Prop :=
  ∀ n, P2488167660307870065.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P9683954052463907641

`A168233(n+1)+A168211(n+1)`
-/

namespace A166525.P9683954052463907641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (n + 1) + A168211 (n + 1)

end

end A166525.P9683954052463907641

namespace A166525

/-- `A168233(n+1)+A168211(n+1)` -/
def P9683954052463907641.Spec : Prop :=
  ∀ n, P9683954052463907641.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P16508644224983522882

`A166523(n+1)+2*A030451(n)`
-/

namespace A166525.P16508644224983522882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) + 2 * A030451 n

end

end A166525.P16508644224983522882

namespace A166525

/-- `A166523(n+1)+2*A030451(n)` -/
def P16508644224983522882.Spec : Prop :=
  ∀ n, P16508644224983522882.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P10499124346091228631

`2*A122088(n+1)-A010684(n)`
-/

namespace A166525.P10499124346091228631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122088 (n + 1) - A010684 n

end

end A166525.P10499124346091228631

namespace A166525

/-- `2*A122088(n+1)-A010684(n)` -/
def P10499124346091228631.Spec : Prop :=
  ∀ n, P10499124346091228631.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P6610117365700065252

`A166526(n+1)-2*A030451(n)`
-/

namespace A166525.P6610117365700065252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166526 (n + 1) - 2 * A030451 n

end

end A166525.P6610117365700065252

namespace A166525

/-- `A166526(n+1)-2*A030451(n)` -/
def P6610117365700065252.Spec : Prop :=
  ∀ n, P6610117365700065252.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P17448000222367135460

`2*A166523(n+1)-A166521(n+1)`
-/

namespace A166525.P17448000222367135460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166523 (n + 1) - A166521 (n + 1)

end

end A166525.P17448000222367135460

namespace A166525

/-- `2*A166523(n+1)-A166521(n+1)` -/
def P17448000222367135460.Spec : Prop :=
  ∀ n, P17448000222367135460.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P6369815651012022240

`(A166526(n+1)+A166523(n+1))/2`
-/

namespace A166525.P6369815651012022240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166526 (n + 1) + A166523 (n + 1) : ℚ) / 2

end

end A166525.P6369815651012022240

namespace A166525

/-- `(A166526(n+1)+A166523(n+1))/2` -/
def P6369815651012022240.Spec : Prop :=
  ∀ n, P6369815651012022240.a n = (A166525 (n + 1) : ℚ)

end A166525

/-! ## A166525.P8232141924253499349

`A166520(n+1)+A166526(n+1)-A166522(n+1)`
-/

namespace A166525.P8232141924253499349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) + (A166526 (n + 1) - A166522 (n + 1))

end

end A166525.P8232141924253499349

namespace A166525

/-- `A166520(n+1)+A166526(n+1)-A166522(n+1)` -/
def P8232141924253499349.Spec : Prop :=
  ∀ n, P8232141924253499349.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P7370609612562494823

`A166521(n+1)+A166524(n+1)-A166520(n+1)`
-/

namespace A166525.P7370609612562494823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) + (A166524 (n + 1) - A166520 (n + 1))

end

end A166525.P7370609612562494823

namespace A166525

/-- `A166521(n+1)+A166524(n+1)-A166520(n+1)` -/
def P7370609612562494823.Spec : Prop :=
  ∀ n, P7370609612562494823.a n = A166525 (n + 1)

end A166525

/-! ## A166525.P14088998526111856747

`A166521(n+1)+A166526(n+1)-A166523(n+1)`
-/

namespace A166525.P14088998526111856747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) + (A166526 (n + 1) - A166523 (n + 1))

end

end A166525.P14088998526111856747

namespace A166525

/-- `A166521(n+1)+A166526(n+1)-A166523(n+1)` -/
def P14088998526111856747.Spec : Prop :=
  ∀ n, P14088998526111856747.a n = A166525 (n + 1)

end A166525

/-!
# A166526: a(n) = 12*n - a(n-1), with n>1, a(1)=1.

The programs for A166526, the canonical program `A166526.P2859724569642262394` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166526 has offset 1).

The definition of A166526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166526.P2859724569642262394

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=23, a(2)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166526

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2859724569642262394.Spec : Prop :=
  ∀ n, P2859724569642262394.a n = A166526 (n + 1)

theorem P2859724569642262394.correct : P2859724569642262394.Spec := by
  intro n
  simp only [A166526, Nat.add_sub_cancel]

end A166526

/-! ## A166526.P16074629281279240369

`a(n-2)+12` with `a(0)=1, a(1)=23`
-/

namespace A166526.P16074629281279240369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n a =>
  a (n - 2) + 12

end

end A166526.P16074629281279240369

namespace A166526

/-- `a(n-2)+12` -/
def P16074629281279240369.Spec : Prop :=
  ∀ n, (P16074629281279240369.a n : ℤ) = A166526 (n + 1)

end A166526

/-! ## A166526.P7341695274199529398

`∑[12-a(n-1)]` with `a(0)=1, a(1)=22`
-/

namespace A166526.P7341695274199529398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166526.P7341695274199529398

namespace A166526

/-- `∑[12-a(n-1)]` -/
def P7341695274199529398.Spec : Prop :=
  ∀ n, P7341695274199529398.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P7013642895180099518

`xor(9, 8*(n+1))-2*n`
-/

namespace A166526.P7013642895180099518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 9 (8 * (n + 1)) : ℤ) - (2 * n : ℤ)

end

end A166526.P7013642895180099518

namespace A166526

/-- `xor(9, 8*(n+1))-2*n` -/
def P7013642895180099518.Spec : Prop :=
  ∀ n, P7013642895180099518.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P14000856117153983684

`12-(a(n-1)-12*n)` with `a(0)=1`
-/

namespace A166526.P14000856117153983684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  12 - (a (n - 1) - (12 * n : ℤ))

end

end A166526.P14000856117153983684

namespace A166526

/-- `12-(a(n-1)-12*n)` -/
def P14000856117153983684.Spec : Prop :=
  ∀ n, P14000856117153983684.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P5707614186269648321

`abs(1-6*Δ[lcm(2, n+1)])`
-/

namespace A166526.P5707614186269648321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 6 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A166526.P5707614186269648321

namespace A166526

/-- `abs(1-6*Δ[lcm(2, n+1)])` -/
def P5707614186269648321.Spec : Prop :=
  ∀ n, P5707614186269648321.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P10484326568917255688

`Δ[4*xor(1, n²)-(3-n)²]`
-/

namespace A166526.P10484326568917255688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.xor 1 (n ^ 2) : ℤ) - (3 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166526.P10484326568917255688

namespace A166526

/-- `Δ[4*xor(1, n²)-(3-n)²]` -/
def P10484326568917255688.Spec : Prop :=
  ∀ n, P10484326568917255688.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P4517284765627068909

`6*A103517(n)-a(n-1)` with `a(0)=1`
-/

namespace A166526.P4517284765627068909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * A103517 n - a (n - 1)

end

end A166526.P4517284765627068909

namespace A166526

/-- `6*A103517(n)-a(n-1)` -/
def P4517284765627068909.Spec : Prop :=
  ∀ n, P4517284765627068909.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P18408967621060718199

`6*n+1+8*A010873(2*n)`
-/

namespace A166526.P18408967621060718199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) + 8 * A010873 (2 * n)

end

end A166526.P18408967621060718199

namespace A166526

/-- `6*n+1+8*A010873(2*n)` -/
def P18408967621060718199.Spec : Prop :=
  ∀ n, P18408967621060718199.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P4252233272787598134

`A166033(n+1)+A030451(n)`
-/

namespace A166526.P4252233272787598134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166033 (n + 1) + A030451 n

end

end A166526.P4252233272787598134

namespace A166526

/-- `A166033(n+1)+A030451(n)` -/
def P4252233272787598134.Spec : Prop :=
  ∀ n, P4252233272787598134.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P13871050505580796164

`A016921(n)+8*A010673(n)`
-/

namespace A166526.P13871050505580796164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + 8 * A010673 n

end

end A166526.P13871050505580796164

namespace A166526

/-- `A016921(n)+8*A010673(n)` -/
def P13871050505580796164.Spec : Prop :=
  ∀ n, P13871050505580796164.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P16898076365220722053

`A008619(n)+11*A030451(n)`
-/

namespace A166526.P16898076365220722053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 11 * A030451 n

end

end A166526.P16898076365220722053

namespace A166526

/-- `A008619(n)+11*A030451(n)` -/
def P16898076365220722053.Spec : Prop :=
  ∀ n, P16898076365220722053.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P17077157109721004015

`A166525(n+1)+2*A030451(n)`
-/

namespace A166526.P17077157109721004015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (n + 1) + 2 * A030451 n

end

end A166526.P17077157109721004015

namespace A166526

/-- `A166525(n+1)+2*A030451(n)` -/
def P17077157109721004015.Spec : Prop :=
  ∀ n, P17077157109721004015.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P10046090613475584001

`A272975(n+1)+A000034(n)²²`
-/

namespace A166526.P10046090613475584001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1) + (A000034 n ^ 2) ^ 2

end

end A166526.P10046090613475584001

namespace A166526

/-- `A272975(n+1)+A000034(n)²²` -/
def P10046090613475584001.Spec : Prop :=
  ∀ n, P10046090613475584001.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P7646258363143607621

`2*A166524(n+1)-A166521(n+1)`
-/

namespace A166526.P7646258363143607621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166524 (n + 1) - A166521 (n + 1)

end

end A166526.P7646258363143607621

namespace A166526

/-- `2*A166524(n+1)-A166521(n+1)` -/
def P7646258363143607621.Spec : Prop :=
  ∀ n, P7646258363143607621.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P10204155162207090996

`2*A166525(n+1)-A166523(n+1)`
-/

namespace A166526.P10204155162207090996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166525 (n + 1) - A166523 (n + 1)

end

end A166526.P10204155162207090996

namespace A166526

/-- `2*A166525(n+1)-A166523(n+1)` -/
def P10204155162207090996.Spec : Prop :=
  ∀ n, P10204155162207090996.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P9138713559525486859

`A016921(n)+(A091998(n+1)-A016921(n))²`
-/

namespace A166526.P9138713559525486859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + (A091998 (n + 1) - A016921 n) ^ 2

end

end A166526.P9138713559525486859

namespace A166526

/-- `A016921(n)+(A091998(n+1)-A016921(n))²` -/
def P9138713559525486859.Spec : Prop :=
  ∀ n, P9138713559525486859.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P1771124157868658933

`A166522(n+1)+A166525(n+1)-A166520(n+1)`
-/

namespace A166526.P1771124157868658933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) + (A166525 (n + 1) - A166520 (n + 1))

end

end A166526.P1771124157868658933

namespace A166526

/-- `A166522(n+1)+A166525(n+1)-A166520(n+1)` -/
def P1771124157868658933.Spec : Prop :=
  ∀ n, P1771124157868658933.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P9451667354334693003

`A166523(n+1)+A166524(n+1)-A166520(n+1)`
-/

namespace A166526.P9451667354334693003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) + (A166524 (n + 1) - A166520 (n + 1))

end

end A166526.P9451667354334693003

namespace A166526

/-- `A166523(n+1)+A166524(n+1)-A166520(n+1)` -/
def P9451667354334693003.Spec : Prop :=
  ∀ n, P9451667354334693003.a n = A166526 (n + 1)

end A166526

/-! ## A166526.P3533737078665516929

`A166523(n+1)+A166525(n+1)-A166521(n+1)`
-/

namespace A166526.P3533737078665516929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) + (A166525 (n + 1) - A166521 (n + 1))

end

end A166526.P3533737078665516929

namespace A166526

/-- `A166523(n+1)+A166525(n+1)-A166521(n+1)` -/
def P3533737078665516929.Spec : Prop :=
  ∀ n, P3533737078665516929.a n = A166526 (n + 1)

end A166526

/-!
# A166527: Complement of A076537.

The programs for A166527, the canonical program `A166527.P3407768485719253100` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166527 has offset 1).

The definition of A166527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166527.P3407768485719253100

`eq[1, A077478(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A166527

/-- `eq[1, A077478(n+1)]+1` -/
def P3407768485719253100.Spec : Prop :=
  ∀ n, (P3407768485719253100.a n : ℤ) = A166527 (n + 1)

theorem P3407768485719253100.correct : P3407768485719253100.Spec := by
  intro n
  simp only [A166527, Nat.add_sub_cancel]

end A166527

/-! ## A166527.P13826262572988663483

`lt[acot(n), A300294(n+1)]`
-/

namespace A166527.P13826262572988663483
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A166527.P13826262572988663483

namespace A166527

/-- `lt[acot(n), A300294(n+1)]` -/
def P13826262572988663483.Spec : Prop :=
  ∀ n, (P13826262572988663483.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P16732239691745792215

`filter[n+1, A054431(#)]`
-/

namespace A166527.P16732239691745792215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054431 (f1 j) = 1) n)

end

end A166527.P16732239691745792215

namespace A166527

/-- `filter[n+1, A054431(#)]` -/
def P16732239691745792215.Spec : Prop :=
  ∀ n, (P16732239691745792215.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P104447684127253546

`eq[0, A076953(n+1)]+1`
-/

namespace A166527.P104447684127253546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P104447684127253546

namespace A166527

/-- `eq[0, A076953(n+1)]+1` -/
def P104447684127253546.Spec : Prop :=
  ∀ n, (P104447684127253546.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P10991874895488019921

`eq[1, A003989(n+1)]+1`
-/

namespace A166527.P10991874895488019921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P10991874895488019921

namespace A166527

/-- `eq[1, A003989(n+1)]+1` -/
def P10991874895488019921.Spec : Prop :=
  ∀ n, (P10991874895488019921.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P9064830010916439481

`lt[0, A054431(n+1)]+1`
-/

namespace A166527.P9064830010916439481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166527.P9064830010916439481

namespace A166527

/-- `lt[0, A054431(n+1)]+1` -/
def P9064830010916439481.Spec : Prop :=
  ∀ n, (P9064830010916439481.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P2737296429415041283

`eq[A054977(n), A300294(n+1)]`
-/

namespace A166527.P2737296429415041283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166527.P2737296429415041283

namespace A166527

/-- `eq[A054977(n), A300294(n+1)]` -/
def P2737296429415041283.Spec : Prop :=
  ∀ n, (P2737296429415041283.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P12111596773292758927

`eq[A057427(n), A300294(n+1)]`
-/

namespace A166527.P12111596773292758927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166527.P12111596773292758927

namespace A166527

/-- `eq[A057427(n), A300294(n+1)]` -/
def P12111596773292758927.Spec : Prop :=
  ∀ n, (P12111596773292758927.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P9984917258399761983

`eq[A158388(n), A300294(n+1)]`
-/

namespace A166527.P9984917258399761983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166527.P9984917258399761983

namespace A166527

/-- `eq[A158388(n), A300294(n+1)]` -/
def P9984917258399761983.Spec : Prop :=
  ∀ n, (P9984917258399761983.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P14470622480347479004

`A083920(A169581(n+2))`
-/

namespace A166527.P14470622480347479004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A169581 (n + 2)).toNat

end

end A166527.P14470622480347479004

namespace A166527

/-- `A083920(A169581(n+2))` -/
def P14470622480347479004.Spec : Prop :=
  ∀ n, P14470622480347479004.a n = A166527 (n + 1)

end A166527

/-! ## A166527.P3092127358510075198

`eq[1, A184097(n+1)]+1`
-/

namespace A166527.P3092127358510075198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P3092127358510075198

namespace A166527

/-- `eq[1, A184097(n+1)]+1` -/
def P3092127358510075198.Spec : Prop :=
  ∀ n, (P3092127358510075198.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P4084298135164306945

`lt[0, A054425(n+1)]+1`
-/

namespace A166527.P4084298135164306945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166527.P4084298135164306945

namespace A166527

/-- `lt[0, A054425(n+1)]+1` -/
def P4084298135164306945.Spec : Prop :=
  ∀ n, (P4084298135164306945.a n : ℤ) = A166527 (n + 1)

end A166527

/-! ## A166527.P9713233153663290456

`∑[A132068(n+2)]`
-/

namespace A166527.P9713233153663290456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166527.P9713233153663290456

namespace A166527

/-- `∑[A132068(n+2)]` -/
def P9713233153663290456.Spec : Prop :=
  ∀ n, P9713233153663290456.a n = A166527 (n + 1)

end A166527

/-!
# A166534: Numbers n with property that n^3 is concatenation of exactly three primes: leading zeros not allowed.

The programs for A166534, there is no canonical definition to state claims against.
-/

/-! ## A166534.P3643101048546129900

`∩[A052044(n+1), A166533(n+1)]`
-/

namespace A166534.P3643101048546129900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166534.P3643101048546129900

/-! ## A166534.P11467517503118793887

`A166533(A363246(n+2))`
-/

namespace A166534.P11467517503118793887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166533 (A363246 (n + 2)).toNat

end

end A166534.P11467517503118793887

/-! ## A166534.P2653072003956260123

`A166533(lt[A211227(n), A001597(n+1)])`
-/

namespace A166534.P2653072003956260123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166533 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166534.P2653072003956260123

/-!
# A166535: Positive integers whose binary representation does not contain a run of more than three consecutive 0's or 1's.

The programs for A166535, the canonical program `A166535.P307768964407928215` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166535 has offset 1).

The definition of A166535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166535.P17212475692771196892

`lt[A043276(n+1), 4]+1`
-/

namespace A166535.P17212475692771196892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166535.P17212475692771196892

namespace A166535

/-- `lt[A043276(n+1), 4]+1` -/
def P17212475692771196892.Spec : Prop :=
  ∀ n, (P17212475692771196892.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P3272539451507426795

`lt[n+1, 2^A075172(n+1)]+1`
-/

namespace A166535.P3272539451507426795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A075172 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A166535.P3272539451507426795

namespace A166535

/-- `lt[n+1, 2^A075172(n+1)]+1` -/
def P3272539451507426795.Spec : Prop :=
  ∀ n, (P3272539451507426795.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P3646892167724088582

`eq[A070939(n), A075172(n)]`
-/

namespace A166535.P3646892167724088582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P3646892167724088582

namespace A166535

/-- `eq[A070939(n), A075172(n)]` -/
def P3646892167724088582.Spec : Prop :=
  ∀ n, (P3646892167724088582.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P307768964407928215

`eq[A000007(n), A014082(A279645(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A166535

/-- `eq[A000007(n), A014082(A279645(n))]` -/
def P307768964407928215.Spec : Prop :=
  ∀ n, (P307768964407928215.a n : ℤ) = A166535 (n + 1)

theorem P307768964407928215.correct : P307768964407928215.Spec := by
  intro n
  simp only [A166535, Nat.add_sub_cancel]

end A166535

/-! ## A166535.P6973901584532278187

`eq[A000038(n), A014082(A279645(n))]`
-/

namespace A166535.P6973901584532278187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P6973901584532278187

namespace A166535

/-- `eq[A000038(n), A014082(A279645(n))]` -/
def P6973901584532278187.Spec : Prop :=
  ∀ n, (P6973901584532278187.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P9463131373438252790

`eq[A057427(n), A329720(A279645(n))]`
-/

namespace A166535.P9463131373438252790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P9463131373438252790

namespace A166535

/-- `eq[A057427(n), A329720(A279645(n))]` -/
def P9463131373438252790.Spec : Prop :=
  ∀ n, (P9463131373438252790.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P6219217092800863395

`eq[A137688(n)%2, A014082(A279645(n))]`
-/

namespace A166535.P6219217092800863395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P6219217092800863395

namespace A166535

/-- `eq[A137688(n)%2, A014082(A279645(n))]` -/
def P6219217092800863395.Spec : Prop :=
  ∀ n, (P6219217092800863395.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P1344669607949727241

`eq[A075172(n), A136480(A003817(n))]`
-/

namespace A166535.P1344669607949727241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P1344669607949727241

namespace A166535

/-- `eq[A075172(n), A136480(A003817(n))]` -/
def P1344669607949727241.Spec : Prop :=
  ∀ n, (P1344669607949727241.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P7336964842252491445

`eq[A014082(A279645(n)), A266070(2*n)]`
-/

namespace A166535.P7336964842252491445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166535.P7336964842252491445

namespace A166535

/-- `eq[A014082(A279645(n)), A266070(2*n)]` -/
def P7336964842252491445.Spec : Prop :=
  ∀ n, (P7336964842252491445.a n : ℤ) = A166535 (n + 1)

end A166535

/-! ## A166535.P7121527001422576340

`A344022(n+2)`
-/

namespace A166535.P7121527001422576340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344022 (n + 2)

end

end A166535.P7121527001422576340

namespace A166535

/-- `A344022(n+2)` -/
def P7121527001422576340.Spec : Prop :=
  ∀ n, P7121527001422576340.a n = A166535 (n + 1)

end A166535

/-!
# A166536: A product of consecutive doubled Fibonacci numbers.

The programs for A166536, the canonical program `A166536.P15831637129453228964` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166536 has offset 0).

The definition of A166536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166536.P15831637129453228964

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=16`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166536

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P15831637129453228964.Spec : Prop :=
  ∀ n, P15831637129453228964.a n = A166536 n

theorem P15831637129453228964.correct : P15831637129453228964.Spec := by
  intro n
  simp only [A166536]

end A166536

/-! ## A166536.P9019959222400838921

`∑[A059929(n)]+1`
-/

namespace A166536.P9019959222400838921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166536.P9019959222400838921

namespace A166536

/-- `∑[A059929(n)]+1` -/
def P9019959222400838921.Spec : Prop :=
  ∀ n, P9019959222400838921.a n = A166536 n

end A166536

/-! ## A166536.P7806780469182531149

`∑[A208176(n)]-n`
-/

namespace A166536.P7806780469182531149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A166536.P7806780469182531149

namespace A166536

/-- `∑[A208176(n)]-n` -/
def P7806780469182531149.Spec : Prop :=
  ∀ n, P7806780469182531149.a n = A166536 n

end A166536

/-! ## A166536.P13200054445952840146

`A059840(n+2)+1`
-/

namespace A166536.P13200054445952840146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2) + 1

end

end A166536.P13200054445952840146

namespace A166536

/-- `A059840(n+2)+1` -/
def P13200054445952840146.Spec : Prop :=
  ∀ n, P13200054445952840146.a n = A166536 n

end A166536

/-! ## A166536.P4045619960819613371

`∑[record[A236165(2*n)]]`
-/

namespace A166536.P4045619960819613371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166536.P4045619960819613371

namespace A166536

/-- `∑[record[A236165(2*n)]]` -/
def P4045619960819613371.Spec : Prop :=
  ∀ n, P4045619960819613371.a n = A166536 n

end A166536

/-! ## A166536.P2008854179755726957

`∑[abs(∑[A260259(n)])]+n`
-/

namespace A166536.P2008854179755726957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A166536.P2008854179755726957

namespace A166536

/-- `∑[abs(∑[A260259(n)])]+n` -/
def P2008854179755726957.Spec : Prop :=
  ∀ n, P2008854179755726957.a n = A166536 n

end A166536

/-! ## A166536.P858766899324285037

`A001654(n+1)+and(1, n)`
-/

namespace A166536.P858766899324285037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) + (Nat.land 1 n : ℤ)

end

end A166536.P858766899324285037

namespace A166536

/-- `A001654(n+1)+and(1, n)` -/
def P858766899324285037.Spec : Prop :=
  ∀ n, P858766899324285037.a n = A166536 n

end A166536

/-! ## A166536.P11559714517728786319

`A070550(2*n)+and(1, n)`
-/

namespace A166536.P11559714517728786319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (2 * n) + (Nat.land 1 n : ℤ)

end

end A166536.P11559714517728786319

namespace A166536

/-- `A070550(2*n)+and(1, n)` -/
def P11559714517728786319.Spec : Prop :=
  ∀ n, P11559714517728786319.a n = A166536 n

end A166536

/-! ## A166536.P11965654672633227829

`floor(∑[(ϕ*A000045(n))²])+1`
-/

namespace A166536.P11965654672633227829
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (A000045 n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A166536.P11965654672633227829

namespace A166536

/-- `floor(∑[(ϕ*A000045(n))²])+1` -/
def P11965654672633227829.Spec : Prop :=
  ∀ n, P11965654672633227829.a n = A166536 n

end A166536

/-! ## A166536.P4401609058468992510

`A006498(2*n+1)+and(1, n)`
-/

namespace A166536.P4401609058468992510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n + 1) + (Nat.land 1 n : ℤ)

end

end A166536.P4401609058468992510

namespace A166536

/-- `A006498(2*n+1)+and(1, n)` -/
def P4401609058468992510.Spec : Prop :=
  ∀ n, P4401609058468992510.a n = A166536 n

end A166536

/-! ## A166536.P11966381502358594054

`A052925(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A166536.P11966381502358594054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052925 (n + 1) - a (n - 1)

end

end A166536.P11966381502358594054

namespace A166536

/-- `A052925(n+1)-a(n-1)` -/
def P11966381502358594054.Spec : Prop :=
  ∀ n, P11966381502358594054.a n = A166536 n

end A166536

/-! ## A166536.P9630242898971701455

`A055588(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A166536.P9630242898971701455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055588 (n + 1) - a (n - 1)

end

end A166536.P9630242898971701455

namespace A166536

/-- `A055588(n+1)-a(n-1)` -/
def P9630242898971701455.Spec : Prop :=
  ∀ n, P9630242898971701455.a n = A166536 n

end A166536

/-! ## A166536.P3999242141288798155

`∑[A000045(n+1)²]+n%2`
-/

namespace A166536.P3999242141288798155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 : ℕ) : ℤ)

end

end A166536.P3999242141288798155

namespace A166536

/-- `∑[A000045(n+1)²]+n%2` -/
def P3999242141288798155.Spec : Prop :=
  ∀ n, P3999242141288798155.a n = A166536 n

end A166536

/-! ## A166536.P15804691042108755762

`A000045(Δ[n²])+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A166536.P15804691042108755762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + a (n - 2)

end

end A166536.P15804691042108755762

namespace A166536

/-- `A000045(Δ[n²])+a(n-2)` -/
def P15804691042108755762.Spec : Prop :=
  ∀ n, P15804691042108755762.a n = A166536 n

end A166536

/-! ## A166536.P922357014166479040

`Δ[A000045(2*n)]+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A166536.P922357014166479040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A166536.P922357014166479040

namespace A166536

/-- `Δ[A000045(2*n)]+a(n-2)` -/
def P922357014166479040.Spec : Prop :=
  ∀ n, P922357014166479040.a n = A166536 n

end A166536

/-! ## A166536.P18153339138074922513

`A000045(2*(n+1))+1-a(n-1)` with `a(0)=1`
-/

namespace A166536.P18153339138074922513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (2 * (n + 1)) + (1 - a (n - 1))

end

end A166536.P18153339138074922513

namespace A166536

/-- `A000045(2*(n+1))+1-a(n-1)` -/
def P18153339138074922513.Spec : Prop :=
  ∀ n, P18153339138074922513.a n = A166536 n

end A166536

/-! ## A166536.P15064732431062396228

`A110035(n)+A007598(n)`
-/

namespace A166536.P15064732431062396228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n + A007598 n

end

end A166536.P15064732431062396228

namespace A166536

/-- `A110035(n)+A007598(n)` -/
def P15064732431062396228.Spec : Prop :=
  ∀ n, P15064732431062396228.a n = A166536 n

end A166536

/-! ## A166536.P8146852080209568967

`A107387(n)+A038990(n)`
-/

namespace A166536.P8146852080209568967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 n + A038990 n

end

end A166536.P8146852080209568967

namespace A166536

/-- `A107387(n)+A038990(n)` -/
def P8146852080209568967.Spec : Prop :=
  ∀ n, P8146852080209568967.a n = A166536 n

end A166536

/-! ## A166536.P14109387114760874563

`A080513(n)+A080145(n)`
-/

namespace A166536.P14109387114760874563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A080145 n

end

end A166536.P14109387114760874563

namespace A166536

/-- `A080513(n)+A080145(n)` -/
def P14109387114760874563.Spec : Prop :=
  ∀ n, P14109387114760874563.a n = A166536 n

end A166536

/-!
# A166539: a(n) = (10*n + 7*(-1)^n + 5)/4.

The programs for A166539, the canonical program `A166539.P6700539804559577236` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166539 has offset 1).

The definition of A166539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166539.P6700539804559577236

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=8, a(2)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166539

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6700539804559577236.Spec : Prop :=
  ∀ n, P6700539804559577236.a n = A166539 (n + 1)

theorem P6700539804559577236.correct : P6700539804559577236.Spec := by
  intro n
  simp only [A166539, Nat.add_sub_cancel]

end A166539

/-! ## A166539.P283547525257833589

`a(n-2)+5` with `a(0)=2, a(1)=8`
-/

namespace A166539.P283547525257833589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + 5

end

end A166539.P283547525257833589

namespace A166539

/-- `a(n-2)+5` -/
def P283547525257833589.Spec : Prop :=
  ∀ n, (P283547525257833589.a n : ℤ) = A166539 (n + 1)

end A166539

/-! ## A166539.P1313863299045849241

`∑[5-a(n-1)]` with `a(0)=2, a(1)=6`
-/

namespace A166539.P1313863299045849241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166539.P1313863299045849241

namespace A166539

/-- `∑[5-a(n-1)]` -/
def P1313863299045849241.Spec : Prop :=
  ∀ n, P1313863299045849241.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P16985600462890905530

`5-floor(-a(n-2))` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A166539.P16985600462890905530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  5 - (-a (n - 2))

end

end A166539.P16985600462890905530

namespace A166539

/-- `5-floor(-a(n-2))` -/
def P16985600462890905530.Spec : Prop :=
  ∀ n, P16985600462890905530.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P15289801620318724931

`5-ceil(-a(n-2))` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A166539.P15289801620318724931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  5 - (-a (n - 2))

end

end A166539.P15289801620318724931

namespace A166539

/-- `5-ceil(-a(n-2))` -/
def P15289801620318724931.Spec : Prop :=
  ∀ n, P15289801620318724931.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P3998779394690708477

`5-round(-a(n-2))` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A166539.P3998779394690708477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  5 - (-a (n - 2))

end

end A166539.P3998779394690708477

namespace A166539

/-- `5-round(-a(n-2))` -/
def P3998779394690708477.Spec : Prop :=
  ∀ n, P3998779394690708477.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P3975467331073101633

`5*n-a(n-3)` with `a(0)=2, a(1)=8, a(2)=7`
-/

namespace A166539.P3975467331073101633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 7] fun n a =>
  (5 * n : ℤ) - a (n - 3)

end

end A166539.P3975467331073101633

namespace A166539

/-- `5*n-a(n-3)` -/
def P3975467331073101633.Spec : Prop :=
  ∀ n, P3975467331073101633.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P12020566732435111167

`7-(4/2-a(n-2))` with `a(0)=2, a(1)=8`
-/

namespace A166539.P12020566732435111167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 8] fun n a =>
  7 - ((4 : ℚ) / 2 - a (n - 2))

end

end A166539.P12020566732435111167

namespace A166539

/-- `7-(4/2-a(n-2))` -/
def P12020566732435111167.Spec : Prop :=
  ∀ n, P12020566732435111167.a n = (A166539 (n + 1) : ℚ)

end A166539

/-! ## A166539.P1092731659587894463

`∑[gcd(2, n+1)^3-2]+3`
-/

namespace A166539.P1092731659587894463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 3 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A166539.P1092731659587894463

namespace A166539

/-- `∑[gcd(2, n+1)^3-2]+3` -/
def P1092731659587894463.Spec : Prop :=
  ∀ n, P1092731659587894463.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P4483417791295595957

`record[(n+2)/dr((2*n+1)²)]-2*n`
-/

namespace A166539.P4483417791295595957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℚ)

end

end A166539.P4483417791295595957

namespace A166539

/-- `record[(n+2)/dr((2*n+1)²)]-2*n` -/
def P4483417791295595957.Spec : Prop :=
  ∀ n, P4483417791295595957.a n = (A166539 (n + 1) : ℚ)

end A166539

/-! ## A166539.P14450994510624908427

`floor(a(n-1)-(a(n-3)-a(n-2)))` with `a(0)=2, a(1)=8, a(2)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A166539.P14450994510624908427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 7] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2))

end

end A166539.P14450994510624908427

namespace A166539

/-- `floor(a(n-1)-(a(n-3)-a(n-2)))` -/
def P14450994510624908427.Spec : Prop :=
  ∀ n, P14450994510624908427.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P15305057040915940373

`A168333(n+1)-n`
-/

namespace A166539.P15305057040915940373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) - (n : ℤ)

end

end A166539.P15305057040915940373

namespace A166539

/-- `A168333(n+1)-n` -/
def P15305057040915940373.Spec : Prop :=
  ∀ n, P15305057040915940373.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P9314334919123599209

`∑[A010678(n)]+2-n`
-/

namespace A166539.P9314334919123599209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - (n : ℤ))

end

end A166539.P9314334919123599209

namespace A166539

/-- `∑[A010678(n)]+2-n` -/
def P9314334919123599209.Spec : Prop :=
  ∀ n, P9314334919123599209.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P1881040019880539970

`A168198(n+1)+1+n`
-/

namespace A166539.P1881040019880539970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (n + 1) + 1 + (n : ℤ)

end

end A166539.P1881040019880539970

namespace A166539

/-- `A168198(n+1)+1+n` -/
def P1881040019880539970.Spec : Prop :=
  ∀ n, P1881040019880539970.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P11689433018503724678

`A168331(n+1)-(n+1)`
-/

namespace A166539.P11689433018503724678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (n + 1) - (n + 1 : ℤ)

end

end A166539.P11689433018503724678

namespace A166539

/-- `A168331(n+1)-(n+1)` -/
def P11689433018503724678.Spec : Prop :=
  ∀ n, P11689433018503724678.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P3714064073866348160

`A168337(n+1)+1-n`
-/

namespace A166539.P3714064073866348160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + (1 - (n : ℤ))

end

end A166539.P3714064073866348160

namespace A166539

/-- `A168337(n+1)+1-n` -/
def P3714064073866348160.Spec : Prop :=
  ∀ n, P3714064073866348160.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P12346183129639513731

`A168212(n+1)-(n+2)`
-/

namespace A166539.P12346183129639513731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168212 (n + 1) - (n + 2 : ℤ)

end

end A166539.P12346183129639513731

namespace A166539

/-- `A168212(n+1)-(n+2)` -/
def P12346183129639513731.Spec : Prop :=
  ∀ n, P12346183129639513731.a n = A166539 (n + 1)

end A166539

/-! ## A166539.P10734384569990899445

`A168374(n+1)+2-n`
-/

namespace A166539.P10734384569990899445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + (2 - (n : ℤ))

end

end A166539.P10734384569990899445

namespace A166539

/-- `A168374(n+1)+2-n` -/
def P10734384569990899445.Spec : Prop :=
  ∀ n, P10734384569990899445.a n = A166539 (n + 1)

end A166539

/-!
# A166540: Number of ways to place 2 nonattacking kings on an n X n X n raumschach board.

The programs for A166540, there is no canonical definition to state claims against.
-/

/-! ## A166540.P13858585951453537788

`A194604(A253145(n)+3)`
-/

namespace A166540.P13858585951453537788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A253145 n + 3).toNat

end

end A166540.P13858585951453537788

/-! ## A166540.P15559136095062562261

`A194604(A350660(n+3))`
-/

namespace A166540.P15559136095062562261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A350660 (n + 3)).toNat

end

end A166540.P15559136095062562261

/-! ## A166540.P15392146973763318756

`A194604(∑[A289207(n)+3])`
-/

namespace A166540.P15392146973763318756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166540.P15392146973763318756

/-! ## A166540.P10076360662746704281

`A194604(A134869(n+1)+2)`
-/

namespace A166540.P10076360662746704281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A134869 (n + 1) + 2).toNat

end

end A166540.P10076360662746704281

/-! ## A166540.P18133784505911148564

`A194604(∑[A233583(n+1)+1])`
-/

namespace A166540.P18133784505911148564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166540.P18133784505911148564

/-!
# A166542: a(n) = 6*n - a(n-1), with n>1, a(1)=2.

The programs for A166542, the canonical program `A166542.P2864220326915582331` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166542 has offset 1).

The definition of A166542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166542.P2864220326915582331

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=10, a(2)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166542

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2864220326915582331.Spec : Prop :=
  ∀ n, P2864220326915582331.a n = A166542 (n + 1)

theorem P2864220326915582331.correct : P2864220326915582331.Spec := by
  intro n
  simp only [A166542, Nat.add_sub_cancel]

end A166542

/-! ## A166542.P18179380556442605754

`a(n-2)+6` with `a(0)=2, a(1)=10`
-/

namespace A166542.P18179380556442605754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n a =>
  a (n - 2) + 6

end

end A166542.P18179380556442605754

namespace A166542

/-- `a(n-2)+6` -/
def P18179380556442605754.Spec : Prop :=
  ∀ n, (P18179380556442605754.a n : ℤ) = A166542 (n + 1)

end A166542

/-! ## A166542.P11582749910133842981

`∑[6-a(n-1)]` with `a(0)=2, a(1)=8`
-/

namespace A166542.P11582749910133842981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166542.P11582749910133842981

namespace A166542

/-- `∑[6-a(n-1)]` -/
def P11582749910133842981.Spec : Prop :=
  ∀ n, P11582749910133842981.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P75027059714999922

`6-floor(-a(n-2))` with `a(0)=2, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A166542.P75027059714999922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  6 - (-a (n - 2))

end

end A166542.P75027059714999922

namespace A166542

/-- `6-floor(-a(n-2))` -/
def P75027059714999922.Spec : Prop :=
  ∀ n, P75027059714999922.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P10409618566791060139

`6-ceil(-a(n-2))` with `a(0)=2, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A166542.P10409618566791060139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  6 - (-a (n - 2))

end

end A166542.P10409618566791060139

namespace A166542

/-- `6-ceil(-a(n-2))` -/
def P10409618566791060139.Spec : Prop :=
  ∀ n, P10409618566791060139.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P17707739430850545205

`6-round(-a(n-2))` with `a(0)=2, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A166542.P17707739430850545205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  6 - (-a (n - 2))

end

end A166542.P17707739430850545205

namespace A166542

/-- `6-round(-a(n-2))` -/
def P17707739430850545205.Spec : Prop :=
  ∀ n, P17707739430850545205.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P14736755037437145712

`∑[3-5*(-1)^n]+4`
-/

namespace A166542.P14736755037437145712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 5 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A166542.P14736755037437145712

namespace A166542

/-- `∑[3-5*(-1)^n]+4` -/
def P14736755037437145712.Spec : Prop :=
  ∀ n, P14736755037437145712.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P9720935095547568148

`lcm(2, Δ[(n+1)*gcd(2, n)²])`
-/

namespace A166542.P9720935095547568148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A166542.P9720935095547568148

namespace A166542

/-- `lcm(2, Δ[(n+1)*gcd(2, n)²])` -/
def P9720935095547568148.Spec : Prop :=
  ∀ n, (P9720935095547568148.a n : ℤ) = A166542 (n + 1)

end A166542

/-! ## A166542.P18244510141159277431

`∑[2*(A049071(n)+1)]`
-/

namespace A166542.P18244510141159277431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049071 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166542.P18244510141159277431

namespace A166542

/-- `∑[2*(A049071(n)+1)]` -/
def P18244510141159277431.Spec : Prop :=
  ∀ n, P18244510141159277431.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P2747393702184212994

`2*(A168282(n+1)-n)`
-/

namespace A166542.P2747393702184212994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168282 (n + 1) - (n : ℤ))

end

end A166542.P2747393702184212994

namespace A166542

/-- `2*(A168282(n+1)-n)` -/
def P2747393702184212994.Spec : Prop :=
  ∀ n, P2747393702184212994.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P446666190205826353

`2*(A168278(n+1)-(n+1))`
-/

namespace A166542.P446666190205826353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168278 (n + 1) - (n + 1 : ℤ))

end

end A166542.P446666190205826353

namespace A166542

/-- `2*(A168278(n+1)-(n+1))` -/
def P446666190205826353.Spec : Prop :=
  ∀ n, P446666190205826353.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P2341395894211691673

`A084967(n+1)%A017557(n)`
-/

namespace A166542.P2341395894211691673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084967 (n + 1)) (A017557 n)

end

end A166542.P2341395894211691673

namespace A166542

/-- `A084967(n+1)%A017557(n)` -/
def P2341395894211691673.Spec : Prop :=
  ∀ n, P2341395894211691673.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P2610445016406332753

`2*(A032766(n)+A000034(n)²)`
-/

namespace A166542.P2610445016406332753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032766 n + A000034 n ^ 2)

end

end A166542.P2610445016406332753

namespace A166542

/-- `2*(A032766(n)+A000034(n)²)` -/
def P2610445016406332753.Spec : Prop :=
  ∀ n, P2610445016406332753.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P15370992227878186661

`2*(A056020(n+1)-A008585(n))`
-/

namespace A166542.P15370992227878186661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056020 (n + 1) - A008585 n)

end

end A166542.P15370992227878186661

namespace A166542

/-- `2*(A056020(n+1)-A008585(n))` -/
def P15370992227878186661.Spec : Prop :=
  ∀ n, P15370992227878186661.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P6446256722426802138

`2*(A047336(n+1)-A042948(n))`
-/

namespace A166542.P6446256722426802138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047336 (n + 1) - A042948 n)

end

end A166542.P6446256722426802138

namespace A166542

/-- `2*(A047336(n+1)-A042948(n))` -/
def P6446256722426802138.Spec : Prop :=
  ∀ n, P6446256722426802138.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P8560081145520945024

`A258016(n+1)%A259614(n+1)`
-/

namespace A166542.P8560081145520945024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258016 (n + 1)) (A259614 (n + 1))

end

end A166542.P8560081145520945024

namespace A166542

/-- `A258016(n+1)%A259614(n+1)` -/
def P8560081145520945024.Spec : Prop :=
  ∀ n, P8560081145520945024.a n = A166542 (n + 1)

end A166542

/-! ## A166542.P15850260587289919732

`2*(A008619(n+1)+A004442(n+1))`
-/

namespace A166542.P15850260587289919732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008619 (n + 1) + A004442 (n + 1))

end

end A166542.P15850260587289919732

namespace A166542

/-- `2*(A008619(n+1)+A004442(n+1))` -/
def P15850260587289919732.Spec : Prop :=
  ∀ n, P15850260587289919732.a n = A166542 (n + 1)

end A166542

/-!
# A166544: a(n) = 7*n - a(n-1), with n>1, a(1)=2.

The programs for A166544, the canonical program `A166544.P7378202282657946214` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166544 has offset 1).

The definition of A166544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166544.P7378202282657946214

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=12, a(2)=9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166544

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7378202282657946214.Spec : Prop :=
  ∀ n, P7378202282657946214.a n = A166544 (n + 1)

theorem P7378202282657946214.correct : P7378202282657946214.Spec := by
  intro n
  simp only [A166544, Nat.add_sub_cancel]

end A166544

/-! ## A166544.P5208395115009507272

`a(n-2)+7` with `a(0)=2, a(1)=12`
-/

namespace A166544.P5208395115009507272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n a =>
  a (n - 2) + 7

end

end A166544.P5208395115009507272

namespace A166544

/-- `a(n-2)+7` -/
def P5208395115009507272.Spec : Prop :=
  ∀ n, (P5208395115009507272.a n : ℤ) = A166544 (n + 1)

end A166544

/-! ## A166544.P10286953385018646502

`∑[7-a(n-1)]` with `a(0)=2, a(1)=10`
-/

namespace A166544.P10286953385018646502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166544.P10286953385018646502

namespace A166544

/-- `∑[7-a(n-1)]` -/
def P10286953385018646502.Spec : Prop :=
  ∀ n, P10286953385018646502.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P7112926227307409754

`7-(a(n-1)-7*n)` with `a(0)=2`
-/

namespace A166544.P7112926227307409754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 - (a (n - 1) - (7 * n : ℤ))

end

end A166544.P7112926227307409754

namespace A166544

/-- `7-(a(n-1)-7*n)` -/
def P7112926227307409754.Spec : Prop :=
  ∀ n, P7112926227307409754.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P11636170447548882692

`A122088(n+1)+or(1, n)`
-/

namespace A166544.P11636170447548882692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1) + (Nat.lor 1 n : ℤ)

end

end A166544.P11636170447548882692

namespace A166544

/-- `A122088(n+1)+or(1, n)` -/
def P11636170447548882692.Spec : Prop :=
  ∀ n, P11636170447548882692.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P17127016829431273228

`A047276(n+1)+A010677(n)`
-/

namespace A166544.P17127016829431273228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (n + 1) + A010677 n

end

end A166544.P17127016829431273228

namespace A166544

/-- `A047276(n+1)+A010677(n)` -/
def P17127016829431273228.Spec : Prop :=
  ∀ n, P17127016829431273228.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P10617733324070137516

`A047336(n+1)+A010687(n)`
-/

namespace A166544.P10617733324070137516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + A010687 n

end

end A166544.P10617733324070137516

namespace A166544

/-- `A047336(n+1)+A010687(n)` -/
def P10617733324070137516.Spec : Prop :=
  ∀ n, P10617733324070137516.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P7426724711947090377

`A047335(n+1)+A010696(n)`
-/

namespace A166544.P7426724711947090377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (n + 1) + A010696 n

end

end A166544.P7426724711947090377

namespace A166544

/-- `A047335(n+1)+A010696(n)` -/
def P7426724711947090377.Spec : Prop :=
  ∀ n, P7426724711947090377.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P13179804885294382756

`A047348(n+1)+A010679(n)`
-/

namespace A166544.P13179804885294382756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (n + 1) + A010679 n

end

end A166544.P13179804885294382756

namespace A166544

/-- `A047348(n+1)+A010679(n)` -/
def P13179804885294382756.Spec : Prop :=
  ∀ n, P13179804885294382756.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P11554867213867260343

`A047346(n+1)+A010689(n)`
-/

namespace A166544.P11554867213867260343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1) + A010689 n

end

end A166544.P11554867213867260343

namespace A166544

/-- `A047346(n+1)+A010689(n)` -/
def P11554867213867260343.Spec : Prop :=
  ∀ n, P11554867213867260343.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P16500180370646384634

`A047345(n+1)+A010698(n)`
-/

namespace A166544.P16500180370646384634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1) + A010698 n

end

end A166544.P16500180370646384634

namespace A166544

/-- `A047345(n+1)+A010698(n)` -/
def P16500180370646384634.Spec : Prop :=
  ∀ n, P16500180370646384634.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P12666692729360617504

`A047353(n+1)+A010691(n)`
-/

namespace A166544.P12666692729360617504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (n + 1) + A010691 n

end

end A166544.P12666692729360617504

namespace A166544

/-- `A047353(n+1)+A010691(n)` -/
def P12666692729360617504.Spec : Prop :=
  ∀ n, P12666692729360617504.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P10985047058125328523

`A047352(n+1)+A010700(n)`
-/

namespace A166544.P10985047058125328523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (n + 1) + A010700 n

end

end A166544.P10985047058125328523

namespace A166544

/-- `A047352(n+1)+A010700(n)` -/
def P10985047058125328523.Spec : Prop :=
  ∀ n, P10985047058125328523.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P17133663447145785931

`A047356(n+1)+A010690(n)`
-/

namespace A166544.P17133663447145785931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (n + 1) + A010690 n

end

end A166544.P17133663447145785931

namespace A166544

/-- `A047356(n+1)+A010690(n)` -/
def P17133663447145785931.Spec : Prop :=
  ∀ n, P17133663447145785931.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P1401136922660658111

`A047355(n+1)+A010699(n)`
-/

namespace A166544.P1401136922660658111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + A010699 n

end

end A166544.P1401136922660658111

namespace A166544

/-- `A047355(n+1)+A010699(n)` -/
def P1401136922660658111.Spec : Prop :=
  ∀ n, P1401136922660658111.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P9100153393758501540

`A047385(n+1)+A010678(n)`
-/

namespace A166544.P9100153393758501540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1) + A010678 n

end

end A166544.P9100153393758501540

namespace A166544

/-- `A047385(n+1)+A010678(n)` -/
def P9100153393758501540.Spec : Prop :=
  ∀ n, P9100153393758501540.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P14089634037065469422

`A047383(n+1)+A010688(n)`
-/

namespace A166544.P14089634037065469422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (n + 1) + A010688 n

end

end A166544.P14089634037065469422

namespace A166544

/-- `A047383(n+1)+A010688(n)` -/
def P14089634037065469422.Spec : Prop :=
  ∀ n, P14089634037065469422.a n = A166544 (n + 1)

end A166544

/-! ## A166544.P15356881631423878893

`A047382(n+1)+A010697(n)`
-/

namespace A166544.P15356881631423878893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) + A010697 n

end

end A166544.P15356881631423878893

namespace A166544

/-- `A047382(n+1)+A010697(n)` -/
def P15356881631423878893.Spec : Prop :=
  ∀ n, P15356881631423878893.a n = A166544 (n + 1)

end A166544

/-!
# A166545: a(n) = 13*n - a(n-1), (with a(1)=13).

The programs for A166545, the canonical program `A166545.P16198050722519844525` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166545 has offset 1).

The definition of A166545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166545.P10616009176159585612

`∑[13*log2(gcd(2, n))]`
-/

namespace A166545.P10616009176159585612
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  13 * Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166545.P10616009176159585612

namespace A166545

/-- `∑[13*log2(gcd(2, n))]` -/
def P10616009176159585612.Spec : Prop :=
  ∀ n, P10616009176159585612.a n = (A166545 (n + 1) : ℝ)

end A166545

/-! ## A166545.P15954843409593528268

`∑[13*char[2*n]]`
-/

namespace A166545.P15954843409593528268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166545.P15954843409593528268

namespace A166545

/-- `∑[13*char[2*n]]` -/
def P15954843409593528268.Spec : Prop :=
  ∀ n, (P15954843409593528268.a n : ℤ) = A166545 (n + 1)

end A166545

/-! ## A166545.P16198050722519844525

`a(n-2)+13` with `a(0)=13, a(1)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166545

/-- `a(n-2)+13` -/
def P16198050722519844525.Spec : Prop :=
  ∀ n, (P16198050722519844525.a n : ℤ) = A166545 (n + 1)

theorem P16198050722519844525.correct : P16198050722519844525.Spec := by
  intro n
  simp only [A166545, Nat.add_sub_cancel]

end A166545

/-! ## A166545.P18331263687818017906

`13*∑[(n+1)%2]`
-/

namespace A166545.P18331263687818017906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166545.P18331263687818017906

namespace A166545

/-- `13*∑[(n+1)%2]` -/
def P18331263687818017906.Spec : Prop :=
  ∀ n, (P18331263687818017906.a n : ℤ) = A166545 (n + 1)

end A166545

/-! ## A166545.P5277138460222640202

`13*∑[and(1, n+1)]`
-/

namespace A166545.P5277138460222640202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166545.P5277138460222640202

namespace A166545

/-- `13*∑[and(1, n+1)]` -/
def P5277138460222640202.Spec : Prop :=
  ∀ n, (P5277138460222640202.a n : ℤ) = A166545 (n + 1)

end A166545

/-! ## A166545.P889586676434441109

`13-(a(n-1)-13*n)` with `a(0)=13`
-/

namespace A166545.P889586676434441109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  13 - (a (n - 1) - (13 * n : ℤ))

end

end A166545.P889586676434441109

namespace A166545

/-- `13-(a(n-1)-13*n)` -/
def P889586676434441109.Spec : Prop :=
  ∀ n, P889586676434441109.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P18375109862213158922

`13*∑[A059841(n)]`
-/

namespace A166545.P18375109862213158922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166545.P18375109862213158922

namespace A166545

/-- `13*∑[A059841(n)]` -/
def P18375109862213158922.Spec : Prop :=
  ∀ n, P18375109862213158922.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P10701246605585111284

`13*(A004526(n)+1)`
-/

namespace A166545.P10701246605585111284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (A004526 n + 1)

end

end A166545.P10701246605585111284

namespace A166545

/-- `13*(A004526(n)+1)` -/
def P10701246605585111284.Spec : Prop :=
  ∀ n, P10701246605585111284.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P10916687317253019232

`A008595(∑[char[2*n]])`
-/

namespace A166545.P10916687317253019232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166545.P10916687317253019232

namespace A166545

/-- `A008595(∑[char[2*n]])` -/
def P10916687317253019232.Spec : Prop :=
  ∀ n, P10916687317253019232.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P16648554666755417574

`(4/2+11)*A008619(n)`
-/

namespace A166545.P16648554666755417574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) / 2 + 11) * (A008619 n : ℚ)

end

end A166545.P16648554666755417574

namespace A166545

/-- `(4/2+11)*A008619(n)` -/
def P16648554666755417574.Spec : Prop :=
  ∀ n, P16648554666755417574.a n = (A166545 (n + 1) : ℚ)

end A166545

/-! ## A166545.P16248222797421659837

`A008595(n)-a(n-3)` with `a(0)=13, a(1)=13, a(2)=26`
-/

namespace A166545.P16248222797421659837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 13, 26] fun n a =>
  A008595 n - a (n - 3)

end

end A166545.P16248222797421659837

namespace A166545

/-- `A008595(n)-a(n-3)` -/
def P16248222797421659837.Spec : Prop :=
  ∀ n, P16248222797421659837.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P17926273624264955626

`A040157(n)-(13-a(n-1))` with `a(0)=13`
-/

namespace A166545.P17926273624264955626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A040157 n - (13 - a (n - 1))

end

end A166545.P17926273624264955626

namespace A166545

/-- `A040157(n)-(13-a(n-1))` -/
def P17926273624264955626.Spec : Prop :=
  ∀ n, P17926273624264955626.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P14339324893687062425

`A176593(A109613(n)+1)`
-/

namespace A166545.P14339324893687062425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176593 (A109613 n + 1).toNat

end

end A166545.P14339324893687062425

namespace A166545

/-- `A176593(A109613(n)+1)` -/
def P14339324893687062425.Spec : Prop :=
  ∀ n, P14339324893687062425.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P10783409774522721052

`A269100(A032766(n)-n)+2`
-/

namespace A166545.P10783409774522721052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (A032766 n - (n : ℤ)).toNat + 2

end

end A166545.P10783409774522721052

namespace A166545

/-- `A269100(A032766(n)-n)+2` -/
def P10783409774522721052.Spec : Prop :=
  ∀ n, P10783409774522721052.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P7332329673462512872

`12*A008619(n)+A008619(n)`
-/

namespace A166545.P7332329673462512872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A008619 n + A008619 n

end

end A166545.P7332329673462512872

namespace A166545

/-- `12*A008619(n)+A008619(n)` -/
def P7332329673462512872.Spec : Prop :=
  ∀ n, P7332329673462512872.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P17002704962440650797

`A067844(n+1)-A047356(n+1)`
-/

namespace A166545.P17002704962440650797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067844 (n + 1) - A047356 (n + 1)

end

end A166545.P17002704962440650797

namespace A166545

/-- `A067844(n+1)-A047356(n+1)` -/
def P17002704962440650797.Spec : Prop :=
  ∀ n, P17002704962440650797.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P15988168116870406571

`A008619(n)+A008594(A008619(n))`
-/

namespace A166545.P15988168116870406571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A008594 (A008619 n).toNat

end

end A166545.P15988168116870406571

namespace A166545

/-- `A008619(n)+A008594(A008619(n))` -/
def P15988168116870406571.Spec : Prop :=
  ∀ n, P15988168116870406571.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P14064029542920926078

`A017533(A004526(n)+1)+A004526(n)`
-/

namespace A166545.P14064029542920926078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A004526 n + 1).toNat + A004526 n

end

end A166545.P14064029542920926078

namespace A166545

/-- `A017533(A004526(n)+1)+A004526(n)` -/
def P14064029542920926078.Spec : Prop :=
  ∀ n, P14064029542920926078.a n = A166545 (n + 1)

end A166545

/-! ## A166545.P9290043843046628199

`A168269(n+1)+A056991(A168269(n+1)+2)`
-/

namespace A166545.P9290043843046628199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) + A056991 (A168269 (n + 1) + 2).toNat

end

end A166545.P9290043843046628199

namespace A166545

/-- `A168269(n+1)+A056991(A168269(n+1)+2)` -/
def P9290043843046628199.Spec : Prop :=
  ∀ n, P9290043843046628199.a n = A166545 (n + 1)

end A166545

/-!
# A166546: Natural numbers n such that d(n) + 1 is prime.

The programs for A166546, the canonical program `A166546.P7750365788369680669` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166546 has offset 1).

The definition of A166546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166546.P12518351900011224266

`eq[1, A001222(∏{e}[n+1, #+1]+1)]+1`
-/

namespace A166546.P12518351900011224266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166546.P12518351900011224266

namespace A166546

/-- `eq[1, A001222(∏{e}[n+1, #+1]+1)]+1` -/
def P12518351900011224266.Spec : Prop :=
  ∀ n, (P12518351900011224266.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P7400199374921999498

`eq[1, A002033(A000005(n+1))]+1`
-/

namespace A166546.P7400199374921999498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166546.P7400199374921999498

namespace A166546

/-- `eq[1, A002033(A000005(n+1))]+1` -/
def P7400199374921999498.Spec : Prop :=
  ∀ n, (P7400199374921999498.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P1274860996947129416

`eq[1, A032741(A334954(n+1))]+1`
-/

namespace A166546.P1274860996947129416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A334954 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166546.P1274860996947129416

namespace A166546

/-- `eq[1, A032741(A334954(n+1))]+1` -/
def P1274860996947129416.Spec : Prop :=
  ∀ n, (P1274860996947129416.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P9826345444187403535

`eq[2, A000005(Δ[A006218(n)]+1)]+1`
-/

namespace A166546.P9826345444187403535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166546.P9826345444187403535

namespace A166546

/-- `eq[2, A000005(Δ[A006218(n)]+1)]+1` -/
def P9826345444187403535.Spec : Prop :=
  ∀ n, (P9826345444187403535.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P17572923228142609508

`lt[A001222(Δ[A006218(n)]+1), 2]+1`
-/

namespace A166546.P17572923228142609508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A166546.P17572923228142609508

namespace A166546

/-- `lt[A001222(Δ[A006218(n)]+1), 2]+1` -/
def P17572923228142609508.Spec : Prop :=
  ∀ n, (P17572923228142609508.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P4354396900728087317

`eq[2, A000005(A000005(n+1)+1)]+1`
-/

namespace A166546.P4354396900728087317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166546.P4354396900728087317

namespace A166546

/-- `eq[2, A000005(A000005(n+1)+1)]+1` -/
def P4354396900728087317.Spec : Prop :=
  ∀ n, (P4354396900728087317.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P13506826473801395393

`lt[A001222(A000005(n+1)+1), 2]+1`
-/

namespace A166546.P13506826473801395393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166546.P13506826473801395393

namespace A166546

/-- `lt[A001222(A000005(n+1)+1), 2]+1` -/
def P13506826473801395393.Spec : Prop :=
  ∀ n, (P13506826473801395393.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P7686086754172265338

`lt[A033676(A000005(n+1)+1), 2]+1`
-/

namespace A166546.P7686086754172265338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166546.P7686086754172265338

namespace A166546

/-- `lt[A033676(A000005(n+1)+1), 2]+1` -/
def P7686086754172265338.Spec : Prop :=
  ∀ n, (P7686086754172265338.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P4919202824029818585

`lt[A001065(A000005(n+1)+1), 3]+1`
-/

namespace A166546.P4919202824029818585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166546.P4919202824029818585

namespace A166546

/-- `lt[A001065(A000005(n+1)+1), 3]+1` -/
def P4919202824029818585.Spec : Prop :=
  ∀ n, (P4919202824029818585.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P831799420146599586

`record[(n+1)/A302055(A000005(n+1)+1)]`
-/

namespace A166546.P831799420146599586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A302055 (A000005 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166546.P831799420146599586

namespace A166546

/-- `record[(n+1)/A302055(A000005(n+1)+1)]` -/
def P831799420146599586.Spec : Prop :=
  ∀ n, P831799420146599586.a n = (A166546 (n + 1) : ℚ)

end A166546

/-! ## A166546.P842693425514891685

`eq[1, A067824(2-A049820(n+1)+n)-1]+1`
-/

namespace A166546.P842693425514891685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (2 - A049820 (n + 1) + (n : ℤ)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166546.P842693425514891685

namespace A166546

/-- `eq[1, A067824(2-A049820(n+1)+n)-1]+1` -/
def P842693425514891685.Spec : Prop :=
  ∀ n, (P842693425514891685.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P7750365788369680669

`eq[A032741(A032741(n)+2), A057427(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166546

/-- `eq[A032741(A032741(n)+2), A057427(n)]` -/
def P7750365788369680669.Spec : Prop :=
  ∀ n, (P7750365788369680669.a n : ℤ) = A166546 (n + 1)

theorem P7750365788369680669.correct : P7750365788369680669.Spec := by
  intro n
  simp only [A166546, Nat.add_sub_cancel]

end A166546

/-! ## A166546.P1872939624922297118

`eq[A032741(A032741(n)+2), A158388(n)]`
-/

namespace A166546.P1872939624922297118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166546.P1872939624922297118

namespace A166546

/-- `eq[A032741(A032741(n)+2), A158388(n)]` -/
def P1872939624922297118.Spec : Prop :=
  ∀ n, (P1872939624922297118.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P8663914382840378462

`lt[A000005(n+1), A006530(A000005(n+1)+1)]+1`
-/

namespace A166546.P8663914382840378462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166546.P8663914382840378462

namespace A166546

/-- `lt[A000005(n+1), A006530(A000005(n+1)+1)]+1` -/
def P8663914382840378462.Spec : Prop :=
  ∀ n, (P8663914382840378462.a n : ℤ) = A166546 (n + 1)

end A166546

/-! ## A166546.P16842461745786032055

`lt[A000005(n+1), A020639(A000005(n+1)+1)]+1`
-/

namespace A166546.P16842461745786032055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166546.P16842461745786032055

namespace A166546

/-- `lt[A000005(n+1), A020639(A000005(n+1)+1)]+1` -/
def P16842461745786032055.Spec : Prop :=
  ∀ n, (P16842461745786032055.a n : ℤ) = A166546 (n + 1)

end A166546

/-!
# A166547: Primes of the form 100*k+7.

The programs for A166547, the canonical program `A166547.P12175533422904995910` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166547 has offset 1).

The definition of A166547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166547.P12175533422904995910

`∩[A141882(n+1), A141932(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166547

/-- `∩[A141882(n+1), A141932(n+1)]` -/
def P12175533422904995910.Spec : Prop :=
  ∀ n, (P12175533422904995910.a n : ℤ) = A166547 (n + 1)

theorem P12175533422904995910.correct : P12175533422904995910.Spec := by
  intro n
  simp only [A166547, Nat.add_sub_cancel]

end A166547

/-! ## A166547.P18191239507527633331

`p?[10*10*n+7]`
-/

namespace A166547.P18191239507527633331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166547.P18191239507527633331

namespace A166547

/-- `p?[10*10*n+7]` -/
def P18191239507527633331.Spec : Prop :=
  ∀ n, (P18191239507527633331.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P3746562708224763880

`∩[A141882(n+1), A172469(n+1)]`
-/

namespace A166547.P3746562708224763880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P3746562708224763880

namespace A166547

/-- `∩[A141882(n+1), A172469(n+1)]` -/
def P3746562708224763880.Spec : Prop :=
  ∀ n, (P3746562708224763880.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P18196695233294832694

`∩[A106865(n+1), A141932(n+1)]`
-/

namespace A166547.P18196695233294832694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P18196695233294832694

namespace A166547

/-- `∩[A106865(n+1), A141932(n+1)]` -/
def P18196695233294832694.Spec : Prop :=
  ∀ n, (P18196695233294832694.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P17307469243571949403

`∩[A122870(n+1), A141932(n+1)]`
-/

namespace A166547.P17307469243571949403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P17307469243571949403

namespace A166547

/-- `∩[A122870(n+1), A141932(n+1)]` -/
def P17307469243571949403.Spec : Prop :=
  ∀ n, (P17307469243571949403.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P83693434336739338

`∩[A141932(n+1), A385225(n+1)]`
-/

namespace A166547.P83693434336739338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P83693434336739338

namespace A166547

/-- `∩[A141932(n+1), A385225(n+1)]` -/
def P83693434336739338.Spec : Prop :=
  ∀ n, (P83693434336739338.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P8339086260690084043

`∩[A053027(n+1), A141932(n+1)]`
-/

namespace A166547.P8339086260690084043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P8339086260690084043

namespace A166547

/-- `∩[A053027(n+1), A141932(n+1)]` -/
def P8339086260690084043.Spec : Prop :=
  ∀ n, (P8339086260690084043.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P16847524883975409168

`∩[A030432(n+1), A045800(n+1)]`
-/

namespace A166547.P16847524883975409168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P16847524883975409168

namespace A166547

/-- `∩[A030432(n+1), A045800(n+1)]` -/
def P16847524883975409168.Spec : Prop :=
  ∀ n, (P16847524883975409168.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P9385478535626768759

`∩[A045357(n+1), A045800(n+1)]`
-/

namespace A166547.P9385478535626768759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P9385478535626768759

namespace A166547

/-- `∩[A045357(n+1), A045800(n+1)]` -/
def P9385478535626768759.Spec : Prop :=
  ∀ n, (P9385478535626768759.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P10004684381256655936

`∩[A045380(n+1), A045800(n+1)]`
-/

namespace A166547.P10004684381256655936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P10004684381256655936

namespace A166547

/-- `∩[A045380(n+1), A045800(n+1)]` -/
def P10004684381256655936.Spec : Prop :=
  ∀ n, (P10004684381256655936.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P16891848620045700443

`∩[A045800(n+1), A141882(n+1)]`
-/

namespace A166547.P16891848620045700443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P16891848620045700443

namespace A166547

/-- `∩[A045800(n+1), A141882(n+1)]` -/
def P16891848620045700443.Spec : Prop :=
  ∀ n, (P16891848620045700443.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P13553082654339727592

`∩[A045800(n+1), A141932(n+1)]`
-/

namespace A166547.P13553082654339727592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P13553082654339727592

namespace A166547

/-- `∩[A045800(n+1), A141932(n+1)]` -/
def P13553082654339727592.Spec : Prop :=
  ∀ n, (P13553082654339727592.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P10841310506297261850

`∩[A141882(n+1), A159254(n+1)]`
-/

namespace A166547.P10841310506297261850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P10841310506297261850

namespace A166547

/-- `∩[A141882(n+1), A159254(n+1)]` -/
def P10841310506297261850.Spec : Prop :=
  ∀ n, (P10841310506297261850.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P4986675401884547127

`∩[A053027(n+1), A135659(n)+n]`
-/

namespace A166547.P4986675401884547127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P4986675401884547127

namespace A166547

/-- `∩[A053027(n+1), A135659(n)+n]` -/
def P4986675401884547127.Spec : Prop :=
  ∀ n, (P4986675401884547127.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P10910580831364544870

`∩[A139513(n+1), A141932(n+1)]`
-/

namespace A166547.P10910580831364544870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P10910580831364544870

namespace A166547

/-- `∩[A139513(n+1), A141932(n+1)]` -/
def P10910580831364544870.Spec : Prop :=
  ∀ n, (P10910580831364544870.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P17243511711661342949

`∩[A002145(n+1), A141932(n+1)]`
-/

namespace A166547.P17243511711661342949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P17243511711661342949

namespace A166547

/-- `∩[A002145(n+1), A141932(n+1)]` -/
def P17243511711661342949.Spec : Prop :=
  ∀ n, (P17243511711661342949.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P16293904140379922050

`∩[A045326(n+1), A141932(n+1)]`
-/

namespace A166547.P16293904140379922050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P16293904140379922050

namespace A166547

/-- `∩[A045326(n+1), A141932(n+1)]` -/
def P16293904140379922050.Spec : Prop :=
  ∀ n, (P16293904140379922050.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P17431631376184299364

`∩[A085760(n+1), A141932(n+1)]`
-/

namespace A166547.P17431631376184299364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P17431631376184299364

namespace A166547

/-- `∩[A085760(n+1), A141932(n+1)]` -/
def P17431631376184299364.Spec : Prop :=
  ∀ n, (P17431631376184299364.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P13126057643603662296

`∩[A091727(n+1), A141932(n+1)]`
-/

namespace A166547.P13126057643603662296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P13126057643603662296

namespace A166547

/-- `∩[A091727(n+1), A141932(n+1)]` -/
def P13126057643603662296.Spec : Prop :=
  ∀ n, (P13126057643603662296.a n : ℤ) = A166547 (n + 1)

end A166547

/-! ## A166547.P8781649536362601273

`∩[A141932(n+1), A240920(n+1)]`
-/

namespace A166547.P8781649536362601273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166547.P8781649536362601273

namespace A166547

/-- `∩[A141932(n+1), A240920(n+1)]` -/
def P8781649536362601273.Spec : Prop :=
  ∀ n, (P8781649536362601273.a n : ℤ) = A166547 (n + 1)

end A166547

/-!
# A166548: Triangle read by rows, A047999 * A007318; (Sierpinski's gasket * Pascal's triangle).

The programs for A166548, there is no canonical definition to state claims against.
-/

/-! ## A166548.P4123278594427152327

`gcd(A000005(A029505(n+2)), A104684(n))`
-/

namespace A166548.P4123278594427152327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A029505 (n + 2)).toNat) (A104684 n)

end

end A166548.P4123278594427152327

/-! ## A166548.P9551293141488651457

`A001222(A276086(A132307(n)))`
-/

namespace A166548.P9551293141488651457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276086 (A132307 n).toNat).toNat

end

end A166548.P9551293141488651457

/-! ## A166548.P10115065619377323476

`A234022(A008706(A038207(n)²))`
-/

namespace A166548.P10115065619377323476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (A008706 (A038207 n ^ 2).toNat).toNat

end

end A166548.P10115065619377323476

/-! ## A166548.P13433224696504360788

`gcd(A091203(A286089(n)), A104684(n))`
-/

namespace A166548.P13433224696504360788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091203 (A286089 n).toNat) (A104684 n)

end

end A166548.P13433224696504360788

/-! ## A166548.P2215804991930219013

`A327966(A130330(n)^A001176(n+1))`
-/

namespace A166548.P2215804991930219013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (SequenceMachineLib.roundAway ((A130330 n : ℚ) ^ (A001176 (n + 1) : ℤ))).toNat

end

end A166548.P2215804991930219013

/-!
# A166549: The number of halving steps of the Collatz 3x+1 map to reach 1 starting from 2n-1.

The programs for A166549, there is no canonical definition to state claims against.
-/

/-! ## A166549.P5143761275071742571

`A064433(2*(n+1))-1`
-/

namespace A166549.P5143761275071742571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (2 * (n + 1)) - 1

end

end A166549.P5143761275071742571

/-! ## A166549.P9097579788675147690

`A023443(A064433(2*(n+1)))`
-/

namespace A166549.P9097579788675147690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A064433 (2 * (n + 1))).toNat

end

end A166549.P9097579788675147690

/-! ## A166549.P5334657277897177731

`A006666(Δ[n²])`
-/

namespace A166549.P5334657277897177731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166549.P5334657277897177731

/-! ## A166549.P3438407706244352543

`floor(log2(A389685(2*n+1)))`
-/

namespace A166549.P3438407706244352543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A389685 (2 * n + 1)).toNat

end

end A166549.P3438407706244352543

/-! ## A166549.P4347197639650060930

`or(char[1], A006666(comp[2*n]))`
-/

namespace A166549.P4347197639650060930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A006666 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A166549.P4347197639650060930

/-! ## A166549.P3713521287371972465

`-or(1, -n)%2*A006666(2*n+1)`
-/

namespace A166549.P3713521287371972465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.tmod (Int.lor 1 (-(n : ℤ))) 2 * A006666 (2 * n + 1))

end

end A166549.P3713521287371972465

/-! ## A166549.P1320565725364675973

`abs(A001489(A006666(2*n+1)))`
-/

namespace A166549.P1320565725364675973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (A006666 (2 * n + 1)).toNat|

end

end A166549.P1320565725364675973

/-! ## A166549.P56012805416856881

`A142150(2*A006666(2*n+1))`
-/

namespace A166549.P56012805416856881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * A006666 (2 * n + 1)).toNat

end

end A166549.P56012805416856881

/-! ## A166549.P11229899028775879908

`A006666(A005408(n))%(12*n+6)`
-/

namespace A166549.P11229899028775879908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006666 (A005408 n).toNat) (12 * n + 6 : ℤ)

end

end A166549.P11229899028775879908

/-! ## A166549.P15795910626180623177

`A006577(2*n+1)-A075680(n+1)`
-/

namespace A166549.P15795910626180623177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) - A075680 (n + 1)

end

end A166549.P15795910626180623177

/-! ## A166549.P5682827192494345663

`A006666(2*n+1)*A122458(2*n)`
-/

namespace A166549.P5682827192494345663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (2 * n + 1) * A122458 (2 * n)

end

end A166549.P5682827192494345663

/-! ## A166549.P15276890113394504009

`A035457(2*n+1)+A006666(2*n+1)`
-/

namespace A166549.P15276890113394504009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1) + A006666 (2 * n + 1)

end

end A166549.P15276890113394504009

/-! ## A166549.P10839243090745985119

`A087003(2*(n+1))+A006666(2*n+1)`
-/

namespace A166549.P10839243090745985119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (2 * (n + 1)) + A006666 (2 * n + 1)

end

end A166549.P10839243090745985119

/-! ## A166549.P9078915008097693317

`A220071(2*n+1)+A006667(2*n+1)`
-/

namespace A166549.P9078915008097693317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (2 * n + 1) + A006667 (2 * n + 1)

end

end A166549.P9078915008097693317

/-! ## A166549.P17015775482157649293

`A292273(2*n+1)+A006666(2*n+1)`
-/

namespace A166549.P17015775482157649293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (2 * n + 1) + A006666 (2 * n + 1)

end

end A166549.P17015775482157649293

/-! ## A166549.P427310217161740310

`A006577(2*n+1)-A006667(2*n+1)`
-/

namespace A166549.P427310217161740310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) - A006667 (2 * n + 1)

end

end A166549.P427310217161740310

/-! ## A166549.P6255935354413657845

`A008908(2*n+1)-A078719(2*n+1)`
-/

namespace A166549.P6255935354413657845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (2 * n + 1) - A078719 (2 * n + 1)

end

end A166549.P6255935354413657845

/-! ## A166549.P6600503932443072503

`A006577(2*n+1)-A286380(2*n+1)`
-/

namespace A166549.P6600503932443072503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) - A286380 (2 * n + 1)

end

end A166549.P6600503932443072503

/-! ## A166549.P12451442412685958940

`A006666(2*n+1)*A126241(2*(n+1))`
-/

namespace A166549.P12451442412685958940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (2 * n + 1) * A126241 (2 * (n + 1))

end

end A166549.P12451442412685958940

/-! ## A166549.P17732132166588659389

`A006666(2*n+1)*A352894(2*n+1)`
-/

namespace A166549.P17732132166588659389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (2 * n + 1) * A352894 (2 * n + 1)

end

end A166549.P17732132166588659389

/-!
# A166550: Numbers n with property that n^2 and n-th prime have the same sum of digits.

The programs for A166550, the canonical program `A166550.P9048680061311345364` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166550 has offset 1).

The definition of A166550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166550.P9048680061311345364

`eq[A004159(n+1), A007605(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166550

/-- `eq[A004159(n+1), A007605(n+1)]+1` -/
def P9048680061311345364.Spec : Prop :=
  ∀ n, (P9048680061311345364.a n : ℤ) = A166550 (n + 1)

theorem P9048680061311345364.correct : P9048680061311345364.Spec := by
  intro n
  simp only [A166550, Nat.add_sub_cancel]

end A166550

/-! ## A166550.P1876752837891231927

`eq[A004159(n), A007605(A028310(n))]`
-/

namespace A166550.P1876752837891231927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166550.P1876752837891231927

namespace A166550

/-- `eq[A004159(n), A007605(A028310(n))]` -/
def P1876752837891231927.Spec : Prop :=
  ∀ n, (P1876752837891231927.a n : ℤ) = A166550 (n + 1)

end A166550

/-! ## A166550.P11475086816018533995

`eq[n²-A224977(n), A007605(A028310(n))]`
-/

namespace A166550.P11475086816018533995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166550.P11475086816018533995

namespace A166550

/-- `eq[n²-A224977(n), A007605(A028310(n))]` -/
def P11475086816018533995.Spec : Prop :=
  ∀ n, (P11475086816018533995.a n : ℤ) = A166550 (n + 1)

end A166550

/-! ## A166550.P15740113660817017905

`eq[A004159(n), A007953(A008578(n+1))]`
-/

namespace A166550.P15740113660817017905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166550.P15740113660817017905

namespace A166550

/-- `eq[A004159(n), A007953(A008578(n+1))]` -/
def P15740113660817017905.Spec : Prop :=
  ∀ n, (P15740113660817017905.a n : ℤ) = A166550 (n + 1)

end A166550

/-! ## A166550.P2874188611691906756

`eq[n²-A224977(n), A007953(A008578(n+1))]`
-/

namespace A166550.P2874188611691906756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166550.P2874188611691906756

namespace A166550

/-- `eq[n²-A224977(n), A007953(A008578(n+1))]` -/
def P2874188611691906756.Spec : Prop :=
  ∀ n, (P2874188611691906756.a n : ℤ) = A166550 (n + 1)

end A166550

/-!
# A166552: a(n) = 3*a(n-2) for n > 2; a(1) = 1; a(2) = 4.

The programs for A166552, the canonical program `A166552.P11253070480868410150` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166552 has offset 1).

The definition of A166552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A166552.P11253070480868410150`, by `A166552.P11253070480868410150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166552.P11253070480868410150

`3*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166552

/-- `3*a(n-2)` -/
def P11253070480868410150.Spec : Prop :=
  ∀ n, (P11253070480868410150.a n : ℤ) = A166552 (n + 1)

theorem P11253070480868410150.correct : P11253070480868410150.Spec := by
  intro n
  simp only [A166552, Nat.add_sub_cancel]

end A166552

/-! ## A166552.P18308103607061096933

`∏[3/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A166552.P18308103607061096933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A166552.P18308103607061096933

namespace A166552

/-- `∏[3/a(n-1)]` -/
def P18308103607061096933.Spec : Prop :=
  ∀ n, P18308103607061096933.a n = (A166552 (n + 1) : ℚ)

end A166552

/-! ## A166552.P5318592878422604031

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=4`
-/

namespace A166552.P5318592878422604031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A166552.P5318592878422604031

namespace A166552

/-- `a(n-2)/(1-2/3)` -/
def P5318592878422604031.Spec : Prop :=
  ∀ n, P5318592878422604031.a n = (A166552 (n + 1) : ℚ)

end A166552

/-! ## A166552.P10051569881409284140

`3^floor(n/2)*4^(n%2)`
-/

namespace A166552.P10051569881409284140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (4 ^ (n % 2) : ℚ)

end

end A166552.P10051569881409284140

namespace A166552

/-- `3^floor(n/2)*4^(n%2)` -/
def P10051569881409284140.Spec : Prop :=
  ∀ n, P10051569881409284140.a n = (A166552 (n + 1) : ℚ)

end A166552

/-! ## A166552.P8593079271878864400

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A166552.P8593079271878864400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A166552.P8593079271878864400

namespace A166552

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P8593079271878864400.Spec : Prop :=
  ∀ n, (P8593079271878864400.a n : ℤ) = A166552 (n + 1)

theorem P8593079271878864400.correct : P8593079271878864400.Spec := by
  intro n
  simp only [A166552, Nat.add_sub_cancel, A166552.P8593079271878864400.a, A166552.P11253070480868410150.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166552

/-! ## A166552.P10831942625039525990

`A074324(n+1)`
-/

namespace A166552.P10831942625039525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (n + 1)

end

end A166552.P10831942625039525990

namespace A166552

/-- `A074324(n+1)` -/
def P10831942625039525990.Spec : Prop :=
  ∀ n, P10831942625039525990.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P3852690927756744356

`A162852(n)+a(n-1)` with `a(0)=1`
-/

namespace A166552.P3852690927756744356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162852 n + a (n - 1)

end

end A166552.P3852690927756744356

namespace A166552

/-- `A162852(n)+a(n-1)` -/
def P3852690927756744356.Spec : Prop :=
  ∀ n, P3852690927756744356.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P15040796512893383127

`A211221(A065190(n+1))`
-/

namespace A166552.P15040796512893383127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211221 (A065190 (n + 1)).toNat

end

end A166552.P15040796512893383127

namespace A166552

/-- `A211221(A065190(n+1))` -/
def P15040796512893383127.Spec : Prop :=
  ∀ n, P15040796512893383127.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P17808714707579862252

`A000034(n)*A038754(n)`
-/

namespace A166552.P17808714707579862252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A038754 n

end

end A166552.P17808714707579862252

namespace A166552

/-- `A000034(n)*A038754(n)` -/
def P17808714707579862252.Spec : Prop :=
  ∀ n, P17808714707579862252.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P2894054423643228276

`A010685(n)*A108411(n)`
-/

namespace A166552.P2894054423643228276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A108411 n

end

end A166552.P2894054423643228276

namespace A166552

/-- `A010685(n)*A108411(n)` -/
def P2894054423643228276.Spec : Prop :=
  ∀ n, P2894054423643228276.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P10574188838857195845

`lcm(A010685(n), A038754(n))`
-/

namespace A166552.P10574188838857195845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010685 n) (A038754 n)

end

end A166552.P10574188838857195845

namespace A166552

/-- `lcm(A010685(n), A038754(n))` -/
def P10574188838857195845.Spec : Prop :=
  ∀ n, (P10574188838857195845.a n : ℤ) = A166552 (n + 1)

end A166552

/-! ## A166552.P10203304490789485971

`lcm(A103947(n), A108411(n))`
-/

namespace A166552.P10203304490789485971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103947 n) (A108411 n)

end

end A166552.P10203304490789485971

namespace A166552

/-- `lcm(A103947(n), A108411(n))` -/
def P10203304490789485971.Spec : Prop :=
  ∀ n, (P10203304490789485971.a n : ℤ) = A166552 (n + 1)

end A166552

/-! ## A166552.P14422098690636089608

`A000034(n)²*A108411(n)`
-/

namespace A166552.P14422098690636089608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A108411 n

end

end A166552.P14422098690636089608

namespace A166552

/-- `A000034(n)²*A108411(n)` -/
def P14422098690636089608.Spec : Prop :=
  ∀ n, P14422098690636089608.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P810276929741757588

`A038754(n)+Δ[A108411(n)]`
-/

namespace A166552.P810276929741757588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (f1 (n + 1) - f1 n)

end

end A166552.P810276929741757588

namespace A166552

/-- `A038754(n)+Δ[A108411(n)]` -/
def P810276929741757588.Spec : Prop :=
  ∀ n, P810276929741757588.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P17599639950120325840

`A254006(n+1)+A108411(n)`
-/

namespace A166552.P17599639950120325840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1) + A108411 n

end

end A166552.P17599639950120325840

namespace A166552

/-- `A254006(n+1)+A108411(n)` -/
def P17599639950120325840.Spec : Prop :=
  ∀ n, P17599639950120325840.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P15508135799687521244

`(A000035(n)+1)*A038754(n)`
-/

namespace A166552.P15508135799687521244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A038754 n

end

end A166552.P15508135799687521244

namespace A166552

/-- `(A000035(n)+1)*A038754(n)` -/
def P15508135799687521244.Spec : Prop :=
  ∀ n, P15508135799687521244.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P4174879258209765457

`A038754(n)*A040001(n+1)`
-/

namespace A166552.P4174879258209765457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A040001 (n + 1)

end

end A166552.P4174879258209765457

namespace A166552

/-- `A038754(n)*A040001(n+1)` -/
def P4174879258209765457.Spec : Prop :=
  ∀ n, P4174879258209765457.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P346622434272103854

`(2-A059841(n))*A038754(n)`
-/

namespace A166552.P346622434272103854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A038754 n

end

end A166552.P346622434272103854

namespace A166552

/-- `(2-A059841(n))*A038754(n)` -/
def P346622434272103854.Spec : Prop :=
  ∀ n, P346622434272103854.a n = A166552 (n + 1)

end A166552

/-! ## A166552.P10051028504887785600

`A038754(n)*A176895(2*n)`
-/

namespace A166552.P10051028504887785600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A176895 (2 * n)

end

end A166552.P10051028504887785600

namespace A166552

/-- `A038754(n)*A176895(2*n)` -/
def P10051028504887785600.Spec : Prop :=
  ∀ n, P10051028504887785600.a n = A166552 (n + 1)

end A166552

/-!
# A166554: a(0)=1, a(n) = n*(a(n-1) - 1) for n>0.

The programs for A166554, the canonical program `A166554.P18334467197057166562` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166554 has offset 0).

The definition of A166554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)-1)` (program `A166554.P18334467197057166562`, by `A166554.P18334467197057166562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166554.P18334467197057166562

`n*(a(n-1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166554

/-- `n*(a(n-1)-1)` -/
def P18334467197057166562.Spec : Prop :=
  ∀ n, P18334467197057166562.a n = A166554 n

theorem P18334467197057166562.correct : P18334467197057166562.Spec := by
  intro n
  simp only [A166554]

end A166554

/-! ## A166554.P8759849449716829443

`(a(n-1)-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A166554.P8759849449716829443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A166554.P8759849449716829443

namespace A166554

/-- `(a(n-1)-1)/tan(acot(n))` -/
def P8759849449716829443.Spec : Prop :=
  ∀ n, P8759849449716829443.a n = (A166554 n : ℝ)

end A166554

/-! ## A166554.P6382450589394470643

`(a(n-1)-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A166554.P6382450589394470643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A166554.P6382450589394470643

namespace A166554

/-- `(a(n-1)-1)/cot(atan(n))` -/
def P6382450589394470643.Spec : Prop :=
  ∀ n, P6382450589394470643.a n = (A166554 n : ℝ)

end A166554

/-! ## A166554.P16108601338011046969

`n!-n!*∑[n/n!]`
-/

namespace A166554.P16108601338011046969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166554.P16108601338011046969

namespace A166554

/-- `n!-n!*∑[n/n!]` -/
def P16108601338011046969.Spec : Prop :=
  ∀ n, P16108601338011046969.a n = (A166554 n : ℚ)

end A166554

/-! ## A166554.P9206485849295581690

`(a(n-1)-1)/n^(-1)` with `a(0)=1`
-/

namespace A166554.P9206485849295581690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A166554.P9206485849295581690

namespace A166554

/-- `(a(n-1)-1)/n^(-1)` -/
def P9206485849295581690.Spec : Prop :=
  ∀ n, P9206485849295581690.a n = (A166554 n : ℚ)

end A166554

/-! ## A166554.P6382625104617611783

`(1-a(n-1))/(1-(n+1)/n)` with `a(0)=1`
-/

namespace A166554.P6382625104617611783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1)) / (1 - (n + 1 : ℚ) / (n : ℚ))

end

end A166554.P6382625104617611783

namespace A166554

/-- `(1-a(n-1))/(1-(n+1)/n)` -/
def P6382625104617611783.Spec : Prop :=
  ∀ n, P6382625104617611783.a n = (A166554 n : ℚ)

end A166554

/-! ## A166554.P7214685195512677072

`1-A002627(n)`
-/

namespace A166554.P7214685195512677072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002627 n

end

end A166554.P7214685195512677072

namespace A166554

/-- `1-A002627(n)` -/
def P7214685195512677072.Spec : Prop :=
  ∀ n, P7214685195512677072.a n = A166554 n

end A166554

/-! ## A166554.P2003769854850330522

`-A082459(2*n)`
-/

namespace A166554.P2003769854850330522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A082459 (2 * n)

end

end A166554.P2003769854850330522

namespace A166554

/-- `-A082459(2*n)` -/
def P2003769854850330522.Spec : Prop :=
  ∀ n, P2003769854850330522.a n = A166554 n

end A166554

/-! ## A166554.P3444276119413626137

`n!-A007526(n)`
-/

namespace A166554.P3444276119413626137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A007526 n

end

end A166554.P3444276119413626137

namespace A166554

/-- `n!-A007526(n)` -/
def P3444276119413626137.Spec : Prop :=
  ∀ n, P3444276119413626137.a n = A166554 n

end A166554

/-! ## A166554.P7330194697655088463

`2-A213937(n+1)`
-/

namespace A166554.P7330194697655088463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A213937 (n + 1)

end

end A166554.P7330194697655088463

namespace A166554

/-- `2-A213937(n+1)` -/
def P7330194697655088463.Spec : Prop :=
  ∀ n, P7330194697655088463.a n = A166554 n

end A166554

/-!
# A166555: Triangle read by rows, T(n, k) = 2^k * A047999(n, k).

The programs for A166555, the canonical program `A166555.P10193030869591466307` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166555 has offset 0).

The definition of A166555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166555.P5199733513007917916

`2^(n-C(∑[char[∑[n]]], 2))*and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n)`
-/

namespace A166555.P5199733513007917916
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f9 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f8 j) 2 : ℤ)).toNat

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (Int.land 1 (((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f11 j ≠ x) n : ℤ) - (n : ℤ))) : ℚ)

end

end A166555.P5199733513007917916

namespace A166555

/-- `2^(n-C(∑[char[∑[n]]], 2))*and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n)` -/
def P5199733513007917916.Spec : Prop :=
  ∀ n, P5199733513007917916.a n = (A166555 n : ℚ)

end A166555

/-! ## A166555.P21947982234688310

`lcm(2^(n-C(∑[char[∑[n]]], 2)), and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n))`
-/

namespace A166555.P21947982234688310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f9 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f8 j) 2 : ℤ)).toNat

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) (Int.land 1 (((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f11 j ≠ x) n : ℤ) - (n : ℤ))))

end

end A166555.P21947982234688310

namespace A166555

/-- `lcm(2^(n-C(∑[char[∑[n]]], 2)), and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n))` -/
def P21947982234688310.Spec : Prop :=
  ∀ n, (P21947982234688310.a n : ℤ) = A166555 n

end A166555

/-! ## A166555.P16985010189880462532

`and(-and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n), 2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A166555.P16985010189880462532
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ)).toNat

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f12 j

open Classical in
def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f11 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-Int.land 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f8 j ≠ x) n : ℤ) - (n : ℤ)))) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f10 j) 2 : ℤ) : ℤ)))

end

end A166555.P16985010189880462532

namespace A166555

/-- `and(-and(1, ∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n), 2^(n-C(∑[char[∑[n]]], 2)))` -/
def P16985010189880462532.Spec : Prop :=
  ∀ n, P16985010189880462532.a n = A166555 n

end A166555

/-! ## A166555.P10193030869591466307

`A047999(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166555

/-- `A047999(n)*A059268(n)` -/
def P10193030869591466307.Spec : Prop :=
  ∀ n, P10193030869591466307.a n = A166555 n

theorem P10193030869591466307.correct : P10193030869591466307.Spec := by
  intro n
  simp only [A166555]

end A166555

/-! ## A166555.P9430177775850258792

`lcm(A059268(n), A143200(n))`
-/

namespace A166555.P9430177775850258792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A143200 n)

end

end A166555.P9430177775850258792

namespace A166555

/-- `lcm(A059268(n), A143200(n))` -/
def P9430177775850258792.Spec : Prop :=
  ∀ n, (P9430177775850258792.a n : ℤ) = A166555 n

end A166555

/-! ## A166555.P9589587466056765705

`and(A013609(n), A059268(n))`
-/

namespace A166555.P9589587466056765705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013609 n) (A059268 n)

end

end A166555.P9589587466056765705

namespace A166555

/-- `and(A013609(n), A059268(n))` -/
def P9589587466056765705.Spec : Prop :=
  ∀ n, P9589587466056765705.a n = A166555 n

end A166555

/-! ## A166555.P12697660013694167738

`and(A038220(n), A059268(n))`
-/

namespace A166555.P12697660013694167738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038220 n) (A059268 n)

end

end A166555.P12697660013694167738

namespace A166555

/-- `and(A038220(n), A059268(n))` -/
def P12697660013694167738.Spec : Prop :=
  ∀ n, P12697660013694167738.a n = A166555 n

end A166555

/-! ## A166555.P8955428119887799883

`and(A059268(n), A061929(n))`
-/

namespace A166555.P8955428119887799883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A061929 n)

end

end A166555.P8955428119887799883

namespace A166555

/-- `and(A059268(n), A061929(n))` -/
def P8955428119887799883.Spec : Prop :=
  ∀ n, P8955428119887799883.a n = A166555 n

end A166555

/-! ## A166555.P6562825378460019956

`A166282(n)²*A059268(n)`
-/

namespace A166555.P6562825378460019956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 n ^ 2 * A059268 n

end

end A166555.P6562825378460019956

namespace A166555

/-- `A166282(n)²*A059268(n)` -/
def P6562825378460019956.Spec : Prop :=
  ∀ n, P6562825378460019956.a n = A166555 n

end A166555

/-! ## A166555.P3701233877648137020

`A013609(n)%A000079(A002260(n+1))`
-/

namespace A166555.P3701233877648137020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013609 n) (A000079 (A002260 (n + 1)).toNat)

end

end A166555.P3701233877648137020

namespace A166555

/-- `A013609(n)%A000079(A002260(n+1))` -/
def P3701233877648137020.Spec : Prop :=
  ∀ n, P3701233877648137020.a n = A166555 n

end A166555

/-! ## A166555.P16740692725116769573

`and(A059268(n), A110107(n))`
-/

namespace A166555.P16740692725116769573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A110107 n)

end

end A166555.P16740692725116769573

namespace A166555

/-- `and(A059268(n), A110107(n))` -/
def P16740692725116769573.Spec : Prop :=
  ∀ n, P16740692725116769573.a n = A166555 n

end A166555

/-! ## A166555.P1296403073644116713

`and(A013613(n), A059268(n))`
-/

namespace A166555.P1296403073644116713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013613 n) (A059268 n)

end

end A166555.P1296403073644116713

namespace A166555

/-- `and(A013613(n), A059268(n))` -/
def P1296403073644116713.Spec : Prop :=
  ∀ n, P1296403073644116713.a n = A166555 n

end A166555

/-! ## A166555.P9196322321262855274

`and(A038244(n), A059268(n))`
-/

namespace A166555.P9196322321262855274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038244 n) (A059268 n)

end

end A166555.P9196322321262855274

namespace A166555

/-- `and(A038244(n), A059268(n))` -/
def P9196322321262855274.Spec : Prop :=
  ∀ n, P9196322321262855274.a n = A166555 n

end A166555

/-! ## A166555.P13276336043500732682

`2^A002262(n)*A027466(n)%2`
-/

namespace A166555.P13276336043500732682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (Int.tmod (A027466 n) 2 : ℚ)

end

end A166555.P13276336043500732682

namespace A166555

/-- `2^A002262(n)*A027466(n)%2` -/
def P13276336043500732682.Spec : Prop :=
  ∀ n, P13276336043500732682.a n = (A166555 n : ℚ)

end A166555

/-! ## A166555.P10034060644932433698

`and(A038224(n), A059268(n))`
-/

namespace A166555.P10034060644932433698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038224 n) (A059268 n)

end

end A166555.P10034060644932433698

namespace A166555

/-- `and(A038224(n), A059268(n))` -/
def P10034060644932433698.Spec : Prop :=
  ∀ n, P10034060644932433698.a n = A166555 n

end A166555

/-! ## A166555.P8884489325241781664

`and(A038268(n), A059268(n))`
-/

namespace A166555.P8884489325241781664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038268 n) (A059268 n)

end

end A166555.P8884489325241781664

namespace A166555

/-- `and(A038268(n), A059268(n))` -/
def P8884489325241781664.Spec : Prop :=
  ∀ n, P8884489325241781664.a n = A166555 n

end A166555

/-! ## A166555.P7293375564722004486

`and(A038248(n), A059268(n))`
-/

namespace A166555.P7293375564722004486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038248 n) (A059268 n)

end

end A166555.P7293375564722004486

namespace A166555

/-- `and(A038248(n), A059268(n))` -/
def P7293375564722004486.Spec : Prop :=
  ∀ n, P7293375564722004486.a n = A166555 n

end A166555

/-! ## A166555.P2558113014086545016

`and(A013617(n), A059268(n))`
-/

namespace A166555.P2558113014086545016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013617 n) (A059268 n)

end

end A166555.P2558113014086545016

namespace A166555

/-- `and(A013617(n), A059268(n))` -/
def P2558113014086545016.Spec : Prop :=
  ∀ n, P2558113014086545016.a n = A166555 n

end A166555

/-! ## A166555.P17922692978735544882

`and(A038292(n), A059268(n))`
-/

namespace A166555.P17922692978735544882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038292 n) (A059268 n)

end

end A166555.P17922692978735544882

namespace A166555

/-- `and(A038292(n), A059268(n))` -/
def P17922692978735544882.Spec : Prop :=
  ∀ n, P17922692978735544882.a n = A166555 n

end A166555

/-! ## A166555.P12281923217484639596

`and(A038228(n), A059268(n))`
-/

namespace A166555.P12281923217484639596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038228 n) (A059268 n)

end

end A166555.P12281923217484639596

namespace A166555

/-- `and(A038228(n), A059268(n))` -/
def P12281923217484639596.Spec : Prop :=
  ∀ n, P12281923217484639596.a n = A166555 n

end A166555

/-!
# A166556: Triangle read by rows, A000012 * A047999.

The programs for A166556, there is no canonical definition to state claims against.
-/

/-! ## A166556.P2811382401743849961

`A275257(n+1)-A118135(A213028(n))`
-/

namespace A166556.P2811382401743849961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275257 (n + 1) - A118135 (A213028 n).toNat

end

end A166556.P2811382401743849961

/-! ## A166556.P16725214982524524710

`A275257(n+1)-A282355(A346061(n))`
-/

namespace A166556.P16725214982524524710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275257 (n + 1) - A282355 (A346061 n).toNat

end

end A166556.P16725214982524524710

/-! ## A166556.P18016618333869460287

`A326453(A347615(n))+A010766(n+1)`
-/

namespace A166556.P18016618333869460287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 (A347615 n).toNat + A010766 (n + 1)

end

end A166556.P18016618333869460287

/-! ## A166556.P13926400144889072771

`A275257(n+1)-A055641(A059328(n))`
-/

namespace A166556.P13926400144889072771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275257 (n + 1) - A055641 (A059328 n).toNat

end

end A166556.P13926400144889072771

/-! ## A166556.P7129533609412857057

`A275257(n+1)+A008683(A187940(n+1))`
-/

namespace A166556.P7129533609412857057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275257 (n + 1) + A008683 (A187940 (n + 1)).toNat

end

end A166556.P7129533609412857057

/-!
# A166559: Primes p such that product of digits + 10 is prime.

The programs for A166559, there is no canonical definition to state claims against.
-/

/-! ## A166559.P8453279294656621582

`A091633(∑[A290107(A027759(n+1))])`
-/

namespace A166559.P8453279294656621582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (A027759 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166559.P8453279294656621582

/-! ## A166559.P13160873541372789311

`∩[A049543(n+1), A014963(A091633(n+1))]`
-/

namespace A166559.P13160873541372789311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A091633 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166559.P13160873541372789311

/-! ## A166559.P5983481073138512016

`p?[A091633(n+1)*A290107(A027759(n+1))]`
-/

namespace A166559.P5983481073138512016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1) * A290107 (A027759 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166559.P5983481073138512016

/-! ## A166559.P6687412614330258391

`p?[A136333(n+1)%A128172(n+2)]`
-/

namespace A166559.P6687412614330258391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136333 (n + 1)) (A128172 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166559.P6687412614330258391

/-!
# A166560: Primes of the form 100*n+9.

The programs for A166560, there is no canonical definition to state claims against.
-/

/-! ## A166560.P2210386642449034574

`9+10*A104045(n+1)`
-/

namespace A166560.P2210386642449034574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 + 10 * A104045 (n + 1)

end

end A166560.P2210386642449034574

/-! ## A166560.P16866357980956752498

`∩[A141883(n+1), A141934(n+1)]`
-/

namespace A166560.P16866357980956752498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P16866357980956752498

/-! ## A166560.P11169593595657123212

`p?[10*10*n+9]`
-/

namespace A166560.P11169593595657123212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166560.P11169593595657123212

/-! ## A166560.P1244579097117336762

`p?[A159551(n)-(n+1)]%A084649(n+1)`
-/

namespace A166560.P1244579097117336762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A084649 (n + 1))

end

end A166560.P1244579097117336762

/-! ## A166560.P15961770141077547164

`or(p?[A159551(n)-(n+1)], A145377(n+1))`
-/

namespace A166560.P15961770141077547164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A145377 (n + 1))

end

end A166560.P15961770141077547164

/-! ## A166560.P16812726081838455361

`or(p?[A159551(n)-(n+1)], A288633(n+1))`
-/

namespace A166560.P16812726081838455361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A288633 (n + 1))

end

end A166560.P16812726081838455361

/-! ## A166560.P16399848251440500133

`A000027(p?[A159551(n)-(n+1)])`
-/

namespace A166560.P16399848251440500133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159551 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166560.P16399848251440500133

/-! ## A166560.P11666132154673974945

`∩[A033205(n+1), A141934(n+1)]`
-/

namespace A166560.P11666132154673974945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P11666132154673974945

/-! ## A166560.P7162233041486544960

`∩[A141934(n+1), A216815(n+1)]`
-/

namespace A166560.P7162233041486544960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P7162233041486544960

/-! ## A166560.P10531291170372994947

`∩[A091729(n+1), A141934(n+1)]`
-/

namespace A166560.P10531291170372994947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P10531291170372994947

/-! ## A166560.P17704197386227133907

`∩[A141934(n+1), A210499(n+1)]`
-/

namespace A166560.P17704197386227133907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P17704197386227133907

/-! ## A166560.P5171592160505126251

`∩[A096785(n+1), A141934(n+1)]`
-/

namespace A166560.P5171592160505126251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P5171592160505126251

/-! ## A166560.P9065548458866663352

`∩[A030433(n+1), A045804(n+1)]`
-/

namespace A166560.P9065548458866663352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P9065548458866663352

/-! ## A166560.P18198779287011070830

`∩[A045457(n+1), A045804(n+1)]`
-/

namespace A166560.P18198779287011070830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P18198779287011070830

/-! ## A166560.P5143560368776627014

`∩[A045804(n+1), A141883(n+1)]`
-/

namespace A166560.P5143560368776627014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P5143560368776627014

/-! ## A166560.P8290035855530385395

`∩[A045804(n+1), A141934(n+1)]`
-/

namespace A166560.P8290035855530385395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P8290035855530385395

/-! ## A166560.P10013039604185144250

`∩[A141883(n+1), A159754(n+1)]`
-/

namespace A166560.P10013039604185144250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P10013039604185144250

/-! ## A166560.P7576338069563575712

`∩[A030433(n+1), A045801(n+1)-2]`
-/

namespace A166560.P7576338069563575712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P7576338069563575712

/-! ## A166560.P1878234465768947030

`∩[A045457(n+1), A045801(n+1)-2]`
-/

namespace A166560.P1878234465768947030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166560.P1878234465768947030

/-! ## A166560.P12109696457061610228

`record[p?[A336523(n+1)-2]]`
-/

namespace A166560.P12109696457061610228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336523 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166560.P12109696457061610228

/-!
# A166561: Primes p such that sum of digits + 1 is prime.

The programs for A166561, the canonical program `A166561.P14281956629878694271` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166561 has offset 1).

The definition of A166561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166561.P14281956629878694271

`p?[A000040(n+1)*A001222(A007605(n+1)+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A166561

/-- `p?[A000040(n+1)*A001222(A007605(n+1)+1)]` -/
def P14281956629878694271.Spec : Prop :=
  ∀ n, P14281956629878694271.a n = A166561 (n + 1)

theorem P14281956629878694271.correct : P14281956629878694271.Spec := by
  intro n
  simp only [A166561, Nat.add_sub_cancel]

end A166561

/-! ## A166561.P1133631066076001436

`p?[eq[2, A000005(A007953(n)+1)]]`
-/

namespace A166561.P1133631066076001436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007953 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166561.P1133631066076001436

namespace A166561

/-- `p?[eq[2, A000005(A007953(n)+1)]]` -/
def P1133631066076001436.Spec : Prop :=
  ∀ n, (P1133631066076001436.a n : ℤ) = A166561 (n + 1)

end A166561

/-! ## A166561.P16114013822426978421

`p?[n*A001222(A007953(n)+1)]`
-/

namespace A166561.P16114013822426978421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A007953 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166561.P16114013822426978421

namespace A166561

/-- `p?[n*A001222(A007953(n)+1)]` -/
def P16114013822426978421.Spec : Prop :=
  ∀ n, P16114013822426978421.a n = A166561 (n + 1)

end A166561

/-! ## A166561.P15392548440453020248

`p?[n*A322968(A007953(n)+1)]`
-/

namespace A166561.P15392548440453020248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322968 (A007953 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166561.P15392548440453020248

namespace A166561

/-- `p?[n*A322968(A007953(n)+1)]` -/
def P15392548440453020248.Spec : Prop :=
  ∀ n, P15392548440453020248.a n = A166561 (n + 1)

end A166561

/-! ## A166561.P13824709135241620698

`p?[(n+1)*A292257(A034690(n+1))]`
-/

namespace A166561.P13824709135241620698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292257 (A034690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166561.P13824709135241620698

namespace A166561

/-- `p?[(n+1)*A292257(A034690(n+1))]` -/
def P13824709135241620698.Spec : Prop :=
  ∀ n, P13824709135241620698.a n = A166561 (n + 1)

end A166561

/-! ## A166561.P7236350914450616326

`p?[(n+1)*A010051(A007953(n)+2)]`
-/

namespace A166561.P7236350914450616326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A007953 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166561.P7236350914450616326

namespace A166561

/-- `p?[(n+1)*A010051(A007953(n)+2)]` -/
def P7236350914450616326.Spec : Prop :=
  ∀ n, P7236350914450616326.a n = A166561 (n + 1)

end A166561

/-! ## A166561.P8144232230425344194

`eq[A322366(A007953(n)+1), A322366(n)]`
-/

namespace A166561.P8144232230425344194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 (A007953 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166561.P8144232230425344194

namespace A166561

/-- `eq[A322366(A007953(n)+1), A322366(n)]` -/
def P8144232230425344194.Spec : Prop :=
  ∀ n, (P8144232230425344194.a n : ℤ) = A166561 (n + 1)

end A166561

/-!
# A166562: Numbers k such that prime(k) - k - 1 is prime.

The programs for A166562, the canonical program `A166562.P5178159988493624345` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166562 has offset 1).

The definition of A166562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166562.P18070126173412702520

`eq[1, A001222(A068499(n+1)-n)]`
-/

namespace A166562.P18070126173412702520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068499 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166562.P18070126173412702520

namespace A166562

/-- `eq[1, A001222(A068499(n+1)-n)]` -/
def P18070126173412702520.Spec : Prop :=
  ∀ n, (P18070126173412702520.a n : ℤ) = A166562 (n + 1)

end A166562

/-! ## A166562.P4253428470953151292

`eq[2, A000005(A068499(n+1)-n)]`
-/

namespace A166562.P4253428470953151292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068499 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166562.P4253428470953151292

namespace A166562

/-- `eq[2, A000005(A068499(n+1)-n)]` -/
def P4253428470953151292.Spec : Prop :=
  ∀ n, (P4253428470953151292.a n : ℤ) = A166562 (n + 1)

end A166562

/-! ## A166562.P3120938628911120285

`A000720(A255769(n+1))`
-/

namespace A166562.P3120938628911120285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A255769 (n + 1)).toNat

end

end A166562.P3120938628911120285

namespace A166562

/-- `A000720(A255769(n+1))` -/
def P3120938628911120285.Spec : Prop :=
  ∀ n, P3120938628911120285.a n = A166562 (n + 1)

end A166562

/-! ## A166562.P5178159988493624345

`A297109(or(1, A255769(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166562

/-- `A297109(or(1, A255769(n+1)))` -/
def P5178159988493624345.Spec : Prop :=
  ∀ n, P5178159988493624345.a n = A166562 (n + 1)

theorem P5178159988493624345.correct : P5178159988493624345.Spec := by
  intro n
  simp only [A166562, Nat.add_sub_cancel]

end A166562

/-! ## A166562.P15301176258504270996

`A297109(2*A255769(n+1)-A255769(n+1))`
-/

namespace A166562.P15301176258504270996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (2 * A255769 (n + 1) - A255769 (n + 1)).toNat

end

end A166562.P15301176258504270996

namespace A166562

/-- `A297109(2*A255769(n+1)-A255769(n+1))` -/
def P15301176258504270996.Spec : Prop :=
  ∀ n, P15301176258504270996.a n = A166562 (n + 1)

end A166562

/-! ## A166562.P8540102944900680683

`A061395(2*A255769(n+1))`
-/

namespace A166562.P8540102944900680683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A255769 (n + 1)).toNat

end

end A166562.P8540102944900680683

namespace A166562

/-- `A061395(2*A255769(n+1))` -/
def P8540102944900680683.Spec : Prop :=
  ∀ n, P8540102944900680683.a n = A166562 (n + 1)

end A166562

/-! ## A166562.P13493372089993831921

`A000720(p?[A010051(n+1)+A002808(n+1)])`
-/

namespace A166562.P13493372089993831921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166562.P13493372089993831921

namespace A166562

/-- `A000720(p?[A010051(n+1)+A002808(n+1)])` -/
def P13493372089993831921.Spec : Prop :=
  ∀ n, P13493372089993831921.a n = A166562 (n + 1)

end A166562

/-! ## A166562.P9110551360741288522

`eq[2, A061142(A068499(n+1)-n)]`
-/

namespace A166562.P9110551360741288522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A068499 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166562.P9110551360741288522

namespace A166562

/-- `eq[2, A061142(A068499(n+1)-n)]` -/
def P9110551360741288522.Spec : Prop :=
  ∀ n, (P9110551360741288522.a n : ℤ) = A166562 (n + 1)

end A166562

/-! ## A166562.P18428738705533370539

`eq[1, A003415(A008578(n+1)-(n+1))]`
-/

namespace A166562.P18428738705533370539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A008578 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166562.P18428738705533370539

namespace A166562

/-- `eq[1, A003415(A008578(n+1)-(n+1))]` -/
def P18428738705533370539.Spec : Prop :=
  ∀ n, (P18428738705533370539.a n : ℤ) = A166562 (n + 1)

end A166562

/-! ## A166562.P4221487147028608003

`record[A055396(A010051(n+2)+A002808(n+2))]`
-/

namespace A166562.P4221487147028608003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A010051 (n + 2) + A002808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166562.P4221487147028608003

namespace A166562

/-- `record[A055396(A010051(n+2)+A002808(n+2))]` -/
def P4221487147028608003.Spec : Prop :=
  ∀ n, P4221487147028608003.a n = A166562 (n + 1)

end A166562

/-!
# A166563: Numbers n such that 12*n+5 is not prime.

The programs for A166563, the canonical program `A166563.P13646360930598565579` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166563 has offset 1).

The definition of A166563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166563.P13646360930598565579

`comp[A167055(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166563

/-- `comp[A167055(n+1)]` -/
def P13646360930598565579.Spec : Prop :=
  ∀ n, (P13646360930598565579.a n : ℤ) = A166563 (n + 1)

theorem P13646360930598565579.correct : P13646360930598565579.Spec := by
  intro n
  simp only [A166563, Nat.add_sub_cancel]

end A166563

/-! ## A166563.P3713436516729251824

`lt[∑{p}[12*n+5, #], 7*n-2]`
-/

namespace A166563.P3713436516729251824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A166563.P3713436516729251824

namespace A166563

/-- `lt[∑{p}[12*n+5, #], 7*n-2]` -/
def P3713436516729251824.Spec : Prop :=
  ∀ n, (P3713436516729251824.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P12416815173936027793

`lt[1, A001222(12*n+5)]`
-/

namespace A166563.P12416815173936027793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166563.P12416815173936027793

namespace A166563

/-- `lt[1, A001222(12*n+5)]` -/
def P12416815173936027793.Spec : Prop :=
  ∀ n, (P12416815173936027793.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P15415873838771931513

`lt[2, A000005(12*n+5)]`
-/

namespace A166563.P15415873838771931513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166563.P15415873838771931513

namespace A166563

/-- `lt[2, A000005(12*n+5)]` -/
def P15415873838771931513.Spec : Prop :=
  ∀ n, (P15415873838771931513.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P11137961443461671471

`eq[1, A075743(4*n+1)+1]`
-/

namespace A166563.P11137961443461671471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166563.P11137961443461671471

namespace A166563

/-- `eq[1, A075743(4*n+1)+1]` -/
def P11137961443461671471.Spec : Prop :=
  ∀ n, (P11137961443461671471.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P3987864030735586878

`eq[1, A156706(4*n+1)+1]`
-/

namespace A166563.P3987864030735586878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166563.P3987864030735586878

namespace A166563

/-- `eq[1, A156706(4*n+1)+1]` -/
def P3987864030735586878.Spec : Prop :=
  ∀ n, (P3987864030735586878.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P4316792935715087543

`lt[A006530(12*n+5), 3*n]`
-/

namespace A166563.P4316792935715087543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166563.P4316792935715087543

namespace A166563

/-- `lt[A006530(12*n+5), 3*n]` -/
def P4316792935715087543.Spec : Prop :=
  ∀ n, (P4316792935715087543.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P2870229617385628740

`lt[A020639(2*n+10*n+5), n+2]`
-/

namespace A166563.P2870229617385628740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + (10 * n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166563.P2870229617385628740

namespace A166563

/-- `lt[A020639(2*n+10*n+5), n+2]` -/
def P2870229617385628740.Spec : Prop :=
  ∀ n, (P2870229617385628740.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P5244725963909220469

`lt[A000010(A017581(n)), A008594(n)]`
-/

namespace A166563.P5244725963909220469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166563.P5244725963909220469

namespace A166563

/-- `lt[A000010(A017581(n)), A008594(n)]` -/
def P5244725963909220469.Spec : Prop :=
  ∀ n, (P5244725963909220469.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P2552240266490495823

`lt[A000010(A017581(n)), A017545(n)]`
-/

namespace A166563.P2552240266490495823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166563.P2552240266490495823

namespace A166563

/-- `lt[A000010(A017581(n)), A017545(n)]` -/
def P2552240266490495823.Spec : Prop :=
  ∀ n, (P2552240266490495823.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P15435831160163939890

`lt[A017605(n), A000203(A017581(n))]`
-/

namespace A166563.P15435831160163939890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166563.P15435831160163939890

namespace A166563

/-- `lt[A017605(n), A000203(A017581(n))]` -/
def P15435831160163939890.Spec : Prop :=
  ∀ n, (P15435831160163939890.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P6824891248546727520

`lt[A017617(n), A000203(A017581(n))]`
-/

namespace A166563.P6824891248546727520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166563.P6824891248546727520

namespace A166563

/-- `lt[A017617(n), A000203(A017581(n))]` -/
def P6824891248546727520.Spec : Prop :=
  ∀ n, (P6824891248546727520.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P13329650434269016322

`lt[A017641(n), A000203(A017581(n))]`
-/

namespace A166563.P13329650434269016322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166563.P13329650434269016322

namespace A166563

/-- `lt[A017641(n), A000203(A017581(n))]` -/
def P13329650434269016322.Spec : Prop :=
  ∀ n, (P13329650434269016322.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P11876084185221057431

`eq[2, A218850(3*n+1)]`
-/

namespace A166563.P11876084185221057431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218850 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166563.P11876084185221057431

namespace A166563

/-- `eq[2, A218850(3*n+1)]` -/
def P11876084185221057431.Spec : Prop :=
  ∀ n, (P11876084185221057431.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P7631820526422192813

`eq[1, A005171(A017581(n))]`
-/

namespace A166563.P7631820526422192813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166563.P7631820526422192813

namespace A166563

/-- `eq[1, A005171(A017581(n))]` -/
def P7631820526422192813.Spec : Prop :=
  ∀ n, (P7631820526422192813.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P4233131249237323074

`lt[A005408(n), A098098(2*n)]`
-/

namespace A166563.P4233131249237323074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166563.P4233131249237323074

namespace A166563

/-- `lt[A005408(n), A098098(2*n)]` -/
def P4233131249237323074.Spec : Prop :=
  ∀ n, (P4233131249237323074.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P14341465704310620174

`eq[0, A167020(2*n+1)]`
-/

namespace A166563.P14341465704310620174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166563.P14341465704310620174

namespace A166563

/-- `eq[0, A167020(2*n+1)]` -/
def P14341465704310620174.Spec : Prop :=
  ∀ n, (P14341465704310620174.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P10137656932287269240

`lt[1, A359305(2*n+1)]`
-/

namespace A166563.P10137656932287269240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166563.P10137656932287269240

namespace A166563

/-- `lt[1, A359305(2*n+1)]` -/
def P10137656932287269240.Spec : Prop :=
  ∀ n, (P10137656932287269240.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P12106481466788594639

`lt[2, A231776(2*n+1)]`
-/

namespace A166563.P12106481466788594639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166563.P12106481466788594639

namespace A166563

/-- `lt[2, A231776(2*n+1)]` -/
def P12106481466788594639.Spec : Prop :=
  ∀ n, (P12106481466788594639.a n : ℤ) = A166563 (n + 1)

end A166563

/-! ## A166563.P13725322333330693986

`eq[A029832(2*(n+1)), A029832(A016969(2*n))]`
-/

namespace A166563.P13725322333330693986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (A016969 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166563.P13725322333330693986

namespace A166563

/-- `eq[A029832(2*(n+1)), A029832(A016969(2*n))]` -/
def P13725322333330693986.Spec : Prop :=
  ∀ n, (P13725322333330693986.a n : ℤ) = A166563 (n + 1)

end A166563

/-!
# A166564: Twin prime pairs p, p+2 such that p+(p+2)+1 and p*(p+2)+1 are both square.

The programs for A166564, there is no canonical definition to state claims against.
-/

/-! ## A166564.P18104523112968140857

`∪[A375912(n+1)+2, A375912(n+1)]`
-/

namespace A166564.P18104523112968140857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375912 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166564.P18104523112968140857

/-! ## A166564.P2619712512965903938

`∩[A122564(n+1), A266723(n)]`
-/

namespace A166564.P2619712512965903938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166564.P2619712512965903938

/-!
# A166565: Primes p such that product of digits +- 1 is prime.

The programs for A166565, the canonical program `A166565.P9364426524282824447` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166565 has offset 1).

The definition of A166565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166565.P9364426524282824447

`∩[A066725(n+1), A166566(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166565

/-- `∩[A066725(n+1), A166566(n+1)]` -/
def P9364426524282824447.Spec : Prop :=
  ∀ n, (P9364426524282824447.a n : ℤ) = A166565 (n + 1)

theorem P9364426524282824447.correct : P9364426524282824447.Spec := by
  intro n
  simp only [A166565, Nat.add_sub_cancel]

end A166565

/-! ## A166565.P15076705835472780470

`∩[A084354(n+1), A166566(n+1)]`
-/

namespace A166565.P15076705835472780470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P15076705835472780470

namespace A166565

/-- `∩[A084354(n+1), A166566(n+1)]` -/
def P15076705835472780470.Spec : Prop :=
  ∀ n, (P15076705835472780470.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P5261598676721468245

`p?[A089377(n+1)]`
-/

namespace A166565.P5261598676721468245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166565.P5261598676721468245

namespace A166565

/-- `p?[A089377(n+1)]` -/
def P5261598676721468245.Spec : Prop :=
  ∀ n, P5261598676721468245.a n = A166565 (n + 1)

end A166565

/-! ## A166565.P1032728627457944841

`p?[record[A089377(A324346(n))]]`
-/

namespace A166565.P1032728627457944841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166565.P1032728627457944841

namespace A166565

/-- `p?[record[A089377(A324346(n))]]` -/
def P1032728627457944841.Spec : Prop :=
  ∀ n, P1032728627457944841.a n = A166565 (n + 1)

end A166565

/-! ## A166565.P7019125574936263871

`∩[A038618(n+1), A089377(n+1)]`
-/

namespace A166565.P7019125574936263871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P7019125574936263871

namespace A166565

/-- `∩[A038618(n+1), A089377(n+1)]` -/
def P7019125574936263871.Spec : Prop :=
  ∀ n, (P7019125574936263871.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P9622747197934732102

`∩[A066725(n+1), A089377(n+1)]`
-/

namespace A166565.P9622747197934732102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P9622747197934732102

namespace A166565

/-- `∩[A066725(n+1), A089377(n+1)]` -/
def P9622747197934732102.Spec : Prop :=
  ∀ n, (P9622747197934732102.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P12221530659638984621

`record[A006530(A089377(n+6))]`
-/

namespace A166565.P12221530659638984621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089377 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166565.P12221530659638984621

namespace A166565

/-- `record[A006530(A089377(n+6))]` -/
def P12221530659638984621.Spec : Prop :=
  ∀ n, P12221530659638984621.a n = A166565 (n + 1)

end A166565

/-! ## A166565.P852006969302393235

`filter[A089377(n+1), A010051(#)]`
-/

namespace A166565.P852006969302393235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166565.P852006969302393235

namespace A166565

/-- `filter[A089377(n+1), A010051(#)]` -/
def P852006969302393235.Spec : Prop :=
  ∀ n, P852006969302393235.a n = A166565 (n + 1)

end A166565

/-! ## A166565.P3543180993248008071

`∩[A000040(n+1), A089377(n+1)]`
-/

namespace A166565.P3543180993248008071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P3543180993248008071

namespace A166565

/-- `∩[A000040(n+1), A089377(n+1)]` -/
def P3543180993248008071.Spec : Prop :=
  ∀ n, (P3543180993248008071.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P13394309407369575827

`∩[A004139(n+1), A089377(n+1)]`
-/

namespace A166565.P13394309407369575827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P13394309407369575827

namespace A166565

/-- `∩[A004139(n+1), A089377(n+1)]` -/
def P13394309407369575827.Spec : Prop :=
  ∀ n, (P13394309407369575827.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P5612361341207956585

`∩[A006005(n+1), A089377(n+1)]`
-/

namespace A166565.P5612361341207956585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P5612361341207956585

namespace A166565

/-- `∩[A006005(n+1), A089377(n+1)]` -/
def P5612361341207956585.Spec : Prop :=
  ∀ n, (P5612361341207956585.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P11977850021299698736

`∩[A008578(n+1), A089377(n+1)]`
-/

namespace A166565.P11977850021299698736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P11977850021299698736

namespace A166565

/-- `∩[A008578(n+1), A089377(n+1)]` -/
def P11977850021299698736.Spec : Prop :=
  ∀ n, (P11977850021299698736.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P5972114262574817492

`∩[A033946(n+1), A089377(n+1)]`
-/

namespace A166565.P5972114262574817492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P5972114262574817492

namespace A166565

/-- `∩[A033946(n+1), A089377(n+1)]` -/
def P5972114262574817492.Spec : Prop :=
  ∀ n, (P5972114262574817492.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P6140810699909178538

`∩[A045319(n+1), A089377(n+1)]`
-/

namespace A166565.P6140810699909178538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P6140810699909178538

namespace A166565

/-- `∩[A045319(n+1), A089377(n+1)]` -/
def P6140810699909178538.Spec : Prop :=
  ∀ n, (P6140810699909178538.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P15880112568779796393

`∩[A045344(n+1), A089377(n+1)]`
-/

namespace A166565.P15880112568779796393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P15880112568779796393

namespace A166565

/-- `∩[A045344(n+1), A089377(n+1)]` -/
def P15880112568779796393.Spec : Prop :=
  ∀ n, (P15880112568779796393.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P1762071029823839611

`∩[A065091(n+1), A089377(n+1)]`
-/

namespace A166565.P1762071029823839611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P1762071029823839611

namespace A166565

/-- `∩[A065091(n+1), A089377(n+1)]` -/
def P1762071029823839611.Spec : Prop :=
  ∀ n, (P1762071029823839611.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P4613939959141041253

`∩[A089377(n+1), A158611(n+1)]`
-/

namespace A166565.P4613939959141041253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P4613939959141041253

namespace A166565

/-- `∩[A089377(n+1), A158611(n+1)]` -/
def P4613939959141041253.Spec : Prop :=
  ∀ n, (P4613939959141041253.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P13120481754923134459

`∩[A089377(n+1), A182986(n+1)]`
-/

namespace A166565.P13120481754923134459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P13120481754923134459

namespace A166565

/-- `∩[A089377(n+1), A182986(n+1)]` -/
def P13120481754923134459.Spec : Prop :=
  ∀ n, (P13120481754923134459.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P1435726612206980682

`∩[A089377(n+1), A216495(n+1)]`
-/

namespace A166565.P1435726612206980682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P1435726612206980682

namespace A166565

/-- `∩[A089377(n+1), A216495(n+1)]` -/
def P1435726612206980682.Spec : Prop :=
  ∀ n, (P1435726612206980682.a n : ℤ) = A166565 (n + 1)

end A166565

/-! ## A166565.P15661182668666451580

`∩[A089377(n+1), A301987(n+1)]`
-/

namespace A166565.P15661182668666451580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P15661182668666451580

namespace A166565

/-- `∩[A089377(n+1), A301987(n+1)]` -/
def P15661182668666451580.Spec : Prop :=
  ∀ n, (P15661182668666451580.a n : ℤ) = A166565 (n + 1)

end A166565

/-!
# A166566: Primes p such that product of digits - 1 is prime.

The programs for A166566, the canonical program `A166566.P16003818886933794123` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166566 has offset 1).

The definition of A166566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166566.P16003818886933794123

`p?[A244607(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166566

/-- `p?[A244607(n+1)]` -/
def P16003818886933794123.Spec : Prop :=
  ∀ n, P16003818886933794123.a n = A166566 (n + 1)

theorem P16003818886933794123.correct : P16003818886933794123.Spec := by
  intro n
  simp only [A166566, Nat.add_sub_cancel]

end A166566

/-! ## A166566.P11293431458275347992

`record[A006530(A244607(n+3))]`
-/

namespace A166566.P11293431458275347992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A244607 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166566.P11293431458275347992

namespace A166566

/-- `record[A006530(A244607(n+3))]` -/
def P11293431458275347992.Spec : Prop :=
  ∀ n, P11293431458275347992.a n = A166566 (n + 1)

end A166566

/-! ## A166566.P7890684883472654043

`filter[A244607(n+1), A010051(#)]`
-/

namespace A166566.P7890684883472654043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166566.P7890684883472654043

namespace A166566

/-- `filter[A244607(n+1), A010051(#)]` -/
def P7890684883472654043.Spec : Prop :=
  ∀ n, P7890684883472654043.a n = A166566 (n + 1)

end A166566

/-! ## A166566.P15202695664209167046

`∩[A000040(n+1), A244607(n+1)]`
-/

namespace A166566.P15202695664209167046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P15202695664209167046

namespace A166566

/-- `∩[A000040(n+1), A244607(n+1)]` -/
def P15202695664209167046.Spec : Prop :=
  ∀ n, (P15202695664209167046.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P3980742871590118768

`∩[A004139(n+1), A244607(n+1)]`
-/

namespace A166566.P3980742871590118768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P3980742871590118768

namespace A166566

/-- `∩[A004139(n+1), A244607(n+1)]` -/
def P3980742871590118768.Spec : Prop :=
  ∀ n, (P3980742871590118768.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P1677225361949227055

`∩[A006005(n+1), A244607(n+1)]`
-/

namespace A166566.P1677225361949227055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P1677225361949227055

namespace A166566

/-- `∩[A006005(n+1), A244607(n+1)]` -/
def P1677225361949227055.Spec : Prop :=
  ∀ n, (P1677225361949227055.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P8227364908591278472

`∩[A008578(n+1), A244607(n+1)]`
-/

namespace A166566.P8227364908591278472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P8227364908591278472

namespace A166566

/-- `∩[A008578(n+1), A244607(n+1)]` -/
def P8227364908591278472.Spec : Prop :=
  ∀ n, (P8227364908591278472.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P10442758467456450837

`∩[A033946(n+1), A244607(n+1)]`
-/

namespace A166566.P10442758467456450837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P10442758467456450837

namespace A166566

/-- `∩[A033946(n+1), A244607(n+1)]` -/
def P10442758467456450837.Spec : Prop :=
  ∀ n, (P10442758467456450837.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P17678657619972269557

`∩[A038618(n+1), A244607(n+1)]`
-/

namespace A166566.P17678657619972269557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P17678657619972269557

namespace A166566

/-- `∩[A038618(n+1), A244607(n+1)]` -/
def P17678657619972269557.Spec : Prop :=
  ∀ n, (P17678657619972269557.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P8225828654807966436

`∩[A045319(n+1), A244607(n+1)]`
-/

namespace A166566.P8225828654807966436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P8225828654807966436

namespace A166566

/-- `∩[A045319(n+1), A244607(n+1)]` -/
def P8225828654807966436.Spec : Prop :=
  ∀ n, (P8225828654807966436.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P5747510321367751942

`∩[A065091(n+1), A244607(n+1)]`
-/

namespace A166566.P5747510321367751942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P5747510321367751942

namespace A166566

/-- `∩[A065091(n+1), A244607(n+1)]` -/
def P5747510321367751942.Spec : Prop :=
  ∀ n, (P5747510321367751942.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P9470289454508662090

`∩[A106118(n+1), A244607(n+1)]`
-/

namespace A166566.P9470289454508662090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P9470289454508662090

namespace A166566

/-- `∩[A106118(n+1), A244607(n+1)]` -/
def P9470289454508662090.Spec : Prop :=
  ∀ n, (P9470289454508662090.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P15899452607009154636

`∩[A158611(n+1), A244607(n+1)]`
-/

namespace A166566.P15899452607009154636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P15899452607009154636

namespace A166566

/-- `∩[A158611(n+1), A244607(n+1)]` -/
def P15899452607009154636.Spec : Prop :=
  ∀ n, (P15899452607009154636.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P15820289180828893531

`∩[A182986(n+1), A244607(n+1)]`
-/

namespace A166566.P15820289180828893531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P15820289180828893531

namespace A166566

/-- `∩[A182986(n+1), A244607(n+1)]` -/
def P15820289180828893531.Spec : Prop :=
  ∀ n, (P15820289180828893531.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P9373397158898749842

`∩[A326715(n+1), A244607(n+1)]`
-/

namespace A166566.P9373397158898749842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166566.P9373397158898749842

namespace A166566

/-- `∩[A326715(n+1), A244607(n+1)]` -/
def P9373397158898749842.Spec : Prop :=
  ∀ n, (P9373397158898749842.a n : ℤ) = A166566 (n + 1)

end A166566

/-! ## A166566.P5595460162003210819

`record[A020639(A244607(A000027(n+1)))]`
-/

namespace A166566.P5595460162003210819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A244607 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166566.P5595460162003210819

namespace A166566

/-- `record[A020639(A244607(A000027(n+1)))]` -/
def P5595460162003210819.Spec : Prop :=
  ∀ n, P5595460162003210819.a n = A166566 (n + 1)

end A166566

/-! ## A166566.P17391277291796440656

`record[A020639(A244607(A108789(n+1)))]`
-/

namespace A166566.P17391277291796440656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A244607 (A108789 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166566.P17391277291796440656

namespace A166566

/-- `record[A020639(A244607(A108789(n+1)))]` -/
def P17391277291796440656.Spec : Prop :=
  ∀ n, P17391277291796440656.a n = A166566 (n + 1)

end A166566

/-! ## A166566.P264919792997165523

`filter[A244607(n+1), A080339(#)]`
-/

namespace A166566.P264919792997165523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A166566.P264919792997165523

namespace A166566

/-- `filter[A244607(n+1), A080339(#)]` -/
def P264919792997165523.Spec : Prop :=
  ∀ n, P264919792997165523.a n = A166566 (n + 1)

end A166566

/-! ## A166566.P9556692031512773572

`filter[A244607(n+1), A080545(#)]`
-/

namespace A166566.P9556692031512773572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A166566.P9556692031512773572

namespace A166566

/-- `filter[A244607(n+1), A080545(#)]` -/
def P9556692031512773572.Spec : Prop :=
  ∀ n, P9556692031512773572.a n = A166566 (n + 1)

end A166566

/-! ## A166566.P15767092837453387823

`record[A014963(A244607(A328764(n)))]`
-/

namespace A166566.P15767092837453387823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A244607 (A328764 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166566.P15767092837453387823

namespace A166566

/-- `record[A014963(A244607(A328764(n)))]` -/
def P15767092837453387823.Spec : Prop :=
  ∀ n, P15767092837453387823.a n = A166566 (n + 1)

end A166566

/-!
# A166567: Primes p such that sum of digits - 1 is prime.

The programs for A166567, there is no canonical definition to state claims against.
-/

/-! ## A166567.P14455113185782138303

`p?[A028834(n+1)+1]`
-/

namespace A166567.P14455113185782138303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166567.P14455113185782138303

/-! ## A166567.P9017916669376270506

`record[A006530(A028834(n+1)+1)]`
-/

namespace A166567.P9017916669376270506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028834 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166567.P9017916669376270506

/-! ## A166567.P15183557186425698337

`record[A020639(A028834(n+1)+1)]`
-/

namespace A166567.P15183557186425698337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028834 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166567.P15183557186425698337

/-! ## A166567.P2456938350873658114

`p?[A129630(n+1)+2]`
-/

namespace A166567.P2456938350873658114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166567.P2456938350873658114

/-! ## A166567.P8717850444980938100

`∩[A000040(n+1), A028834(n+1)+1]`
-/

namespace A166567.P8717850444980938100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P8717850444980938100

/-! ## A166567.P6184871371239077468

`∩[A008578(n+1), A028834(n+1)+1]`
-/

namespace A166567.P6184871371239077468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P6184871371239077468

/-! ## A166567.P12402051797400272811

`∩[A028834(n+1)+1, A158611(n+1)]`
-/

namespace A166567.P12402051797400272811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P12402051797400272811

/-! ## A166567.P7473665185696234643

`p?[A167711(n+1)]`
-/

namespace A166567.P7473665185696234643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166567.P7473665185696234643

/-! ## A166567.P16136118210704630767

`record[A006530(A167711(n+3))]`
-/

namespace A166567.P16136118210704630767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167711 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166567.P16136118210704630767

/-! ## A166567.P16679428386280746982

`filter[A167711(n+1), A010051(#)]`
-/

namespace A166567.P16679428386280746982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166567.P16679428386280746982

/-! ## A166567.P8557241908034884370

`∩[A000040(n+1), A167711(n+1)]`
-/

namespace A166567.P8557241908034884370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P8557241908034884370

/-! ## A166567.P3630912703614677105

`∩[A004139(n+1), A167711(n+1)]`
-/

namespace A166567.P3630912703614677105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P3630912703614677105

/-! ## A166567.P15618566203123343894

`∩[A006005(n+1), A167711(n+1)]`
-/

namespace A166567.P15618566203123343894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P15618566203123343894

/-! ## A166567.P10388643675185803035

`∩[A008578(n+1), A167711(n+1)]`
-/

namespace A166567.P10388643675185803035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P10388643675185803035

/-! ## A166567.P13757563528110107780

`∩[A045319(n+1), A167711(n+1)]`
-/

namespace A166567.P13757563528110107780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P13757563528110107780

/-! ## A166567.P14743378915061721111

`∩[A065091(n+1), A167711(n+1)]`
-/

namespace A166567.P14743378915061721111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P14743378915061721111

/-! ## A166567.P15243433635441652499

`∩[A158611(n+1), A167711(n+1)]`
-/

namespace A166567.P15243433635441652499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P15243433635441652499

/-! ## A166567.P7845074796777388306

`∩[A167711(n+1), A182986(n+1)]`
-/

namespace A166567.P7845074796777388306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166567.P7845074796777388306

/-! ## A166567.P4068840752326535520

`p?[A049283(A028834(n+1))]`
-/

namespace A166567.P4068840752326535520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A028834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166567.P4068840752326535520

/-! ## A166567.P1348040460193531847

`filter[A167711(n+1), A080339(#)]`
-/

namespace A166567.P1348040460193531847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A166567.P1348040460193531847

/-!
# A166569: Numbers n such that 12*n+7 is not prime.

The programs for A166569, the canonical program `A166569.P9203095429192079381` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166569 has offset 1).

The definition of A166569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166569.P9203095429192079381

`comp[A167056(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A166569

/-- `comp[A167056(n+1)]` -/
def P9203095429192079381.Spec : Prop :=
  ∀ n, (P9203095429192079381.a n : ℤ) = A166569 (n + 1)

theorem P9203095429192079381.correct : P9203095429192079381.Spec := by
  intro n
  simp only [A166569, Nat.add_sub_cancel]

end A166569

/-! ## A166569.P684330929068664679

`lt[1, A245838(2*A005408(n))]`
-/

namespace A166569.P684330929068664679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166569.P684330929068664679

namespace A166569

/-- `lt[1, A245838(2*A005408(n))]` -/
def P684330929068664679.Spec : Prop :=
  ∀ n, (P684330929068664679.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P5439414343467647445

`lt[2, ∏{e}[12*n+7, #+1]]`
-/

namespace A166569.P5439414343467647445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P5439414343467647445

namespace A166569

/-- `lt[2, ∏{e}[12*n+7, #+1]]` -/
def P5439414343467647445.Spec : Prop :=
  ∀ n, (P5439414343467647445.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P14215147567283897057

`eq[0, A156706(4*n+2)]`
-/

namespace A166569.P14215147567283897057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166569.P14215147567283897057

namespace A166569

/-- `eq[0, A156706(4*n+2)]` -/
def P14215147567283897057.Spec : Prop :=
  ∀ n, (P14215147567283897057.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P7209646071393728812

`eq[0, A010051(12*n+7)]`
-/

namespace A166569.P7209646071393728812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166569.P7209646071393728812

namespace A166569

/-- `eq[0, A010051(12*n+7)]` -/
def P7209646071393728812.Spec : Prop :=
  ∀ n, (P7209646071393728812.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P6295845821850283413

`lt[2, A000005(12*n+7)]`
-/

namespace A166569.P6295845821850283413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166569.P6295845821850283413

namespace A166569

/-- `lt[2, A000005(12*n+7)]` -/
def P6295845821850283413.Spec : Prop :=
  ∀ n, (P6295845821850283413.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P10599588792167802444

`lt[A020639(12*n+7), n+2]`
-/

namespace A166569.P10599588792167802444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166569.P10599588792167802444

namespace A166569

/-- `lt[A020639(12*n+7), n+2]` -/
def P10599588792167802444.Spec : Prop :=
  ∀ n, (P10599588792167802444.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P7305096695047424370

`lt[1, A001222(6*(2*n+1)+1)]`
-/

namespace A166569.P7305096695047424370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * (2 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166569.P7305096695047424370

namespace A166569

/-- `lt[1, A001222(6*(2*n+1)+1)]` -/
def P7305096695047424370.Spec : Prop :=
  ∀ n, (P7305096695047424370.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P422922008347458750

`lt[A017653(n), A000203(A017605(n))]`
-/

namespace A166569.P422922008347458750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P422922008347458750

namespace A166569

/-- `lt[A017653(n), A000203(A017605(n))]` -/
def P422922008347458750.Spec : Prop :=
  ∀ n, (P422922008347458750.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P11652681600746793640

`lt[A017581(n+1), A000203(A017605(n))]`
-/

namespace A166569.P11652681600746793640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P11652681600746793640

namespace A166569

/-- `lt[A017581(n+1), A000203(A017605(n))]` -/
def P11652681600746793640.Spec : Prop :=
  ∀ n, (P11652681600746793640.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P15392549466997770340

`lt[A017605(n+1), A000203(A017605(n))]`
-/

namespace A166569.P15392549466997770340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P15392549466997770340

namespace A166569

/-- `lt[A017605(n+1), A000203(A017605(n))]` -/
def P15392549466997770340.Spec : Prop :=
  ∀ n, (P15392549466997770340.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P2069693826010974741

`lt[A000010(A017581(n)+2), A008594(n)]`
-/

namespace A166569.P2069693826010974741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P2069693826010974741

namespace A166569

/-- `lt[A000010(A017581(n)+2), A008594(n)]` -/
def P2069693826010974741.Spec : Prop :=
  ∀ n, (P2069693826010974741.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P454038836257144496

`lt[A000010(A017581(n)+2), A017545(n)]`
-/

namespace A166569.P454038836257144496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P454038836257144496

namespace A166569

/-- `lt[A000010(A017581(n)+2), A017545(n)]` -/
def P454038836257144496.Spec : Prop :=
  ∀ n, (P454038836257144496.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P12024905291356800476

`lt[A017617(n), A000203(A017581(n)+2)]`
-/

namespace A166569.P12024905291356800476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P12024905291356800476

namespace A166569

/-- `lt[A017617(n), A000203(A017581(n)+2)]` -/
def P12024905291356800476.Spec : Prop :=
  ∀ n, (P12024905291356800476.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P2951329523919874092

`lt[A017641(n), A000203(A017581(n)+2)]`
-/

namespace A166569.P2951329523919874092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P2951329523919874092

namespace A166569

/-- `lt[A017641(n), A000203(A017581(n)+2)]` -/
def P2951329523919874092.Spec : Prop :=
  ∀ n, (P2951329523919874092.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P17254272969004802362

`lt[A017617(n), A000203(A017617(n)-1)]`
-/

namespace A166569.P17254272969004802362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017617 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P17254272969004802362

namespace A166569

/-- `lt[A017617(n), A000203(A017617(n)-1)]` -/
def P17254272969004802362.Spec : Prop :=
  ∀ n, (P17254272969004802362.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P6037904332500197272

`eq[1, A005171(12*n+7)]`
-/

namespace A166569.P6037904332500197272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166569.P6037904332500197272

namespace A166569

/-- `eq[1, A005171(12*n+7)]` -/
def P6037904332500197272.Spec : Prop :=
  ∀ n, (P6037904332500197272.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P12539571199915041004

`eq[0, A167021(2*n+1)]`
-/

namespace A166569.P12539571199915041004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167021 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166569.P12539571199915041004

namespace A166569

/-- `eq[0, A167021(2*n+1)]` -/
def P12539571199915041004.Spec : Prop :=
  ∀ n, (P12539571199915041004.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P12490644846574366171

`lt[A006530(12*n+7), A004767(2*n)]`
-/

namespace A166569.P12490644846574366171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166569.P12490644846574366171

namespace A166569

/-- `lt[A006530(12*n+7), A004767(2*n)]` -/
def P12490644846574366171.Spec : Prop :=
  ∀ n, (P12490644846574366171.a n : ℤ) = A166569 (n + 1)

end A166569

/-! ## A166569.P9071840806067859349

`lt[1, A016014(A016933(n)+1)]`
-/

namespace A166569.P9071840806067859349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A016933 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166569.P9071840806067859349

namespace A166569

/-- `lt[1, A016014(A016933(n)+1)]` -/
def P9071840806067859349.Spec : Prop :=
  ∀ n, (P9071840806067859349.a n : ℤ) = A166569 (n + 1)

end A166569

/-!
# A166570: Numbers n such that 12*n+11 is not prime.

The programs for A166570, the canonical program `A166570.P9171743488612248024` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166570 has offset 1).

The definition of A166570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166570.P9171743488612248024

`comp[A167057(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166570

/-- `comp[A167057(n+1)]` -/
def P9171743488612248024.Spec : Prop :=
  ∀ n, (P9171743488612248024.a n : ℤ) = A166570 (n + 1)

theorem P9171743488612248024.correct : P9171743488612248024.Spec := by
  intro n
  simp only [A166570, Nat.add_sub_cancel]

end A166570

/-! ## A166570.P14659947715820204621

`comp[A138620(n+1)-1]`
-/

namespace A166570.P14659947715820204621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138620 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166570.P14659947715820204621

namespace A166570

/-- `comp[A138620(n+1)-1]` -/
def P14659947715820204621.Spec : Prop :=
  ∀ n, (P14659947715820204621.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P13082808126067706411

`lt[∑{p}[12*n+11, #], A016969(n+1)]`
-/

namespace A166570.P13082808126067706411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A166570.P13082808126067706411

namespace A166570

/-- `lt[∑{p}[12*n+11, #], A016969(n+1)]` -/
def P13082808126067706411.Spec : Prop :=
  ∀ n, (P13082808126067706411.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P18145964837875162128

`lt[A075743(4*n+3), 1]`
-/

namespace A166570.P18145964837875162128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (4 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166570.P18145964837875162128

namespace A166570

/-- `lt[A075743(4*n+3), 1]` -/
def P18145964837875162128.Spec : Prop :=
  ∀ n, (P18145964837875162128.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P9105066163905648500

`lt[1, A001222(12*n+11)]`
-/

namespace A166570.P9105066163905648500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P9105066163905648500

namespace A166570

/-- `lt[1, A001222(12*n+11)]` -/
def P9105066163905648500.Spec : Prop :=
  ∀ n, (P9105066163905648500.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P156036073538187763

`lt[2, A000005(12*n+11)]`
-/

namespace A166570.P156036073538187763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P156036073538187763

namespace A166570

/-- `lt[2, A000005(12*n+11)]` -/
def P156036073538187763.Spec : Prop :=
  ∀ n, (P156036073538187763.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P14076676644411414099

`lt[A006530(12*n+11), 5*n]`
-/

namespace A166570.P14076676644411414099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166570.P14076676644411414099

namespace A166570

/-- `lt[A006530(12*n+11), 5*n]` -/
def P14076676644411414099.Spec : Prop :=
  ∀ n, (P14076676644411414099.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P4186720001832019668

`eq[1, A156706(A004767(n))+1]`
-/

namespace A166570.P4186720001832019668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A004767 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166570.P4186720001832019668

namespace A166570

/-- `eq[1, A156706(A004767(n))+1]` -/
def P4186720001832019668.Spec : Prop :=
  ∀ n, (P4186720001832019668.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P3494013737170777853

`lt[A020639(12*n+11), A016873(n)]`
-/

namespace A166570.P3494013737170777853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166570.P3494013737170777853

namespace A166570

/-- `lt[A020639(12*n+11), A016873(n)]` -/
def P3494013737170777853.Spec : Prop :=
  ∀ n, (P3494013737170777853.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P13153890559900491327

`lt[A000010(A017653(n)), A017605(n)]`
-/

namespace A166570.P13153890559900491327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166570.P13153890559900491327

namespace A166570

/-- `lt[A000010(A017653(n)), A017605(n)]` -/
def P13153890559900491327.Spec : Prop :=
  ∀ n, (P13153890559900491327.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P3704158748333009058

`lt[A000010(A017653(n)), A017641(n)]`
-/

namespace A166570.P3704158748333009058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166570.P3704158748333009058

namespace A166570

/-- `lt[A000010(A017653(n)), A017641(n)]` -/
def P3704158748333009058.Spec : Prop :=
  ∀ n, (P3704158748333009058.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P6575933130687148548

`eq[1, A005171(12*n+11)]`
-/

namespace A166570.P6575933130687148548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166570.P6575933130687148548

namespace A166570

/-- `eq[1, A005171(12*n+11)]` -/
def P6575933130687148548.Spec : Prop :=
  ∀ n, (P6575933130687148548.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P17419522820232719645

`lt[1, A175851(A017653(n))]`
-/

namespace A166570.P17419522820232719645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A017653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P17419522820232719645

namespace A166570

/-- `lt[1, A175851(A017653(n))]` -/
def P17419522820232719645.Spec : Prop :=
  ∀ n, (P17419522820232719645.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P2940881891467009448

`lt[1, A359305(2*(n+1))]`
-/

namespace A166570.P2940881891467009448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P2940881891467009448

namespace A166570

/-- `lt[1, A359305(2*(n+1))]` -/
def P2940881891467009448.Spec : Prop :=
  ∀ n, (P2940881891467009448.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P1113271243219351920

`lt[A005408(n+1), A098098(2*n+1)]`
-/

namespace A166570.P1113271243219351920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166570.P1113271243219351920

namespace A166570

/-- `lt[A005408(n+1), A098098(2*n+1)]` -/
def P1113271243219351920.Spec : Prop :=
  ∀ n, (P1113271243219351920.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P4698248507827954832

`eq[1, A340767(2*n+1)/A340767(2*n)]`
-/

namespace A166570.P4698248507827954832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340767 (2 * n + 1) : ℚ) / (A340767 (2 * n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A166570.P4698248507827954832

namespace A166570

/-- `eq[1, A340767(2*n+1)/A340767(2*n)]` -/
def P4698248507827954832.Spec : Prop :=
  ∀ n, (P4698248507827954832.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P9676287620246802944

`eq[A029832(A016969(2*n+1)), A029832(2*(n+1))]`
-/

namespace A166570.P9676287620246802944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (A016969 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166570.P9676287620246802944

namespace A166570

/-- `eq[A029832(A016969(2*n+1)), A029832(2*(n+1))]` -/
def P9676287620246802944.Spec : Prop :=
  ∀ n, (P9676287620246802944.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P3418296667273318970

`lt[3, A136019(3*n+2)]`
-/

namespace A166570.P3418296667273318970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P3418296667273318970

namespace A166570

/-- `lt[3, A136019(3*n+2)]` -/
def P3418296667273318970.Spec : Prop :=
  ∀ n, (P3418296667273318970.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P11886944929469709402

`lt[3, A214834(A016777(n+1))]`
-/

namespace A166570.P11886944929469709402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (A016777 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P11886944929469709402

namespace A166570

/-- `lt[3, A214834(A016777(n+1))]` -/
def P11886944929469709402.Spec : Prop :=
  ∀ n, (P11886944929469709402.a n : ℤ) = A166570 (n + 1)

end A166570

/-! ## A166570.P15236852849391383620

`lt[3, A214834(A004277(n+1)+n+2)]`
-/

namespace A166570.P15236852849391383620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (A004277 (n + 1) + (n : ℤ) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166570.P15236852849391383620

namespace A166570

/-- `lt[3, A214834(A004277(n+1)+n+2)]` -/
def P15236852849391383620.Spec : Prop :=
  ∀ n, (P15236852849391383620.a n : ℤ) = A166570 (n + 1)

end A166570

/-!
# A166571: Prime numbers containing the string 10.

The programs for A166571, there is no canonical definition to state claims against.
-/

/-! ## A166571.P4081979864631040509

`p?[A293870(n+1)]`
-/

namespace A166571.P4081979864631040509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166571.P4081979864631040509

/-! ## A166571.P3685184513816389917

`∩[A046501(n+1), A293870(n+1)]`
-/

namespace A166571.P3685184513816389917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P3685184513816389917

/-! ## A166571.P4532992702754382843

`∩[A056709(n+1), A293870(n+1)]`
-/

namespace A166571.P4532992702754382843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P4532992702754382843

/-! ## A166571.P12970253283109733742

`∩[A117682(n+1), A293870(n+1)]`
-/

namespace A166571.P12970253283109733742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P12970253283109733742

/-! ## A166571.P12286745690847931570

`∩[A157677(n+1), A293870(n+1)]`
-/

namespace A166571.P12286745690847931570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P12286745690847931570

/-! ## A166571.P8255087101128863980

`∩[A199977(n+1), A293870(n+1)]`
-/

namespace A166571.P8255087101128863980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P8255087101128863980

/-! ## A166571.P16586489426100034386

`∩[A225303(n+1), A293870(n+1)]`
-/

namespace A166571.P16586489426100034386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P16586489426100034386

/-! ## A166571.P16567322275387523204

`∩[A227217(n+1), A293870(n+1)]`
-/

namespace A166571.P16567322275387523204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P16567322275387523204

/-! ## A166571.P6457453496059270215

`∩[A273460(n+1), A293870(n+1)]`
-/

namespace A166571.P6457453496059270215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P6457453496059270215

/-! ## A166571.P3320228572424678314

`∩[A004139(n+1), A293870(n+1)]`
-/

namespace A166571.P3320228572424678314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P3320228572424678314

/-! ## A166571.P6016165313404749042

`∩[A045319(n+1), A293870(n+1)]`
-/

namespace A166571.P6016165313404749042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P6016165313404749042

/-! ## A166571.P15954285754171195069

`∩[A045344(n+1), A293870(n+1)]`
-/

namespace A166571.P15954285754171195069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P15954285754171195069

/-! ## A166571.P14634642653055460043

`∩[A000040(n+1), A293870(n+1)]`
-/

namespace A166571.P14634642653055460043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P14634642653055460043

/-! ## A166571.P14292512767777351594

`∩[A006005(n+1), A293870(n+1)]`
-/

namespace A166571.P14292512767777351594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P14292512767777351594

/-! ## A166571.P4768726470412512690

`∩[A008578(n+1), A293870(n+1)]`
-/

namespace A166571.P4768726470412512690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P4768726470412512690

/-! ## A166571.P5580309038147160881

`∩[A161346(n+1), A293870(n+1)]`
-/

namespace A166571.P5580309038147160881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P5580309038147160881

/-! ## A166571.P6337993270448289057

`∩[A033946(n+1), A293870(n+1)]`
-/

namespace A166571.P6337993270448289057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P6337993270448289057

/-! ## A166571.P10563483573779995305

`∩[A067126(n+1), A293870(n+1)]`
-/

namespace A166571.P10563483573779995305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P10563483573779995305

/-! ## A166571.P10108442774516027897

`∩[A053813(n+1), A293870(n+1)]`
-/

namespace A166571.P10108442774516027897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P10108442774516027897

/-! ## A166571.P17952123822467254930

`∩[A140826(n+1), A293870(n+1)]`
-/

namespace A166571.P17952123822467254930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166571.P17952123822467254930

/-!
# A166572: Prime numbers containing the string 11.

The programs for A166572, there is no canonical definition to state claims against.
-/

/-! ## A166572.P9024197060214927745

`p?[A293871(n+1)]`
-/

namespace A166572.P9024197060214927745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166572.P9024197060214927745

/-! ## A166572.P822345153159438378

`∩[A050758(n+1), A293871(n+1)]`
-/

namespace A166572.P822345153159438378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P822345153159438378

/-! ## A166572.P6496604125041162806

`∩[A073064(n+1), A293871(n+1)]`
-/

namespace A166572.P6496604125041162806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P6496604125041162806

/-! ## A166572.P3074527260283299890

`∩[A208270(n+1), A293871(n+1)]`
-/

namespace A166572.P3074527260283299890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P3074527260283299890

/-! ## A166572.P12989989284214530722

`∩[A239058(n+1), A293871(n+1)]`
-/

namespace A166572.P12989989284214530722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P12989989284214530722

/-! ## A166572.P11039306852864791136

`∩[A216285(n+1), A293871(n+1)]`
-/

namespace A166572.P11039306852864791136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P11039306852864791136

/-! ## A166572.P1882174469276367671

`∩[A000040(n+1), A293871(n+1)]`
-/

namespace A166572.P1882174469276367671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P1882174469276367671

/-! ## A166572.P6862277549456592160

`∩[A004139(n+1), A293871(n+1)]`
-/

namespace A166572.P6862277549456592160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P6862277549456592160

/-! ## A166572.P11042840373213576353

`∩[A006005(n+1), A293871(n+1)]`
-/

namespace A166572.P11042840373213576353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P11042840373213576353

/-! ## A166572.P9594445168594065552

`∩[A008578(n+1), A293871(n+1)]`
-/

namespace A166572.P9594445168594065552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P9594445168594065552

/-! ## A166572.P17475397842837414728

`∩[A033946(n+1), A293871(n+1)]`
-/

namespace A166572.P17475397842837414728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P17475397842837414728

/-! ## A166572.P819922748399126128

`∩[A045319(n+1), A293871(n+1)]`
-/

namespace A166572.P819922748399126128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P819922748399126128

/-! ## A166572.P8068396019390905590

`∩[A045344(n+1), A293871(n+1)]`
-/

namespace A166572.P8068396019390905590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P8068396019390905590

/-! ## A166572.P11835280043020263610

`∩[A046022(n+1), A293871(n+1)]`
-/

namespace A166572.P11835280043020263610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P11835280043020263610

/-! ## A166572.P12473552700761800567

`∩[A051948(n+1), A293871(n+1)]`
-/

namespace A166572.P12473552700761800567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P12473552700761800567

/-! ## A166572.P10527852036659022589

`∩[A065091(n+1), A293871(n+1)]`
-/

namespace A166572.P10527852036659022589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P10527852036659022589

/-! ## A166572.P2942513149091967328

`∩[A067126(n+1), A293871(n+1)]`
-/

namespace A166572.P2942513149091967328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P2942513149091967328

/-! ## A166572.P7424758705875546176

`∩[A083249(n+1), A293871(n+1)]`
-/

namespace A166572.P7424758705875546176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P7424758705875546176

/-! ## A166572.P3793354404605279404

`∩[A161346(n+1), A293871(n+1)]`
-/

namespace A166572.P3793354404605279404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P3793354404605279404

/-! ## A166572.P4103764319652473017

`∩[A053813(n+1), A293871(n+1)]`
-/

namespace A166572.P4103764319652473017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166572.P4103764319652473017

/-!
# A166573: Prime numbers containing the string 13.

The programs for A166573, there is no canonical definition to state claims against.
-/

/-! ## A166573.P8096949553918172575

`p?[A293873(n+1)]`
-/

namespace A166573.P8096949553918172575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166573.P8096949553918172575

/-! ## A166573.P1992048123962150016

`∩[A208270(n+1), A293873(n+1)]`
-/

namespace A166573.P1992048123962150016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P1992048123962150016

/-! ## A166573.P14227424218377563910

`∩[A212525(n+1), A293873(n+1)]`
-/

namespace A166573.P14227424218377563910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P14227424218377563910

/-! ## A166573.P16439284931259808428

`∩[A239058(n+1), A293873(n+1)]`
-/

namespace A166573.P16439284931259808428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P16439284931259808428

/-! ## A166573.P11557392022077550347

`∩[A152427(n+1), A293873(n+1)]`
-/

namespace A166573.P11557392022077550347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P11557392022077550347

/-! ## A166573.P17819766313817339627

`∩[A152426(n+1), A293873(n+1)]`
-/

namespace A166573.P17819766313817339627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P17819766313817339627

/-! ## A166573.P12703245607379624056

`∩[A179336(n+1), A293873(n+1)]`
-/

namespace A166573.P12703245607379624056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P12703245607379624056

/-! ## A166573.P13457314296163499163

`∩[A055387(n+1), A293873(n+1)]`
-/

namespace A166573.P13457314296163499163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P13457314296163499163

/-! ## A166573.P17359396750915321351

`∩[A225035(n+1), A293873(n+1)]`
-/

namespace A166573.P17359396750915321351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P17359396750915321351

/-! ## A166573.P18085129667851280033

`∩[A216285(n+1), A293873(n+1)]`
-/

namespace A166573.P18085129667851280033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P18085129667851280033

/-! ## A166573.P9960440250454742705

`∩[A000040(n+1), A293873(n+1)]`
-/

namespace A166573.P9960440250454742705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P9960440250454742705

/-! ## A166573.P3777384257223469656

`∩[A004139(n+1), A293873(n+1)]`
-/

namespace A166573.P3777384257223469656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P3777384257223469656

/-! ## A166573.P5370590689518177160

`∩[A006005(n+1), A293873(n+1)]`
-/

namespace A166573.P5370590689518177160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P5370590689518177160

/-! ## A166573.P6765467063200245533

`∩[A008578(n+1), A293873(n+1)]`
-/

namespace A166573.P6765467063200245533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P6765467063200245533

/-! ## A166573.P5822916170058324875

`∩[A033946(n+1), A293873(n+1)]`
-/

namespace A166573.P5822916170058324875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P5822916170058324875

/-! ## A166573.P1981443872677003685

`∩[A045319(n+1), A293873(n+1)]`
-/

namespace A166573.P1981443872677003685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P1981443872677003685

/-! ## A166573.P8239908420361274180

`∩[A045344(n+1), A293873(n+1)]`
-/

namespace A166573.P8239908420361274180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P8239908420361274180

/-! ## A166573.P16620037632700090847

`∩[A046022(n+1), A293873(n+1)]`
-/

namespace A166573.P16620037632700090847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P16620037632700090847

/-! ## A166573.P5387476599261412642

`∩[A051948(n+1), A293873(n+1)]`
-/

namespace A166573.P5387476599261412642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P5387476599261412642

/-! ## A166573.P14561679698826512493

`∩[A053813(n+1), A293873(n+1)]`
-/

namespace A166573.P14561679698826512493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166573.P14561679698826512493

/-!
# A166574: If p, q are successive primes, and there is a number k with p < k <= q such that r = p+k is a prime, then r is in the sequence.

The programs for A166574, the canonical program `A166574.P5760661758022436118` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166574 has offset 1).

The definition of A166574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166574.P5760661758022436118

`p?[A013635(n+3)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A166574

/-- `p?[A013635(n+3)]` -/
def P5760661758022436118.Spec : Prop :=
  ∀ n, P5760661758022436118.a n = A166574 (n + 1)

theorem P5760661758022436118.correct : P5760661758022436118.Spec := by
  intro n
  simp only [A166574, Nat.add_sub_cancel]

end A166574

/-! ## A166574.P12174876412616477899

`p?[comp[A007918(n)+n]]`
-/

namespace A166574.P12174876412616477899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166574.P12174876412616477899

namespace A166574

/-- `p?[comp[A007918(n)+n]]` -/
def P12174876412616477899.Spec : Prop :=
  ∀ n, (P12174876412616477899.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P5699250773123801977

`p?[∑[A096501(n+2)+1]]`
-/

namespace A166574.P5699250773123801977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166574.P5699250773123801977

namespace A166574

/-- `p?[∑[A096501(n+2)+1]]` -/
def P5699250773123801977.Spec : Prop :=
  ∀ n, P5699250773123801977.a n = A166574 (n + 1)

end A166574

/-! ## A166574.P11728390952308348231

`p?[A007917(n+2)+3+n]`
-/

namespace A166574.P11728390952308348231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166574.P11728390952308348231

namespace A166574

/-- `p?[A007917(n+2)+3+n]` -/
def P11728390952308348231.Spec : Prop :=
  ∀ n, P11728390952308348231.a n = A166574 (n + 1)

end A166574

/-! ## A166574.P7245453816698634214

`A013635(A249666(n+1))`
-/

namespace A166574.P7245453816698634214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (A249666 (n + 1)).toNat

end

end A166574.P7245453816698634214

namespace A166574

/-- `A013635(A249666(n+1))` -/
def P7245453816698634214.Spec : Prop :=
  ∀ n, P7245453816698634214.a n = A166574 (n + 1)

end A166574

/-! ## A166574.P238814672130546059

`filter[A013635(n+3), A010051(#)]`
-/

namespace A166574.P238814672130546059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166574.P238814672130546059

namespace A166574

/-- `filter[A013635(n+3), A010051(#)]` -/
def P238814672130546059.Spec : Prop :=
  ∀ n, P238814672130546059.a n = A166574 (n + 1)

end A166574

/-! ## A166574.P3100810406753952567

`record[A006530(2*A013635(n+3))]`
-/

namespace A166574.P3100810406753952567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A013635 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166574.P3100810406753952567

namespace A166574

/-- `record[A006530(2*A013635(n+3))]` -/
def P3100810406753952567.Spec : Prop :=
  ∀ n, P3100810406753952567.a n = A166574 (n + 1)

end A166574

/-! ## A166574.P1303205888204456817

`∩[A000040(n+1), A013635(n+3)]`
-/

namespace A166574.P1303205888204456817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P1303205888204456817

namespace A166574

/-- `∩[A000040(n+1), A013635(n+3)]` -/
def P1303205888204456817.Spec : Prop :=
  ∀ n, (P1303205888204456817.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P18091924598482706414

`∩[A001751(n+1), A013635(n+3)]`
-/

namespace A166574.P18091924598482706414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P18091924598482706414

namespace A166574

/-- `∩[A001751(n+1), A013635(n+3)]` -/
def P18091924598482706414.Spec : Prop :=
  ∀ n, (P18091924598482706414.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P7832115918492560860

`∩[A006005(n+1), A013635(n+3)]`
-/

namespace A166574.P7832115918492560860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P7832115918492560860

namespace A166574

/-- `∩[A006005(n+1), A013635(n+3)]` -/
def P7832115918492560860.Spec : Prop :=
  ∀ n, (P7832115918492560860.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P7657641869212920735

`∩[A008578(n+1), A013635(n+3)]`
-/

namespace A166574.P7657641869212920735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P7657641869212920735

namespace A166574

/-- `∩[A008578(n+1), A013635(n+3)]` -/
def P7657641869212920735.Spec : Prop :=
  ∀ n, (P7657641869212920735.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P9656735905234564815

`∩[A033946(n+1), A013635(n+3)]`
-/

namespace A166574.P9656735905234564815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P9656735905234564815

namespace A166574

/-- `∩[A033946(n+1), A013635(n+3)]` -/
def P9656735905234564815.Spec : Prop :=
  ∀ n, (P9656735905234564815.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P6440942627779529637

`∩[A045344(n+1), A013635(n+3)]`
-/

namespace A166574.P6440942627779529637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P6440942627779529637

namespace A166574

/-- `∩[A045344(n+1), A013635(n+3)]` -/
def P6440942627779529637.Spec : Prop :=
  ∀ n, (P6440942627779529637.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P10753542280465564865

`∩[A046022(n+1), A013635(n+3)]`
-/

namespace A166574.P10753542280465564865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P10753542280465564865

namespace A166574

/-- `∩[A046022(n+1), A013635(n+3)]` -/
def P10753542280465564865.Spec : Prop :=
  ∀ n, (P10753542280465564865.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P1873765709860088866

`∩[A051948(n+1), A013635(n+3)]`
-/

namespace A166574.P1873765709860088866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P1873765709860088866

namespace A166574

/-- `∩[A051948(n+1), A013635(n+3)]` -/
def P1873765709860088866.Spec : Prop :=
  ∀ n, (P1873765709860088866.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P1644130443883799860

`∩[A065091(n+1), A013635(n+3)]`
-/

namespace A166574.P1644130443883799860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P1644130443883799860

namespace A166574

/-- `∩[A065091(n+1), A013635(n+3)]` -/
def P1644130443883799860.Spec : Prop :=
  ∀ n, (P1644130443883799860.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P2253765532037208107

`∩[A066050(n+1), A013635(n+3)]`
-/

namespace A166574.P2253765532037208107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P2253765532037208107

namespace A166574

/-- `∩[A066050(n+1), A013635(n+3)]` -/
def P2253765532037208107.Spec : Prop :=
  ∀ n, (P2253765532037208107.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P6328522252039241762

`∩[A067126(n+1), A013635(n+3)]`
-/

namespace A166574.P6328522252039241762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P6328522252039241762

namespace A166574

/-- `∩[A067126(n+1), A013635(n+3)]` -/
def P6328522252039241762.Spec : Prop :=
  ∀ n, (P6328522252039241762.a n : ℤ) = A166574 (n + 1)

end A166574

/-! ## A166574.P2838276145126632107

`∩[A085118(n+1), A013635(n+3)]`
-/

namespace A166574.P2838276145126632107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166574.P2838276145126632107

namespace A166574

/-- `∩[A085118(n+1), A013635(n+3)]` -/
def P2838276145126632107.Spec : Prop :=
  ∀ n, (P2838276145126632107.a n : ℤ) = A166574 (n + 1)

end A166574

/-!
# A166575: Primes p>=5 with the property: if Prime(k)=Prime(k)+ Prime(k+1).

The programs for A166575, there is no canonical definition to state claims against.
-/

/-! ## A166575.P17881790616904688988

`p?[A013634(n+2)]`
-/

namespace A166575.P17881790616904688988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166575.P17881790616904688988

/-! ## A166575.P7084400137649761128

`p?[A151800(n+2)+n+2]`
-/

namespace A166575.P7084400137649761128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166575.P7084400137649761128

/-! ## A166575.P4365906509664861270

`p?[A007918(n+3)+n+2]`
-/

namespace A166575.P4365906509664861270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 3) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166575.P4365906509664861270

/-! ## A166575.P10963953400500348229

`p?[A013632(n)+or(3, 2*n)]`
-/

namespace A166575.P10963953400500348229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + (Nat.lor 3 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166575.P10963953400500348229

/-! ## A166575.P12963127230413240733

`filter[A013634(n), A171387(#)]`
-/

namespace A166575.P12963127230413240733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A166575.P12963127230413240733

/-! ## A166575.P6947635156908782265

`record[A006530(A286900(n+2))]`
-/

namespace A166575.P6947635156908782265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A286900 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166575.P6947635156908782265

/-! ## A166575.P10819892317417708752

`record[A006530(5*A013634(n))]`
-/

namespace A166575.P10819892317417708752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A013634 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166575.P10819892317417708752

/-! ## A166575.P13106297504438860789

`record[A006530(lcm(5, A013634(n)))]`
-/

namespace A166575.P13106297504438860789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 5 (A013634 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166575.P13106297504438860789

/-! ## A166575.P11564246598713452999

`filter[A013634(n+2), A010051(#)]`
-/

namespace A166575.P11564246598713452999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166575.P11564246598713452999

/-! ## A166575.P10553490762022112602

`filter[A013634(n+2), A080339(#)]`
-/

namespace A166575.P10553490762022112602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A166575.P10553490762022112602

/-!
# A166576: Intersection of A104272 and A166252.

The programs for A166576, there is no canonical definition to state claims against.
-/

/-! ## A166576.P10294699150631722542

`A104272(eq[1, A190874(n+1)]+2)`
-/

namespace A166576.P10294699150631722542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A166576.P10294699150631722542

/-! ## A166576.P2559410273972746478

`A168425(eq[C(2, n), A194184(n+1)])`
-/

namespace A166576.P2559410273972746478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166576.P2559410273972746478

/-! ## A166576.P13808877600916012357

`∩[A104272(n+1), A166252(n+1)]`
-/

namespace A166576.P13808877600916012357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166576.P13808877600916012357

/-! ## A166576.P13316390040551647091

`∩[A104272(n+1), A168425(n+1)]`
-/

namespace A166576.P13316390040551647091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166576.P13316390040551647091

/-! ## A166576.P2995518696462863831

`∩[A104272(n+1), A194598(n+2)]`
-/

namespace A166576.P2995518696462863831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166576.P2995518696462863831

/-!
# A166577: Inverse binomial transform of A166517.

The programs for A166577, the canonical program `A166577.P9609559549662632263` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166577 has offset 0).

The definition of A166577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166577.P9609559549662632263

`4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=-5, a(3)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166577

/-- `4*a(n-2)` -/
def P9609559549662632263.Spec : Prop :=
  ∀ n, P9609559549662632263.a n = A166577 n

theorem P9609559549662632263.correct : P9609559549662632263.Spec := by
  intro n
  simp only [A166577]

end A166577

/-! ## A166577.P3070750881747694480

`3-(a(n-1)+a(n-1)+3%a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A166577.P3070750881747694480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - (a (n - 1) + (a (n - 1) + Int.tmod 3 (a (n - 2))))

end

end A166577.P3070750881747694480

namespace A166577

/-- `3-(a(n-1)+a(n-1)+3%a(n-2))` -/
def P3070750881747694480.Spec : Prop :=
  ∀ n, P3070750881747694480.a n = A166577 n

end A166577

/-! ## A166577.P13201364856984856179

`A141531(n)-Δ[A123344(n)]`
-/

namespace A166577.P13201364856984856179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 n - (f1 (n + 1) - f1 n)

end

end A166577.P13201364856984856179

namespace A166577

/-- `A141531(n)-Δ[A123344(n)]` -/
def P13201364856984856179.Spec : Prop :=
  ∀ n, P13201364856984856179.a n = A166577 n

end A166577

/-! ## A166577.P16907527803107231223

`A123344(n)+A141531(n)-A122803(n)`
-/

namespace A166577.P16907527803107231223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n + (A141531 n - A122803 n)

end

end A166577.P16907527803107231223

namespace A166577

/-- `A123344(n)+A141531(n)-A122803(n)` -/
def P16907527803107231223.Spec : Prop :=
  ∀ n, P16907527803107231223.a n = A166577 n

end A166577

/-! ## A166577.P12057989281096978815

`A123344(n)+A141531(n)-A123344(n+1)`
-/

namespace A166577.P12057989281096978815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n + (A141531 n - A123344 (n + 1))

end

end A166577.P12057989281096978815

namespace A166577

/-- `A123344(n)+A141531(n)-A123344(n+1)` -/
def P12057989281096978815.Spec : Prop :=
  ∀ n, P12057989281096978815.a n = A166577 n

end A166577

/-! ## A166577.P13282277813699392329

`A141531(n+1)+A141531(n)-A122803(n)`
-/

namespace A166577.P13282277813699392329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (n + 1) + (A141531 n - A122803 n)

end

end A166577.P13282277813699392329

namespace A166577

/-- `A141531(n+1)+A141531(n)-A122803(n)` -/
def P13282277813699392329.Spec : Prop :=
  ∀ n, P13282277813699392329.a n = A166577 n

end A166577

/-! ## A166577.P184561147599800078

`A141531(n)-Δ[A141531(n+1)]`
-/

namespace A166577.P184561147599800078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 n - (f1 (n + 1) - f1 n)

end

end A166577.P184561147599800078

namespace A166577

/-- `A141531(n)-Δ[A141531(n+1)]` -/
def P184561147599800078.Spec : Prop :=
  ∀ n, P184561147599800078.a n = A166577 n

end A166577

/-!
# A166578: a(n) = a(n-3) + 2^(n-4) with a(1) = 1, a(2) = 2, a(3) = 1.

The programs for A166578, the canonical program `A166578.P2753356298738051669` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166578 has offset 0).

The definition of A166578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166578.P2753356298738051669

`2*a(n-1)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166578

/-- `2*a(n-1)+a(n-3)-2*a(n-4)` -/
def P2753356298738051669.Spec : Prop :=
  ∀ n, P2753356298738051669.a n = A166578 n

theorem P2753356298738051669.correct : P2753356298738051669.Spec := by
  intro n
  simp only [A166578]

end A166578

/-! ## A166578.P16595328519614031739

`a(n-3)+2^(n-3)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A166578.P16595328519614031739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A166578.P16595328519614031739

namespace A166578

/-- `a(n-3)+2^(n-3)` -/
def P16595328519614031739.Spec : Prop :=
  ∀ n, P16595328519614031739.a n = (A166578 n : ℚ)

end A166578

/-! ## A166578.P10146930163897406888

`A078010(abs(1-n))+1`
-/

namespace A166578.P10146930163897406888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 |1 - (n : ℤ)|.toNat + 1

end

end A166578.P10146930163897406888

namespace A166578

/-- `A078010(abs(1-n))+1` -/
def P10146930163897406888.Spec : Prop :=
  ∀ n, P10146930163897406888.a n = A166578 n

end A166578

/-! ## A166578.P13862347485414469279

`A155803(n)+A131534(n)`
-/

namespace A166578.P13862347485414469279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 n + A131534 n

end

end A166578.P13862347485414469279

namespace A166578

/-- `A155803(n)+A131534(n)` -/
def P13862347485414469279.Spec : Prop :=
  ∀ n, P13862347485414469279.a n = A166578 n

end A166578

/-! ## A166578.P7197483717730512336

`Δ[A152732(n+1)/2]+1`
-/

namespace A166578.P7197483717730512336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152732 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A166578.P7197483717730512336

namespace A166578

/-- `Δ[A152732(n+1)/2]+1` -/
def P7197483717730512336.Spec : Prop :=
  ∀ n, P7197483717730512336.a n = (A166578 n : ℚ)

end A166578

/-! ## A166578.P16429454969817072136

`A122552(n)+1-A078010(n)`
-/

namespace A166578.P16429454969817072136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n + (1 - A078010 n)

end

end A166578.P16429454969817072136

namespace A166578

/-- `A122552(n)+1-A078010(n)` -/
def P16429454969817072136.Spec : Prop :=
  ∀ n, P16429454969817072136.a n = A166578 n

end A166578

/-! ## A166578.P2601429590153841384

`2^n-3*A155803(n+1)`
-/

namespace A166578.P2601429590153841384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3 * A155803 (n + 1)

end

end A166578.P2601429590153841384

namespace A166578

/-- `2^n-3*A155803(n+1)` -/
def P2601429590153841384.Spec : Prop :=
  ∀ n, P2601429590153841384.a n = A166578 n

end A166578

/-! ## A166578.P11011554320084029392

`A000225(n)+2-A122552(n+1)`
-/

namespace A166578.P11011554320084029392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 2 - A122552 (n + 1)

end

end A166578.P11011554320084029392

namespace A166578

/-- `A000225(n)+2-A122552(n+1)` -/
def P11011554320084029392.Spec : Prop :=
  ∀ n, P11011554320084029392.a n = A166578 n

end A166578

/-! ## A166578.P15441412167149095298

`Δ[Δ[A033138(n+1)]]-A000225(n)`
-/

namespace A166578.P15441412167149095298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000225 n

end

end A166578.P15441412167149095298

namespace A166578

/-- `Δ[Δ[A033138(n+1)]]-A000225(n)` -/
def P15441412167149095298.Spec : Prop :=
  ∀ n, P15441412167149095298.a n = A166578 n

end A166578

/-!
# A166579: Prime numbers containing the string 17.

The programs for A166579, there is no canonical definition to state claims against.
-/

/-! ## A166579.P16959932475642660097

`p?[A293877(n+1)]`
-/

namespace A166579.P16959932475642660097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166579.P16959932475642660097

/-! ## A166579.P9719282796734344802

`p?[record[A293877(A324533(n))]]`
-/

namespace A166579.P9719282796734344802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (A324533 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166579.P9719282796734344802

/-! ## A166579.P16857927615715761140

`∩[A257668(n+1), A293877(n+1)]`
-/

namespace A166579.P16857927615715761140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P16857927615715761140

/-! ## A166579.P13303295704631826012

`∩[A208270(n+1), A293877(n+1)]`
-/

namespace A166579.P13303295704631826012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P13303295704631826012

/-! ## A166579.P6625444598523697363

`∩[A239058(n+1), A293877(n+1)]`
-/

namespace A166579.P6625444598523697363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P6625444598523697363

/-! ## A166579.P8506222134750499405

`∩[A106123(n+1), A293877(n+1)]`
-/

namespace A166579.P8506222134750499405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P8506222134750499405

/-! ## A166579.P1843120219589836141

`∩[A152427(n+1), A293877(n+1)]`
-/

namespace A166579.P1843120219589836141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P1843120219589836141

/-! ## A166579.P3730577680796902110

`∩[A152426(n+1), A293877(n+1)]`
-/

namespace A166579.P3730577680796902110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P3730577680796902110

/-! ## A166579.P15421755210266306093

`∩[A106122(n+1), A293877(n+1)]`
-/

namespace A166579.P15421755210266306093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P15421755210266306093

/-! ## A166579.P14774131344592837865

`∩[A179336(n+1), A293877(n+1)]`
-/

namespace A166579.P14774131344592837865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P14774131344592837865

/-! ## A166579.P96668166209525186

`∩[A106121(n+1), A293877(n+1)]`
-/

namespace A166579.P96668166209525186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P96668166209525186

/-! ## A166579.P9932177030057033864

`∩[A106120(n+1), A293877(n+1)]`
-/

namespace A166579.P9932177030057033864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P9932177030057033864

/-! ## A166579.P15682442385830143490

`∩[A215927(n+1), A293877(n+1)]`
-/

namespace A166579.P15682442385830143490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P15682442385830143490

/-! ## A166579.P5550491127848948311

`∩[A179924(n+1), A293877(n+1)]`
-/

namespace A166579.P5550491127848948311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P5550491127848948311

/-! ## A166579.P64000308864111057

`∩[A000040(n+1), A293877(n+1)]`
-/

namespace A166579.P64000308864111057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P64000308864111057

/-! ## A166579.P13139165440861733808

`∩[A004139(n+1), A293877(n+1)]`
-/

namespace A166579.P13139165440861733808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P13139165440861733808

/-! ## A166579.P6717892196094040955

`∩[A006005(n+1), A293877(n+1)]`
-/

namespace A166579.P6717892196094040955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P6717892196094040955

/-! ## A166579.P9338058632922406012

`∩[A008578(n+1), A293877(n+1)]`
-/

namespace A166579.P9338058632922406012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P9338058632922406012

/-! ## A166579.P1562269821301396188

`∩[A045319(n+1), A293877(n+1)]`
-/

namespace A166579.P1562269821301396188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P1562269821301396188

/-! ## A166579.P13046329304747117637

`∩[A045344(n+1), A293877(n+1)]`
-/

namespace A166579.P13046329304747117637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166579.P13046329304747117637

/-!
# A166580: Prime numbers containing the string 222.

The programs for A166580, there is no canonical definition to state claims against.
-/

/-! ## A166580.P3848429768926972408

`p?[A285470(A285470(A011532(n+1)))]`
-/

namespace A166580.P3848429768926972408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285470 (A285470 (A011532 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166580.P3848429768926972408

/-!
# A166582: Primes containing the string 444.

The programs for A166582, there is no canonical definition to state claims against.
-/

/-! ## A166582.P14736488042539748110

`∩[A043507(n+1), A069679(n+1)]`
-/

namespace A166582.P14736488042539748110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166582.P14736488042539748110

/-!
# A166586: Totally multiplicative sequence with a(p) = p - 2 for prime p.

The programs for A166586, the canonical program `A166586.P14911084209555858703` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166586 has offset 1).

The definition of A166586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166586.P2944281075779738835

`sqrt(A167354(n+1))`
-/

namespace A166586.P2944281075779738835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167354 (n + 1) : ℝ)

end

end A166586.P2944281075779738835

namespace A166586

/-- `sqrt(A167354(n+1))` -/
def P2944281075779738835.Spec : Prop :=
  ∀ n, P2944281075779738835.a n = (A166586 (n + 1) : ℝ)

end A166586

/-! ## A166586.P4931865945278829321

`A167339(n+1)/(n+1)`
-/

namespace A166586.P4931865945278829321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167339 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A166586.P4931865945278829321

namespace A166586

/-- `A167339(n+1)/(n+1)` -/
def P4931865945278829321.Spec : Prop :=
  ∀ n, P4931865945278829321.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P14911084209555858703

`sqrt(∏{d}[n+1, (2-A014963(#))²])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166586

/-- `sqrt(∏{d}[n+1, (2-A014963(#))²])` -/
def P14911084209555858703.Spec : Prop :=
  ∀ n, P14911084209555858703.a n = (A166586 (n + 1) : ℝ)

end A166586

/-! ## A166586.P12197861003869094441

`A167345(n+1)/A003958(n+1)`
-/

namespace A166586.P12197861003869094441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167345 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166586.P12197861003869094441

namespace A166586

/-- `A167345(n+1)/A003958(n+1)` -/
def P12197861003869094441.Spec : Prop :=
  ∀ n, P12197861003869094441.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P15887573369747031075

`A167350(n+1)/A003959(n+1)`
-/

namespace A166586.P15887573369747031075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167350 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)

end

end A166586.P15887573369747031075

namespace A166586

/-- `A167350(n+1)/A003959(n+1)` -/
def P15887573369747031075.Spec : Prop :=
  ∀ n, P15887573369747031075.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P7678503804785293980

`A167294(n+1)/A061142(n+1)`
-/

namespace A166586.P7678503804785293980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167294 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166586.P7678503804785293980

namespace A166586

/-- `A167294(n+1)/A061142(n+1)` -/
def P7678503804785293980.Spec : Prop :=
  ∀ n, P7678503804785293980.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P11123986156429089934

`A167295(n+1)/A079065(n+1)`
-/

namespace A166586.P11123986156429089934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167295 (n + 1) : ℚ) / (A079065 (n + 1) : ℚ)

end

end A166586.P11123986156429089934

namespace A166586

/-- `A167295(n+1)/A079065(n+1)` -/
def P11123986156429089934.Spec : Prop :=
  ∀ n, P11123986156429089934.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P4685966111245785789

`A167295(n+1)/A165824(n+1)`
-/

namespace A166586.P4685966111245785789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167295 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166586.P4685966111245785789

namespace A166586

/-- `A167295(n+1)/A165824(n+1)` -/
def P4685966111245785789.Spec : Prop :=
  ∀ n, P4685966111245785789.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P1056836198720030036

`A167296(n+1)/A165825(n+1)`
-/

namespace A166586.P1056836198720030036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167296 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A166586.P1056836198720030036

namespace A166586

/-- `A167296(n+1)/A165825(n+1)` -/
def P1056836198720030036.Spec : Prop :=
  ∀ n, P1056836198720030036.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P6886617339362571484

`A167297(n+1)/A165826(n+1)`
-/

namespace A166586.P6886617339362571484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167297 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A166586.P6886617339362571484

namespace A166586

/-- `A167297(n+1)/A165826(n+1)` -/
def P6886617339362571484.Spec : Prop :=
  ∀ n, P6886617339362571484.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P11000824720869837018

`A167298(n+1)/A165827(n+1)`
-/

namespace A166586.P11000824720869837018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167298 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)

end

end A166586.P11000824720869837018

namespace A166586

/-- `A167298(n+1)/A165827(n+1)` -/
def P11000824720869837018.Spec : Prop :=
  ∀ n, P11000824720869837018.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P9419996993479982143

`A167299(n+1)/A165828(n+1)`
-/

namespace A166586.P9419996993479982143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167299 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)

end

end A166586.P9419996993479982143

namespace A166586

/-- `A167299(n+1)/A165828(n+1)` -/
def P9419996993479982143.Spec : Prop :=
  ∀ n, P9419996993479982143.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P15259175881980918619

`A167300(n+1)/A165829(n+1)`
-/

namespace A166586.P15259175881980918619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167300 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)

end

end A166586.P15259175881980918619

namespace A166586

/-- `A167300(n+1)/A165829(n+1)` -/
def P15259175881980918619.Spec : Prop :=
  ∀ n, P15259175881980918619.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P15752912414344237461

`A167301(n+1)/A165830(n+1)`
-/

namespace A166586.P15752912414344237461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167301 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)

end

end A166586.P15752912414344237461

namespace A166586

/-- `A167301(n+1)/A165830(n+1)` -/
def P15752912414344237461.Spec : Prop :=
  ∀ n, P15752912414344237461.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P8448783230797913686

`A167302(n+1)/A165831(n+1)`
-/

namespace A166586.P8448783230797913686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167302 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)

end

end A166586.P8448783230797913686

namespace A166586

/-- `A167302(n+1)/A165831(n+1)` -/
def P8448783230797913686.Spec : Prop :=
  ∀ n, P8448783230797913686.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P4970677660943942821

`A167355(n+1)/A166590(n+1)`
-/

namespace A166586.P4970677660943942821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167355 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)

end

end A166586.P4970677660943942821

namespace A166586

/-- `A167355(n+1)/A166590(n+1)` -/
def P4970677660943942821.Spec : Prop :=
  ∀ n, P4970677660943942821.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P9033738020713573540

`A167357(n+1)/A166591(n+1)`
-/

namespace A166586.P9033738020713573540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167357 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166586.P9033738020713573540

namespace A166586

/-- `A167357(n+1)/A166591(n+1)` -/
def P9033738020713573540.Spec : Prop :=
  ∀ n, P9033738020713573540.a n = (A166586 (n + 1) : ℚ)

end A166586

/-! ## A166586.P11638645755129530537

`gcd(A167294(n+1), A167295(n+1))`
-/

namespace A166586.P11638645755129530537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167294 (n + 1)) (A167295 (n + 1))

end

end A166586.P11638645755129530537

namespace A166586

/-- `gcd(A167294(n+1), A167295(n+1))` -/
def P11638645755129530537.Spec : Prop :=
  ∀ n, (P11638645755129530537.a n : ℤ) = A166586 (n + 1)

end A166586

/-! ## A166586.P737225890219258043

`gcd(A167296(n+1), A167297(n+1))`
-/

namespace A166586.P737225890219258043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167296 (n + 1)) (A167297 (n + 1))

end

end A166586.P737225890219258043

namespace A166586

/-- `gcd(A167296(n+1), A167297(n+1))` -/
def P737225890219258043.Spec : Prop :=
  ∀ n, (P737225890219258043.a n : ℤ) = A166586 (n + 1)

end A166586

/-! ## A166586.P16873691752206379673

`gcd(A167298(n+1), A167299(n+1))`
-/

namespace A166586.P16873691752206379673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167298 (n + 1)) (A167299 (n + 1))

end

end A166586.P16873691752206379673

namespace A166586

/-- `gcd(A167298(n+1), A167299(n+1))` -/
def P16873691752206379673.Spec : Prop :=
  ∀ n, (P16873691752206379673.a n : ℤ) = A166586 (n + 1)

end A166586

/-!
# A166587: A signed variant of the Motzkin numbers.

The programs for A166587, the canonical program `A166587.P9407171212140652662` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166587 has offset 0).

The definition of A166587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166587.P9407171212140652662

`A000007(n)-Δ[A099323(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A166587

/-- `A000007(n)-Δ[A099323(n)]` -/
def P9407171212140652662.Spec : Prop :=
  ∀ n, P9407171212140652662.a n = A166587 n

theorem P9407171212140652662.correct : P9407171212140652662.Spec := by
  intro n
  simp only [A166587]

end A166587

/-! ## A166587.P4127917986908778424

`Δ[A057427(n)-A099323(n)]`
-/

namespace A166587.P4127917986908778424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166587.P4127917986908778424

namespace A166587

/-- `Δ[A057427(n)-A099323(n)]` -/
def P4127917986908778424.Spec : Prop :=
  ∀ n, P4127917986908778424.a n = A166587 n

end A166587

/-! ## A166587.P13503565081316496723

`Δ[A036453(n+1)-A099323(n)]`
-/

namespace A166587.P13503565081316496723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) - A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166587.P13503565081316496723

namespace A166587

/-- `Δ[A036453(n+1)-A099323(n)]` -/
def P13503565081316496723.Spec : Prop :=
  ∀ n, P13503565081316496723.a n = A166587 n

end A166587

/-! ## A166587.P17427770631675163932

`4-Δ[A099323(n)+A008574(n)]`
-/

namespace A166587.P17427770631675163932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A166587.P17427770631675163932

namespace A166587

/-- `4-Δ[A099323(n)+A008574(n)]` -/
def P17427770631675163932.Spec : Prop :=
  ∀ n, P17427770631675163932.a n = A166587 n

end A166587

/-! ## A166587.P10582904019221115991

`A008458(n)%2-Δ[A099323(n)]`
-/

namespace A166587.P10582904019221115991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2 - (f1 (n + 1) - f1 n)

end

end A166587.P10582904019221115991

namespace A166587

/-- `A008458(n)%2-Δ[A099323(n)]` -/
def P10582904019221115991.Spec : Prop :=
  ∀ n, P10582904019221115991.a n = A166587 n

end A166587

/-! ## A166587.P8991063661643770236

`A000007(n)+A099323(n)-A099323(n+1)`
-/

namespace A166587.P8991063661643770236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A099323 n - A099323 (n + 1))

end

end A166587.P8991063661643770236

namespace A166587

/-- `A000007(n)+A099323(n)-A099323(n+1)` -/
def P8991063661643770236.Spec : Prop :=
  ∀ n, P8991063661643770236.a n = A166587 n

theorem P8991063661643770236.correct : P8991063661643770236.Spec := by
  intro n
  simp only [A166587, Nat.add_sub_cancel, A166587.P8991063661643770236.a, A166587.P9407171212140652662.f1, A166587.P9407171212140652662.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166587

/-! ## A166587.P9624475971749211937

`A104934(n)%2-Δ[A099323(n)]`
-/

namespace A166587.P9624475971749211937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104934 n) 2 - (f1 (n + 1) - f1 n)

end

end A166587.P9624475971749211937

namespace A166587

/-- `A104934(n)%2-Δ[A099323(n)]` -/
def P9624475971749211937.Spec : Prop :=
  ∀ n, P9624475971749211937.a n = A166587 n

end A166587

/-! ## A166587.P6701444035007164980

`A099323(n)-A099323(n+1)%A104934(n)`
-/

namespace A166587.P6701444035007164980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n - Int.tmod (A099323 (n + 1)) (A104934 n)

end

end A166587.P6701444035007164980

namespace A166587

/-- `A099323(n)-A099323(n+1)%A104934(n)` -/
def P6701444035007164980.Spec : Prop :=
  ∀ n, P6701444035007164980.a n = A166587 n

end A166587

/-! ## A166587.P18442985930466131345

`Δ[(2-A099323(n))%A155587(n)]`
-/

namespace A166587.P18442985930466131345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A099323 n) (A155587 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166587.P18442985930466131345

namespace A166587

/-- `Δ[(2-A099323(n))%A155587(n)]` -/
def P18442985930466131345.Spec : Prop :=
  ∀ n, P18442985930466131345.a n = A166587 n

end A166587

/-!
# A166588: Partial sums of A097331; binomial transform of A166587.

The programs for A166588, the canonical program `A166588.P6229897388527750775` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166588 has offset 0).

The definition of A166588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166588.P6229897388527750775

`∑[A097331(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166588

/-- `∑[A097331(n)]` -/
def P6229897388527750775.Spec : Prop :=
  ∀ n, P6229897388527750775.a n = A166588 n

theorem P6229897388527750775.correct : P6229897388527750775.Spec := by
  intro n
  simp only [A166588]

end A166588

/-! ## A166588.P9405543419386450202

`∑[abs(A090192(n))]`
-/

namespace A166588.P9405543419386450202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P9405543419386450202

namespace A166588

/-- `∑[abs(A090192(n))]` -/
def P9405543419386450202.Spec : Prop :=
  ∀ n, P9405543419386450202.a n = A166588 n

end A166588

/-! ## A166588.P5881012807684651272

`∑[abs(A105523(n))]`
-/

namespace A166588.P5881012807684651272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P5881012807684651272

namespace A166588

/-- `∑[abs(A105523(n))]` -/
def P5881012807684651272.Spec : Prop :=
  ∀ n, P5881012807684651272.a n = A166588 n

end A166588

/-! ## A166588.P11357376320001465309

`∑[abs(A210628(n))]`
-/

namespace A166588.P11357376320001465309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P11357376320001465309

namespace A166588

/-- `∑[abs(A210628(n))]` -/
def P11357376320001465309.Spec : Prop :=
  ∀ n, P11357376320001465309.a n = A166588 n

end A166588

/-! ## A166588.P3821874764490809591

`A155587(ceil(n/2))`
-/

namespace A166588.P3821874764490809591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 ⌈(n : ℚ) / 2⌉.toNat

end

end A166588.P3821874764490809591

namespace A166588

/-- `A155587(ceil(n/2))` -/
def P3821874764490809591.Spec : Prop :=
  ∀ n, P3821874764490809591.a n = A166588 n

end A166588

/-! ## A166588.P10299254181836356047

`∑[abs(A182492(2*n+1))]`
-/

namespace A166588.P10299254181836356047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P10299254181836356047

namespace A166588

/-- `∑[abs(A182492(2*n+1))]` -/
def P10299254181836356047.Spec : Prop :=
  ∀ n, P10299254181836356047.a n = A166588 n

end A166588

/-! ## A166588.P8114957074943039766

`A126120(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A166588.P8114957074943039766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126120 (n - 1) + a (n - 1)

end

end A166588.P8114957074943039766

namespace A166588

/-- `A126120(n-1)+a(n-1)` -/
def P8114957074943039766.Spec : Prop :=
  ∀ n, P8114957074943039766.a n = A166588 n

end A166588

/-! ## A166588.P2014252476669578438

`∑[abs(A182492(or(1, n)+1+n))]+1`
-/

namespace A166588.P2014252476669578438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (Nat.lor 1 n + 1 + n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166588.P2014252476669578438

namespace A166588

/-- `∑[abs(A182492(or(1, n)+1+n))]+1` -/
def P2014252476669578438.Spec : Prop :=
  ∀ n, P2014252476669578438.a n = A166588 n

end A166588

/-! ## A166588.P14850335245836217623

`∑[A126120(A028310(n)-1)]`
-/

namespace A166588.P14850335245836217623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P14850335245836217623

namespace A166588

/-- `∑[A126120(A028310(n)-1)]` -/
def P14850335245836217623.Spec : Prop :=
  ∀ n, P14850335245836217623.a n = A166588 n

end A166588

/-! ## A166588.P13348166338626374938

`∑[gcd(A182492(2*n+1), A182492(2*n))]`
-/

namespace A166588.P13348166338626374938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182492 (2 * n + 1)) (A182492 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P13348166338626374938

namespace A166588

/-- `∑[gcd(A182492(2*n+1), A182492(2*n))]` -/
def P13348166338626374938.Spec : Prop :=
  ∀ n, (P13348166338626374938.a n : ℤ) = A166588 n

end A166588

/-! ## A166588.P2107743164036960631

`∑[A126120(n)]+1-A126120(n)`
-/

namespace A166588.P2107743164036960631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A126120 n)

end

end A166588.P2107743164036960631

namespace A166588

/-- `∑[A126120(n)]+1-A126120(n)` -/
def P2107743164036960631.Spec : Prop :=
  ∀ n, P2107743164036960631.a n = A166588 n

end A166588

/-! ## A166588.P12307673373095300045

`∑[abs(A135863(n+2)/8)]`
-/

namespace A166588.P12307673373095300045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A135863 (n + 2) : ℚ) / 8|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P12307673373095300045

namespace A166588

/-- `∑[abs(A135863(n+2)/8)]` -/
def P12307673373095300045.Spec : Prop :=
  ∀ n, P12307673373095300045.a n = (A166588 n : ℚ)

end A166588

/-! ## A166588.P9096023283848492247

`∑[gcd(A105523(n), A138364(n))]`
-/

namespace A166588.P9096023283848492247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105523 n) (A138364 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P9096023283848492247

namespace A166588

/-- `∑[gcd(A105523(n), A138364(n))]` -/
def P9096023283848492247.Spec : Prop :=
  ∀ n, (P9096023283848492247.a n : ℤ) = A166588 n

end A166588

/-! ## A166588.P1459767348377251314

`A072100(n+1)-A014495(n)`
-/

namespace A166588.P1459767348377251314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) - A014495 n

end

end A166588.P1459767348377251314

namespace A166588

/-- `A072100(n+1)-A014495(n)` -/
def P1459767348377251314.Spec : Prop :=
  ∀ n, P1459767348377251314.a n = A166588 n

end A166588

/-! ## A166588.P11968238942637618127

`∑[A210736(n)-Δ[A210736(n)]]`
-/

namespace A166588.P11968238942637618127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P11968238942637618127

namespace A166588

/-- `∑[A210736(n)-Δ[A210736(n)]]` -/
def P11968238942637618127.Spec : Prop :=
  ∀ n, P11968238942637618127.a n = A166588 n

end A166588

/-! ## A166588.P15830011717419300058

`A072100(n+1)+1-A001405(n)`
-/

namespace A166588.P15830011717419300058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) + (1 - A001405 n)

end

end A166588.P15830011717419300058

namespace A166588

/-- `A072100(n+1)+1-A001405(n)` -/
def P15830011717419300058.Spec : Prop :=
  ∀ n, P15830011717419300058.a n = A166588 n

end A166588

/-! ## A166588.P6424918981972058176

`A036256(n)-A218008(n)`
-/

namespace A166588.P6424918981972058176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - A218008 n

end

end A166588.P6424918981972058176

namespace A166588

/-- `A036256(n)-A218008(n)` -/
def P6424918981972058176.Spec : Prop :=
  ∀ n, P6424918981972058176.a n = A166588 n

end A166588

/-! ## A166588.P3761610625348618405

`A036256(n)-2*A014495(n)`
-/

namespace A166588.P3761610625348618405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - 2 * A014495 n

end

end A166588.P3761610625348618405

namespace A166588

/-- `A036256(n)-2*A014495(n)` -/
def P3761610625348618405.Spec : Prop :=
  ∀ n, P3761610625348618405.a n = A166588 n

end A166588

/-! ## A166588.P10878921504701092552

`∑[A001405(n)]-2*A014495(n)`
-/

namespace A166588.P10878921504701092552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A014495 n

end

end A166588.P10878921504701092552

namespace A166588

/-- `∑[A001405(n)]-2*A014495(n)` -/
def P10878921504701092552.Spec : Prop :=
  ∀ n, P10878921504701092552.a n = A166588 n

end A166588

/-! ## A166588.P6066807307408054483

`2*A072100(n+1)-A036256(n)`
-/

namespace A166588.P6066807307408054483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072100 (n + 1) - A036256 n

end

end A166588.P6066807307408054483

namespace A166588

/-- `2*A072100(n+1)-A036256(n)` -/
def P6066807307408054483.Spec : Prop :=
  ∀ n, P6066807307408054483.a n = A166588 n

end A166588

/-!
# A166589: Totally multiplicative sequence with a(p) = p-3 for prime p.

The programs for A166589, the canonical program `A166589.P1055176826063543385` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166589 has offset 1).

The definition of A166589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166589.P2943125314870899913

`A167341(n+1)/(n+1)`
-/

namespace A166589.P2943125314870899913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167341 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A166589.P2943125314870899913

namespace A166589

/-- `A167341(n+1)/(n+1)` -/
def P2943125314870899913.Spec : Prop :=
  ∀ n, P2943125314870899913.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P1055176826063543385

`∏{d}[n+1, A007432(A014963(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166589

/-- `∏{d}[n+1, A007432(A014963(#))]` -/
def P1055176826063543385.Spec : Prop :=
  ∀ n, P1055176826063543385.a n = A166589 (n + 1)

theorem P1055176826063543385.correct : P1055176826063543385.Spec := by
  intro n
  simp only [A166589, Nat.add_sub_cancel]

end A166589

/-! ## A166589.P12972943766869723938

`A167347(n+1)/A003958(n+1)`
-/

namespace A166589.P12972943766869723938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167347 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166589.P12972943766869723938

namespace A166589

/-- `A167347(n+1)/A003958(n+1)` -/
def P12972943766869723938.Spec : Prop :=
  ∀ n, P12972943766869723938.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P2419929279629294557

`A167352(n+1)/A003959(n+1)`
-/

namespace A166589.P2419929279629294557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167352 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)

end

end A166589.P2419929279629294557

namespace A166589

/-- `A167352(n+1)/A003959(n+1)` -/
def P2419929279629294557.Spec : Prop :=
  ∀ n, P2419929279629294557.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P15701141465958818991

`A167312(n+1)/A061142(n+1)`
-/

namespace A166589.P15701141465958818991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166589.P15701141465958818991

namespace A166589

/-- `A167312(n+1)/A061142(n+1)` -/
def P15701141465958818991.Spec : Prop :=
  ∀ n, P15701141465958818991.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P17588204763662101327

`A167313(n+1)/A165824(n+1)`
-/

namespace A166589.P17588204763662101327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167313 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166589.P17588204763662101327

namespace A166589

/-- `A167313(n+1)/A165824(n+1)` -/
def P17588204763662101327.Spec : Prop :=
  ∀ n, P17588204763662101327.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P17450618313794358178

`A167314(n+1)/A165825(n+1)`
-/

namespace A166589.P17450618313794358178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167314 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A166589.P17450618313794358178

namespace A166589

/-- `A167314(n+1)/A165825(n+1)` -/
def P17450618313794358178.Spec : Prop :=
  ∀ n, P17450618313794358178.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P17245004118484759142

`A167315(n+1)/A165826(n+1)`
-/

namespace A166589.P17245004118484759142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167315 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A166589.P17245004118484759142

namespace A166589

/-- `A167315(n+1)/A165826(n+1)` -/
def P17245004118484759142.Spec : Prop :=
  ∀ n, P17245004118484759142.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P11254023366465308479

`A167316(n+1)/A165827(n+1)`
-/

namespace A166589.P11254023366465308479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167316 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)

end

end A166589.P11254023366465308479

namespace A166589

/-- `A167316(n+1)/A165827(n+1)` -/
def P11254023366465308479.Spec : Prop :=
  ∀ n, P11254023366465308479.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P11844595039700516234

`A167317(n+1)/A165828(n+1)`
-/

namespace A166589.P11844595039700516234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167317 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)

end

end A166589.P11844595039700516234

namespace A166589

/-- `A167317(n+1)/A165828(n+1)` -/
def P11844595039700516234.Spec : Prop :=
  ∀ n, P11844595039700516234.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P11967980006206679030

`A167318(n+1)/A165829(n+1)`
-/

namespace A166589.P11967980006206679030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167318 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)

end

end A166589.P11967980006206679030

namespace A166589

/-- `A167318(n+1)/A165829(n+1)` -/
def P11967980006206679030.Spec : Prop :=
  ∀ n, P11967980006206679030.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P13155352358572217016

`A167319(n+1)/A165830(n+1)`
-/

namespace A166589.P13155352358572217016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167319 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)

end

end A166589.P13155352358572217016

namespace A166589

/-- `A167319(n+1)/A165830(n+1)` -/
def P13155352358572217016.Spec : Prop :=
  ∀ n, P13155352358572217016.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P10034977938583257262

`A167320(n+1)/A165831(n+1)`
-/

namespace A166589.P10034977938583257262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167320 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)

end

end A166589.P10034977938583257262

namespace A166589

/-- `A167320(n+1)/A165831(n+1)` -/
def P10034977938583257262.Spec : Prop :=
  ∀ n, P10034977938583257262.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P17179849347148371090

`A167359(n+1)/A166590(n+1)`
-/

namespace A166589.P17179849347148371090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167359 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)

end

end A166589.P17179849347148371090

namespace A166589

/-- `A167359(n+1)/A166590(n+1)` -/
def P17179849347148371090.Spec : Prop :=
  ∀ n, P17179849347148371090.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P4562916225993154023

`A167362(n+1)/A166591(n+1)`
-/

namespace A166589.P4562916225993154023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167362 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166589.P4562916225993154023

namespace A166589

/-- `A167362(n+1)/A166591(n+1)` -/
def P4562916225993154023.Spec : Prop :=
  ∀ n, P4562916225993154023.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P11163749567562182270

`A167314(n+1)/A061142(n+1)²`
-/

namespace A166589.P11163749567562182270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167314 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A166589.P11163749567562182270

namespace A166589

/-- `A167314(n+1)/A061142(n+1)²` -/
def P11163749567562182270.Spec : Prop :=
  ∀ n, P11163749567562182270.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P7206126988258764218

`A167319(n+1)/A165824(n+1)²`
-/

namespace A166589.P7206126988258764218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167319 (n + 1) : ℚ) / (A165824 (n + 1) ^ 2 : ℚ)

end

end A166589.P7206126988258764218

namespace A166589

/-- `A167319(n+1)/A165824(n+1)²` -/
def P7206126988258764218.Spec : Prop :=
  ∀ n, P7206126988258764218.a n = (A166589 (n + 1) : ℚ)

end A166589

/-! ## A166589.P14205113992237820134

`A167312(n+1)/sqrt(A165825(n+1))`
-/

namespace A166589.P14205113992237820134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166589.P14205113992237820134

namespace A166589

/-- `A167312(n+1)/sqrt(A165825(n+1))` -/
def P14205113992237820134.Spec : Prop :=
  ∀ n, P14205113992237820134.a n = (A166589 (n + 1) : ℝ)

end A166589

/-! ## A166589.P1629195211981418268

`A167313(n+1)/sqrt(A165830(n+1))`
-/

namespace A166589.P1629195211981418268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167313 (n + 1) : ℝ) / Real.sqrt (A165830 (n + 1) : ℝ)

end

end A166589.P1629195211981418268

namespace A166589

/-- `A167313(n+1)/sqrt(A165830(n+1))` -/
def P1629195211981418268.Spec : Prop :=
  ∀ n, P1629195211981418268.a n = (A166589 (n + 1) : ℝ)

end A166589

/-! ## A166589.P7800175222311461794

`A167362(n+1)/sqrt(A167363(n+1))`
-/

namespace A166589.P7800175222311461794
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167362 (n + 1) : ℝ) / Real.sqrt (A167363 (n + 1) : ℝ)

end

end A166589.P7800175222311461794

namespace A166589

/-- `A167362(n+1)/sqrt(A167363(n+1))` -/
def P7800175222311461794.Spec : Prop :=
  ∀ n, P7800175222311461794.a n = (A166589 (n + 1) : ℝ)

end A166589

/-!
# A166590: Totally multiplicative sequence with a(p) = p+2 for prime p.

The programs for A166590, the canonical program `A166590.P9721562619516484489` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166590 has offset 1).

The definition of A166590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166590.P3763476858789059189

`sqrt(A167358(n+1))`
-/

namespace A166590.P3763476858789059189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167358 (n + 1) : ℝ)

end

end A166590.P3763476858789059189

namespace A166590

/-- `sqrt(A167358(n+1))` -/
def P3763476858789059189.Spec : Prop :=
  ∀ n, P3763476858789059189.a n = (A166590 (n + 1) : ℝ)

end A166590

/-! ## A166590.P13831549764331122708

`A167340(n+1)/(n+1)`
-/

namespace A166590.P13831549764331122708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167340 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A166590.P13831549764331122708

namespace A166590

/-- `A167340(n+1)/(n+1)` -/
def P13831549764331122708.Spec : Prop :=
  ∀ n, P13831549764331122708.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P9721562619516484489

`A167346(n+1)/A003958(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A166590

/-- `A167346(n+1)/A003958(n+1)` -/
def P9721562619516484489.Spec : Prop :=
  ∀ n, P9721562619516484489.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P9265643276143934866

`A167351(n+1)/A003959(n+1)`
-/

namespace A166590.P9265643276143934866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167351 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)

end

end A166590.P9265643276143934866

namespace A166590

/-- `A167351(n+1)/A003959(n+1)` -/
def P9265643276143934866.Spec : Prop :=
  ∀ n, P9265643276143934866.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P2831465293042903258

`A167303(n+1)/A061142(n+1)`
-/

namespace A166590.P2831465293042903258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166590.P2831465293042903258

namespace A166590

/-- `A167303(n+1)/A061142(n+1)` -/
def P2831465293042903258.Spec : Prop :=
  ∀ n, P2831465293042903258.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P5534823590121049074

`A167304(n+1)/A165824(n+1)`
-/

namespace A166590.P5534823590121049074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167304 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166590.P5534823590121049074

namespace A166590

/-- `A167304(n+1)/A165824(n+1)` -/
def P5534823590121049074.Spec : Prop :=
  ∀ n, P5534823590121049074.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P919592912304347146

`A167305(n+1)/A165825(n+1)`
-/

namespace A166590.P919592912304347146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A166590.P919592912304347146

namespace A166590

/-- `A167305(n+1)/A165825(n+1)` -/
def P919592912304347146.Spec : Prop :=
  ∀ n, P919592912304347146.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P17726950319088101955

`A167306(n+1)/A165826(n+1)`
-/

namespace A166590.P17726950319088101955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167306 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A166590.P17726950319088101955

namespace A166590

/-- `A167306(n+1)/A165826(n+1)` -/
def P17726950319088101955.Spec : Prop :=
  ∀ n, P17726950319088101955.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P1188516754628123004

`A167307(n+1)/A165827(n+1)`
-/

namespace A166590.P1188516754628123004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)

end

end A166590.P1188516754628123004

namespace A166590

/-- `A167307(n+1)/A165827(n+1)` -/
def P1188516754628123004.Spec : Prop :=
  ∀ n, P1188516754628123004.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P5016152868974533806

`A167308(n+1)/A165828(n+1)`
-/

namespace A166590.P5016152868974533806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167308 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)

end

end A166590.P5016152868974533806

namespace A166590

/-- `A167308(n+1)/A165828(n+1)` -/
def P5016152868974533806.Spec : Prop :=
  ∀ n, P5016152868974533806.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P2503921123974564501

`A167309(n+1)/A165829(n+1)`
-/

namespace A166590.P2503921123974564501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167309 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)

end

end A166590.P2503921123974564501

namespace A166590

/-- `A167309(n+1)/A165829(n+1)` -/
def P2503921123974564501.Spec : Prop :=
  ∀ n, P2503921123974564501.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P14084658186540510470

`A167310(n+1)/A165830(n+1)`
-/

namespace A166590.P14084658186540510470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167310 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)

end

end A166590.P14084658186540510470

namespace A166590

/-- `A167310(n+1)/A165830(n+1)` -/
def P14084658186540510470.Spec : Prop :=
  ∀ n, P14084658186540510470.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P13841020783543934339

`A167311(n+1)/A165831(n+1)`
-/

namespace A166590.P13841020783543934339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167311 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)

end

end A166590.P13841020783543934339

namespace A166590

/-- `A167311(n+1)/A165831(n+1)` -/
def P13841020783543934339.Spec : Prop :=
  ∀ n, P13841020783543934339.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P10799846452924469623

`A167360(n+1)/A166591(n+1)`
-/

namespace A166590.P10799846452924469623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167360 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166590.P10799846452924469623

namespace A166590

/-- `A167360(n+1)/A166591(n+1)` -/
def P10799846452924469623.Spec : Prop :=
  ∀ n, P10799846452924469623.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P282494373514845000

`gcd(A167303(n+1), A167304(n+1))`
-/

namespace A166590.P282494373514845000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167303 (n + 1)) (A167304 (n + 1))

end

end A166590.P282494373514845000

namespace A166590

/-- `gcd(A167303(n+1), A167304(n+1))` -/
def P282494373514845000.Spec : Prop :=
  ∀ n, (P282494373514845000.a n : ℤ) = A166590 (n + 1)

end A166590

/-! ## A166590.P2481860475711489629

`gcd(A167305(n+1), A167306(n+1))`
-/

namespace A166590.P2481860475711489629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167305 (n + 1)) (A167306 (n + 1))

end

end A166590.P2481860475711489629

namespace A166590

/-- `gcd(A167305(n+1), A167306(n+1))` -/
def P2481860475711489629.Spec : Prop :=
  ∀ n, (P2481860475711489629.a n : ℤ) = A166590 (n + 1)

end A166590

/-! ## A166590.P9154406636044830220

`gcd(A167307(n+1), A167308(n+1))`
-/

namespace A166590.P9154406636044830220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167307 (n + 1)) (A167308 (n + 1))

end

end A166590.P9154406636044830220

namespace A166590

/-- `gcd(A167307(n+1), A167308(n+1))` -/
def P9154406636044830220.Spec : Prop :=
  ∀ n, (P9154406636044830220.a n : ℤ) = A166590 (n + 1)

end A166590

/-! ## A166590.P8972214948259590137

`gcd(A167309(n+1), A167310(n+1))`
-/

namespace A166590.P8972214948259590137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167309 (n + 1)) (A167310 (n + 1))

end

end A166590.P8972214948259590137

namespace A166590

/-- `gcd(A167309(n+1), A167310(n+1))` -/
def P8972214948259590137.Spec : Prop :=
  ∀ n, (P8972214948259590137.a n : ℤ) = A166590 (n + 1)

end A166590

/-! ## A166590.P13532265296579456050

`A167305(n+1)/A061142(n+1)²`
-/

namespace A166590.P13532265296579456050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A166590.P13532265296579456050

namespace A166590

/-- `A167305(n+1)/A061142(n+1)²` -/
def P13532265296579456050.Spec : Prop :=
  ∀ n, P13532265296579456050.a n = (A166590 (n + 1) : ℚ)

end A166590

/-! ## A166590.P1384084900807667414

`A167310(n+1)/A165824(n+1)²`
-/

namespace A166590.P1384084900807667414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167310 (n + 1) : ℚ) / (A165824 (n + 1) ^ 2 : ℚ)

end

end A166590.P1384084900807667414

namespace A166590

/-- `A167310(n+1)/A165824(n+1)²` -/
def P1384084900807667414.Spec : Prop :=
  ∀ n, P1384084900807667414.a n = (A166590 (n + 1) : ℚ)

end A166590

/-!
# A166591: Totally multiplicative sequence with a(p) = p+3 for prime p.

The programs for A166591, there is no canonical definition to state claims against.
-/

/-! ## A166591.P16402310988768804758

`sqrt(A167363(n+1))`
-/

namespace A166591.P16402310988768804758
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ)

end

end A166591.P16402310988768804758

/-! ## A166591.P11758991827683388463

`A167342(n+1)/(n+1)`
-/

namespace A166591.P11758991827683388463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167342 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A166591.P11758991827683388463

/-! ## A166591.P589114240218036917

`root(A167363(C(n+1, n)), 2)`
-/

namespace A166591.P589114240218036917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167363 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A166591.P589114240218036917

/-! ## A166591.P4903747475732721812

`A109624(n+1)/A003958(n+1)`
-/

namespace A166591.P4903747475732721812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166591.P4903747475732721812

/-! ## A166591.P1969102686947409840

`A167353(n+1)/A003959(n+1)`
-/

namespace A166591.P1969102686947409840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167353 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)

end

end A166591.P1969102686947409840

/-! ## A166591.P10198596058953524110

`A167321(n+1)/A061142(n+1)`
-/

namespace A166591.P10198596058953524110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166591.P10198596058953524110

/-! ## A166591.P6645780680080882498

`A167322(n+1)/A165824(n+1)`
-/

namespace A166591.P6645780680080882498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166591.P6645780680080882498

/-! ## A166591.P11895177218410403825

`A167323(n+1)/A165825(n+1)`
-/

namespace A166591.P11895177218410403825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A166591.P11895177218410403825

/-! ## A166591.P7959116285304999028

`A167324(n+1)/A165826(n+1)`
-/

namespace A166591.P7959116285304999028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A166591.P7959116285304999028

/-! ## A166591.P11652937619179005302

`A167325(n+1)/A165827(n+1)`
-/

namespace A166591.P11652937619179005302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)

end

end A166591.P11652937619179005302

/-! ## A166591.P1316407228520361727

`A167326(n+1)/A165828(n+1)`
-/

namespace A166591.P1316407228520361727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167326 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)

end

end A166591.P1316407228520361727

/-! ## A166591.P13107672850913801672

`A167327(n+1)/A165829(n+1)`
-/

namespace A166591.P13107672850913801672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167327 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)

end

end A166591.P13107672850913801672

/-! ## A166591.P13212192929069431463

`A167328(n+1)/A165830(n+1)`
-/

namespace A166591.P13212192929069431463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167328 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)

end

end A166591.P13212192929069431463

/-! ## A166591.P11655060751182962688

`A167329(n+1)/A165831(n+1)`
-/

namespace A166591.P11655060751182962688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167329 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)

end

end A166591.P11655060751182962688

/-! ## A166591.P9622262738800799884

`A167360(n+1)/A166590(n+1)`
-/

namespace A166591.P9622262738800799884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167360 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)

end

end A166591.P9622262738800799884

/-! ## A166591.P4455675463200366078

`gcd(A167321(n+1), A167322(n+1))`
-/

namespace A166591.P4455675463200366078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167321 (n + 1)) (A167322 (n + 1))

end

end A166591.P4455675463200366078

/-! ## A166591.P12173400426304396656

`gcd(A167323(n+1), A167324(n+1))`
-/

namespace A166591.P12173400426304396656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167323 (n + 1)) (A167324 (n + 1))

end

end A166591.P12173400426304396656

/-! ## A166591.P9257508396674195080

`gcd(A167325(n+1), A167326(n+1))`
-/

namespace A166591.P9257508396674195080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167325 (n + 1)) (A167326 (n + 1))

end

end A166591.P9257508396674195080

/-! ## A166591.P16131835129458059407

`gcd(A167327(n+1), A167328(n+1))`
-/

namespace A166591.P16131835129458059407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167327 (n + 1)) (A167328 (n + 1))

end

end A166591.P16131835129458059407

/-! ## A166591.P5756846915661095115

`A167323(n+1)/A061142(n+1)²`
-/

namespace A166591.P5756846915661095115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A166591.P5756846915661095115

/-!
# A166592: Hankel transform of A166588(n-1).

The programs for A166592, the canonical program `A166592.P8183257828109651393` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166592 has offset 0).

The definition of A166592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166592.P8183257828109651393

`a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166592

/-- `a(n-2)-a(n-4)` -/
def P8183257828109651393.Spec : Prop :=
  ∀ n, P8183257828109651393.a n = A166592 n

theorem P8183257828109651393.correct : P8183257828109651393.Spec := by
  intro n
  simp only [A166592]

end A166592

/-!
# A166593: Partial sums of A166592.

The programs for A166593, the canonical program `A166593.P11223987700277982643` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166593 has offset 0).

The definition of A166593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166593.P11223987700277982643

`a(n-1)+a(n-2)-a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166593

/-- `a(n-1)+a(n-2)-a(n-3)-a(n-4)+a(n-5)` -/
def P11223987700277982643.Spec : Prop :=
  ∀ n, P11223987700277982643.a n = A166593 n

theorem P11223987700277982643.correct : P11223987700277982643.Spec := by
  intro n
  simp only [A166593]

end A166593

/-!
# A166594: Maximal prime gap q-p encountered from 0 to least prime > n.

The programs for A166594, there is no canonical definition to state claims against.
-/

/-! ## A166594.P16129523243729013672

`A327441(floor(sqrt(A189834(n))))`
-/

namespace A166594.P16129523243729013672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (Int.sqrt (A189834 n)).toNat

end

end A166594.P16129523243729013672

/-! ## A166594.P3364477756652285773

`A327441(A133263(n)+3-A077169(n))`
-/

namespace A166594.P3364477756652285773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A133263 n + (3 - A077169 n)).toNat

end

end A166594.P3364477756652285773

/-! ## A166594.P14414747280504293770

`A327441(3-(A077169(n)-A133263(n)))`
-/

namespace A166594.P14414747280504293770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (3 - (A077169 n - A133263 n)).toNat

end

end A166594.P14414747280504293770

/-! ## A166594.P14267677584624538377

`lcm(2, A327441(A233583(n+1)))`
-/

namespace A166594.P14267677584624538377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A327441 (A233583 (n + 1)).toNat)

end

end A166594.P14267677584624538377

/-! ## A166594.P16088088929354170139

`A327441(A233583(n+1)+A065333(n+1))`
-/

namespace A166594.P16088088929354170139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A233583 (n + 1) + A065333 (n + 1)).toNat

end

end A166594.P16088088929354170139

/-! ## A166594.P8168495374029077639

`A070172(p?[A000267(A072376(n))])`
-/

namespace A166594.P8168495374029077639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A072376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A166594.P8168495374029077639

/-! ## A166594.P16110572480229557915

`A100144(A001462(A001462(A007782(A100144(n+1)))))`
-/

namespace A166594.P16110572480229557915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (A001462 (A001462 (A007782 (A100144 (n + 1)).toNat).toNat).toNat).toNat

end

end A166594.P16110572480229557915

/-! ## A166594.P8061492504483722083

`A216452(A196033(n+1))`
-/

namespace A166594.P8061492504483722083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216452 (A196033 (n + 1)).toNat

end

end A166594.P8061492504483722083

/-! ## A166594.P11774175452412859169

`2*A110592(A325123(n+1))`
-/

namespace A166594.P11774175452412859169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110592 (A325123 (n + 1)).toNat

end

end A166594.P11774175452412859169

/-! ## A166594.P10553587832716870653

`A000120(A098355(A098355(A347697(n+1))))`
-/

namespace A166594.P10553587832716870653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A098355 (A098355 (A347697 (n + 1)).toNat).toNat).toNat

end

end A166594.P10553587832716870653

/-!
# A166595: The number of vertices of a hypercube modulo the number of largest-dimensional surface tiles, in the first fourteen cases of the residue being greater than the dimension number.

The programs for A166595, there is no canonical definition to state claims against.
-/

/-! ## A166595.P13533804745427746725

`2*A062173(A071354(n+1))`
-/

namespace A166595.P13533804745427746725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (A071354 (n + 1)).toNat

end

end A166595.P13533804745427746725

/-! ## A166595.P4417040322959049912

`2*A062173(lt[0, A323547(n+1)]+1)`
-/

namespace A166595.P4417040322959049912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A166595.P4417040322959049912

/-! ## A166595.P12956311456142700055

`2*A062173(eq[1, A323547(n+1)]+1)`
-/

namespace A166595.P12956311456142700055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A166595.P12956311456142700055

/-! ## A166595.P3647527180768785194

`2*A062173(lt[n, 2*A062173(n+1)]+1)`
-/

namespace A166595.P3647527180768785194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A166595.P3647527180768785194

/-! ## A166595.P18426902541392008511

`2*A062173(lt[A008619(n), A062173(n+1)]+1)`
-/

namespace A166595.P18426902541392008511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062173 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A166595.P18426902541392008511

/-!
# A166597: Let p = largest prime <= n, with p(0)=p(1)=0, and let q = smallest prime > n; then a(n) = q-p.

The programs for A166597, the canonical program `A166597.P14552351031517696526` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166597 has offset 0).

The definition of A166597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166597.P12270978823635422311

`A054541(A230980(n)+1)`
-/

namespace A166597.P12270978823635422311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A230980 n + 1).toNat

end

end A166597.P12270978823635422311

namespace A166597

/-- `A054541(A230980(n)+1)` -/
def P12270978823635422311.Spec : Prop :=
  ∀ n, P12270978823635422311.a n = A166597 n

end A166597

/-! ## A166597.P1958367278568170007

`A054541(∑[char[A331044(n)]])`
-/

namespace A166597.P1958367278568170007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166597.P1958367278568170007

namespace A166597

/-- `A054541(∑[char[A331044(n)]])` -/
def P1958367278568170007.Spec : Prop :=
  ∀ n, P1958367278568170007.a n = A166597 n

end A166597

/-! ## A166597.P8359937653320965390

`A013634(n)-comp[A013634(n)]`
-/

namespace A166597.P8359937653320965390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A166597.P8359937653320965390

namespace A166597

/-- `A013634(n)-comp[A013634(n)]` -/
def P8359937653320965390.Spec : Prop :=
  ∀ n, P8359937653320965390.a n = A166597 n

end A166597

/-! ## A166597.P14552351031517696526

`A054541(A095117(n)+1-n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166597

/-- `A054541(A095117(n)+1-n)` -/
def P14552351031517696526.Spec : Prop :=
  ∀ n, P14552351031517696526.a n = A166597 n

theorem P14552351031517696526.correct : P14552351031517696526.Spec := by
  intro n
  simp only [A166597]

end A166597

/-! ## A166597.P961277015918613264

`A054541(∑[char[A182986(n+1)]])`
-/

namespace A166597.P961277015918613264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166597.P961277015918613264

namespace A166597

/-- `A054541(∑[char[A182986(n+1)]])` -/
def P961277015918613264.Spec : Prop :=
  ∀ n, P961277015918613264.a n = A166597 n

end A166597

/-! ## A166597.P946268539703227290

`A001223(A000720(abs(2-n)+2))`
-/

namespace A166597.P946268539703227290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (|2 - (n : ℤ)| + 2).toNat).toNat

end

end A166597.P946268539703227290

namespace A166597

/-- `A001223(A000720(abs(2-n)+2))` -/
def P946268539703227290.Spec : Prop :=
  ∀ n, P946268539703227290.a n = A166597 n

end A166597

/-! ## A166597.P14830550340722802083

`A054541(∑[char[A000040(n+1)]]+1)`
-/

namespace A166597.P14830550340722802083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166597.P14830550340722802083

namespace A166597

/-- `A054541(∑[char[A000040(n+1)]]+1)` -/
def P14830550340722802083.Spec : Prop :=
  ∀ n, P14830550340722802083.a n = A166597 n

end A166597

/-! ## A166597.P10880398062416643461

`A001223(A064427(n+1)%(n+2)+1)`
-/

namespace A166597.P10880398062416643461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.tmod (A064427 (n + 1)) (n + 2 : ℤ) + 1).toNat

end

end A166597.P10880398062416643461

namespace A166597

/-- `A001223(A064427(n+1)%(n+2)+1)` -/
def P10880398062416643461.Spec : Prop :=
  ∀ n, P10880398062416643461.a n = A166597 n

end A166597

/-! ## A166597.P5579698524509420257

`A230850(∑[2*char[A000040(n+1)]]+1)`
-/

namespace A166597.P5579698524509420257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166597.P5579698524509420257

namespace A166597

/-- `A230850(∑[2*char[A000040(n+1)]]+1)` -/
def P5579698524509420257.Spec : Prop :=
  ∀ n, P5579698524509420257.a n = A166597 n

end A166597

/-! ## A166597.P5840962325023643343

`A001223(abs(2-A064427(n+1)+n)+1)`
-/

namespace A166597.P5840962325023643343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (|2 - A064427 (n + 1) + (n : ℤ)| + 1).toNat

end

end A166597.P5840962325023643343

namespace A166597

/-- `A001223(abs(2-A064427(n+1)+n)+1)` -/
def P5840962325023643343.Spec : Prop :=
  ∀ n, P5840962325023643343.a n = A166597 n

end A166597

/-! ## A166597.P14239786066934978290

`A054541(A000720(A007918(n+1)))`
-/

namespace A166597.P14239786066934978290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A000720 (A007918 (n + 1)).toNat).toNat

end

end A166597.P14239786066934978290

namespace A166597

/-- `A054541(A000720(A007918(n+1)))` -/
def P14239786066934978290.Spec : Prop :=
  ∀ n, P14239786066934978290.a n = A166597 n

end A166597

/-! ## A166597.P1529423320265494259

`A151800(n)-A078773(A151800(n))`
-/

namespace A166597.P1529423320265494259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A078773 (A151800 n).toNat

end

end A166597.P1529423320265494259

namespace A166597

/-- `A151800(n)-A078773(A151800(n))` -/
def P1529423320265494259.Spec : Prop :=
  ∀ n, P1529423320265494259.a n = A166597 n

end A166597

/-! ## A166597.P8473062152036616464

`A368241(A151800(n))`
-/

namespace A166597.P8473062152036616464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368241 (A151800 n).toNat

end

end A166597.P8473062152036616464

namespace A166597

/-- `A368241(A151800(n))` -/
def P8473062152036616464.Spec : Prop :=
  ∀ n, P8473062152036616464.a n = A166597 n

end A166597

/-! ## A166597.P1555365227286338003

`A368241(A007918(n+1))`
-/

namespace A166597.P1555365227286338003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368241 (A007918 (n + 1)).toNat

end

end A166597.P1555365227286338003

namespace A166597

/-- `A368241(A007918(n+1))` -/
def P1555365227286338003.Spec : Prop :=
  ∀ n, P1555365227286338003.a n = A166597 n

end A166597

/-! ## A166597.P10484711695655935870

`A151800(n)-A349125(2*A151800(n))`
-/

namespace A166597.P10484711695655935870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A349125 (2 * A151800 n).toNat

end

end A166597.P10484711695655935870

namespace A166597

/-- `A151800(n)-A349125(2*A151800(n))` -/
def P10484711695655935870.Spec : Prop :=
  ∀ n, P10484711695655935870.a n = A166597 n

end A166597

/-! ## A166597.P16620588654745004449

`A054541(A056172(Δ[n²])+1)`
-/

namespace A166597.P16620588654745004449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A056172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A166597.P16620588654745004449

namespace A166597

/-- `A054541(A056172(Δ[n²])+1)` -/
def P16620588654745004449.Spec : Prop :=
  ∀ n, P16620588654745004449.a n = A166597 n

end A166597

/-! ## A166597.P5908749632613912428

`A136548(A151800(n)+2)-A136548(n+1)`
-/

namespace A166597.P5908749632613912428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A151800 n + 2).toNat - A136548 (n + 1)

end

end A166597.P5908749632613912428

namespace A166597

/-- `A136548(A151800(n)+2)-A136548(n+1)` -/
def P5908749632613912428.Spec : Prop :=
  ∀ n, P5908749632613912428.a n = A166597 n

end A166597

/-! ## A166597.P10864415394406534816

`A318889(A069549(n+1))`
-/

namespace A166597.P10864415394406534816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318889 (A069549 (n + 1)).toNat

end

end A166597.P10864415394406534816

namespace A166597

/-- `A318889(A069549(n+1))` -/
def P10864415394406534816.Spec : Prop :=
  ∀ n, P10864415394406534816.a n = A166597 n

end A166597

/-! ## A166597.P16017676557460845085

`A329273(A151800(n)-1)+1`
-/

namespace A166597.P16017676557460845085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329273 (A151800 n - 1).toNat + 1

end

end A166597.P16017676557460845085

namespace A166597

/-- `A329273(A151800(n)-1)+1` -/
def P16017676557460845085.Spec : Prop :=
  ∀ n, P16017676557460845085.a n = A166597 n

end A166597

/-!
# A166598: a(n) = 5*n - a(n-1), with n>1, a(1)=5.

The programs for A166598, the canonical program `A166598.P16830898107422423657` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166598 has offset 1).

The definition of A166598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166598.P16830898107422423657

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=5, a(2)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A166598

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16830898107422423657.Spec : Prop :=
  ∀ n, P16830898107422423657.a n = A166598 (n + 1)

theorem P16830898107422423657.correct : P16830898107422423657.Spec := by
  intro n
  simp only [A166598, Nat.add_sub_cancel]

end A166598

/-! ## A166598.P2653897446089441058

`5*A008619(n)`
-/

namespace A166598.P2653897446089441058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008619 n

end

end A166598.P2653897446089441058

namespace A166598

/-- `5*A008619(n)` -/
def P2653897446089441058.Spec : Prop :=
  ∀ n, P2653897446089441058.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P569534519577333654

`∑[5*log2(gcd(2, n))]`
-/

namespace A166598.P569534519577333654
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166598.P569534519577333654

namespace A166598

/-- `∑[5*log2(gcd(2, n))]` -/
def P569534519577333654.Spec : Prop :=
  ∀ n, P569534519577333654.a n = (A166598 (n + 1) : ℝ)

end A166598

/-! ## A166598.P6041172949566786885

`∑[5*char[2*n]]`
-/

namespace A166598.P6041172949566786885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166598.P6041172949566786885

namespace A166598

/-- `∑[5*char[2*n]]` -/
def P6041172949566786885.Spec : Prop :=
  ∀ n, (P6041172949566786885.a n : ℤ) = A166598 (n + 1)

end A166598

/-! ## A166598.P2724037252606407885

`a(n-2)+5` with `a(0)=5, a(1)=5`
-/

namespace A166598.P2724037252606407885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n a =>
  a (n - 2) + 5

end

end A166598.P2724037252606407885

namespace A166598

/-- `a(n-2)+5` -/
def P2724037252606407885.Spec : Prop :=
  ∀ n, (P2724037252606407885.a n : ℤ) = A166598 (n + 1)

end A166598

/-! ## A166598.P12310466407400036612

`5*∑[(n+1)%2]`
-/

namespace A166598.P12310466407400036612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166598.P12310466407400036612

namespace A166598

/-- `5*∑[(n+1)%2]` -/
def P12310466407400036612.Spec : Prop :=
  ∀ n, (P12310466407400036612.a n : ℤ) = A166598 (n + 1)

end A166598

/-! ## A166598.P8958143196188180793

`5*ceil(or(1, n)/2)`
-/

namespace A166598.P8958143196188180793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌈(Nat.lor 1 n : ℚ) / 2⌉

end

end A166598.P8958143196188180793

namespace A166598

/-- `5*ceil(or(1, n)/2)` -/
def P8958143196188180793.Spec : Prop :=
  ∀ n, P8958143196188180793.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P18046690566108578135

`5*round(or(1, n)/2)`
-/

namespace A166598.P18046690566108578135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / 2)

end

end A166598.P18046690566108578135

namespace A166598

/-- `5*round(or(1, n)/2)` -/
def P18046690566108578135.Spec : Prop :=
  ∀ n, P18046690566108578135.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P13775809840701317622

`5*∑[and(1, n+1)]`
-/

namespace A166598.P13775809840701317622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166598.P13775809840701317622

namespace A166598

/-- `5*∑[and(1, n+1)]` -/
def P13775809840701317622.Spec : Prop :=
  ∀ n, (P13775809840701317622.a n : ℤ) = A166598 (n + 1)

end A166598

/-! ## A166598.P7232995676492020768

`5*∑[1-and(1, n)]`
-/

namespace A166598.P7232995676492020768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166598.P7232995676492020768

namespace A166598

/-- `5*∑[1-and(1, n)]` -/
def P7232995676492020768.Spec : Prop :=
  ∀ n, P7232995676492020768.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P8066382016496312664

`5*∑[or(1, n)-n]`
-/

namespace A166598.P8066382016496312664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166598.P8066382016496312664

namespace A166598

/-- `5*∑[or(1, n)-n]` -/
def P8066382016496312664.Spec : Prop :=
  ∀ n, P8066382016496312664.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P11835296872046679009

`5*floor(cosh(log(n+2)))`
-/

namespace A166598.P11835296872046679009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊Real.cosh (Real.log (n + 2 : ℝ))⌋

end

end A166598.P11835296872046679009

namespace A166598

/-- `5*floor(cosh(log(n+2)))` -/
def P11835296872046679009.Spec : Prop :=
  ∀ n, P11835296872046679009.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P10163926951766883312

`5*round(cosh(log(n+1)))`
-/

namespace A166598.P10163926951766883312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway (Real.cosh (Real.log (n + 1 : ℝ)))

end

end A166598.P10163926951766883312

namespace A166598

/-- `5*round(cosh(log(n+1)))` -/
def P10163926951766883312.Spec : Prop :=
  ∀ n, P10163926951766883312.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P7707579026855210561

`5*floor(sinh(log(n+3)))`
-/

namespace A166598.P7707579026855210561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊Real.sinh (Real.log (n + 3 : ℝ))⌋

end

end A166598.P7707579026855210561

namespace A166598

/-- `5*floor(sinh(log(n+3)))` -/
def P7707579026855210561.Spec : Prop :=
  ∀ n, P7707579026855210561.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P10363327458473712248

`5*round(sinh(log(n+2)))`
-/

namespace A166598.P10363327458473712248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway (Real.sinh (Real.log (n + 2 : ℝ)))

end

end A166598.P10363327458473712248

namespace A166598

/-- `5*round(sinh(log(n+2)))` -/
def P10363327458473712248.Spec : Prop :=
  ∀ n, P10363327458473712248.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P3060858659338786156

`5*∑[abs((n-1)%2)]`
-/

namespace A166598.P3060858659338786156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n : ℤ) - 1) 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166598.P3060858659338786156

namespace A166598

/-- `5*∑[abs((n-1)%2)]` -/
def P3060858659338786156.Spec : Prop :=
  ∀ n, P3060858659338786156.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P1933504236669804869

`5*∑[(n%2-1)²]`
-/

namespace A166598.P1933504236669804869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2 : ℕ) : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166598.P1933504236669804869

namespace A166598

/-- `5*∑[(n%2-1)²]` -/
def P1933504236669804869.Spec : Prop :=
  ∀ n, P1933504236669804869.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P15103268648474620368

`abs(∑[5-a(n-1)])` with `a(0)=5`
-/

namespace A166598.P15103268648474620368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166598.P15103268648474620368

namespace A166598

/-- `abs(∑[5-a(n-1)])` -/
def P15103268648474620368.Spec : Prop :=
  ∀ n, P15103268648474620368.a n = A166598 (n + 1)

end A166598

/-! ## A166598.P15370975480561425819

`floor(∑[5-a(n-1)])` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A166598.P15370975480561425819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166598.P15370975480561425819

namespace A166598

/-- `floor(∑[5-a(n-1)])` -/
def P15370975480561425819.Spec : Prop :=
  ∀ n, P15370975480561425819.a n = A166598 (n + 1)

end A166598

