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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220500: D-toothpick sequence of the third kind starting with a single toothpick.

The programs for A220500, there is no canonical definition to state claims against.
-/

/-! ## A220500.P7440571249795138655

`∑[A220501(n)]`
-/

namespace A220500.P7440571249795138655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220500.P7440571249795138655

/-! ## A220500.P18218136181043551986

`A220501(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A220500.P18218136181043551986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220501 n + a (A023443 n).toNat

end

end A220500.P18218136181043551986

/-! ## A220500.P7221328909300964864

`A000027(A220501(n)+a(n-1))` with `a(0)=0`
-/

namespace A220500.P7221328909300964864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A220501 n + a (n - 1)).toNat

end

end A220500.P7221328909300964864

/-! ## A220500.P6677187315010497310

`A220501(n)+a(n-A000034(2*n))` with `a(0)=0`
-/

namespace A220500.P6677187315010497310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220501 n + a ((n : ℤ) - A000034 (2 * n)).toNat

end

end A220500.P6677187315010497310

/-! ## A220500.P7337794330763028892

`a(n-1)+A220501(n)%A083597(n)` with `a(0)=0, a(1)=1`
-/

namespace A220500.P7337794330763028892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Int.tmod (A220501 n) (A083597 n)

end

end A220500.P7337794330763028892

/-!
# A220501: Number of toothpicks or D-toothpicks added at n-th stage in the structure of A220500.

The programs for A220501, there is no canonical definition to state claims against.
-/

/-! ## A220501.P6063147484008070000

`Δ[A220500((n-1)%(n+1))]`
-/

namespace A220501.P6063147484008070000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220500 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220501.P6063147484008070000

/-! ## A220501.P1467491149020405740

`Δ[A220500(round(sqrt(n²+1))-1)]`
-/

namespace A220501.P1467491149020405740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220500 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220501.P1467491149020405740

/-! ## A220501.P15039237721146365386

`A220500(n)-A220500((2*n)%(n+1))`
-/

namespace A220501.P15039237721146365386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220500 n - A220500 (2 * n % (n + 1))

end

end A220501.P15039237721146365386

/-! ## A220501.P2133602179970168880

`A212009(n)+A048105(A000108(n))`
-/

namespace A220501.P2133602179970168880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212009 n + A048105 (A000108 n).toNat

end

end A220501.P2133602179970168880

/-! ## A220501.P8679873790513636102

`A294929(A047086(n))+A212009(n)`
-/

namespace A220501.P8679873790513636102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (A047086 n).toNat + A212009 n

end

end A220501.P8679873790513636102

/-!
# A220502: spt(7n+5) where spt(n) = A092269(n).

The programs for A220502, there is no canonical definition to state claims against.
-/

/-! ## A220502.P13170147751931404199

`A092269(A017041(n))`
-/

namespace A220502.P13170147751931404199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (A017041 n).toNat

end

end A220502.P13170147751931404199

/-! ## A220502.P11220097304778307074

`7*A220507(n)`
-/

namespace A220502.P11220097304778307074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A220507 n

end

end A220502.P11220097304778307074

/-! ## A220502.P2466338544369856140

`A092269(7*n+5)`
-/

namespace A220502.P2466338544369856140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (7 * n + 5)

end

end A220502.P2466338544369856140

/-! ## A220502.P15571682789611418084

`A211982(7*n+5)/2`
-/

namespace A220502.P15571682789611418084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211982 (7 * n + 5) : ℚ) / 2

end

end A220502.P15571682789611418084

/-!
# A220503: spt(13n+6) where spt(n) = A092269(n).

The programs for A220503, there is no canonical definition to state claims against.
-/

/-! ## A220503.P5031916776452440369

`A092269(A186113(n))`
-/

namespace A220503.P5031916776452440369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (A186113 n).toNat

end

end A220503.P5031916776452440369

/-! ## A220503.P5730684968104483950

`13*A220513(n)`
-/

namespace A220503.P5730684968104483950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A220513 n

end

end A220503.P5730684968104483950

/-! ## A220503.P3605926871476583322

`A092269(12*n+6+n)`
-/

namespace A220503.P3605926871476583322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (12 * n + 6 + n)

end

end A220503.P3605926871476583322

/-!
# A220504: Triangle read by rows: T(n,k) is the total number of appearances of k as the smallest part in all partitions of n.

The programs for A220504, there is no canonical definition to state claims against.
-/

/-! ## A220504.P13645347106946805340

`A137639(n+1)+A001222(A026794(n+1)!)`
-/

namespace A220504.P13645347106946805340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137639 (n + 1) + A001222 (Nat.factorial (A026794 (n + 1)).toNat)

end

end A220504.P13645347106946805340

/-!
# A220505: a(n) = spt(5n+4)/5 where spt(n) = A092269(n).

The programs for A220505, there is no canonical definition to state claims against.
-/

/-! ## A220505.P12715253104162329976

`A220485(n)/5`
-/

namespace A220505.P12715253104162329976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220485 n : ℚ) / 5

end

end A220505.P12715253104162329976

/-! ## A220505.P4825955438543628412

`A092269(A016897(n))/5`
-/

namespace A220505.P4825955438543628412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (A016897 n).toNat : ℚ) / 5

end

end A220505.P4825955438543628412

/-! ## A220505.P6337942153589950391

`A092269(5*n+4)/5`
-/

namespace A220505.P6337942153589950391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (5 * n + 4) : ℚ) / 5

end

end A220505.P6337942153589950391

/-! ## A220505.P15916116807118558184

`A211982(5*n+4)/10`
-/

namespace A220505.P15916116807118558184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211982 (5 * n + 4) : ℚ) / 10

end

end A220505.P15916116807118558184

/-! ## A220505.P4245624406483380253

`floor(A092269(A008587(n)+4)/5)`
-/

namespace A220505.P4245624406483380253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092269 (A008587 n + 4).toNat : ℚ) / 5⌋

end

end A220505.P4245624406483380253

/-!
# A220506: Number of primes <= n-th quarter-square.

The programs for A220506, there is no canonical definition to state claims against.
-/

/-! ## A220506.P11416667052535726649

`∑[A220492(n)]`
-/

namespace A220506.P11416667052535726649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220506.P11416667052535726649

/-! ## A220506.P326392683511164337

`A000720(floor(cosh(log(n+1))²))`
-/

namespace A220506.P326392683511164337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋.toNat

end

end A220506.P326392683511164337

/-! ## A220506.P4968682283317680633

`A000720(ceil(cot(2/(n+1))²))`
-/

namespace A220506.P4968682283317680633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2⌉.toNat

end

end A220506.P4968682283317680633

/-! ## A220506.P7948510965630459291

`A000720(A076921(n+1))`
-/

namespace A220506.P7948510965630459291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076921 (n + 1)).toNat

end

end A220506.P7948510965630459291

/-! ## A220506.P15095539150285077774

`A000720(A065033(n)+A002620(n))`
-/

namespace A220506.P15095539150285077774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065033 n + A002620 n).toNat

end

end A220506.P15095539150285077774

/-! ## A220506.P17826679145484002671

`A000720(A008619(n)*A065033(n))`
-/

namespace A220506.P17826679145484002671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008619 n * A065033 n).toNat

end

end A220506.P17826679145484002671

/-! ## A220506.P8244733151951717842

`A000720(A065033(n+1)*A065033(n))`
-/

namespace A220506.P8244733151951717842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065033 (n + 1) * A065033 n).toNat

end

end A220506.P8244733151951717842

/-! ## A220506.P5103524848783988170

`A230980(A302488(n))`
-/

namespace A220506.P5103524848783988170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A302488 n).toNat

end

end A220506.P5103524848783988170

/-! ## A220506.P7803799094414786649

`A230980(A198442(n+1))`
-/

namespace A220506.P7803799094414786649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A198442 (n + 1)).toNat

end

end A220506.P7803799094414786649

/-! ## A220506.P16896290214392313172

`A230980(∑[ceil(n/2)])`
-/

namespace A220506.P16896290214392313172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220506.P16896290214392313172

/-! ## A220506.P4745536264826878258

`A056172(∑[or(1, n)])`
-/

namespace A220506.P4745536264826878258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220506.P4745536264826878258

/-! ## A220506.P10136094991248856679

`A242096(or(1, ∑[or(1, n)]))`
-/

namespace A220506.P10136094991248856679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A220506.P10136094991248856679

/-! ## A220506.P278430099724865267

`A056172(A074133(n+1))`
-/

namespace A220506.P278430099724865267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A074133 (n + 1)).toNat

end

end A220506.P278430099724865267

/-! ## A220506.P15573236930351474457

`A056172(A080827(n+1))`
-/

namespace A220506.P15573236930351474457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A080827 (n + 1)).toNat

end

end A220506.P15573236930351474457

/-! ## A220506.P1769500917721122531

`A056172(A104563(n+1))`
-/

namespace A220506.P1769500917721122531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A104563 (n + 1)).toNat

end

end A220506.P1769500917721122531

/-! ## A220506.P18148807165674965895

`A056172(A099392(n+2))`
-/

namespace A220506.P18148807165674965895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A099392 (n + 2)).toNat

end

end A220506.P18148807165674965895

/-! ## A220506.P3676512351882929455

`A055679(∑[or(1, n)])`
-/

namespace A220506.P3676512351882929455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220506.P3676512351882929455

/-! ## A220506.P14011993637862963852

`A055679(∑[(n+1)%2+n])`
-/

namespace A220506.P14011993637862963852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220506.P14011993637862963852

/-! ## A220506.P12203361325230460812

`A055679(∑[n+1-and(1, n)])`
-/

namespace A220506.P12203361325230460812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220506.P12203361325230460812

/-! ## A220506.P4833696738072844728

`A055679(floor(n/2)+∑[n]+1)`
-/

namespace A220506.P4833696738072844728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (⌊(n : ℚ) / 2⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A220506.P4833696738072844728

/-!
# A220507: a(n) = spt(7n+5)/7 where spt(n) = A092269(n).

The programs for A220507, there is no canonical definition to state claims against.
-/

/-! ## A220507.P2071665409208099186

`A092269(A017041(n))/7`
-/

namespace A220507.P2071665409208099186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (A017041 n).toNat : ℚ) / 7

end

end A220507.P2071665409208099186

/-! ## A220507.P16042657908536608368

`A220502(n)/7`
-/

namespace A220507.P16042657908536608368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220502 n : ℚ) / 7

end

end A220507.P16042657908536608368

/-! ## A220507.P11569530328163384807

`A092269(7*n+5)/7`
-/

namespace A220507.P11569530328163384807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (7 * n + 5) : ℚ) / 7

end

end A220507.P11569530328163384807

/-! ## A220507.P3180245843150711009

`round(A092269(A017017(n)+2)/7)`
-/

namespace A220507.P3180245843150711009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092269 (A017017 n + 2).toNat : ℚ) / 7)

end

end A220507.P3180245843150711009

/-! ## A220507.P2600092194326589046

`(A092269(A017017(n)+2)/7)^A007318(∑[n])`
-/

namespace A220507.P2600092194326589046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A092269 (A017017 n + 2).toNat : ℚ) / 7) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A220507.P2600092194326589046

/-!
# A220508: T(n,k) = n^2 + k if k <= n, otherwise T(n,k) = k*(k + 2) - n; square array T(n,k) read by ascending antidiagonals (n >= 0, k >= 0).

The programs for A220508, the canonical program `A220508.P6866650714193173536` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220508 has offset 0).

The definition of A220508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220508.P17156722938084246771

`A060736(n+1)-1`
-/

namespace A220508.P17156722938084246771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (n + 1) - 1

end

end A220508.P17156722938084246771

namespace A220508

/-- `A060736(n+1)-1` -/
def P17156722938084246771.Spec : Prop :=
  ∀ n, P17156722938084246771.a n = A220508 n

theorem P17156722938084246771.correct : P17156722938084246771.Spec := by
  intro n
  simp only [A220508, Nat.add_sub_cancel, A220508.P17156722938084246771.a, A220508.P6866650714193173536.a, A033638, A033638.P14460038369392948833.a, A060736, A060736.P900922812008928419.a, A114327, A114327.P12930942860764139837.a, A204022, A204022.P5041661320422895112.a, A002024, A002024.P11700297927830783882.a, A002620, A002620.P9002536657626793813.a, A049581, A049581.P10108526043471454015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220508

/-! ## A220508.P1862831583676128254

`A060734(A038722(1+n))-1`
-/

namespace A220508.P1862831583676128254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A038722 (1 + n)).toNat - 1

end

end A220508.P1862831583676128254

namespace A220508

/-- `A060734(A038722(1+n))-1` -/
def P1862831583676128254.Spec : Prop :=
  ∀ n, P1862831583676128254.a n = A220508 n

end A220508

/-! ## A220508.P10462126260022093518

`A060734(A061579(n)+1)-1`
-/

namespace A220508.P10462126260022093518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A061579 n + 1).toNat - 1

end

end A220508.P10462126260022093518

namespace A220508

/-- `A060734(A061579(n)+1)-1` -/
def P10462126260022093518.Spec : Prop :=
  ∀ n, P10462126260022093518.a n = A220508 n

end A220508

/-! ## A220508.P10943792326935559675

`A002061(A051125(n+1))-(A114327(n)+1)`
-/

namespace A220508.P10943792326935559675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A051125 (n + 1)).toNat - (A114327 n + 1)

end

end A220508.P10943792326935559675

namespace A220508

/-- `A002061(A051125(n+1))-(A114327(n)+1)` -/
def P10943792326935559675.Spec : Prop :=
  ∀ n, P10943792326935559675.a n = A220508 n

end A220508

/-! ## A220508.P6866650714193173536

`A033638(A204022(n+1))-(A114327(n)+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A220508

/-- `A033638(A204022(n+1))-(A114327(n)+1)` -/
def P6866650714193173536.Spec : Prop :=
  ∀ n, P6866650714193173536.a n = A220508 n

theorem P6866650714193173536.correct : P6866650714193173536.Spec := by
  intro n
  simp only [A220508]

end A220508

/-! ## A220508.P12356597508213820296

`A081344(A188568(n+1))-1`
-/

namespace A220508.P12356597508213820296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (A188568 (n + 1)).toNat - 1

end

end A220508.P12356597508213820296

namespace A220508

/-- `A081344(A188568(n+1))-1` -/
def P12356597508213820296.Spec : Prop :=
  ∀ n, P12356597508213820296.a n = A220508 n

end A220508

/-! ## A220508.P16806579427803557146

`A020703(A060734(n+1))-1`
-/

namespace A220508.P16806579427803557146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A060734 (n + 1)).toNat - 1

end

end A220508.P16806579427803557146

namespace A220508

/-- `A020703(A060734(n+1))-1` -/
def P16806579427803557146.Spec : Prop :=
  ∀ n, P16806579427803557146.a n = A220508 n

end A220508

/-! ## A220508.P5436831632568486107

`A170950(A213922(n+1))-1`
-/

namespace A220508.P5436831632568486107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (A213922 (n + 1)).toNat - 1

end

end A220508.P5436831632568486107

namespace A220508

/-- `A170950(A213922(n+1))-1` -/
def P5436831632568486107.Spec : Prop :=
  ∀ n, P5436831632568486107.a n = A220508 n

end A220508

/-! ## A220508.P13006695128141055660

`A023443(A060736(n+1))`
-/

namespace A220508.P13006695128141055660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A060736 (n + 1)).toNat

end

end A220508.P13006695128141055660

namespace A220508

/-- `A023443(A060736(n+1))` -/
def P13006695128141055660.Spec : Prop :=
  ∀ n, P13006695128141055660.a n = A220508 n

end A220508

/-! ## A220508.P3089847696268834445

`floor(A342354(n)/2)`
-/

namespace A220508.P3089847696268834445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342354 n : ℚ) / 2⌋

end

end A220508.P3089847696268834445

namespace A220508

/-- `floor(A342354(n)/2)` -/
def P3089847696268834445.Spec : Prop :=
  ∀ n, P3089847696268834445.a n = A220508 n

end A220508

/-!
# A220509: a(n) = n^3 + 3*n + 3^n.

The programs for A220509, the canonical program `A220509.P15216176685523593532` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220509 has offset 0).

The definition of A220509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+3*n+3^n` (program `A220509.P15216176685523593532`, by `A220509.P15216176685523593532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220509.P15216176685523593532

`n^3+3*n+3^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220509

/-- `n^3+3*n+3^n` -/
def P15216176685523593532.Spec : Prop :=
  ∀ n, (P15216176685523593532.a n : ℤ) = A220509 n

theorem P15216176685523593532.correct : P15216176685523593532.Spec := by
  intro n
  simp only [A220509]

end A220509

/-! ## A220509.P9170814546473580604

`ogf((1-8x^2+6x^3-11x^4)/(1-7x+18x^2-22x^3+13x^4-3x^5))`
-/

namespace A220509.P9170814546473580604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -8, 6, -11] [1, -7, 18, -22, 13, -3] n

end

end A220509.P9170814546473580604

namespace A220509

/-- `ogf((1-8x^2+6x^3-11x^4)/(1-7x+18x^2-22x^3+13x^4-3x^5))` -/
def P9170814546473580604.Spec : Prop :=
  ∀ n, P9170814546473580604.a n = A220509 n

end A220509

/-! ## A220509.P11175379185563875487

`abs(1-(A005491(n)+A000244(n)))`
-/

namespace A220509.P11175379185563875487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A005491 n + A000244 n)|

end

end A220509.P11175379185563875487

namespace A220509

/-- `abs(1-(A005491(n)+A000244(n)))` -/
def P11175379185563875487.Spec : Prop :=
  ∀ n, P11175379185563875487.a n = A220509 n

end A220509

/-! ## A220509.P15171909825020241354

`(A005491(n)+A000244(n)-1)*A016755(2*n)%2`
-/

namespace A220509.P15171909825020241354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005491 n + A000244 n - 1) * Int.tmod (A016755 (2 * n)) 2

end

end A220509.P15171909825020241354

namespace A220509

/-- `(A005491(n)+A000244(n)-1)*A016755(2*n)%2` -/
def P15171909825020241354.Spec : Prop :=
  ∀ n, P15171909825020241354.a n = A220509 n

end A220509

/-! ## A220509.P10663877785092696113

`(A005491(n)+A000244(n)-1)*A007318((n²+n)/2)`
-/

namespace A220509.P10663877785092696113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005491 n + A000244 n - 1) * A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A220509.P10663877785092696113

namespace A220509

/-- `(A005491(n)+A000244(n)-1)*A007318((n²+n)/2)` -/
def P10663877785092696113.Spec : Prop :=
  ∀ n, P10663877785092696113.a n = A220509 n

end A220509

/-! ## A220509.P14508975836066215697

`Δ[A014209(A161680(n))+A003462(n)]`
-/

namespace A220509.P14508975836066215697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (A161680 n).toNat + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220509.P14508975836066215697

namespace A220509

/-- `Δ[A014209(A161680(n))+A003462(n)]` -/
def P14508975836066215697.Spec : Prop :=
  ∀ n, P14508975836066215697.a n = A220509 n

end A220509

/-! ## A220509.P13918289543273533699

`Δ[A082742(A002061(n))+A007051(n)]`
-/

namespace A220509.P13918289543273533699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082742 (A002061 n).toNat + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220509.P13918289543273533699

namespace A220509

/-- `Δ[A082742(A002061(n))+A007051(n)]` -/
def P13918289543273533699.Spec : Prop :=
  ∀ n, P13918289543273533699.a n = A220509 n

end A220509

/-!
# A220511: a(n) = n^5 + 5*n + 5^n.

The programs for A220511, the canonical program `A220511.P13200549903290938804` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220511 has offset 0).

The definition of A220511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+5*n+5^n` (program `A220511.P13200549903290938804`, by `A220511.P13200549903290938804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220511.P13200549903290938804

`n^5+5*n+5^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220511

/-- `n^5+5*n+5^n` -/
def P13200549903290938804.Spec : Prop :=
  ∀ n, (P13200549903290938804.a n : ℤ) = A220511 n

theorem P13200549903290938804.correct : P13200549903290938804.Spec := by
  intro n
  simp only [A220511]

end A220511

/-! ## A220511.P3201916437468173192

`or(1, A000351(n)+n*(n²²+5))`
-/

namespace A220511.P3201916437468173192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000351 n + (n * ((n ^ 2) ^ 2 + 5) : ℤ))

end

end A220511.P3201916437468173192

namespace A220511

/-- `or(1, A000351(n)+n*(n²²+5))` -/
def P3201916437468173192.Spec : Prop :=
  ∀ n, P3201916437468173192.a n = A220511 n

end A220511

/-! ## A220511.P15873734859282460345

`or(1, A008587(n)+A001593(n))`
-/

namespace A220511.P15873734859282460345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008587 n + A001593 n)

end

end A220511.P15873734859282460345

namespace A220511

/-- `or(1, A008587(n)+A001593(n))` -/
def P15873734859282460345.Spec : Prop :=
  ∀ n, P15873734859282460345.a n = A220511 n

end A220511

/-! ## A220511.P3598495751140149587

`(A221907(n)+A000584(n))*A033999(n)²`
-/

namespace A220511.P3598495751140149587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A033999 n ^ 2

end

end A220511.P3598495751140149587

namespace A220511

/-- `(A221907(n)+A000584(n))*A033999(n)²` -/
def P3598495751140149587.Spec : Prop :=
  ∀ n, P3598495751140149587.a n = A220511 n

end A220511

/-! ## A220511.P12332445254650271380

`xor(A221907(n)+A000584(n), A000007(n+1))`
-/

namespace A220511.P12332445254650271380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A221907 n + A000584 n) (A000007 (n + 1))

end

end A220511.P12332445254650271380

namespace A220511

/-- `xor(A221907(n)+A000584(n), A000007(n+1))` -/
def P12332445254650271380.Spec : Prop :=
  ∀ n, P12332445254650271380.a n = A220511 n

end A220511

/-! ## A220511.P3871292018396280171

`(A221907(n)+A000584(n))*A009001(2*n)²`
-/

namespace A220511.P3871292018396280171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A009001 (2 * n) ^ 2

end

end A220511.P3871292018396280171

namespace A220511

/-- `(A221907(n)+A000584(n))*A009001(2*n)²` -/
def P3871292018396280171.Spec : Prop :=
  ∀ n, P3871292018396280171.a n = A220511 n

end A220511

/-! ## A220511.P9842288282526345533

`(A008587(n)+A001593(n))/A000041(C(2, n+2))`
-/

namespace A220511.P9842288282526345533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008587 n + A001593 n : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A220511.P9842288282526345533

namespace A220511

/-- `(A008587(n)+A001593(n))/A000041(C(2, n+2))` -/
def P9842288282526345533.Spec : Prop :=
  ∀ n, P9842288282526345533.a n = (A220511 n : ℚ)

end A220511

/-! ## A220511.P13845141809169214688

`(A221907(n)+A000584(n))*A007318(C(2, n+1))²`
-/

namespace A220511.P13845141809169214688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A007318 (Nat.choose 2 (n + 1)) ^ 2

end

end A220511.P13845141809169214688

namespace A220511

/-- `(A221907(n)+A000584(n))*A007318(C(2, n+1))²` -/
def P13845141809169214688.Spec : Prop :=
  ∀ n, P13845141809169214688.a n = A220511 n

end A220511

/-! ## A220511.P8731116397551340509

`(A221907(n)+A000584(n))*A001221(A107153(n+1))`
-/

namespace A220511.P8731116397551340509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A001221 (A107153 (n + 1)).toNat

end

end A220511.P8731116397551340509

namespace A220511

/-- `(A221907(n)+A000584(n))*A001221(A107153(n+1))` -/
def P8731116397551340509.Spec : Prop :=
  ∀ n, P8731116397551340509.a n = A220511 n

end A220511

/-! ## A220511.P3130950341632410068

`(A221907(n)+A000584(n))*A001221(A139035(n+1))`
-/

namespace A220511.P3130950341632410068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A001221 (A139035 (n + 1)).toNat

end

end A220511.P3130950341632410068

namespace A220511

/-- `(A221907(n)+A000584(n))*A001221(A139035(n+1))` -/
def P3130950341632410068.Spec : Prop :=
  ∀ n, P3130950341632410068.a n = A220511 n

end A220511

/-! ## A220511.P9171624722106805043

`(A221907(n)+A000584(n))*A001221(A002373(n+4))`
-/

namespace A220511.P9171624722106805043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A001221 (A002373 (n + 4)).toNat

end

end A220511.P9171624722106805043

namespace A220511

/-- `(A221907(n)+A000584(n))*A001221(A002373(n+4))` -/
def P9171624722106805043.Spec : Prop :=
  ∀ n, P9171624722106805043.a n = A220511 n

end A220511

/-! ## A220511.P14085655727017364705

`(A221907(n)+A000584(n))*A007318(∑[n])`
-/

namespace A220511.P14085655727017364705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A221907 n + A000584 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220511.P14085655727017364705

namespace A220511

/-- `(A221907(n)+A000584(n))*A007318(∑[n])` -/
def P14085655727017364705.Spec : Prop :=
  ∀ n, P14085655727017364705.a n = A220511 n

end A220511

/-!
# A220512: D-toothpick sequence of the third kind starting with a cross formed by 4 toothpicks.

The programs for A220512, there is no canonical definition to state claims against.
-/

/-! ## A220512.P14521623029035004467

`∑[A221565(n)]`
-/

namespace A220512.P14521623029035004467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220512.P14521623029035004467

/-! ## A220512.P9504307327677227457

`∑[4*A225355(n)]`
-/

namespace A220512.P9504307327677227457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A225355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220512.P9504307327677227457

/-! ## A220512.P5680636533591436824

`A008586(∑[A225355(n)])`
-/

namespace A220512.P5680636533591436824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220512.P5680636533591436824

/-! ## A220512.P875952860044454160

`A221565(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A220512.P875952860044454160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A221565 n + a (A023443 n).toNat

end

end A220512.P875952860044454160

/-!
# A220513: a(n) = spt(13n+6)/13 where spt(n) = A092269(n).

The programs for A220513, there is no canonical definition to state claims against.
-/

/-! ## A220513.P13535208808651728292

`A092269(A186113(n))/13`
-/

namespace A220513.P13535208808651728292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (A186113 n).toNat : ℚ) / 13

end

end A220513.P13535208808651728292

/-! ## A220513.P11221989349700906017

`A220503(n)/13`
-/

namespace A220513.P11221989349700906017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220503 n : ℚ) / 13

end

end A220513.P11221989349700906017

/-! ## A220513.P13642564727946892022

`A092269(12*n+6+n)/13`
-/

namespace A220513.P13642564727946892022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (12 * n + 6 + n) : ℚ) / 13

end

end A220513.P13642564727946892022

/-!
# A220514: D-toothpick sequence of the third kind starting with a X-shaped cross formed by 4 D-toothpicks.

The programs for A220514, there is no canonical definition to state claims against.
-/

/-! ## A220514.P12599357114017014776

`4*A220524(n)`
-/

namespace A220514.P12599357114017014776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A220524 n

end

end A220514.P12599357114017014776

/-! ## A220514.P2760246741958777647

`∑[A221528(n)]`
-/

namespace A220514.P2760246741958777647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220514.P2760246741958777647

/-! ## A220514.P16050955634719215110

`4*∑[A220525(n)]`
-/

namespace A220514.P16050955634719215110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220514.P16050955634719215110

/-! ## A220514.P11546707646664125222

`A008586(A220524(n))`
-/

namespace A220514.P11546707646664125222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A220524 n).toNat

end

end A220514.P11546707646664125222

/-!
# A220515: Numbers n such that A183054(n) is not equal to A188569(n).

The programs for A220515, there is no canonical definition to state claims against.
-/

/-! ## A220515.P5405817210965201641

`eq[0, A008683(abs(A183010(n)))]`
-/

namespace A220515.P5405817210965201641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A183010 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220515.P5405817210965201641

/-! ## A220515.P1523198243708761450

`eq[0, A008966(abs(A183010(n)))]`
-/

namespace A220515.P1523198243708761450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 |A183010 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220515.P1523198243708761450

/-! ## A220515.P12787520115688130402

`lt[A007913(abs(A183010(n))), n]`
-/

namespace A220515.P12787520115688130402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 |A183010 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A220515.P12787520115688130402

/-! ## A220515.P1299510129159618366

`lt[A008683(A004280(12*n+1))², 1]`
-/

namespace A220515.P1299510129159618366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004280 (12 * n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A220515.P1299510129159618366

/-! ## A220515.P6604014818730317942

`lt[A165601(A016969(n)), A188569(n+1)]+1`
-/

namespace A220515.P6604014818730317942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (A016969 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A220515.P6604014818730317942

/-!
# A220516: Nonnegative integers in square maze arrangement T(n,k), read by antidiagonals, n>=0, k>=0.

The programs for A220516, there is no canonical definition to state claims against.
-/

/-! ## A220516.P11443798436873283067

`A081344(n+1)-1`
-/

namespace A220516.P11443798436873283067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081344 (n + 1) - 1

end

end A220516.P11443798436873283067

/-! ## A220516.P16214498616834248277

`A060736(A188568(n+1))-1`
-/

namespace A220516.P16214498616834248277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A188568 (n + 1)).toNat - 1

end

end A220516.P16214498616834248277

/-! ## A220516.P7385702506648301408

`A220508(A188568(n+1)-1)`
-/

namespace A220516.P7385702506648301408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 (A188568 (n + 1) - 1).toNat

end

end A220516.P7385702506648301408

/-! ## A220516.P3737290379798720415

`A023443(A081344(n+1))`
-/

namespace A220516.P3737290379798720415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081344 (n + 1)).toNat

end

end A220516.P3737290379798720415

/-! ## A220516.P13053386546678998767

`A023444(A081344(n+1)+1)`
-/

namespace A220516.P13053386546678998767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A081344 (n + 1) + 1).toNat

end

end A220516.P13053386546678998767

/-! ## A220516.P11701125993057915546

`A289207(A081344(n+1)+1)`
-/

namespace A220516.P11701125993057915546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A081344 (n + 1) + 1).toNat

end

end A220516.P11701125993057915546

/-! ## A220516.P13517238926975075393

`A023446(A081344(n+1)+3)`
-/

namespace A220516.P13517238926975075393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A081344 (n + 1) + 3).toNat

end

end A220516.P13517238926975075393

/-! ## A220516.P17126171782977867716

`A140106(2*A081344(n+1))`
-/

namespace A220516.P17126171782977867716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A081344 (n + 1)).toNat

end

end A220516.P17126171782977867716

/-! ## A220516.P3309827315694361369

`A267182(2*A081344(n+1))`
-/

namespace A220516.P3309827315694361369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A081344 (n + 1)).toNat

end

end A220516.P3309827315694361369

/-! ## A220516.P2565375133069034305

`A059169(4*A081344(n+1))`
-/

namespace A220516.P2565375133069034305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A081344 (n + 1)).toNat

end

end A220516.P2565375133069034305

/-!
# A220517: First differences of A225600. Also A141285 and A194446 interleaved.

The programs for A220517, there is no canonical definition to state claims against.
-/

/-! ## A220517.P9366133233734309677

`abs(Δ[A229946(n)])`
-/

namespace A220517.P9366133233734309677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220517.P9366133233734309677

/-! ## A220517.P15862818492069275985

`A000188(Δ[A229946(n)]²)`
-/

namespace A220517.P15862818492069275985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A220517.P15862818492069275985

/-! ## A220517.P17151835268073641548

`A000194(Δ[A229946(n)]²)`
-/

namespace A220517.P17151835268073641548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A220517.P17151835268073641548

/-! ## A220517.P13497063021096936174

`A000196(Δ[A229946(n)]²)`
-/

namespace A220517.P13497063021096936174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A220517.P13497063021096936174

/-! ## A220517.P12781701850429016876

`A003059(Δ[A229946(n)]²)`
-/

namespace A220517.P12781701850429016876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A220517.P12781701850429016876

/-! ## A220517.P6112492093331883267

`A004739(Δ[A229946(n)]²)`
-/

namespace A220517.P6112492093331883267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A220517.P6112492093331883267

/-! ## A220517.P10668144682586037076

`Δ[A229946(n)]*A033999(n)`
-/

namespace A220517.P10668144682586037076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A220517.P10668144682586037076

/-! ## A220517.P11255382057946942083

`gcd(Δ[A229946(n)], A000038(n))`
-/

namespace A220517.P11255382057946942083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A220517.P11255382057946942083

/-! ## A220517.P6082606203973862718

`∑{d}[Δ[A229946(n)], A000010(#)]`
-/

namespace A220517.P6082606203973862718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A220517.P6082606203973862718

/-! ## A220517.P7408279199531557140

`∏{d}[Δ[A229946(n)], A014963(#)]`
-/

namespace A220517.P7408279199531557140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A220517.P7408279199531557140

/-!
# A220518: Numbers n such that A193232(n) is a triangular number.

The programs for A220518, there is no canonical definition to state claims against.
-/

/-! ## A220518.P14005325907349861484

`eq[1, A010054(A193232(n))]`
-/

namespace A220518.P14005325907349861484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A193232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220518.P14005325907349861484

/-! ## A220518.P4120672213211244248

`eq[1, A002260(A193232(n)+1)]`
-/

namespace A220518.P4120672213211244248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A193232 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220518.P4120672213211244248

/-! ## A220518.P2202542811307889261

`record[A173853(n+5)-A004396(A277604(n+2))]`
-/

namespace A220518.P2202542811307889261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173853 (n + 5) - A004396 (A277604 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220518.P2202542811307889261

/-!
# A220519: Permutation of prime numbers in the order of sequential reading the antidiagonals of A220508.

The programs for A220519, there is no canonical definition to state claims against.
-/

/-! ## A220519.P8646943586765982316

`p?[A220508(n)]`
-/

namespace A220519.P8646943586765982316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P8646943586765982316

/-! ## A220519.P6823895928559111737

`p?[A060736(n+1)-1]`
-/

namespace A220519.P6823895928559111737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P6823895928559111737

/-! ## A220519.P4348074823634534681

`A064614(p?[A185728(n+1)])`
-/

namespace A220519.P4348074823634534681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A220519.P4348074823634534681

/-! ## A220519.P8493148816247839689

`p?[A185728(A066182(n+1))]`
-/

namespace A220519.P8493148816247839689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185728 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P8493148816247839689

/-! ## A220519.P9221343426042068362

`filter[A220508(n+1), A010051(#)]`
-/

namespace A220519.P9221343426042068362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A220519.P9221343426042068362

/-! ## A220519.P15711650591783505460

`filter[A220508(n+2), A080339(#)]`
-/

namespace A220519.P15711650591783505460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A220519.P15711650591783505460

/-! ## A220519.P595578653929808869

`p?[A020703(A060734(n+1)+1)]`
-/

namespace A220519.P595578653929808869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A060734 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P595578653929808869

/-! ## A220519.P11310405156876955199

`p?[A060734(A038722(n+1))-1]`
-/

namespace A220519.P11310405156876955199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A038722 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P11310405156876955199

/-! ## A220519.P7174646564016218708

`p?[A060734(A056011(n+1))-1]`
-/

namespace A220519.P7174646564016218708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A056011 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P7174646564016218708

/-! ## A220519.P5475946480707332425

`p?[A060734(A061579(n+1))-1]`
-/

namespace A220519.P5475946480707332425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A061579 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220519.P5475946480707332425

/-!
# A220520: Number of toothpicks and D-toothpicks after n-th stage in the D-toothpick "wide" triangle of the third kind.

The programs for A220520, there is no canonical definition to state claims against.
-/

/-! ## A220520.P6683176556215229659

`A228708(A033483(n))+A194440(n)`
-/

namespace A220520.P6683176556215229659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A033483 n).toNat + A194440 n

end

end A220520.P6683176556215229659

/-! ## A220520.P4222422227060033070

`∑[A228708(A033483(n))+A194441(n)]`
-/

namespace A220520.P4222422227060033070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A033483 n).toNat + A194441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220520.P4222422227060033070

/-! ## A220520.P18238136724697173794

`A194440(n)+A124120(A348976(n+1))`
-/

namespace A220520.P18238136724697173794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 n + A124120 (A348976 (n + 1)).toNat

end

end A220520.P18238136724697173794

/-! ## A220520.P18088376028960329549

`xor(A194440(n), A200214(A167531(n+1)))`
-/

namespace A220520.P18088376028960329549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A194440 n) (A200214 (A167531 (n + 1)).toNat)

end

end A220520.P18088376028960329549

/-!
# A220521: Number of toothpicks or D-toothpicks added at n-th stage in the toothpick structure of A220520.

The programs for A220521, there is no canonical definition to state claims against.
-/

/-! ## A220521.P9614823937497399499

`xor(1, A233761(n+1))+(-1)^n`
-/

namespace A220521.P9614823937497399499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A233761 (n + 1)) + (-1) ^ n

end

end A220521.P9614823937497399499

/-! ## A220521.P12052536669439082554

`A233761(n+1)+and(2, A010009(n))`
-/

namespace A220521.P12052536669439082554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233761 (n + 1) + Int.land 2 (A010009 n)

end

end A220521.P12052536669439082554

/-! ## A220521.P14024938182450516886

`A033999(n)+xor(1, A233761(n+1))`
-/

namespace A220521.P14024938182450516886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + Int.xor 1 (A233761 (n + 1))

end

end A220521.P14024938182450516886

/-! ## A220521.P1720067040445747457

`A009001(2*n)+xor(1, A233761(n+1))`
-/

namespace A220521.P1720067040445747457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) + Int.xor 1 (A233761 (n + 1))

end

end A220521.P1720067040445747457

/-! ## A220521.P17168080259759335752

`Δ[A093051(A220520(n))]`
-/

namespace A220521.P17168080259759335752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 (A220520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220521.P17168080259759335752

/-! ## A220521.P2092536082878750810

`Δ[A267458(n+1)+A233760(n)]`
-/

namespace A220521.P2092536082878750810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (n + 1) + A233760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220521.P2092536082878750810

/-! ## A220521.P2480042731476872883

`Δ[A233760(n)+2*A065033(n)]`
-/

namespace A220521.P2480042731476872883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 n + 2 * A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220521.P2480042731476872883

/-! ## A220521.P5590011051867889946

`Δ[A233760(n)]+and(2, A167193(n+1))`
-/

namespace A220521.P5590011051867889946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.land 2 (A167193 (n + 1))

end

end A220521.P5590011051867889946

/-! ## A220521.P961807641362814895

`Δ[A233760(n)+A005408(A065033(n))]`
-/

namespace A220521.P961807641362814895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 n + A005408 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220521.P961807641362814895

/-! ## A220521.P11106355575811076484

`A220523(n+1)+A233761(n+1)-A233763(n+1)`
-/

namespace A220521.P11106355575811076484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 (n + 1) + (A233761 (n + 1) - A233763 (n + 1))

end

end A220521.P11106355575811076484

/-!
# A220522: Number of toothpicks and D-toothpicks after n-th stage in the D-toothpick "narrow" triangle of the third kind.

The programs for A220522, there is no canonical definition to state claims against.
-/

/-! ## A220522.P17728643592473322974

`∑[A220523(n)]`
-/

namespace A220522.P17728643592473322974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220522.P17728643592473322974

/-! ## A220522.P14870405318866690774

`A220523(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A220522.P14870405318866690774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220523 n + a (A023443 n).toNat

end

end A220522.P14870405318866690774

/-! ## A220522.P9728386753353047448

`∑[A233763(n)+Δ[A267458(n)]]`
-/

namespace A220522.P9728386753353047448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220522.P9728386753353047448

/-! ## A220522.P11227319447298344578

`A220523(n)-ceil(-a(A028310(n)-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A220522.P11227319447298344578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220523 n - (-a (A028310 n - 1).toNat)

end

end A220522.P11227319447298344578

/-! ## A220522.P11665211049981826581

`A220523(n)+A033999(n)²%56*a(n-1)` with `a(0)=0`
-/

namespace A220522.P11665211049981826581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A220523 n + Int.tmod (A033999 n ^ 2) 56 * a (n - 1)

end

end A220522.P11665211049981826581

/-! ## A220522.P11408104573230775532

`∑[A233763(n)+A007814(A271054(n))]`
-/

namespace A220522.P11408104573230775532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n + A007814 (A271054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220522.P11408104573230775532

/-!
# A220523: Number of toothpicks or D-toothpicks added at n-th stage in the structure of the D-toothpick "narrow" triangle of A220522.

The programs for A220523, there is no canonical definition to state claims against.
-/

/-! ## A220523.P16747701154430856231

`Δ[A220522((n-1)%(n+1))]`
-/

namespace A220523.P16747701154430856231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220523.P16747701154430856231

/-! ## A220523.P10457579473815288494

`Δ[A220522(log2(ceil(2^(n-1))))]`
-/

namespace A220523.P10457579473815288494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220523.P10457579473815288494

/-! ## A220523.P16657697937699395132

`abs(Δ[A220522((3*n+1)%(n+1))])`
-/

namespace A220523.P16657697937699395132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 ((3 * n + 1) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A220523.P16657697937699395132

/-! ## A220523.P4185264905584986869

`A233763(n)+Δ[A267458(n)]`
-/

namespace A220523.P4185264905584986869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n + (f1 (n + 1) - f1 n)

end

end A220523.P4185264905584986869

/-! ## A220523.P10410504731299854884

`A233763(n)+A007814(A271054(n))`
-/

namespace A220523.P10410504731299854884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n + A007814 (A271054 n).toNat

end

end A220523.P10410504731299854884

/-! ## A220523.P10607659770424088132

`A233763(n)-2*A057428(Δ[A267458(n)])`
-/

namespace A220523.P10607659770424088132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n - 2 * A057428 (f1 (n + 1) - f1 n).toNat

end

end A220523.P10607659770424088132

/-! ## A220523.P14027216500459370506

`A233763(n)-2*A134824(Δ[A267458(n)])`
-/

namespace A220523.P14027216500459370506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n - 2 * A134824 (f1 (n + 1) - f1 n).toNat

end

end A220523.P14027216500459370506

/-!
# A220524: D-toothpick sequence of the third kind in the first quadrant.

The programs for A220524, there is no canonical definition to state claims against.
-/

/-! ## A220524.P11913058934150352147

`A220514(n)/4`
-/

namespace A220524.P11913058934150352147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220514 n : ℚ) / 4

end

end A220524.P11913058934150352147

/-! ## A220524.P6475158380256852285

`∑[A220525(n)]`
-/

namespace A220524.P6475158380256852285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220524.P6475158380256852285

/-! ## A220524.P6614463476074955143

`∑[A221528(n)/4]`
-/

namespace A220524.P6614463476074955143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221528 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220524.P6614463476074955143

/-! ## A220524.P9607217163285958161

`A002265(∑[A221528(n)])`
-/

namespace A220524.P9607217163285958161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220524.P9607217163285958161

/-! ## A220524.P17517409879556026318

`A110655(∑[A221528(n)])`
-/

namespace A220524.P17517409879556026318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220524.P17517409879556026318

/-! ## A220524.P15704022403756257450

`A110657(∑[A221528(n)])`
-/

namespace A220524.P15704022403756257450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220524.P15704022403756257450

/-! ## A220524.P11646950149751409678

`A131505(∑[A221528(n)])`
-/

namespace A220524.P11646950149751409678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220524.P11646950149751409678

/-! ## A220524.P17389383489813023739

`A134172(∑[A221528(n)])`
-/

namespace A220524.P17389383489813023739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220524.P17389383489813023739

/-! ## A220524.P18221201663761191984

`A174571(∑[A221528(n)])`
-/

namespace A220524.P18221201663761191984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220524.P18221201663761191984

/-!
# A220525: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A220524.

The programs for A220525, there is no canonical definition to state claims against.
-/

/-! ## A220525.P1193303572161282207

`A221528(n)/4`
-/

namespace A220525.P1193303572161282207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221528 n : ℚ) / 4

end

end A220525.P1193303572161282207

/-! ## A220525.P16420537199838393996

`A002265(A221528(n))`
-/

namespace A220525.P16420537199838393996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A221528 n).toNat

end

end A220525.P16420537199838393996

/-! ## A220525.P14595591955411372244

`A008624(A221528(n)+1)`
-/

namespace A220525.P14595591955411372244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A221528 n + 1).toNat

end

end A220525.P14595591955411372244

/-! ## A220525.P17581373420254785213

`A025480(A221528(n)+1)`
-/

namespace A220525.P17581373420254785213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A221528 n + 1).toNat

end

end A220525.P17581373420254785213

/-! ## A220525.P10993166675182322921

`A026922(A221528(n)+1)`
-/

namespace A220525.P10993166675182322921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A221528 n + 1).toNat

end

end A220525.P10993166675182322921

/-! ## A220525.P1123062504335409543

`A059169(A221528(n)+1)`
-/

namespace A220525.P1123062504335409543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A221528 n + 1).toNat

end

end A220525.P1123062504335409543

/-! ## A220525.P14301026738431955828

`A110659(A221528(n)+1)`
-/

namespace A220525.P14301026738431955828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A221528 n + 1).toNat

end

end A220525.P14301026738431955828

/-! ## A220525.P12668209953166074562

`A134172(A221528(n)+1)`
-/

namespace A220525.P12668209953166074562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (A221528 n + 1).toNat

end

end A220525.P12668209953166074562

/-! ## A220525.P2723644870905783616

`A131505(A221528(n)+2)`
-/

namespace A220525.P2723644870905783616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (A221528 n + 2).toNat

end

end A220525.P2723644870905783616

/-! ## A220525.P13824722704854689924

`A025480(or(1, A221528(n)))`
-/

namespace A220525.P13824722704854689924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 1 (A221528 n)).toNat

end

end A220525.P13824722704854689924

/-!
# A220526: Number of toothpicks and D-toothpicks after n-th stage in the structure of the D-toothpick "medium" triangle of the third kind.

The programs for A220526, there is no canonical definition to state claims against.
-/

/-! ## A220526.P6039324293248889334

`∑[A008620(A219492(n))*A220527(n)]`
-/

namespace A220526.P6039324293248889334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A219492 n).toNat * A220527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220526.P6039324293248889334

/-! ## A220526.P4576884295171693809

`∑[A220527(A258009(n))]`
-/

namespace A220526.P4576884295171693809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A258009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220526.P4576884295171693809

/-! ## A220526.P573341112009023487

`∑[A220527(n)%A074873(n)]`
-/

namespace A220526.P573341112009023487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220527 n) (A074873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220526.P573341112009023487

/-! ## A220526.P1237098833458779896

`∑[A220527(n)]%A220502(n+1)`
-/

namespace A220526.P1237098833458779896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A220502 (n + 1))

end

end A220526.P1237098833458779896

/-! ## A220526.P11263859273153118086

`∑[A220527(lt[A220525(2*n), 71])]`
-/

namespace A220526.P11263859273153118086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  71

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220526.P11263859273153118086

/-!
# A220527: Number of toothpicks or D-toothpicks added at n-th stage in the toothpick structure of A220526.

The programs for A220527, there is no canonical definition to state claims against.
-/

/-! ## A220527.P14020696701765433216

`Δ[A220526(A001222(ceil(2^(n-1))))]`
-/

namespace A220527.P14020696701765433216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220526 (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220527.P14020696701765433216

/-!
# A220528: a(n) = n^7 + 7*n + 7^n.

The programs for A220528, the canonical program `A220528.P12186572332892748278` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220528 has offset 0).

The definition of A220528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+7*n+7^n` (program `A220528.P12186572332892748278`, by `A220528.P12186572332892748278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220528.P12186572332892748278

`n^7+7*n+7^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220528

/-- `n^7+7*n+7^n` -/
def P12186572332892748278.Spec : Prop :=
  ∀ n, (P12186572332892748278.a n : ℤ) = A220528 n

theorem P12186572332892748278.correct : P12186572332892748278.Spec := by
  intro n
  simp only [A220528]

end A220528

/-! ## A220528.P8082028201505560064

`abs(A001015(n)+A176972(n)-1)`
-/

namespace A220528.P8082028201505560064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001015 n + (A176972 n - 1)|

end

end A220528.P8082028201505560064

namespace A220528

/-- `abs(A001015(n)+A176972(n)-1)` -/
def P8082028201505560064.Spec : Prop :=
  ∀ n, P8082028201505560064.a n = A220528 n

end A220528

/-! ## A220528.P13340536795738328605

`A000027(A001596(n)+7*n)`
-/

namespace A220528.P13340536795738328605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001596 n + (7 * n : ℤ)).toNat

end

end A220528.P13340536795738328605

namespace A220528

/-- `A000027(A001596(n)+7*n)` -/
def P13340536795738328605.Spec : Prop :=
  ∀ n, P13340536795738328605.a n = A220528 n

end A220528

/-!
# A220529: Equals two maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX2 array.

The programs for A220529, there is no canonical definition to state claims against.
-/

/-! ## A220529.P10107677186532378690

`A220532(∑[n+1]+2)`
-/

namespace A220529.P10107677186532378690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220532 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220529.P10107677186532378690

/-! ## A220529.P10303715594390804853

`A221188(∑[n+1]+2)`
-/

namespace A220529.P10303715594390804853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220529.P10303715594390804853

/-! ## A220529.P2819332033038359287

`record[A220532(n+1)/A156366(n)]`
-/

namespace A220529.P2819332033038359287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220532 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220529.P2819332033038359287

/-! ## A220529.P3243917797348799653

`record[A221188(n+1)/A156366(n)]`
-/

namespace A220529.P3243917797348799653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221188 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220529.P3243917797348799653

/-! ## A220529.P10568497827682838940

`record[A220532(n+1)/A179455(n)]`
-/

namespace A220529.P10568497827682838940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220532 (n + 1) : ℚ) / (A179455 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220529.P10568497827682838940

/-!
# A220530: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A220530, there is no canonical definition to state claims against.
-/

/-! ## A220530.P8017066973934567634

`A220532(∑[n+2]+4)`
-/

namespace A220530.P8017066973934567634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220532 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220530.P8017066973934567634

/-! ## A220530.P9948952485297132300

`and(-1, A220532(A167614(n+1)))`
-/

namespace A220530.P9948952485297132300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220532 (A167614 (n + 1)).toNat)

end

end A220530.P9948952485297132300

/-! ## A220530.P1325023971665834128

`record[A103452(n)*A220532(n+4)]`
-/

namespace A220530.P1325023971665834128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A220532 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220530.P1325023971665834128

/-! ## A220530.P13805243721297363614

`A220532(A167614(n+1))+A025439(n)`
-/

namespace A220530.P13805243721297363614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220532 (A167614 (n + 1)).toNat + A025439 n

end

end A220530.P13805243721297363614

/-!
# A220531: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A220531, there is no canonical definition to state claims against.
-/

/-! ## A220531.P14525546692370410228

`A220532(C(n+4, 2)+4)`
-/

namespace A220531.P14525546692370410228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220532 (Nat.choose (n + 4) 2 + 4)

end

end A220531.P14525546692370410228

/-! ## A220531.P746329269590709673

`A220532(A141214(n)+7)`
-/

namespace A220531.P746329269590709673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220532 (A141214 n + 7).toNat

end

end A220531.P746329269590709673

/-! ## A220531.P11712071395846007004

`A220532(A052905(n)+9)`
-/

namespace A220531.P11712071395846007004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220532 (A052905 n + 9).toNat

end

end A220531.P11712071395846007004

/-!
# A220532: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A220532, there is no canonical definition to state claims against.
-/

/-! ## A220532.P11544894180320568256

`A154470(A221188(n+1))`
-/

namespace A220532.P11544894180320568256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A221188 (n + 1)).toNat

end

end A220532.P11544894180320568256

/-! ## A220532.P2703419772863094112

`A221188(∑[A278657(n)²])`
-/

namespace A220532.P2703419772863094112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220532.P2703419772863094112

/-! ## A220532.P16886330853327310519

`A221188(∑[A278657(n)!])`
-/

namespace A220532.P16886330853327310519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220532.P16886330853327310519

/-! ## A220532.P12678996007256622538

`A221188(A278657(n)²+n)`
-/

namespace A220532.P12678996007256622538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221188 (A278657 n ^ 2 + (n : ℤ)).toNat

end

end A220532.P12678996007256622538

/-! ## A220532.P1579089982993281759

`A060819(4*A221188(n+1))`
-/

namespace A220532.P1579089982993281759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (4 * A221188 (n + 1)).toNat

end

end A220532.P1579089982993281759

/-!
# A220534: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX3 array.

The programs for A220534, there is no canonical definition to state claims against.
-/

/-! ## A220534.P7272055673158879198

`A220537(∑[n+3]+1)`
-/

namespace A220534.P7272055673158879198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220534.P7272055673158879198

/-! ## A220534.P9686780767946384067

`record[A220537(lt[A220537(n+2), n])]`
-/

namespace A220534.P9686780767946384067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220534.P9686780767946384067

/-! ## A220534.P13271389700605070929

`A220537(Δ[A008778(n)])%A262091(n+1)`
-/

namespace A220534.P13271389700605070929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220537 (f1 (n + 1) - f1 n).toNat) (A262091 (n + 1))

end

end A220534.P13271389700605070929

/-! ## A220534.P5767265274836826003

`A220537(A034856(n+2))^A318829(n+1)`
-/

namespace A220534.P5767265274836826003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220537 (A034856 (n + 2)).toNat : ℚ) ^ (A318829 (n + 1) : ℤ)

end

end A220534.P5767265274836826003

/-! ## A220534.P11076716982953624051

`A220537(A034856(n+2))%A096561(n+1)`
-/

namespace A220534.P11076716982953624051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220537 (A034856 (n + 2)).toNat) (A096561 (n + 1))

end

end A220534.P11076716982953624051

/-!
# A220535: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220535, there is no canonical definition to state claims against.
-/

/-! ## A220535.P8269710052617950236

`A220537(∑[n+4]+3)`
-/

namespace A220535.P8269710052617950236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220535.P8269710052617950236

/-! ## A220535.P11916751090592691564

`A220537(A141214(n+1))+A014083(n)`
-/

namespace A220535.P11916751090592691564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A141214 (n + 1)).toNat + A014083 n

end

end A220535.P11916751090592691564

/-! ## A220535.P15266865337437883551

`A220537(A141214(n+1))+A025439(n)`
-/

namespace A220535.P15266865337437883551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A141214 (n + 1)).toNat + A025439 n

end

end A220535.P15266865337437883551

/-! ## A220535.P17290967184108316256

`A220537(A141214(n+1))+A054899(n)`
-/

namespace A220535.P17290967184108316256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A141214 (n + 1)).toNat + A054899 n

end

end A220535.P17290967184108316256

/-!
# A220536: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220536, there is no canonical definition to state claims against.
-/

/-! ## A220536.P7022508857653273854

`A220537(∑[n+5]+6)`
-/

namespace A220536.P7022508857653273854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220536.P7022508857653273854

/-!
# A220538: Equals one maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 2 X n array.

The programs for A220538, the canonical program `A220538.P10033215488738800663` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220538 has offset 1).

The definition of A220538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220538.P10033215488738800663

`ogf((1-7x^2+18x^3-36x^4+42x^5-33x^6+43x^7-39x^8+38x^9-24x^10+9x^11)/(1-4x+4x^2-3x^3+x^4+7x^5+7x^6-7x^8+6x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220538

/-- `ogf((1-7x^2+18x^3-36x^4+42x^5-33x^6+43x^7-39x^8+38x^9-24x^10+9x^11)/(1-4x+4x^2-3x^3+x^4+7x^5+7x^6-7x^8+6x^9))` -/
def P10033215488738800663.Spec : Prop :=
  ∀ n, P10033215488738800663.a n = A220538 (n + 1)

theorem P10033215488738800663.correct : P10033215488738800663.Spec := by
  intro n
  simp only [A220538, Nat.add_sub_cancel]

end A220538

/-! ## A220538.P15592073406745506273

`A220537(∑[n+1]+2)`
-/

namespace A220538.P15592073406745506273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220538.P15592073406745506273

namespace A220538

/-- `A220537(∑[n+1]+2)` -/
def P15592073406745506273.Spec : Prop :=
  ∀ n, P15592073406745506273.a n = A220538 (n + 1)

end A220538

/-! ## A220538.P1163734164435827167

`record[A185018(n)*A220537(n+3)]`
-/

namespace A220538.P1163734164435827167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A220537 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220538.P1163734164435827167

namespace A220538

/-- `record[A185018(n)*A220537(n+3)]` -/
def P1163734164435827167.Spec : Prop :=
  ∀ n, P1163734164435827167.a n = A220538 (n + 1)

end A220538

/-! ## A220538.P8398786168942904807

`record[gcd(A185411(n), A220537(n+2))]`
-/

namespace A220538.P8398786168942904807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185411 n) (A220537 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220538.P8398786168942904807

namespace A220538

/-- `record[gcd(A185411(n), A220537(n+2))]` -/
def P8398786168942904807.Spec : Prop :=
  ∀ n, (P8398786168942904807.a n : ℤ) = A220538 (n + 1)

end A220538

/-! ## A220538.P6806484087874591916

`record[gcd(A185158(n+1), A220537(n+1))]`
-/

namespace A220538.P6806484087874591916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185158 (n + 1)) (A220537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220538.P6806484087874591916

namespace A220538

/-- `record[gcd(A185158(n+1), A220537(n+1))]` -/
def P6806484087874591916.Spec : Prop :=
  ∀ n, (P6806484087874591916.a n : ℤ) = A220538 (n + 1)

end A220538

/-!
# A220539: Equals one maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A220539, there is no canonical definition to state claims against.
-/

/-! ## A220539.P16101812874730456619

`A220537(∑[n+2]+4)`
-/

namespace A220539.P16101812874730456619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220539.P16101812874730456619

/-! ## A220539.P15635595881965616908

`record[gcd(A220504(n+1), A220537(n+5))]`
-/

namespace A220539.P15635595881965616908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220504 (n + 1)) (A220537 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220539.P15635595881965616908

/-! ## A220539.P15823687494509626742

`A220537(A167614(n+1))+A014083(n)`
-/

namespace A220539.P15823687494509626742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A167614 (n + 1)).toNat + A014083 n

end

end A220539.P15823687494509626742

/-! ## A220539.P12263843487041320668

`A220537(A167614(n+1))+A025439(n)`
-/

namespace A220539.P12263843487041320668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A167614 (n + 1)).toNat + A025439 n

end

end A220539.P12263843487041320668

/-! ## A220539.P56530032711194361

`A220537(A167614(n+1))+A025442(n)`
-/

namespace A220539.P56530032711194361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A167614 (n + 1)).toNat + A025442 n

end

end A220539.P56530032711194361

/-!
# A220540: Equals one maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 4Xn array.

The programs for A220540, there is no canonical definition to state claims against.
-/

/-! ## A220540.P9461104869545588819

`A220537(A141214(n)+7)`
-/

namespace A220540.P9461104869545588819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A141214 n + 7).toNat

end

end A220540.P9461104869545588819

/-! ## A220540.P8919782134965205302

`A220537(A052905(n)+9)`
-/

namespace A220540.P8919782134965205302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A052905 n + 9).toNat

end

end A220540.P8919782134965205302

/-! ## A220540.P4208743313707510923

`A220537(A055999(n)+10)`
-/

namespace A220540.P4208743313707510923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A055999 n + 10).toNat

end

end A220540.P4208743313707510923

/-! ## A220540.P17939136732794643246

`A220537(eq[5, A066657(n)])`
-/

namespace A220540.P17939136732794643246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220540.P17939136732794643246

/-! ## A220540.P5814897614659521791

`A220537(A167614(n+2)+1)`
-/

namespace A220540.P5814897614659521791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A167614 (n + 2) + 1).toNat

end

end A220540.P5814897614659521791

/-!
# A220541: Equals one maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, diagonal and antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A220541, there is no canonical definition to state claims against.
-/

/-! ## A220541.P3888096517325312717

`A220537(A167499(n+3))`
-/

namespace A220541.P3888096517325312717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A167499 (n + 3)).toNat

end

end A220541.P3888096517325312717

/-! ## A220541.P3666554647335818721

`A220537(A155212(n)+13)`
-/

namespace A220541.P3666554647335818721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A155212 n + 13).toNat

end

end A220541.P3666554647335818721

/-! ## A220541.P2631269745712718722

`A220537(A056000(n)+15)`
-/

namespace A220541.P2631269745712718722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (A056000 n + 15).toNat

end

end A220541.P2631269745712718722

/-! ## A220541.P12507591907458655485

`A220537(eq[7, A066657(n)])`
-/

namespace A220541.P12507591907458655485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220541.P12507591907458655485

/-!
# A220542: Equals one maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..2 n X 2 array.

The programs for A220542, the canonical program `A220542.P7138631845257528073` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220542 has offset 1).

The definition of A220542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220542.P7138631845257528073

`ogf((2-4x+4x^2+16x^3+60x^4+116x^5+136x^6+136x^7+90x^8+24x^9)/(1-6x+7x^2+6x^3-7x^4-4x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220542

/-- `ogf((2-4x+4x^2+16x^3+60x^4+116x^5+136x^6+136x^7+90x^8+24x^9)/(1-6x+7x^2+6x^3-7x^4-4x^5))` -/
def P7138631845257528073.Spec : Prop :=
  ∀ n, P7138631845257528073.a n = A220542 (n + 1)

theorem P7138631845257528073.correct : P7138631845257528073.Spec := by
  intro n
  simp only [A220542, Nat.add_sub_cancel]

end A220542

/-! ## A220542.P18235659649194965707

`A220545(∑[n+1]+2)`
-/

namespace A220542.P18235659649194965707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220542.P18235659649194965707

namespace A220542

/-- `A220545(∑[n+1]+2)` -/
def P18235659649194965707.Spec : Prop :=
  ∀ n, P18235659649194965707.a n = A220542 (n + 1)

end A220542

/-! ## A220542.P17169029337018009017

`A220751(∑[n+1]+2)`
-/

namespace A220542.P17169029337018009017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220542.P17169029337018009017

namespace A220542

/-- `A220751(∑[n+1]+2)` -/
def P17169029337018009017.Spec : Prop :=
  ∀ n, P17169029337018009017.a n = A220542 (n + 1)

end A220542

/-! ## A220542.P1201377849670695399

`record[gcd(A092921(n), A220751(n+3))]`
-/

namespace A220542.P1201377849670695399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A220751 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220542.P1201377849670695399

namespace A220542

/-- `record[gcd(A092921(n), A220751(n+3))]` -/
def P1201377849670695399.Spec : Prop :=
  ∀ n, (P1201377849670695399.a n : ℤ) = A220542 (n + 1)

end A220542

/-! ## A220542.P2125287786172547997

`record[A155076(n+1)*A220545(n+3)]`
-/

namespace A220542.P2125287786172547997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155076 (n + 1) * A220545 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220542.P2125287786172547997

namespace A220542

/-- `record[A155076(n+1)*A220545(n+3)]` -/
def P2125287786172547997.Spec : Prop :=
  ∀ n, P2125287786172547997.a n = A220542 (n + 1)

end A220542

/-!
# A220543: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..2 nX3 array.

The programs for A220543, there is no canonical definition to state claims against.
-/

/-! ## A220543.P9930707958271997554

`A220545(∑[n+2]+4)`
-/

namespace A220543.P9930707958271997554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220543.P9930707958271997554

/-! ## A220543.P9156101503810767114

`A220545(A167614(n+1))+A025442(n)`
-/

namespace A220543.P9156101503810767114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A167614 (n + 1)).toNat + A025442 n

end

end A220543.P9156101503810767114

/-! ## A220543.P15116315691806500155

`A220545(A167614(n+1))+A025465(n)`
-/

namespace A220543.P15116315691806500155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A167614 (n + 1)).toNat + A025465 n

end

end A220543.P15116315691806500155

/-! ## A220543.P14904006987774427941

`A220545(A167614(n+1))+A064459(n)`
-/

namespace A220543.P14904006987774427941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A167614 (n + 1)).toNat + A064459 n

end

end A220543.P14904006987774427941

/-! ## A220543.P13555484237322350738

`A220545(A167614(n+1))+A069816(n)`
-/

namespace A220543.P13555484237322350738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A167614 (n + 1)).toNat + A069816 n

end

end A220543.P13555484237322350738

/-!
# A220544: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..2 nX4 array.

The programs for A220544, there is no canonical definition to state claims against.
-/

/-! ## A220544.P15780156611878240388

`A220545(A374004(n+1))`
-/

namespace A220544.P15780156611878240388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A374004 (n + 1)).toNat

end

end A220544.P15780156611878240388

/-! ## A220544.P4607775456108068857

`A220545(A141214(n)+7)`
-/

namespace A220544.P4607775456108068857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A141214 n + 7).toNat

end

end A220544.P4607775456108068857

/-! ## A220544.P15698343573490157098

`A220545(A052905(n)+9)`
-/

namespace A220544.P15698343573490157098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A052905 n + 9).toNat

end

end A220544.P15698343573490157098

/-! ## A220544.P5675965477979274871

`A220545(A055999(n)+10)`
-/

namespace A220544.P5675965477979274871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220545 (A055999 n + 10).toNat

end

end A220544.P5675965477979274871

/-!
# A220545: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..2 nXk array.

The programs for A220545, there is no canonical definition to state claims against.
-/

/-! ## A220545.P6801814619594963985

`A004151(A220751(n+1))`
-/

namespace A220545.P6801814619594963985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A220751 (n + 1)).toNat

end

end A220545.P6801814619594963985

/-! ## A220545.P1480275940123694817

`A220751(∑[∑[A111332(n)]])`
-/

namespace A220545.P1480275940123694817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220545.P1480275940123694817

/-! ## A220545.P6855115763721068886

`A023443(A220751(n+1)+1)`
-/

namespace A220545.P6855115763721068886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220751 (n + 1) + 1).toNat

end

end A220545.P6855115763721068886

/-! ## A220545.P13263450904748138920

`A023444(A220751(n+1)+2)`
-/

namespace A220545.P13263450904748138920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A220751 (n + 1) + 2).toNat

end

end A220545.P13263450904748138920

/-! ## A220545.P17137221008008243683

`A289207(A220751(n+1)+2)`
-/

namespace A220545.P17137221008008243683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A220751 (n + 1) + 2).toNat

end

end A220545.P17137221008008243683

/-!
# A220546: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220546, there is no canonical definition to state claims against.
-/

/-! ## A220546.P10173453575828180325

`A220553(∑[4*n]+1)`
-/

namespace A220546.P10173453575828180325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220546.P10173453575828180325

/-! ## A220546.P8705677964178455180

`record[A220553(A330613(n+1))]`
-/

namespace A220546.P8705677964178455180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220546.P8705677964178455180

/-! ## A220546.P13065685497257537625

`record[A003982(n)*A220553(n+1)]`
-/

namespace A220546.P13065685497257537625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220546.P13065685497257537625

/-! ## A220546.P9829191563850277767

`record[gcd(A112467(n), A220553(n+1))]`
-/

namespace A220546.P9829191563850277767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A220553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220546.P9829191563850277767

/-! ## A220546.P6946933900179806482

`A220553(A001844(n))+A185238(n)`
-/

namespace A220546.P6946933900179806482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A001844 n).toNat + A185238 n

end

end A220546.P6946933900179806482

/-!
# A220547: Number of ways to reciprocally link elements of an n X 2 array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220547, the canonical program `A220547.P9141774141915285649` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220547 has offset 1).

The definition of A220547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220547.P6433686651931542387

`ogf((2+2x-x^2-x^3)/(1-3x-3x^2+x^3+x^4))`
-/

namespace A220547.P6433686651931542387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -1, -1] [1, -3, -3, 1, 1] n

end

end A220547.P6433686651931542387

namespace A220547

/-- `ogf((2+2x-x^2-x^3)/(1-3x-3x^2+x^3+x^4))` -/
def P6433686651931542387.Spec : Prop :=
  ∀ n, P6433686651931542387.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P9141774141915285649

`3*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=2, a(1)=8, a(2)=29, a(3)=108`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220547

/-- `3*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P9141774141915285649.Spec : Prop :=
  ∀ n, P9141774141915285649.a n = A220547 (n + 1)

theorem P9141774141915285649.correct : P9141774141915285649.Spec := by
  intro n
  simp only [A220547, Nat.add_sub_cancel]

end A220547

/-! ## A220547.P5065284864892835972

`A000078(2*n+5)`
-/

namespace A220547.P5065284864892835972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (2 * n + 5)

end

end A220547.P5065284864892835972

namespace A220547

/-- `A000078(2*n+5)` -/
def P5065284864892835972.Spec : Prop :=
  ∀ n, P5065284864892835972.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P16450609191299574788

`A089074(Δ[n²])+1`
-/

namespace A220547.P16450609191299574788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A220547.P16450609191299574788

namespace A220547

/-- `A089074(Δ[n²])+1` -/
def P16450609191299574788.Spec : Prop :=
  ∀ n, P16450609191299574788.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P6761134746113545751

`A135492(2*(n+1))/2`
-/

namespace A220547.P6761134746113545751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135492 (2 * (n + 1)) : ℚ) / 2

end

end A220547.P6761134746113545751

namespace A220547

/-- `A135492(2*(n+1))/2` -/
def P6761134746113545751.Spec : Prop :=
  ∀ n, P6761134746113545751.a n = (A220547 (n + 1) : ℚ)

end A220547

/-! ## A220547.P13567922998582277241

`A274759(6*(n+1)+1)`
-/

namespace A220547.P13567922998582277241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (6 * (n + 1) + 1)

end

end A220547.P13567922998582277241

namespace A220547

/-- `A274759(6*(n+1)+1)` -/
def P13567922998582277241.Spec : Prop :=
  ∀ n, P13567922998582277241.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P12594812644963562371

`record[A000078(n^(n%2)+4)]`
-/

namespace A220547.P12594812644963562371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n ^ (n % 2) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220547.P12594812644963562371

namespace A220547

/-- `record[A000078(n^(n%2)+4)]` -/
def P12594812644963562371.Spec : Prop :=
  ∀ n, P12594812644963562371.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P15491195716095973780

`A251705(2*n)+A001648(2*n+1)`
-/

namespace A220547.P15491195716095973780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (2 * n) + A001648 (2 * n + 1)

end

end A220547.P15491195716095973780

namespace A220547

/-- `A251705(2*n)+A001648(2*n+1)` -/
def P15491195716095973780.Spec : Prop :=
  ∀ n, P15491195716095973780.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P4867808395009165034

`A251705(2*n)+A073817(2*n+1)`
-/

namespace A220547.P4867808395009165034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (2 * n) + A073817 (2 * n + 1)

end

end A220547.P4867808395009165034

namespace A220547

/-- `A251705(2*n)+A073817(2*n+1)` -/
def P4867808395009165034.Spec : Prop :=
  ∀ n, P4867808395009165034.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P12819063370711291881

`A107066(2*(n+1))-A107066(2*n+1)`
-/

namespace A220547.P12819063370711291881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 (2 * (n + 1)) - A107066 (2 * n + 1)

end

end A220547.P12819063370711291881

namespace A220547

/-- `A107066(2*(n+1))-A107066(2*n+1)` -/
def P12819063370711291881.Spec : Prop :=
  ∀ n, P12819063370711291881.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P7580625794392137265

`A001631(2*(n+1))+A000288(2*n+3)`
-/

namespace A220547.P7580625794392137265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (2 * (n + 1)) + A000288 (2 * n + 3)

end

end A220547.P7580625794392137265

namespace A220547

/-- `A001631(2*(n+1))+A000288(2*n+3)` -/
def P7580625794392137265.Spec : Prop :=
  ∀ n, P7580625794392137265.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P3324705397708204493

`A001630(2*n+1)+A001630(2*n+3)`
-/

namespace A220547.P3324705397708204493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (2 * n + 1) + A001630 (2 * n + 3)

end

end A220547.P3324705397708204493

namespace A220547

/-- `A001630(2*n+1)+A001630(2*n+3)` -/
def P3324705397708204493.Spec : Prop :=
  ∀ n, P3324705397708204493.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P13696877951602505598

`A251704(2*n+3)+A251655(2*(n+1))`
-/

namespace A220547.P13696877951602505598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (2 * n + 3) + A251655 (2 * (n + 1))

end

end A220547.P13696877951602505598

namespace A220547

/-- `A251704(2*n+3)+A251655(2*(n+1))` -/
def P13696877951602505598.Spec : Prop :=
  ∀ n, P13696877951602505598.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P4428517269267063507

`(A001648(2*(n+1))+A000288(2*n+1))/2`
-/

namespace A220547.P4428517269267063507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (2 * (n + 1)) + A000288 (2 * n + 1) : ℚ) / 2

end

end A220547.P4428517269267063507

namespace A220547

/-- `(A001648(2*(n+1))+A000288(2*n+1))/2` -/
def P4428517269267063507.Spec : Prop :=
  ∀ n, P4428517269267063507.a n = (A220547 (n + 1) : ℚ)

end A220547

/-! ## A220547.P9421799189843033040

`Δ[A014610(2*n)]-A014610(2*n+1)`
-/

namespace A220547.P9421799189843033040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014610 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014610 (2 * n + 1)

end

end A220547.P9421799189843033040

namespace A220547

/-- `Δ[A014610(2*n)]-A014610(2*n+1)` -/
def P9421799189843033040.Spec : Prop :=
  ∀ n, P9421799189843033040.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P4102651157265465688

`2*A000079(n)²-A050232(2*n+1)`
-/

namespace A220547.P4102651157265465688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A050232 (2 * n + 1)

end

end A220547.P4102651157265465688

namespace A220547

/-- `2*A000079(n)²-A050232(2*n+1)` -/
def P4102651157265465688.Spec : Prop :=
  ∀ n, P4102651157265465688.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P5415372702987560588

`A000079(2*n+1)-A050232(2*n+1)`
-/

namespace A220547.P5415372702987560588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A050232 (2 * n + 1)

end

end A220547.P5415372702987560588

namespace A220547

/-- `A000079(2*n+1)-A050232(2*n+1)` -/
def P5415372702987560588.Spec : Prop :=
  ∀ n, P5415372702987560588.a n = A220547 (n + 1)

end A220547

/-! ## A220547.P16140442005590335788

`A011782(2*(n+1))-A050232(2*n+1)`
-/

namespace A220547.P16140442005590335788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * (n + 1)) - A050232 (2 * n + 1)

end

end A220547.P16140442005590335788

namespace A220547

/-- `A011782(2*(n+1))-A050232(2*n+1)` -/
def P16140442005590335788.Spec : Prop :=
  ∀ n, P16140442005590335788.a n = A220547 (n + 1)

end A220547

/-!
# A220548: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220548, the canonical program `A220548.P9166692367753925215` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220548 has offset 1).

The definition of A220548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220548.P9166692367753925215

`ogf((3+11x-x^2-14x^3+2x^4+4x^5-x^6)/(1-6x-17x^2+3x^3+17x^4-3x^5-4x^6+x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220548

/-- `ogf((3+11x-x^2-14x^3+2x^4+4x^5-x^6)/(1-6x-17x^2+3x^3+17x^4-3x^5-4x^6+x^7))` -/
def P9166692367753925215.Spec : Prop :=
  ∀ n, P9166692367753925215.a n = A220548 (n + 1)

theorem P9166692367753925215.correct : P9166692367753925215.Spec := by
  intro n
  simp only [A220548, Nat.add_sub_cancel]

end A220548

/-! ## A220548.P2982398851382563811

`A220553(∑[n+2]+4)`
-/

namespace A220548.P2982398851382563811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220548.P2982398851382563811

namespace A220548

/-- `A220553(∑[n+2]+4)` -/
def P2982398851382563811.Spec : Prop :=
  ∀ n, P2982398851382563811.a n = A220548 (n + 1)

end A220548

/-! ## A220548.P16963701554256061961

`A220553(A167614(n+1))+A185284(n)`
-/

namespace A220548.P16963701554256061961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A167614 (n + 1)).toNat + A185284 n

end

end A220548.P16963701554256061961

namespace A220548

/-- `A220553(A167614(n+1))+A185284(n)` -/
def P16963701554256061961.Spec : Prop :=
  ∀ n, P16963701554256061961.a n = A220548 (n + 1)

end A220548

/-! ## A220548.P15432530572825786744

`lcm(A033999(n), A220553(A167614(n+1)))`
-/

namespace A220548.P15432530572825786744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A220553 (A167614 (n + 1)).toNat)

end

end A220548.P15432530572825786744

namespace A220548

/-- `lcm(A033999(n), A220553(A167614(n+1)))` -/
def P15432530572825786744.Spec : Prop :=
  ∀ n, (P15432530572825786744.a n : ℤ) = A220548 (n + 1)

end A220548

/-! ## A220548.P14853355005889100586

`or(A000007(n), A220553(A167614(n+1)))`
-/

namespace A220548.P14853355005889100586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220553 (A167614 (n + 1)).toNat)

end

end A220548.P14853355005889100586

namespace A220548

/-- `or(A000007(n), A220553(A167614(n+1)))` -/
def P14853355005889100586.Spec : Prop :=
  ∀ n, P14853355005889100586.a n = A220548 (n + 1)

end A220548

/-!
# A220549: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220549, there is no canonical definition to state claims against.
-/

/-! ## A220549.P12069100758705839814

`A220553(A374004(n+1))`
-/

namespace A220549.P12069100758705839814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A374004 (n + 1)).toNat

end

end A220549.P12069100758705839814

/-! ## A220549.P17774429278781832847

`A220553(A052905(n)+9)`
-/

namespace A220549.P17774429278781832847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A052905 n + 9).toNat

end

end A220549.P17774429278781832847

/-! ## A220549.P11835918851786662619

`A220553(A055999(n)+10)`
-/

namespace A220549.P11835918851786662619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A055999 n + 10).toNat

end

end A220549.P11835918851786662619

/-! ## A220549.P15915018838097703079

`A220553(A167614(n+2)+1)`
-/

namespace A220549.P15915018838097703079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A167614 (n + 2) + 1).toNat

end

end A220549.P15915018838097703079

/-! ## A220549.P17989463295041449013

`A220553(eq[5, A131818(n+1)])`
-/

namespace A220549.P17989463295041449013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220549.P17989463295041449013

/-!
# A220550: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220550, there is no canonical definition to state claims against.
-/

/-! ## A220550.P11475683657813010279

`A220553(A374005(n+1))`
-/

namespace A220550.P11475683657813010279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A374005 (n + 1)).toNat

end

end A220550.P11475683657813010279

/-! ## A220550.P12744262969983406752

`A220553(A167499(n+3))`
-/

namespace A220550.P12744262969983406752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A167499 (n + 3)).toNat

end

end A220550.P12744262969983406752

/-! ## A220550.P10126273636652216076

`A220553(A167614(n+3)+2)`
-/

namespace A220550.P10126273636652216076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A167614 (n + 3) + 2).toNat

end

end A220550.P10126273636652216076

/-! ## A220550.P9766466963208466412

`A220553(A000217(n+4)+5)`
-/

namespace A220550.P9766466963208466412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A000217 (n + 4) + 5).toNat

end

end A220550.P9766466963208466412

/-! ## A220550.P13719053080504731052

`A220553(eq[6, A131818(n+1)])`
-/

namespace A220550.P13719053080504731052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220550.P13719053080504731052

/-!
# A220551: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220551, there is no canonical definition to state claims against.
-/

/-! ## A220551.P14178917505509475149

`A220553(A374007(n+1))`
-/

namespace A220551.P14178917505509475149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A374007 (n + 1)).toNat

end

end A220551.P14178917505509475149

/-! ## A220551.P6023160980774575033

`A220553(A000096(n+4)+7)`
-/

namespace A220551.P6023160980774575033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A000096 (n + 4) + 7).toNat

end

end A220551.P6023160980774575033

/-! ## A220551.P11736213904318759222

`A220553(A000217(n+5)+6)`
-/

namespace A220551.P11736213904318759222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A000217 (n + 5) + 6).toNat

end

end A220551.P11736213904318759222

/-! ## A220551.P8430049470362905123

`A220553(eq[7, A131818(n+1)])`
-/

namespace A220551.P8430049470362905123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220551.P8430049470362905123

/-! ## A220551.P5617942068084013252

`A220553(A052905(n+3))`
-/

namespace A220551.P5617942068084013252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A052905 (n + 3)).toNat

end

end A220551.P5617942068084013252

/-!
# A220552: Number of ways to reciprocally link elements of an n X 7 array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220552, there is no canonical definition to state claims against.
-/

/-! ## A220552.P145582946319485921

`A220553(A374008(n+1))`
-/

namespace A220552.P145582946319485921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A374008 (n + 1)).toNat

end

end A220552.P145582946319485921

/-! ## A220552.P3349405272522679883

`A220553(eq[8, A131818(n+1)])`
-/

namespace A220552.P3349405272522679883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220552.P3349405272522679883

/-! ## A220552.P18005002391151438095

`A220553(A055999(n+4))`
-/

namespace A220552.P18005002391151438095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (A055999 (n + 4)).toNat

end

end A220552.P18005002391151438095

/-! ## A220552.P14007702879879934269

`A220553(eq[4, A219347(n)])`
-/

namespace A220552.P14007702879879934269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220552.P14007702879879934269

/-! ## A220552.P5197312056650579374

`A220553(eq[6, A193592(n)])`
-/

namespace A220552.P5197312056650579374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220552.P5197312056650579374

/-!
# A220553: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly one horizontal, vertical or antidiagonal neighbor.

The programs for A220553, there is no canonical definition to state claims against.
-/

/-! ## A220553.P10104040010185478697

`A203371(n+1)-A275947(A121449(n))`
-/

namespace A220553.P10104040010185478697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (n + 1) - A275947 (A121449 n).toNat

end

end A220553.P10104040010185478697

/-! ## A220553.P16155310669636629138

`A203371(n+1)-A357621(A217227(n+1))`
-/

namespace A220553.P16155310669636629138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203371 (n + 1) - A357621 (A217227 (n + 1)).toNat

end

end A220553.P16155310669636629138

/-!
# A220556: Square array T(n,k) = ((n+k-1)*(n+k-2)/2+n)^k, n,k > 0 read by antidiagonals.

The programs for A220556, the canonical program `A220556.P9202644970290283826` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220556 has offset 1).

The definition of A220556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220556.P9202644970290283826

`(n+1)^A004736(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A220556

/-- `(n+1)^A004736(n+1)` -/
def P9202644970290283826.Spec : Prop :=
  ∀ n, P9202644970290283826.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P7739549622498741013

`(n+1)^(1+row(n)-col(n))`
-/

namespace A220556.P7739549622498741013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ)

end

end A220556.P7739549622498741013

namespace A220556

/-- `(n+1)^(1+row(n)-col(n))` -/
def P7739549622498741013.Spec : Prop :=
  ∀ n, P7739549622498741013.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P2234878029450472691

`(n+1)^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A220556.P2234878029450472691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A220556.P2234878029450472691

namespace A220556

/-- `(n+1)^(C(comp[∑[n]]-n, 2)-n)` -/
def P2234878029450472691.Spec : Prop :=
  ∀ n, P2234878029450472691.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P11803523907680640288

`(n+1)^(comp[∑[n]]-n-col(n)-1)`
-/

namespace A220556.P11803523907680640288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1 : ℤ)

end

end A220556.P11803523907680640288

namespace A220556

/-- `(n+1)^(comp[∑[n]]-n-col(n)-1)` -/
def P11803523907680640288.Spec : Prop :=
  ∀ n, P11803523907680640288.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P7080042454866432481

`(n+1)^(A025581(n)+1)`
-/

namespace A220556.P7080042454866432481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A220556.P7080042454866432481

namespace A220556

/-- `(n+1)^(A025581(n)+1)` -/
def P7080042454866432481.Spec : Prop :=
  ∀ n, P7080042454866432481.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P10283469691159546139

`(n+1)^sqrt(A055461(n+1))`
-/

namespace A220556.P10283469691159546139
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.sqrt (A055461 (n + 1) : ℝ))

end

end A220556.P10283469691159546139

namespace A220556

/-- `(n+1)^sqrt(A055461(n+1))` -/
def P10283469691159546139.Spec : Prop :=
  ∀ n, P10283469691159546139.a n = (A220556 (n + 1) : ℝ)

end A220556

/-! ## A220556.P12059953338097533073

`sqrt(n+1)^A212012(n+1)`
-/

namespace A220556.P12059953338097533073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A212012 (n + 1) : ℤ)

end

end A220556.P12059953338097533073

namespace A220556

/-- `sqrt(n+1)^A212012(n+1)` -/
def P12059953338097533073.Spec : Prop :=
  ∀ n, P12059953338097533073.a n = (A220556 (n + 1) : ℝ)

end A220556

/-! ## A220556.P5051109000086461771

`(n+1)^A057555(2*(n+1))`
-/

namespace A220556.P5051109000086461771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A057555 (2 * (n + 1)) : ℤ)

end

end A220556.P5051109000086461771

namespace A220556

/-- `(n+1)^A057555(2*(n+1))` -/
def P5051109000086461771.Spec : Prop :=
  ∀ n, P5051109000086461771.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P4632462277806041464

`(n+1)^(A127739(n+1)-n)`
-/

namespace A220556.P4632462277806041464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A127739 (n + 1) - (n : ℤ) : ℤ)

end

end A220556.P4632462277806041464

namespace A220556

/-- `(n+1)^(A127739(n+1)-n)` -/
def P4632462277806041464.Spec : Prop :=
  ∀ n, P4632462277806041464.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P16872623110622743044

`(n+1)^A002260(A038722(n+1))`
-/

namespace A220556.P16872623110622743044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A002260 (A038722 (n + 1)).toNat : ℤ)

end

end A220556.P16872623110622743044

namespace A220556

/-- `(n+1)^A002260(A038722(n+1))` -/
def P16872623110622743044.Spec : Prop :=
  ∀ n, P16872623110622743044.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P1525238608207794486

`(n+1)^A330439(A330587(n+1))`
-/

namespace A220556.P1525238608207794486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A330439 (A330587 (n + 1)).toNat : ℤ)

end

end A220556.P1525238608207794486

namespace A220556

/-- `(n+1)^A330439(A330587(n+1))` -/
def P1525238608207794486.Spec : Prop :=
  ∀ n, P1525238608207794486.a n = (A220556 (n + 1) : ℚ)

end A220556

/-! ## A220556.P2161972176104066449

`root(gcd(n+1, A270710(n)), 1/A004736(n+1))`
-/

namespace A220556.P2161972176104066449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A270710 n) : ℝ) ^ (1 / (1 / (A004736 (n + 1) : ℚ) : ℝ))

end

end A220556.P2161972176104066449

namespace A220556

/-- `root(gcd(n+1, A270710(n)), 1/A004736(n+1))` -/
def P2161972176104066449.Spec : Prop :=
  ∀ n, P2161972176104066449.a n = (A220556 (n + 1) : ℝ)

end A220556

/-! ## A220556.P14307748573399273312

`sqrt((n+1)^A212012(n+1))`
-/

namespace A220556.P14307748573399273312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ (A212012 (n + 1) : ℤ) : ℝ)

end

end A220556.P14307748573399273312

namespace A220556

/-- `sqrt((n+1)^A212012(n+1))` -/
def P14307748573399273312.Spec : Prop :=
  ∀ n, P14307748573399273312.a n = (A220556 (n + 1) : ℝ)

end A220556

/-! ## A220556.P11739499815288745702

`(n+1)^A218828(∑[n+1])`
-/

namespace A220556.P11739499815288745702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A218828 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A220556.P11739499815288745702

namespace A220556

/-- `(n+1)^A218828(∑[n+1])` -/
def P11739499815288745702.Spec : Prop :=
  ∀ n, P11739499815288745702.a n = (A220556 (n + 1) : ℚ)

end A220556

/-!
# A220557: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220557, there is no canonical definition to state claims against.
-/

/-! ## A220557.P3805622588105637220

`A220562(∑[4*n]+1)`
-/

namespace A220557.P3805622588105637220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220557.P3805622588105637220

/-! ## A220557.P16954853896224147689

`record[A003982(n)*A220562(n+1)]`
-/

namespace A220557.P16954853896224147689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220557.P16954853896224147689

/-! ## A220557.P12414476093525504058

`record[gcd(A141692(n), A220562(n+1))]`
-/

namespace A220557.P12414476093525504058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141692 n) (A220562 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220557.P12414476093525504058

/-! ## A220557.P5553784105939112346

`record[A203994(n+1)*A220562(n+1)]`
-/

namespace A220557.P5553784105939112346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A220562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220557.P5553784105939112346

/-! ## A220557.P3297195776583576315

`A000108(C(2, n+2))*A220562(A001844(n))`
-/

namespace A220557.P3297195776583576315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A220562 (A001844 n).toNat

end

end A220557.P3297195776583576315

/-!
# A220558: Number of ways to reciprocally link elements of an n X 4 array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220558, the canonical program `A220558.P8497861010132111363` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220558 has offset 1).

The definition of A220558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220558.P8497861010132111363

`ogf((5-8x-2x^2)/(1-11x+17x^2-7x^3+x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220558

/-- `ogf((5-8x-2x^2)/(1-11x+17x^2-7x^3+x^4))` -/
def P8497861010132111363.Spec : Prop :=
  ∀ n, P8497861010132111363.a n = A220558 (n + 1)

theorem P8497861010132111363.correct : P8497861010132111363.Spec := by
  intro n
  simp only [A220558, Nat.add_sub_cancel]

end A220558

/-! ## A220558.P13705327100608670571

`A220562(A141214(n+1))`
-/

namespace A220558.P13705327100608670571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A141214 (n + 1)).toNat

end

end A220558.P13705327100608670571

namespace A220558

/-- `A220562(A141214(n+1))` -/
def P13705327100608670571.Spec : Prop :=
  ∀ n, P13705327100608670571.a n = A220558 (n + 1)

end A220558

/-! ## A220558.P14938774959861487777

`A220562(A155212(n)+5)`
-/

namespace A220558.P14938774959861487777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A155212 n + 5).toNat

end

end A220558.P14938774959861487777

namespace A220558

/-- `A220562(A155212(n)+5)` -/
def P14938774959861487777.Spec : Prop :=
  ∀ n, P14938774959861487777.a n = A220558 (n + 1)

end A220558

/-! ## A220558.P180223687982239805

`A220562(A056000(n)+7)`
-/

namespace A220558.P180223687982239805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A056000 n + 7).toNat

end

end A220558.P180223687982239805

namespace A220558

/-- `A220562(A056000(n)+7)` -/
def P180223687982239805.Spec : Prop :=
  ∀ n, P180223687982239805.a n = A220558 (n + 1)

end A220558

/-! ## A220558.P15049667238952489762

`A220562(eq[2, A152157(n)])`
-/

namespace A220558.P15049667238952489762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220558.P15049667238952489762

namespace A220558

/-- `A220562(eq[2, A152157(n)])` -/
def P15049667238952489762.Spec : Prop :=
  ∀ n, P15049667238952489762.a n = A220558 (n + 1)

end A220558

/-!
# A220559: Number of ways to reciprocally link elements of an n X 5 array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220559, there is no canonical definition to state claims against.
-/

/-! ## A220559.P17859131570848926860

`ogf((8-19x-29x^2+144x^3-23x^4)/(1-21x+62x^2-47x^3+5x^4))`
-/

namespace A220559.P17859131570848926860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -19, -29, 144, -23] [1, -21, 62, -47, 5] n

end

end A220559.P17859131570848926860

/-! ## A220559.P11060862663463020300

`A220562(Δ[A264443(n)])`
-/

namespace A220559.P11060862663463020300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (f1 (n + 1) - f1 n).toNat

end

end A220559.P11060862663463020300

/-! ## A220559.P9425978464384048844

`A220562(A046691(n+3))`
-/

namespace A220559.P9425978464384048844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A046691 (n + 3)).toNat

end

end A220559.P9425978464384048844

/-! ## A220559.P5315526920586770608

`A220562(eq[3, A152157(n)])`
-/

namespace A220559.P5315526920586770608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220559.P5315526920586770608

/-! ## A220559.P3119217567364151352

`A220562(eq[4, A193592(n)])`
-/

namespace A220559.P3119217567364151352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220559.P3119217567364151352

/-!
# A220560: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220560, there is no canonical definition to state claims against.
-/

/-! ## A220560.P3781410922596314646

`A220562(A052905(n+3))`
-/

namespace A220560.P3781410922596314646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A052905 (n + 3)).toNat

end

end A220560.P3781410922596314646

/-! ## A220560.P4658547793916068115

`A220562(eq[3, A219347(n)])`
-/

namespace A220560.P4658547793916068115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220560.P4658547793916068115

/-! ## A220560.P7454658548151805868

`A220562(eq[5, A193592(n)])`
-/

namespace A220560.P7454658548151805868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220560.P7454658548151805868

/-! ## A220560.P12219651131474837144

`A220562(Δ[A023551(n+1)]+1)`
-/

namespace A220560.P12219651131474837144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (f1 (n + 1) - f1 n + 1).toNat

end

end A220560.P12219651131474837144

/-! ## A220560.P1145321822759769040

`A220562(Δ[A264443(n+1)]-1)`
-/

namespace A220560.P1145321822759769040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (f1 (n + 1) - f1 n - 1).toNat

end

end A220560.P1145321822759769040

/-!
# A220561: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220561, there is no canonical definition to state claims against.
-/

/-! ## A220561.P11032943586277866070

`A220562(A055999(n+4))`
-/

namespace A220561.P11032943586277866070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A055999 (n + 4)).toNat

end

end A220561.P11032943586277866070

/-! ## A220561.P16876176168440777939

`A220562(eq[4, A219347(n)])`
-/

namespace A220561.P16876176168440777939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220561.P16876176168440777939

/-! ## A220561.P7634912296239727714

`A220562(eq[6, A193592(n)])`
-/

namespace A220561.P7634912296239727714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220561.P7634912296239727714

/-! ## A220561.P15796635257413712942

`A220562(Δ[A023551(n+2)])`
-/

namespace A220561.P15796635257413712942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (f1 (n + 1) - f1 n).toNat

end

end A220561.P15796635257413712942

/-! ## A220561.P4447031764544835535

`A220562(A000124(n+7)-7)`
-/

namespace A220561.P4447031764544835535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A000124 (n + 7) - 7).toNat

end

end A220561.P4447031764544835535

/-!
# A220563: Number of ways to reciprocally link elements of an 2 X n array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220563, the canonical program `A220563.P1251323492166087584` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220563 has offset 1).

The definition of A220563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220563.P16021975947756579982

`ogf((1+3x-x^3)/(1-2x-4x^2+x^4))`
-/

namespace A220563.P16021975947756579982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, -1] [1, -2, -4, 0, 1] n

end

end A220563.P16021975947756579982

namespace A220563

/-- `ogf((1+3x-x^3)/(1-2x-4x^2+x^4))` -/
def P16021975947756579982.Spec : Prop :=
  ∀ n, P16021975947756579982.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P1251323492166087584

`2*a(n-1)+4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=47`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220563

/-- `2*a(n-1)+4*a(n-2)-a(n-4)` -/
def P1251323492166087584.Spec : Prop :=
  ∀ n, P1251323492166087584.a n = A220563 (n + 1)

theorem P1251323492166087584.correct : P1251323492166087584.Spec := by
  intro n
  simp only [A220563, Nat.add_sub_cancel]

end A220563

/-! ## A220563.P4473001553270023878

`A316726(n+1)-A033505(n+1)`
-/

namespace A220563.P4473001553270023878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316726 (n + 1) - A033505 (n + 1)

end

end A220563.P4473001553270023878

namespace A220563

/-- `A316726(n+1)-A033505(n+1)` -/
def P4473001553270023878.Spec : Prop :=
  ∀ n, P4473001553270023878.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P2685522382904829690

`A287275(n+2)-(n+1)%2`
-/

namespace A220563.P2685522382904829690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 2) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A220563.P2685522382904829690

namespace A220563

/-- `A287275(n+2)-(n+1)%2` -/
def P2685522382904829690.Spec : Prop :=
  ∀ n, P2685522382904829690.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P18393896404727594754

`A316726(n)-A033999(n)`
-/

namespace A220563.P18393896404727594754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316726 n - A033999 n

end

end A220563.P18393896404727594754

namespace A220563

/-- `A316726(n)-A033999(n)` -/
def P18393896404727594754.Spec : Prop :=
  ∀ n, P18393896404727594754.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P5408765453454687262

`A000035(n)+∑[A033505(n)]`
-/

namespace A220563.P5408765453454687262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220563.P5408765453454687262

namespace A220563

/-- `A000035(n)+∑[A033505(n)]` -/
def P5408765453454687262.Spec : Prop :=
  ∀ n, P5408765453454687262.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P4820094041539501539

`A061534(n+1)-A316726(n)`
-/

namespace A220563.P4820094041539501539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061534 (n + 1) - A316726 n

end

end A220563.P4820094041539501539

namespace A220563

/-- `A061534(n+1)-A316726(n)` -/
def P4820094041539501539.Spec : Prop :=
  ∀ n, P4820094041539501539.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P18047058043935230457

`Δ[A008619(n)]+∑[A033505(n)]`
-/

namespace A220563.P18047058043935230457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A220563.P18047058043935230457

namespace A220563

/-- `Δ[A008619(n)]+∑[A033505(n)]` -/
def P18047058043935230457.Spec : Prop :=
  ∀ n, P18047058043935230457.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P12404916230969948783

`char[A005408(n)]+∑[A033505(n)]`
-/

namespace A220563.P12404916230969948783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A220563.P12404916230969948783

namespace A220563

/-- `char[A005408(n)]+∑[A033505(n)]` -/
def P12404916230969948783.Spec : Prop :=
  ∀ n, P12404916230969948783.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P2470627890764285065

`∑[A033505(n)-A033999(n)]+1`
-/

namespace A220563.P2470627890764285065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220563.P2470627890764285065

namespace A220563

/-- `∑[A033505(n)-A033999(n)]+1` -/
def P2470627890764285065.Spec : Prop :=
  ∀ n, P2470627890764285065.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P12222308995890146261

`or(A088016(n)%2, ∑[A033505(n)])`
-/

namespace A220563.P12222308995890146261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A088016 n) 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220563.P12222308995890146261

namespace A220563

/-- `or(A088016(n)%2, ∑[A033505(n)])` -/
def P12222308995890146261.Spec : Prop :=
  ∀ n, P12222308995890146261.a n = A220563 (n + 1)

end A220563

/-! ## A220563.P6767840782941898019

`A030186(n+1)+A030186(n)-A316726(n)`
-/

namespace A220563.P6767840782941898019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 (n + 1) + (A030186 n - A316726 n)

end

end A220563.P6767840782941898019

namespace A220563

/-- `A030186(n+1)+A030186(n)-A316726(n)` -/
def P6767840782941898019.Spec : Prop :=
  ∀ n, P6767840782941898019.a n = A220563 (n + 1)

end A220563

/-!
# A220564: Number of ways to reciprocally link elements of an 3 X n array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220564, the canonical program `A220564.P3211657068349971922` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220564 has offset 1).

The definition of A220564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220564.P3211657068349971922

`ogf((1+9x-3x^2-16x^3+8x^4+2x^5-x^6)/(1-4x-15x^2+5x^3+19x^4-9x^5-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220564

/-- `ogf((1+9x-3x^2-16x^3+8x^4+2x^5-x^6)/(1-4x-15x^2+5x^3+19x^4-9x^5-2x^6+x^7))` -/
def P3211657068349971922.Spec : Prop :=
  ∀ n, P3211657068349971922.a n = A220564 (n + 1)

theorem P3211657068349971922.correct : P3211657068349971922.Spec := by
  intro n
  simp only [A220564, Nat.add_sub_cancel]

end A220564

/-! ## A220564.P11215502600801136893

`A220562(∑[n+2]+4)`
-/

namespace A220564.P11215502600801136893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220564.P11215502600801136893

namespace A220564

/-- `A220562(∑[n+2]+4)` -/
def P11215502600801136893.Spec : Prop :=
  ∀ n, P11215502600801136893.a n = A220564 (n + 1)

end A220564

/-! ## A220564.P6380266365440615862

`A220562(A167614(n+1))+A025444(n)`
-/

namespace A220564.P6380266365440615862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A167614 (n + 1)).toNat + A025444 n

end

end A220564.P6380266365440615862

namespace A220564

/-- `A220562(A167614(n+1))+A025444(n)` -/
def P6380266365440615862.Spec : Prop :=
  ∀ n, P6380266365440615862.a n = A220564 (n + 1)

end A220564

/-! ## A220564.P13721681981449976223

`A220562(A167614(n+1))^A178334(n)`
-/

namespace A220564.P13721681981449976223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220562 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A220564.P13721681981449976223

namespace A220564

/-- `A220562(A167614(n+1))^A178334(n)` -/
def P13721681981449976223.Spec : Prop :=
  ∀ n, P13721681981449976223.a n = (A220564 (n + 1) : ℚ)

end A220564

/-! ## A220564.P5820434927811855962

`A220562(A167614(n+1))%A199751(n)`
-/

namespace A220564.P5820434927811855962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220562 (A167614 (n + 1)).toNat) (A199751 n)

end

end A220564.P5820434927811855962

namespace A220564

/-- `A220562(A167614(n+1))%A199751(n)` -/
def P5820434927811855962.Spec : Prop :=
  ∀ n, P5820434927811855962.a n = A220564 (n + 1)

end A220564

/-!
# A220565: Number of ways to reciprocally link elements of an 4Xn array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220565, there is no canonical definition to state claims against.
-/

/-! ## A220565.P17184893290525188574

`A220562(A141214(n)+7)`
-/

namespace A220565.P17184893290525188574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A141214 n + 7).toNat

end

end A220565.P17184893290525188574

/-! ## A220565.P7454695186953194015

`A220562(A052905(n)+9)`
-/

namespace A220565.P7454695186953194015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A052905 n + 9).toNat

end

end A220565.P7454695186953194015

/-! ## A220565.P17083446888234838777

`A220562(A055999(n)+10)`
-/

namespace A220565.P17083446888234838777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A055999 n + 10).toNat

end

end A220565.P17083446888234838777

/-! ## A220565.P1363904392836825075

`A220562(A167614(n+2)+1)`
-/

namespace A220565.P1363904392836825075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A167614 (n + 2) + 1).toNat

end

end A220565.P1363904392836825075

/-! ## A220565.P5896967382418140604

`A220562(eq[5, A131818(n+1)])`
-/

namespace A220565.P5896967382418140604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220565.P5896967382418140604

/-!
# A220566: Number of ways to reciprocally link elements of an 5Xn array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220566, there is no canonical definition to state claims against.
-/

/-! ## A220566.P12248674489667684270

`A220562(A167499(n+3))`
-/

namespace A220566.P12248674489667684270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A167499 (n + 3)).toNat

end

end A220566.P12248674489667684270

/-! ## A220566.P3958397202314232684

`A220562(A056000(n)+15)`
-/

namespace A220566.P3958397202314232684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A056000 n + 15).toNat

end

end A220566.P3958397202314232684

/-! ## A220566.P7871262386688093101

`A220562(eq[6, A131818(n+1)])`
-/

namespace A220566.P7871262386688093101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220566.P7871262386688093101

/-! ## A220566.P4357116346599195862

`A220562(A038722(Δ[A264443(n)]))`
-/

namespace A220566.P4357116346599195862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A220566.P4357116346599195862

/-! ## A220566.P18441074225912354054

`A220562(A038722(Δ[A023545(n+1)]))`
-/

namespace A220566.P18441074225912354054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A220566.P18441074225912354054

/-!
# A220567: Number of ways to reciprocally link elements of an 6Xn array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220567, there is no canonical definition to state claims against.
-/

/-! ## A220567.P16100038618816052679

`A220562(Δ[A264443(n)]+10)`
-/

namespace A220567.P16100038618816052679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (f1 (n + 1) - f1 n + 10).toNat

end

end A220567.P16100038618816052679

/-! ## A220567.P2413129183260176922

`A220562(eq[6, A130270(n+1)])`
-/

namespace A220567.P2413129183260176922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220567.P2413129183260176922

/-! ## A220567.P11455317126327361639

`A220562(eq[7, A131818(n+1)])`
-/

namespace A220567.P11455317126327361639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220567.P11455317126327361639

/-! ## A220567.P14925926512337425305

`A220562(Δ[A023545(n+1)]+10)`
-/

namespace A220567.P14925926512337425305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (f1 (n + 1) - f1 n + 10).toNat

end

end A220567.P14925926512337425305

/-! ## A220567.P10854456719547301555

`A220562(A000124(n+6)-(n+1))`
-/

namespace A220567.P10854456719547301555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A220567.P10854456719547301555

/-!
# A220568: Number of ways to reciprocally link elements of an 7Xn array either to themselves or to exactly one horizontal or antidiagonal neighbor.

The programs for A220568, there is no canonical definition to state claims against.
-/

/-! ## A220568.P14006064744004418463

`A220562(A056119(n)+28)`
-/

namespace A220568.P14006064744004418463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A056119 n + 28).toNat

end

end A220568.P14006064744004418463

/-! ## A220568.P5844429006104015590

`A220562(eq[11, A066657(n)])`
-/

namespace A220568.P5844429006104015590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220568.P5844429006104015590

/-! ## A220568.P1197353027766245185

`A220562(eq[6, A002262(n)]+1)`
-/

namespace A220568.P1197353027766245185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A220568.P1197353027766245185

/-! ## A220568.P11018402919833498092

`A220562(eq[8, A131818(n+1)])`
-/

namespace A220568.P11018402919833498092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220568.P11018402919833498092

/-! ## A220568.P4432987412373016671

`A220562(A034856(n+7)-6-2*n)`
-/

namespace A220568.P4432987412373016671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220562 (A034856 (n + 7) - 6 - (2 * n : ℤ)).toNat

end

end A220568.P4432987412373016671

/-!
# A220569: Smallest prime divisor of prime(n) + prime(n+1) + prime(n+2).

The programs for A220569, there is no canonical definition to state claims against.
-/

/-! ## A220569.P14108908986749878680

`A014673(2*A034961(n+1))`
-/

namespace A220569.P14108908986749878680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A034961 (n + 1)).toNat

end

end A220569.P14108908986749878680

/-! ## A220569.P12799087758655151627

`A014673(A005843(A034961(n+1)))`
-/

namespace A220569.P12799087758655151627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A005843 (A034961 (n + 1)).toNat).toNat

end

end A220569.P12799087758655151627

/-! ## A220569.P5641569332391425438

`A020639(A110654(2*A034961(n+1)))`
-/

namespace A220569.P5641569332391425438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A110654 (2 * A034961 (n + 1)).toNat).toNat

end

end A220569.P5641569332391425438

/-! ## A220569.P15009215161694704617

`A014673(2*(A007504(n+3)-A007504(n)))`
-/

namespace A220569.P15009215161694704617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (A007504 (n + 3) - A007504 n)).toNat

end

end A220569.P15009215161694704617

/-! ## A220569.P4755939519696916455

`A014673(2*(A215848(n+1)+A001043(n+1)))`
-/

namespace A220569.P4755939519696916455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (A215848 (n + 1) + A001043 (n + 1))).toNat

end

end A220569.P4755939519696916455

/-! ## A220569.P9235884905943081960

`A014673(2*(A181428(n+1)+A100484(n+1)))`
-/

namespace A220569.P9235884905943081960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (A181428 (n + 1) + A100484 (n + 1))).toNat

end

end A220569.P9235884905943081960

/-! ## A220569.P9502297101775095580

`A014673(2*(A001223(n+2)+A001748(n+2)-A001223(n+1)))`
-/

namespace A220569.P9502297101775095580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (A001223 (n + 2) + (A001748 (n + 2) - A001223 (n + 1)))).toNat

end

end A220569.P9502297101775095580

/-! ## A220569.P7809204965337487693

`A115561(4*A034961(n+1))`
-/

namespace A220569.P7809204965337487693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (4 * A034961 (n + 1)).toNat

end

end A220569.P7809204965337487693

/-! ## A220569.P13973612259142458720

`A020639(A143121(∑[n+3]+1))`
-/

namespace A220569.P13973612259142458720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143121 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A220569.P13973612259142458720

/-! ## A220569.P12646941441143682405

`A020639(A194939(A167614(n+1)))`
-/

namespace A220569.P12646941441143682405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A194939 (A167614 (n + 1)).toNat).toNat

end

end A220569.P12646941441143682405

/-!
# A220570: Numbers that are not Brazilian numbers.

The programs for A220570, there is no canonical definition to state claims against.
-/

/-! ## A220570.P1125762962123833358

`eq[1, (n-A059711(n))²]`
-/

namespace A220570.P1125762962123833358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A059711 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220570.P1125762962123833358

/-! ## A220570.P2226928412610216052

`eq[0, A220136(n+1)]+1`
-/

namespace A220570.P2226928412610216052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A220570.P2226928412610216052

/-! ## A220570.P13983320618174792755

`lt[n, A059711(n+1)+2]+1`
-/

namespace A220570.P13983320618174792755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A220570.P13983320618174792755

/-! ## A220570.P16302237367078375241

`lt[n*A220136(A028310(n)), n]`
-/

namespace A220570.P16302237367078375241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A220136 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A220570.P16302237367078375241

/-! ## A220570.P394960928750713471

`lt[A023443(n)², n*A059711(n)]`
-/

namespace A220570.P394960928750713471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220570.P394960928750713471

/-! ## A220570.P9558747758185566019

`record[(n+1)/A166590(A220136(n+1)+1)]`
-/

namespace A220570.P9558747758185566019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A166590 (A220136 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220570.P9558747758185566019

/-! ## A220570.P7810850315117459301

`record[n+1-A004912(n+1)*A220136(n+1)]`
-/

namespace A220570.P7810850315117459301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004912 (n + 1) * A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220570.P7810850315117459301

/-! ## A220570.P4009505538945879464

`record[(n+1)/A290527(A220136(n+1)%(n+1))]`
-/

namespace A220570.P4009505538945879464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A290527 (Int.tmod (A220136 (n + 1)) (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220570.P4009505538945879464

/-! ## A220570.P17430343791013882882

`∪[A258165(n+1), A292125(n+1)]`
-/

namespace A220570.P17430343791013882882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220570.P17430343791013882882

/-! ## A220570.P14042085838236391466

`∪[A258165(n+1), A325323(n+1)]`
-/

namespace A220570.P14042085838236391466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220570.P14042085838236391466

/-! ## A220570.P16422925329916839686

`∪[A258165(n+1), A330928(n+1)]`
-/

namespace A220570.P16422925329916839686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220570.P16422925329916839686

/-! ## A220570.P8479193874600568255

`∪[A258165(n+1), A331561(n+1)]`
-/

namespace A220570.P8479193874600568255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220570.P8479193874600568255

/-! ## A220570.P15485865976997579968

`record[n+1-A000217(n*A220136(n+1))]`
-/

namespace A220570.P15485865976997579968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 ((n : ℤ) * A220136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220570.P15485865976997579968

/-!
# A220571: Composite numbers that are Brazilian.

The programs for A220571, there is no canonical definition to state claims against.
-/

/-! ## A220571.P3239073667262227908

`lt[A059711(n)+1, A003415(n)]`
-/

namespace A220571.P3239073667262227908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P3239073667262227908

/-! ## A220571.P17320618358931203661

`lt[A059711(n)+2, A210442(n)]`
-/

namespace A220571.P17320618358931203661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P17320618358931203661

/-! ## A220571.P9214618165275260330

`lt[A059711(n), A032742(A028310(n))]`
-/

namespace A220571.P9214618165275260330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P9214618165275260330

/-! ## A220571.P14986663077504649299

`lt[A165712(A059711(n)), A210442(n)]`
-/

namespace A220571.P14986663077504649299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (A059711 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P14986663077504649299

/-! ## A220571.P6867575441998744961

`lt[A059711(A257143(n)), A003415(n)]`
-/

namespace A220571.P6867575441998744961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A257143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P6867575441998744961

/-! ## A220571.P16292591579407541088

`lt[A059711(A257143(n)), A210442(n)]`
-/

namespace A220571.P16292591579407541088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A257143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P16292591579407541088

/-! ## A220571.P2007207835444381645

`lt[A059711(n), A023443(A003415(n))]`
-/

namespace A220571.P2007207835444381645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P2007207835444381645

/-! ## A220571.P10566559241155946162

`lt[A070824(A178739(n+1)), A210442(n)]`
-/

namespace A220571.P10566559241155946162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A178739 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P10566559241155946162

/-! ## A220571.P1730550854001081244

`lt[A066360(A033229(n+1)), A018783(n)]`
-/

namespace A220571.P1730550854001081244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (A033229 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P1730550854001081244

/-! ## A220571.P11092293149433439800

`lt[A031176(n²), A210442(n)]`
-/

namespace A220571.P11092293149433439800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220571.P11092293149433439800

/-!
# A220572: Number of ways to write 2n-1=x+y (x,y>=0) with x^18+3*y^18 prime.

The programs for A220572, there is no canonical definition to state claims against.
-/

/-! ## A220572.P3330076714890360326

`gcd(A155212(A187729(n+1)), A275131(n+1))`
-/

namespace A220572.P3330076714890360326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155212 (A187729 (n + 1)).toNat) (A275131 (n + 1))

end

end A220572.P3330076714890360326

/-! ## A220572.P2137475338804102134

`gcd(A000404(A316796(n+1)), A181572(2*n+5))`
-/

namespace A220572.P2137475338804102134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000404 (A316796 (n + 1)).toNat) (A181572 (2 * n + 5))

end

end A220572.P2137475338804102134

/-! ## A220572.P9435285569794217023

`gcd(A137792(A008578(n+1)), A265051(n))`
-/

namespace A220572.P9435285569794217023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137792 (A008578 (n + 1)).toNat) (A265051 n)

end

end A220572.P9435285569794217023

/-! ## A220572.P14464014813507504495

`gcd(A000290(A072873(n+1)), A104665(n+1))`
-/

namespace A220572.P14464014813507504495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A072873 (n + 1)).toNat) (A104665 (n + 1))

end

end A220572.P14464014813507504495

/-! ## A220572.P1072782070014490962

`gcd(A049108(n+1), A064817(A107929(n+1)))`
-/

namespace A220572.P1072782070014490962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049108 (n + 1)) (A064817 (A107929 (n + 1)).toNat)

end

end A220572.P1072782070014490962

/-!
# A220573: Equals one maps: number of n X n binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 n X n array.

The programs for A220573, there is no canonical definition to state claims against.
-/

/-! ## A220573.P17276665773448099041

`A220579(∑[4*n]+1)`
-/

namespace A220573.P17276665773448099041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220573.P17276665773448099041

/-! ## A220573.P10318962722013483282

`record[A220579(A238339(n))]`
-/

namespace A220573.P10318962722013483282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A238339 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220573.P10318962722013483282

/-!
# A220574: Equals one maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 n X 3 array.

The programs for A220574, the canonical program `A220574.P1083321483325029987` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220574 has offset 1).

The definition of A220574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220574.P1083321483325029987

`ogf((4+9x+12x^2+10x^3+4x^4+8x^5)/(1-3x-4x^2-2x^3+12x^4+16x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220574

/-- `ogf((4+9x+12x^2+10x^3+4x^4+8x^5)/(1-3x-4x^2-2x^3+12x^4+16x^5))` -/
def P1083321483325029987.Spec : Prop :=
  ∀ n, P1083321483325029987.a n = A220574 (n + 1)

theorem P1083321483325029987.correct : P1083321483325029987.Spec := by
  intro n
  simp only [A220574, Nat.add_sub_cancel]

end A220574

/-! ## A220574.P10309695673452548155

`A220579(∑[n+3]+1)`
-/

namespace A220574.P10309695673452548155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220574.P10309695673452548155

namespace A220574

/-- `A220579(∑[n+3]+1)` -/
def P10309695673452548155.Spec : Prop :=
  ∀ n, P10309695673452548155.a n = A220574 (n + 1)

end A220574

/-! ## A220574.P15968623267430502109

`A220579(A055999(n)+4)+A025442(n)`
-/

namespace A220574.P15968623267430502109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A055999 n + 4).toNat + A025442 n

end

end A220574.P15968623267430502109

namespace A220574

/-- `A220579(A055999(n)+4)+A025442(n)` -/
def P15968623267430502109.Spec : Prop :=
  ∀ n, P15968623267430502109.a n = A220574 (n + 1)

end A220574

/-! ## A220574.P10404358040447781966

`A220579(A055999(n)+4)+A025466(n)`
-/

namespace A220574.P10404358040447781966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A055999 n + 4).toNat + A025466 n

end

end A220574.P10404358040447781966

namespace A220574

/-- `A220579(A055999(n)+4)+A025466(n)` -/
def P10404358040447781966.Spec : Prop :=
  ∀ n, P10404358040447781966.a n = A220574 (n + 1)

end A220574

/-!
# A220575: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 nX4 array.

The programs for A220575, there is no canonical definition to state claims against.
-/

/-! ## A220575.P17725275161757749075

`A220579(∑[n+4]+3)`
-/

namespace A220575.P17725275161757749075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220575.P17725275161757749075

/-! ## A220575.P2357552780791361986

`A220579(A027379(n+2))%A014138(2*(n+2))`
-/

namespace A220575.P2357552780791361986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220579 (A027379 (n + 2)).toNat) (A014138 (2 * (n + 2)))

end

end A220575.P2357552780791361986

/-!
# A220576: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 nX5 array.

The programs for A220576, there is no canonical definition to state claims against.
-/

/-! ## A220576.P14713289404351207040

`A220579(∑[n+5]+6)`
-/

namespace A220576.P14713289404351207040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220576.P14713289404351207040

/-!
# A220577: Equals one maps: number of n X 6 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 n X 6 array.

The programs for A220577, there is no canonical definition to state claims against.
-/

/-! ## A220577.P1383338430680698327

`A220579(∑[2*a(n-1)-a(n-2)])` with `a(0)=16, a(1)=7, a(2)=8`
-/

namespace A220577.P1383338430680698327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 7, 8] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220577.P1383338430680698327

/-! ## A220577.P8793295578079040823

`A220579(A052905(n+3))`
-/

namespace A220577.P8793295578079040823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A052905 (n + 3)).toNat

end

end A220577.P8793295578079040823

/-! ## A220577.P16712273818513600558

`A220579(A056119(n)+16)`
-/

namespace A220577.P16712273818513600558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A056119 n + 16).toNat

end

end A220577.P16712273818513600558

/-!
# A220578: Equals one maps: number of nX7 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 nX7 array.

The programs for A220578, there is no canonical definition to state claims against.
-/

/-! ## A220578.P14583037771286257479

`A220579(A055999(n+4))`
-/

namespace A220578.P14583037771286257479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A055999 (n + 4)).toNat

end

end A220578.P14583037771286257479

/-! ## A220578.P14262741477777429565

`A220579(A056121(n)+22)`
-/

namespace A220578.P14262741477777429565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A056121 n + 22).toNat

end

end A220578.P14262741477777429565

/-!
# A220579: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 nXk array.

The programs for A220579, there is no canonical definition to state claims against.
-/

/-! ## A220579.P4472796340078555778

`and(A008605(A002212(n)), A082635(n+1))`
-/

namespace A220579.P4472796340078555778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008605 (A002212 n).toNat) (A082635 (n + 1))

end

end A220579.P4472796340078555778

/-!
# A220580: Equals one maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 2Xn array.

The programs for A220580, there is no canonical definition to state claims against.
-/

/-! ## A220580.P6026690335178055973

`A220579(∑[n+1]+2)`
-/

namespace A220580.P6026690335178055973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220580.P6026690335178055973

/-! ## A220580.P14123992110314676456

`record[gcd(A215086(n), A220579(n+3))]`
-/

namespace A220580.P14123992110314676456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215086 n) (A220579 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220580.P14123992110314676456

/-! ## A220580.P18260523872519969039

`A220579(A000096(n)+3)+A055967(n)`
-/

namespace A220580.P18260523872519969039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A000096 n + 3).toNat + A055967 n

end

end A220580.P18260523872519969039

/-! ## A220580.P7223925502445515051

`A220579(A238531(n+2))^A008835(n+1)`
-/

namespace A220580.P7223925502445515051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220579 (A238531 (n + 2)).toNat : ℚ) ^ (A008835 (n + 1) : ℤ)

end

end A220580.P7223925502445515051

/-! ## A220580.P9138090859553862136

`A220579(A238531(n+2))+A056594(2*n+1)`
-/

namespace A220580.P9138090859553862136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A238531 (n + 2)).toNat + A056594 (2 * n + 1)

end

end A220580.P9138090859553862136

/-!
# A220581: Equals one maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 3Xn array.

The programs for A220581, there is no canonical definition to state claims against.
-/

/-! ## A220581.P11808066219862576585

`A220579(∑[n+2]+4)`
-/

namespace A220581.P11808066219862576585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220581.P11808066219862576585

/-! ## A220581.P8237733358052729649

`or(char[2], A220579(A167614(n+1)))`
-/

namespace A220581.P8237733358052729649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A220579 (A167614 (n + 1)).toNat)

end

end A220581.P8237733358052729649

/-! ## A220581.P4236007453165170308

`A220579(A167614(n+1))+A025442(n)`
-/

namespace A220581.P4236007453165170308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167614 (n + 1)).toNat + A025442 n

end

end A220581.P4236007453165170308

/-! ## A220581.P1173250444501314850

`A220579(A167614(n+1))+A025466(n)`
-/

namespace A220581.P1173250444501314850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167614 (n + 1)).toNat + A025466 n

end

end A220581.P1173250444501314850

/-! ## A220581.P12136128064742517587

`A220579(A167614(n+1))+A054908(n)`
-/

namespace A220581.P12136128064742517587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167614 (n + 1)).toNat + A054908 n

end

end A220581.P12136128064742517587

/-!
# A220582: Equals one maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 4Xn array.

The programs for A220582, there is no canonical definition to state claims against.
-/

/-! ## A220582.P4915229136255806279

`A220579(A141214(n)+7)`
-/

namespace A220582.P4915229136255806279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A141214 n + 7).toNat

end

end A220582.P4915229136255806279

/-! ## A220582.P5596666568826002858

`A220579(A052905(n)+9)`
-/

namespace A220582.P5596666568826002858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A052905 n + 9).toNat

end

end A220582.P5596666568826002858

/-! ## A220582.P2021264900988685753

`A220579(A055999(n)+10)`
-/

namespace A220582.P2021264900988685753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A055999 n + 10).toNat

end

end A220582.P2021264900988685753

/-! ## A220582.P15430898988851707385

`A220579(eq[5, A066657(n)])`
-/

namespace A220582.P15430898988851707385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220582.P15430898988851707385

/-! ## A220582.P6442679581371712644

`A220579(A167614(n+2)+1)`
-/

namespace A220582.P6442679581371712644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167614 (n + 2) + 1).toNat

end

end A220582.P6442679581371712644

/-!
# A220583: Equals one maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A220583, there is no canonical definition to state claims against.
-/

/-! ## A220583.P14030441684529939190

`A220579(A167499(n+3))`
-/

namespace A220583.P14030441684529939190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167499 (n + 3)).toNat

end

end A220583.P14030441684529939190

/-! ## A220583.P4562518844425523203

`A220579(A155212(n)+13)`
-/

namespace A220583.P4562518844425523203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A155212 n + 13).toNat

end

end A220583.P4562518844425523203

/-! ## A220583.P2213010109396777222

`A220579(A056000(n)+15)`
-/

namespace A220583.P2213010109396777222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A056000 n + 15).toNat

end

end A220583.P2213010109396777222

/-! ## A220583.P2357055876659231993

`A220579(eq[7, A066657(n)])`
-/

namespace A220583.P2357055876659231993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220583.P2357055876659231993

/-!
# A220584: Equals one maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 6Xn array.

The programs for A220584, there is no canonical definition to state claims against.
-/

/-! ## A220584.P13918013766397886699

`A220579(A056115(n)+21)`
-/

namespace A220584.P13918013766397886699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A056115 n + 21).toNat

end

end A220584.P13918013766397886699

/-! ## A220584.P642383013614799231

`A220579(A167499(n+4)+1)`
-/

namespace A220584.P642383013614799231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167499 (n + 4) + 1).toNat

end

end A220584.P642383013614799231

/-! ## A220584.P17003149199817164

`A220579(A000124(n+5)+5)`
-/

namespace A220584.P17003149199817164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A000124 (n + 5) + 5).toNat

end

end A220584.P17003149199817164

/-!
# A220585: Equals one maps: number of 7Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..1 7Xn array.

The programs for A220585, there is no canonical definition to state claims against.
-/

/-! ## A220585.P1510611577963826501

`A220579(A167487(n+5))`
-/

namespace A220585.P1510611577963826501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A167487 (n + 5)).toNat

end

end A220585.P1510611577963826501

/-! ## A220585.P10903278864183776810

`A220579(A056119(n)+28)`
-/

namespace A220585.P10903278864183776810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220579 (A056119 n + 28).toNat

end

end A220585.P10903278864183776810

/-!
# A220586: Numbers n such that (the sum of the divisors of n) plus (the sum of the squares of the divisors of n) plus (the sum of the cubes of the divisors of n) is a prime number.

The programs for A220586, there is no canonical definition to state claims against.
-/

/-! ## A220586.P10237304960046855729

`A046683(comp[A331442(3*n+1)-A123556(n+1)]+1)`
-/

namespace A220586.P10237304960046855729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331442 (3 * n + 1) - A123556 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A220586.P10237304960046855729

/-!
# A220588: a(n) = 2^n - n^2 - n.

The programs for A220588, the canonical program `A220588.P16569912983883394539` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220588 has offset 0).

The definition of A220588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²-n` (program `A220588.P16569912983883394539`, by `A220588.P16569912983883394539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220588.P16569912983883394539

`2^n-n²-n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220588

/-- `2^n-n²-n` -/
def P16569912983883394539.Spec : Prop :=
  ∀ n, P16569912983883394539.a n = A220588 n

theorem P16569912983883394539.correct : P16569912983883394539.Spec := by
  intro n
  simp only [A220588]

end A220588

/-! ## A220588.P12469981221813204705

`ogf((1-5x+7x^2-x^3)/(1-5x+9x^2-7x^3+2x^4))`
-/

namespace A220588.P12469981221813204705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7, -1] [1, -5, 9, -7, 2] n

end

end A220588.P12469981221813204705

namespace A220588

/-- `ogf((1-5x+7x^2-x^3)/(1-5x+9x^2-7x^3+2x^4))` -/
def P12469981221813204705.Spec : Prop :=
  ∀ n, P12469981221813204705.a n = A220588 n

end A220588

/-! ## A220588.P3762063599908096236

`2*(a(n-1)-(n-C(n, 2)))` with `a(0)=1`
-/

namespace A220588.P3762063599908096236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((n : ℤ) - (Nat.choose n 2 : ℤ)))

end

end A220588.P3762063599908096236

namespace A220588

/-- `2*(a(n-1)-(n-C(n, 2)))` -/
def P3762063599908096236.Spec : Prop :=
  ∀ n, P3762063599908096236.a n = A220588 n

end A220588

/-! ## A220588.P4966775937764391945

`floor(2^n-∑[a(n-1)+2])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A220588.P4966775937764391945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220588.P4966775937764391945

namespace A220588

/-- `floor(2^n-∑[a(n-1)+2])` -/
def P4966775937764391945.Spec : Prop :=
  ∀ n, P4966775937764391945.a n = A220588 n

end A220588

/-! ## A220588.P16759915266107356877

`∑[2*(a(n-1)-2+n)]` with `a(0)=1, a(1)=-1`
-/

namespace A220588.P16759915266107356877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  2 * (f1 (n - 1) - 2 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P16759915266107356877

namespace A220588

/-- `∑[2*(a(n-1)-2+n)]` -/
def P16759915266107356877.Spec : Prop :=
  ∀ n, P16759915266107356877.a n = A220588 n

end A220588

/-! ## A220588.P160096024588608832

`∑[2*(a(n-1)-(2-n))]` with `a(0)=1, a(1)=-1`
-/

namespace A220588.P160096024588608832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  2 * (f1 (n - 1) - (2 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P160096024588608832

namespace A220588

/-- `∑[2*(a(n-1)-(2-n))]` -/
def P160096024588608832.Spec : Prop :=
  ∀ n, P160096024588608832.a n = A220588 n

end A220588

/-! ## A220588.P325787825741165329

`floor(2*a(n-1)+n*(n-3))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A220588.P325787825741165329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n : ℤ) * ((n : ℤ) - 3)

end

end A220588.P325787825741165329

namespace A220588

/-- `floor(2*a(n-1)+n*(n-3))` -/
def P325787825741165329.Spec : Prop :=
  ∀ n, P325787825741165329.a n = A220588 n

theorem P325787825741165329.correct : P325787825741165329.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A220588, Nat.add_sub_cancel, A220588.P325787825741165329.a, A220588.P16569912983883394539.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A220588, Nat.add_sub_cancel, A220588.P325787825741165329.a, A220588.P16569912983883394539.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A220588

/-! ## A220588.P5234026331035814244

`floor(2*(a(n-1)-n)-(n-n²))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A220588.P5234026331035814244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - (n : ℤ)) - ((n : ℤ) - (n ^ 2 : ℤ))

end

end A220588.P5234026331035814244

namespace A220588

/-- `floor(2*(a(n-1)-n)-(n-n²))` -/
def P5234026331035814244.Spec : Prop :=
  ∀ n, P5234026331035814244.a n = A220588 n

theorem P5234026331035814244.correct : P5234026331035814244.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A220588, Nat.add_sub_cancel, A220588.P5234026331035814244.a, A220588.P16569912983883394539.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A220588, Nat.add_sub_cancel, A220588.P5234026331035814244.a, A220588.P16569912983883394539.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A220588

/-! ## A220588.P17667036539892419835

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=-2, a(2)=-1`
-/

namespace A220588.P17667036539892419835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P17667036539892419835

namespace A220588

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P17667036539892419835.Spec : Prop :=
  ∀ n, P17667036539892419835.a n = A220588 n

end A220588

/-! ## A220588.P17136757701456988151

`∑[A011782(n)-2*n]`
-/

namespace A220588.P17136757701456988151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P17136757701456988151

namespace A220588

/-- `∑[A011782(n)-2*n]` -/
def P17136757701456988151.Spec : Prop :=
  ∀ n, P17136757701456988151.a n = A220588 n

end A220588

/-! ## A220588.P2775550166244812520

`∑[∑[A034008(n)]-2*n]`
-/

namespace A220588.P2775550166244812520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P2775550166244812520

namespace A220588

/-- `∑[∑[A034008(n)]-2*n]` -/
def P2775550166244812520.Spec : Prop :=
  ∀ n, P2775550166244812520.a n = A220588 n

end A220588

/-! ## A220588.P13573362683326477076

`∑[Δ[A131577(n)]-2*n]`
-/

namespace A220588.P13573362683326477076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P13573362683326477076

namespace A220588

/-- `∑[Δ[A131577(n)]-2*n]` -/
def P13573362683326477076.Spec : Prop :=
  ∀ n, P13573362683326477076.a n = A220588 n

end A220588

/-! ## A220588.P14679120362297115913

`∑[A166444(n+1)-2*n]`
-/

namespace A220588.P14679120362297115913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P14679120362297115913

namespace A220588

/-- `∑[A166444(n+1)-2*n]` -/
def P14679120362297115913.Spec : Prop :=
  ∀ n, P14679120362297115913.a n = A220588 n

end A220588

/-! ## A220588.P7795137655152697890

`∑[2-A122958(n)-2*n]`
-/

namespace A220588.P7795137655152697890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A122958 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P7795137655152697890

namespace A220588

/-- `∑[2-A122958(n)-2*n]` -/
def P7795137655152697890.Spec : Prop :=
  ∀ n, P7795137655152697890.a n = A220588 n

end A220588

/-! ## A220588.P16833558273339670485

`floor(A000295(n)-(n²-sinh(1)))`
-/

namespace A220588.P16833558273339670485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000295 n : ℝ) - ((n ^ 2 : ℝ) - Real.sinh (1 : ℝ))⌋

end

end A220588.P16833558273339670485

namespace A220588

/-- `floor(A000295(n)-(n²-sinh(1)))` -/
def P16833558273339670485.Spec : Prop :=
  ∀ n, P16833558273339670485.a n = A220588 n

end A220588

/-! ## A220588.P11708161141803422986

`∑[round(A000079(n)/2)-2*n]`
-/

namespace A220588.P11708161141803422986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℚ) / 2) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P11708161141803422986

namespace A220588

/-- `∑[round(A000079(n)/2)-2*n]` -/
def P11708161141803422986.Spec : Prop :=
  ∀ n, P11708161141803422986.a n = A220588 n

end A220588

/-! ## A220588.P14389543269866249549

`∑[A005803(n)-A131577(n)]`
-/

namespace A220588.P14389543269866249549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P14389543269866249549

namespace A220588

/-- `∑[A005803(n)-A131577(n)]` -/
def P14389543269866249549.Spec : Prop :=
  ∀ n, P14389543269866249549.a n = A220588 n

end A220588

/-! ## A220588.P3294477002041683644

`∑[A016116(A004273(n))-2*n]`
-/

namespace A220588.P3294477002041683644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004273 n).toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P3294477002041683644

namespace A220588

/-- `∑[A016116(A004273(n))-2*n]` -/
def P3294477002041683644.Spec : Prop :=
  ∀ n, P3294477002041683644.a n = A220588 n

end A220588

/-! ## A220588.P685600536458894735

`∑[A000325(n)-n-A131577(n)]`
-/

namespace A220588.P685600536458894735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n - (n : ℤ) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220588.P685600536458894735

namespace A220588

/-- `∑[A000325(n)-n-A131577(n)]` -/
def P685600536458894735.Spec : Prop :=
  ∀ n, P685600536458894735.a n = A220588 n

end A220588

/-! ## A220588.P15785747482990191811

`∑{#}[n, C(n, #)-n]`
-/

namespace A220588.P15785747482990191811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose n k : ℤ) - (n : ℤ))

end

end A220588.P15785747482990191811

namespace A220588

/-- `∑{#}[n, C(n, #)-n]` -/
def P15785747482990191811.Spec : Prop :=
  ∀ n, P15785747482990191811.a n = A220588 n

end A220588

/-!
# A220589: Number of simple skew-merged permutations with n elements.

The programs for A220589, the canonical program `A220589.P547849876058364495` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220589 has offset 4).

The definition of A220589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220589.P3212730962158980204

`2*A284778(n+1)`
-/

namespace A220589.P3212730962158980204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284778 (n + 1)

end

end A220589.P3212730962158980204

namespace A220589

/-- `2*A284778(n+1)` -/
def P3212730962158980204.Spec : Prop :=
  ∀ n, P3212730962158980204.a n = A220589 (n + 4)

end A220589

/-! ## A220589.P12428869201337370509

`Δ[2*∑[A284778(n)]]`
-/

namespace A220589.P12428869201337370509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220589.P12428869201337370509

namespace A220589

/-- `Δ[2*∑[A284778(n)]]` -/
def P12428869201337370509.Spec : Prop :=
  ∀ n, P12428869201337370509.a n = A220589 (n + 4)

end A220589

/-! ## A220589.P547849876058364495

`2*A002026(n+1)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A220589

/-- `2*A002026(n+1)-a(n-1)` -/
def P547849876058364495.Spec : Prop :=
  ∀ n, P547849876058364495.a n = A220589 (n + 4)

theorem P547849876058364495.correct : P547849876058364495.Spec := by
  intro n
  simp only [A220589, Nat.add_sub_cancel]

end A220589

/-! ## A220589.P18437322396365734850

`Δ[A284778(n)+A001006(n+1)]`
-/

namespace A220589.P18437322396365734850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 n + A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A220589.P18437322396365734850

namespace A220589

/-- `Δ[A284778(n)+A001006(n+1)]` -/
def P18437322396365734850.Spec : Prop :=
  ∀ n, P18437322396365734850.a n = A220589 (n + 4)

end A220589

/-! ## A220589.P16243441642903012544

`2*(A342912(n+1)-A187306(n+1))`
-/

namespace A220589.P16243441642903012544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342912 (n + 1) - A187306 (n + 1))

end

end A220589.P16243441642903012544

namespace A220589

/-- `2*(A342912(n+1)-A187306(n+1))` -/
def P16243441642903012544.Spec : Prop :=
  ∀ n, P16243441642903012544.a n = A220589 (n + 4)

end A220589

/-! ## A220589.P3147489953047861028

`2*A247364(A167614(n+2))`
-/

namespace A220589.P3147489953047861028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247364 (A167614 (n + 2)).toNat

end

end A220589.P3147489953047861028

namespace A220589

/-- `2*A247364(A167614(n+2))` -/
def P3147489953047861028.Spec : Prop :=
  ∀ n, P3147489953047861028.a n = A220589 (n + 4)

end A220589

/-!
# A220590: Number of ways to reciprocally link elements of an n X 2 array either to themselves or to exactly two king-move neighbors.

The programs for A220590, the canonical program `A220590.P13824583975493517539` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220590 has offset 1).

The definition of A220590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220590.P6541120071091482596

`ogf((1+5x+2x^2-2x^3)/(1-3x-7x^2-2x^3+2x^4))`
-/

namespace A220590.P6541120071091482596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2, -2] [1, -3, -7, -2, 2] n

end

end A220590.P6541120071091482596

namespace A220590

/-- `ogf((1+5x+2x^2-2x^3)/(1-3x-7x^2-2x^3+2x^4))` -/
def P6541120071091482596.Spec : Prop :=
  ∀ n, P6541120071091482596.a n = A220590 (n + 1)

end A220590

/-! ## A220590.P13824583975493517539

`3*a(n-1)+7*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=8, a(2)=33, a(3)=155`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220590

/-- `3*a(n-1)+7*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P13824583975493517539.Spec : Prop :=
  ∀ n, P13824583975493517539.a n = A220590 (n + 1)

theorem P13824583975493517539.correct : P13824583975493517539.Spec := by
  intro n
  simp only [A220590, Nat.add_sub_cancel]

end A220590

/-! ## A220590.P3811666856996385754

`record[ratio[A220595(n+1)]]`
-/

namespace A220590.P3811666856996385754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220590.P3811666856996385754

namespace A220590

/-- `record[ratio[A220595(n+1)]]` -/
def P3811666856996385754.Spec : Prop :=
  ∀ n, P3811666856996385754.a n = (A220590 (n + 1) : ℚ)

end A220590

/-! ## A220590.P15300265142521484566

`A220595(∑[n+1]+2)`
-/

namespace A220590.P15300265142521484566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220590.P15300265142521484566

namespace A220590

/-- `A220595(∑[n+1]+2)` -/
def P15300265142521484566.Spec : Prop :=
  ∀ n, P15300265142521484566.a n = A220590 (n + 1)

end A220590

/-! ## A220590.P17385310418875123191

`record[root(A220595(n+1), A112475(n))]`
-/

namespace A220590.P17385310418875123191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220595 (n + 1) : ℝ) ^ (1 / (A112475 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220590.P17385310418875123191

namespace A220590

/-- `record[root(A220595(n+1), A112475(n))]` -/
def P17385310418875123191.Spec : Prop :=
  ∀ n, P17385310418875123191.a n = (A220590 (n + 1) : ℝ)

end A220590

/-!
# A220591: Number of ways to reciprocally link elements of an nX3 array either to themselves or to exactly two king-move neighbors.

The programs for A220591, there is no canonical definition to state claims against.
-/

/-! ## A220591.P6851473280265910849

`A220595(∑[n+2]+4)`
-/

namespace A220591.P6851473280265910849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220591.P6851473280265910849

/-! ## A220591.P17944615493798782039

`A220595(A167614(n+1))+A185294(n)`
-/

namespace A220591.P17944615493798782039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A167614 (n + 1)).toNat + A185294 n

end

end A220591.P17944615493798782039

/-! ## A220591.P5271436580616835296

`A063435(n)*A220595(A167614(n+1))`
-/

namespace A220591.P5271436580616835296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A220595 (A167614 (n + 1)).toNat

end

end A220591.P5271436580616835296

/-! ## A220591.P15714107936715373508

`A119963(n)*A220595(A167614(n+1))`
-/

namespace A220591.P15714107936715373508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A220595 (A167614 (n + 1)).toNat

end

end A220591.P15714107936715373508

/-! ## A220591.P5546758042327410085

`A174544(n)*A220595(A167614(n+1))`
-/

namespace A220591.P5546758042327410085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 n * A220595 (A167614 (n + 1)).toNat

end

end A220591.P5546758042327410085

/-!
# A220592: Number of ways to reciprocally link elements of an n X 4 array either to themselves or to exactly two king-move neighbors.

The programs for A220592, there is no canonical definition to state claims against.
-/

/-! ## A220592.P17848801173095687221

`A220595(A374004(n+1))`
-/

namespace A220592.P17848801173095687221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A374004 (n + 1)).toNat

end

end A220592.P17848801173095687221

/-! ## A220592.P7716297072103317843

`A220595(A141214(n)+7)`
-/

namespace A220592.P7716297072103317843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A141214 n + 7).toNat

end

end A220592.P7716297072103317843

/-! ## A220592.P10504141077637131337

`A220595(A052905(n)+9)`
-/

namespace A220592.P10504141077637131337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A052905 n + 9).toNat

end

end A220592.P10504141077637131337

/-! ## A220592.P233985102105696057

`A220595(A055999(n)+10)`
-/

namespace A220592.P233985102105696057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A055999 n + 10).toNat

end

end A220592.P233985102105696057

/-! ## A220592.P8720506744002740314

`A220595(A167614(n+2)+1)`
-/

namespace A220592.P8720506744002740314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A167614 (n + 2) + 1).toNat

end

end A220592.P8720506744002740314

/-!
# A220593: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two king-move neighbors.

The programs for A220593, there is no canonical definition to state claims against.
-/

/-! ## A220593.P13220008471347714823

`A220595(A374005(n+1))`
-/

namespace A220593.P13220008471347714823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A374005 (n + 1)).toNat

end

end A220593.P13220008471347714823

/-! ## A220593.P13373062709990901603

`A220595(A167499(n+3))`
-/

namespace A220593.P13373062709990901603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A167499 (n + 3)).toNat

end

end A220593.P13373062709990901603

/-! ## A220593.P10657806997694583557

`A220595(A155212(n)+13)`
-/

namespace A220593.P10657806997694583557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A155212 n + 13).toNat

end

end A220593.P10657806997694583557

/-! ## A220593.P8499900975671697530

`A220595(A056000(n)+15)`
-/

namespace A220593.P8499900975671697530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A056000 n + 15).toNat

end

end A220593.P8499900975671697530

/-! ## A220593.P13521653383896513167

`A220595(A167614(n+3)+2)`
-/

namespace A220593.P13521653383896513167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A167614 (n + 3) + 2).toNat

end

end A220593.P13521653383896513167

/-!
# A220594: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two king-move neighbors.

The programs for A220594, there is no canonical definition to state claims against.
-/

/-! ## A220594.P3077772697204713124

`A220595(A374007(n+1))`
-/

namespace A220594.P3077772697204713124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A374007 (n + 1)).toNat

end

end A220594.P3077772697204713124

/-! ## A220594.P12949192651993125041

`A220595(A056115(n)+21)`
-/

namespace A220594.P12949192651993125041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A056115 n + 21).toNat

end

end A220594.P12949192651993125041

/-! ## A220594.P2456763056397304494

`A220595(eq[7, A131818(n+1)])`
-/

namespace A220594.P2456763056397304494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220594.P2456763056397304494

/-! ## A220594.P7871338260468655056

`A220595(A052905(n+4)-1-Δ[n²])`
-/

namespace A220594.P7871338260468655056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220595 (A052905 (n + 4) - 1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A220594.P7871338260468655056

/-!
# A220595: T(n,k) = Number of ways to reciprocally link elements of an n X k array either to themselves or to exactly two king-move neighbors.

The programs for A220595, there is no canonical definition to state claims against.
-/

/-! ## A220595.P17241785542630932166

`A032402(A173043(n))`
-/

namespace A220595.P17241785542630932166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032402 (A173043 n).toNat

end

end A220595.P17241785542630932166

/-! ## A220595.P16304030022206589360

`A279791(A081581(n))`
-/

namespace A220595.P16304030022206589360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279791 (A081581 n).toNat

end

end A220595.P16304030022206589360

/-! ## A220595.P18234962886857384984

`A279791(A157170(n))`
-/

namespace A220595.P18234962886857384984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279791 (A157170 n).toNat

end

end A220595.P18234962886857384984

/-! ## A220595.P7400678179028161766

`A333920(A174693(n))`
-/

namespace A220595.P7400678179028161766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333920 (A174693 n).toNat

end

end A220595.P7400678179028161766

/-! ## A220595.P10449394884431667695

`A120451(A255494(n))+1`
-/

namespace A220595.P10449394884431667695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120451 (A255494 n).toNat + 1

end

end A220595.P10449394884431667695

/-!
# A220596: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220596, there is no canonical definition to state claims against.
-/

/-! ## A220596.P7256964487928974226

`A220602(∑[4*n]+1)`
-/

namespace A220596.P7256964487928974226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220596.P7256964487928974226

/-! ## A220596.P16680678033352481459

`record[A003982(n)*A220602(n+1)]`
-/

namespace A220596.P16680678033352481459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220596.P16680678033352481459

/-! ## A220596.P15505252599311503250

`record[gcd(A049581(n), A220602(n+1))]`
-/

namespace A220596.P15505252599311503250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A220602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220596.P15505252599311503250

/-! ## A220596.P13205784090258475186

`A220602(A001844(n))+A107846(n)`
-/

namespace A220596.P13205784090258475186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A001844 n).toNat + A107846 n

end

end A220596.P13205784090258475186

/-! ## A220596.P15801637598295793891

`A107711(n)*A220602(A001844(n))`
-/

namespace A220596.P15801637598295793891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107711 n * A220602 (A001844 n).toNat

end

end A220596.P15801637598295793891

/-!
# A220597: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220597, the canonical program `A220597.P4483616611550582562` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220597 has offset 1).

The definition of A220597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220597.P4483616611550582562

`ogf((1+x+16x^2+7x^3+16x^4+23x^5-5x^6-2x^7)/(1-6x-7x^2-25x^3+3x^4-9x^5-22x^6+5x^7+2x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220597

/-- `ogf((1+x+16x^2+7x^3+16x^4+23x^5-5x^6-2x^7)/(1-6x-7x^2-25x^3+3x^4-9x^5-22x^6+5x^7+2x^8))` -/
def P4483616611550582562.Spec : Prop :=
  ∀ n, P4483616611550582562.a n = A220597 (n + 1)

theorem P4483616611550582562.correct : P4483616611550582562.Spec := by
  intro n
  simp only [A220597, Nat.add_sub_cancel]

end A220597

/-! ## A220597.P13985971562786912133

`A220602(∑[n+2]+4)`
-/

namespace A220597.P13985971562786912133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220597.P13985971562786912133

namespace A220597

/-- `A220602(∑[n+2]+4)` -/
def P13985971562786912133.Spec : Prop :=
  ∀ n, P13985971562786912133.a n = A220597 (n + 1)

end A220597

/-! ## A220597.P9852610093652669438

`or(1, A220602(A167614(n+1)))`
-/

namespace A220597.P9852610093652669438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220602 (A167614 (n + 1)).toNat)

end

end A220597.P9852610093652669438

namespace A220597

/-- `or(1, A220602(A167614(n+1)))` -/
def P9852610093652669438.Spec : Prop :=
  ∀ n, P9852610093652669438.a n = A220597 (n + 1)

end A220597

/-! ## A220597.P12595131827012435423

`A220602(A167614(n+1))+A185237(n)`
-/

namespace A220597.P12595131827012435423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A167614 (n + 1)).toNat + A185237 n

end

end A220597.P12595131827012435423

namespace A220597

/-- `A220602(A167614(n+1))+A185237(n)` -/
def P12595131827012435423.Spec : Prop :=
  ∀ n, P12595131827012435423.a n = A220597 (n + 1)

end A220597

/-! ## A220597.P14005539052314178390

`A220602(A167614(n+1))%A102397(n+1)`
-/

namespace A220597.P14005539052314178390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220602 (A167614 (n + 1)).toNat) (A102397 (n + 1))

end

end A220597.P14005539052314178390

namespace A220597

/-- `A220602(A167614(n+1))%A102397(n+1)` -/
def P14005539052314178390.Spec : Prop :=
  ∀ n, P14005539052314178390.a n = A220597 (n + 1)

end A220597

/-!
# A220598: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220598, there is no canonical definition to state claims against.
-/

/-! ## A220598.P9375600890113727465

`A220602(A374004(n+1))`
-/

namespace A220598.P9375600890113727465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A374004 (n + 1)).toNat

end

end A220598.P9375600890113727465

/-! ## A220598.P8854313725140479191

`A220602(A052905(n)+9)`
-/

namespace A220598.P8854313725140479191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A052905 n + 9).toNat

end

end A220598.P8854313725140479191

/-! ## A220598.P18008058911025858901

`A220602(A167614(n+2)+1)`
-/

namespace A220598.P18008058911025858901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A167614 (n + 2) + 1).toNat

end

end A220598.P18008058911025858901

/-! ## A220598.P645730056478825039

`A220602(A000217(n+3)+4)`
-/

namespace A220598.P645730056478825039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A000217 (n + 3) + 4).toNat

end

end A220598.P645730056478825039

/-! ## A220598.P7291888343227723283

`A220602(Δ[A023545(n+1)-n²])`
-/

namespace A220598.P7291888343227723283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (f1 (n + 1) - f1 n).toNat

end

end A220598.P7291888343227723283

/-!
# A220599: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two horizontal, vertical and antidiagonal neighbors, without 3-loops.

The programs for A220599, there is no canonical definition to state claims against.
-/

/-! ## A220599.P14598278123910174269

`A220602(A374005(n+1))`
-/

namespace A220599.P14598278123910174269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A374005 (n + 1)).toNat

end

end A220599.P14598278123910174269

/-! ## A220599.P9794804377846380898

`A220602(A167499(n+3))`
-/

namespace A220599.P9794804377846380898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A167499 (n + 3)).toNat

end

end A220599.P9794804377846380898

/-! ## A220599.P12585893722561825215

`A220602(A155212(n)+13)`
-/

namespace A220599.P12585893722561825215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A155212 n + 13).toNat

end

end A220599.P12585893722561825215

/-! ## A220599.P6838384004611714775

`A220602(A046691(n+3))`
-/

namespace A220599.P6838384004611714775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (A046691 (n + 3)).toNat

end

end A220599.P6838384004611714775

/-! ## A220599.P15479334700532094796

`A220602(eq[4, A193592(n)])`
-/

namespace A220599.P15479334700532094796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220599.P15479334700532094796

