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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A173600: Numbers k such that lambda(k) = tau(k).

The programs for A173600, there is no canonical definition to state claims against.
-/

/-! ## A173600.P12360817349603322640

`eq[A000005(n+1), A002322(n+1)]+1`
-/

namespace A173600.P12360817349603322640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173600.P12360817349603322640

/-! ## A173600.P8555365233525666348

`eq[A263027(n+1)-1, A000005(n+1)]+1`
-/

namespace A173600.P8555365233525666348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173600.P8555365233525666348

/-! ## A173600.P18047710029515096168

`eq[n-A277127(n+1)+1, A000005(n+1)]+1`
-/

namespace A173600.P18047710029515096168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277127 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173600.P18047710029515096168

/-! ## A173600.P7499295805402037350

`eq[A000010(n+1)/A000005(n+1), A034380(n+1)]+1`
-/

namespace A173600.P7499295805402037350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A173600.P7499295805402037350

/-! ## A173600.P5876899851399458984

`eq[A039649(n+1)-(A104194(n+1)+1), A000005(n+1)]+1`
-/

namespace A173600.P5876899851399458984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A104194 (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173600.P5876899851399458984

/-!
# A173601: Greatest inverse of A071542, i.e., a(n) = maximal i such that A071542(i) = n.

The programs for A173601, there is no canonical definition to state claims against.
-/

/-! ## A173601.P2688975113709465835

`A213708(n+1)-1`
-/

namespace A173601.P2688975113709465835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1) - 1

end

end A173601.P2688975113709465835

/-! ## A173601.P8872392581961172637

`A292164(A292164(C(n, n+1)))+A213708(n+1)`
-/

namespace A173601.P8872392581961172637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292164 (A292164 (Nat.choose n (n + 1))).toNat + A213708 (n + 1)

end

end A173601.P8872392581961172637

/-! ## A173601.P17515638367114656772

`∑[A086876(n)]-1`
-/

namespace A173601.P17515638367114656772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A173601.P17515638367114656772

/-! ## A173601.P5148477092468371814

`∑[A086876(n)%A000124(n)]`
-/

namespace A173601.P5148477092468371814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086876 n) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173601.P5148477092468371814

/-! ## A173601.P5830730603568071698

`A218604(n)+A179016(n)`
-/

namespace A173601.P5830730603568071698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 n + A179016 n

end

end A173601.P5830730603568071698

/-! ## A173601.P6142828753159655184

`A179016(n+1)-(A218603(n+1)+1)`
-/

namespace A173601.P6142828753159655184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (n + 1) - (A218603 (n + 1) + 1)

end

end A173601.P6142828753159655184

/-! ## A173601.P1239890531697053940

`A023443(A213708(n+1))`
-/

namespace A173601.P1239890531697053940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A213708 (n + 1)).toNat

end

end A173601.P1239890531697053940

/-!
# A173602: Decimal expansion of 2-e^(1/e).

The programs for A173602, there is no canonical definition to state claims against.
-/

/-! ## A173602.P12427281169543774470

`9-A073229(n+1)`
-/

namespace A173602.P12427281169543774470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A073229 (n + 1 + 1)

end

end A173602.P12427281169543774470

/-!
# A173603: 

The programs for A173603, there is no canonical definition to state claims against.
-/

/-! ## A173603.P2698823262445155720

`3*sqrt(2^a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A173603.P2698823262445155720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * Real.sqrt ((2 : ℝ) ^ (a (n - 1)))

end

end A173603.P2698823262445155720

/-!
# A173606: a(1) = 1, for n >= 2; a(n) = the smallest number h such that tau(h) = A000005(h) = 2 * a(n-1).

The programs for A173606, there is no canonical definition to state claims against.
-/

/-! ## A173606.P8893589717988996078

`A002182(n!+n)`
-/

namespace A173606.P8893589717988996078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (Nat.factorial n + n)

end

end A173606.P8893589717988996078

/-!
# A173609: a(1) = 0, for n >= 2; a(n) = the smallest number h such that tau(h) = A000005(h) = a(n-1) + 2.

The programs for A173609, there is no canonical definition to state claims against.
-/

/-! ## A173609.P8418769576412912516

`3*sqrt(2^a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A173609.P8418769576412912516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * Real.sqrt ((2 : ℝ) ^ (a (n - 1)))

end

end A173609.P8418769576412912516

/-!
# A173610: Bisections are {b(n)*b(n+1), n>=0} (shifted) and {b(n)^2, n>=0} where {b(n), n>=0} is the self-convolution of this sequence, with a(0)=1.

The programs for A173610, there is no canonical definition to state claims against.
-/

/-! ## A173610.P7074361439438173935

`A316975(A113282(n))`
-/

namespace A173610.P7074361439438173935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316975 (A113282 n).toNat

end

end A173610.P7074361439438173935

/-! ## A173610.P5106626960260529513

`A000006(A127897(n)+1)`
-/

namespace A173610.P5106626960260529513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A127897 n + 1).toNat

end

end A173610.P5106626960260529513

/-! ## A173610.P6177389454185436147

`A319522(A121101(n+1))`
-/

namespace A173610.P6177389454185436147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A121101 (n + 1)).toNat

end

end A173610.P6177389454185436147

/-! ## A173610.P13076200696484788242

`A294602(A235611(n+1)+A019565(n))`
-/

namespace A173610.P13076200696484788242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (A235611 (n + 1) + A019565 n).toNat

end

end A173610.P13076200696484788242

/-!
# A173611: Self-convolution of A173610.

The programs for A173611, there is no canonical definition to state claims against.
-/

/-! ## A173611.P12511566683853820957

`A173613(n)/a(n-1)` with `a(0)=1`
-/

namespace A173611.P12511566683853820957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A173613 n : ℚ) / a (n - 1)

end

end A173611.P12511566683853820957

/-! ## A173611.P372891999920292136

`sqrt(A173612(n))`
-/

namespace A173611.P372891999920292136
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A173612 n : ℝ)

end

end A173611.P372891999920292136

/-! ## A173611.P14906015466315056469

`∏[A173612(n)/A173613(n)]`
-/

namespace A173611.P14906015466315056469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173612 n : ℚ) / (A173613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173611.P14906015466315056469

/-!
# A173612: Odd bisection of A173610.

The programs for A173612, there is no canonical definition to state claims against.
-/

/-! ## A173612.P1375693095701601142

`A173611(n)²`
-/

namespace A173612.P1375693095701601142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173611 n ^ 2

end

end A173612.P1375693095701601142

/-! ## A173612.P15162457786168274527

`(A033999(n)*A173611(n))^2`
-/

namespace A173612.P15162457786168274527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n * A173611 n) ^ 2

end

end A173612.P15162457786168274527

/-! ## A173612.P6391140845846886186

`A173611(n)^A081668(A173579(n+1))`
-/

namespace A173612.P6391140845846886186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173611 n : ℚ) ^ (A081668 (A173579 (n + 1)).toNat : ℤ)

end

end A173612.P6391140845846886186

/-! ## A173612.P8567320578036292034

`A173611(n)*A173613(n+1)/A173611(n+1)`
-/

namespace A173612.P8567320578036292034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173611 n * A173613 (n + 1) : ℚ) / (A173611 (n + 1) : ℚ)

end

end A173612.P8567320578036292034

/-! ## A173612.P12962097595279694651

`A173611(n)^A048766(A016885(A048766(n)))`
-/

namespace A173612.P12962097595279694651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173611 n : ℚ) ^ (A048766 (A016885 (A048766 n).toNat).toNat : ℤ)

end

end A173612.P12962097595279694651

/-!
# A173613: Even bisection of A173610.

The programs for A173613, there is no canonical definition to state claims against.
-/

/-! ## A173613.P3474386736756208612

`A173611(log2(A011782(n)))*A173611(n)`
-/

namespace A173613.P3474386736756208612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173611 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat * A173611 n

end

end A173613.P3474386736756208612

/-! ## A173613.P17689223710627676360

`A173610(2*n)`
-/

namespace A173613.P17689223710627676360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173610 (2 * n)

end

end A173613.P17689223710627676360

/-! ## A173613.P4166001772509935249

`record[A173610(and(n, n-1))]`
-/

namespace A173613.P4166001772509935249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173610 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173613.P4166001772509935249

/-! ## A173613.P14566071159935119269

`record[A173610(n)^(-1)^n]`
-/

namespace A173613.P14566071159935119269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173610 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173613.P14566071159935119269

/-! ## A173613.P17424059960833692471

`record[A173610(floor(n/(n%2+1)))]`
-/

namespace A173613.P17424059960833692471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173610 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173613.P17424059960833692471

/-!
# A173614: a(n) = lcm_{p is prime and divisor of n} p-1.

The programs for A173614, there is no canonical definition to state claims against.
-/

/-! ## A173614.P1521161475483205250

`A002322(∏{p}[n+2, #])`
-/

namespace A173614.P1521161475483205250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173614.P1521161475483205250

/-! ## A173614.P15957321917943624219

`A011773(∏{p}[n+2, #])`
-/

namespace A173614.P15957321917943624219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173614.P15957321917943624219

/-! ## A173614.P15651449076783248822

`A109746(∏{p}[n+2, #])`
-/

namespace A173614.P15651449076783248822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109746 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173614.P15651449076783248822

/-! ## A173614.P1173596299117224213

`A277030(∏{p}[n+2, #])`
-/

namespace A173614.P1173596299117224213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173614.P1173596299117224213

/-! ## A173614.P16756145453054987699

`A345044(∏{p}[n+2, #])`
-/

namespace A173614.P16756145453054987699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173614.P16756145453054987699

/-! ## A173614.P17211125911485796758

`A345046(∏{p}[n+2, #])`
-/

namespace A173614.P17211125911485796758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345046 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A173614.P17211125911485796758

/-! ## A173614.P7613130213988438083

`A002322(A007947(n+2))`
-/

namespace A173614.P7613130213988438083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A007947 (n + 2)).toNat

end

end A173614.P7613130213988438083

/-! ## A173614.P18359687238454767294

`A002322(A204455(n+2))`
-/

namespace A173614.P18359687238454767294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A204455 (n + 2)).toNat

end

end A173614.P18359687238454767294

/-! ## A173614.P14907612976928009283

`A002322(A099985(n+2)/2)`
-/

namespace A173614.P14907612976928009283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A099985 (n + 2) : ℚ) / 2)).toNat

end

end A173614.P14907612976928009283

/-! ## A173614.P16042578853737575975

`A002322((n+2)/A003557(n+2))`
-/

namespace A173614.P16042578853737575975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A003557 (n + 2) : ℚ))).toNat

end

end A173614.P16042578853737575975

/-! ## A173614.P920085687682843858

`A011773((n+2)/A003557(n+2))`
-/

namespace A173614.P920085687682843858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A003557 (n + 2) : ℚ))).toNat

end

end A173614.P920085687682843858

/-! ## A173614.P2670519543070063259

`A173557(n+2)/A034380(A007947(n+2))`
-/

namespace A173614.P2670519543070063259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 2) : ℚ) / (A034380 (A007947 (n + 2)).toNat : ℚ)

end

end A173614.P2670519543070063259

/-! ## A173614.P14222138262784701499

`gcd(A277030(A007947(n+2)), A277030(n+2))`
-/

namespace A173614.P14222138262784701499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277030 (A007947 (n + 2)).toNat) (A277030 (n + 2))

end

end A173614.P14222138262784701499

/-! ## A173614.P412449110419775816

`A002322(A099985(n+2))`
-/

namespace A173614.P412449110419775816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A099985 (n + 2)).toNat

end

end A173614.P412449110419775816

/-! ## A173614.P17335073195243993099

`A290103(A290641(n+2))`
-/

namespace A173614.P17335073195243993099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A290641 (n + 2)).toNat

end

end A173614.P17335073195243993099

/-! ## A173614.P14073876636487211555

`A011773(A007947((n+2)²))`
-/

namespace A173614.P14073876636487211555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (A007947 ((n + 2) ^ 2)).toNat

end

end A173614.P14073876636487211555

/-!
# A173616: The first n digits of Reverse(A002275(n)^A002275(n)).

The programs for A173616, there is no canonical definition to state claims against.
-/

/-! ## A173616.P5559562595789561142

`A193345(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A173616.P5559562595789561142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193345 (n + 1) + 10 * a (n - 1)

end

end A173616.P5559562595789561142

/-! ## A173616.P18422427064753946381

`10*a(n-1)+9-A225458(n)` with `a(0)=1`
-/

namespace A173616.P18422427064753946381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (9 - A225458 n)

end

end A173616.P18422427064753946381

/-!
# A173617: Numbers k such that phi(tau(k)) = rad(k).

The programs for A173617, there is no canonical definition to state claims against.
-/

/-! ## A173617.P2896549927032932805

`eq[A000010(A000005(n+1)), A007947(n+1)]+1`
-/

namespace A173617.P2896549927032932805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173617.P2896549927032932805

/-! ## A173617.P14879391849379814106

`eq[A007947(n+1), A163109(n+1)]+1`
-/

namespace A173617.P14879391849379814106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173617.P14879391849379814106

/-! ## A173617.P4393039448098158167

`eq[(n+1)/A003557(n+1), A000010(A334954(n+1)-1)]+1`
-/

namespace A173617.P4393039448098158167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A334954 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A173617.P4393039448098158167

/-!
# A173618: Numbers k such that tau(phi(k)) = rad(k).

The programs for A173618, there is no canonical definition to state claims against.
-/

/-! ## A173618.P14010598284494485224

`eq[A000005(A000010(n+1)), A007947(n+1)]+1`
-/

namespace A173618.P14010598284494485224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173618.P14010598284494485224

/-! ## A173618.P17275033931265757787

`eq[A007947(n+1), A062821(n+1)]+1`
-/

namespace A173618.P17275033931265757787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173618.P17275033931265757787

/-! ## A173618.P2968024774206780405

`eq[A076618(n+1)-1, A062821(n+1)]+1`
-/

namespace A173618.P2968024774206780405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173618.P2968024774206780405

/-!
# A173619: Differences between consecutive pseudoprimes to base 2.

The programs for A173619, there is no canonical definition to state claims against.
-/

/-! ## A173619.P3100793631126201643

`Δ[A001567(n+1)]`
-/

namespace A173619.P3100793631126201643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173619.P3100793631126201643

/-! ## A173619.P15527166209278427758

`A001567(n+2)-A001567(n+1)`
-/

namespace A173619.P15527166209278427758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2) - A001567 (n + 1)

end

end A173619.P15527166209278427758

/-! ## A173619.P9685533219411764426

`Δ[∪[A050217(n+1), A080747(n+1)]]`
-/

namespace A173619.P9685533219411764426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P9685533219411764426

/-! ## A173619.P18214673909628210312

`Δ[∪[A066488(n+1), A080747(n+1)]]`
-/

namespace A173619.P18214673909628210312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P18214673909628210312

/-! ## A173619.P18137527257812834944

`Δ[∪[A002997(n+1), A153508(n+1)]]`
-/

namespace A173619.P18137527257812834944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P18137527257812834944

/-! ## A173619.P17742036368335661756

`Δ[∪[A020230(n+1), A178723(n+1)]]`
-/

namespace A173619.P17742036368335661756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P17742036368335661756

/-! ## A173619.P8781527495899052848

`Δ[∪[A006970(n+1), A227136(n+1)]]`
-/

namespace A173619.P8781527495899052848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227136 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P8781527495899052848

/-! ## A173619.P9719795526702725447

`Δ[∪[A080747(n+1), A153508(n+1)]]`
-/

namespace A173619.P9719795526702725447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153508 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P9719795526702725447

/-! ## A173619.P17149339885929128947

`A001567(A020725(n+1))%A001567(n+1)`
-/

namespace A173619.P17149339885929128947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001567 (A020725 (n + 1)).toNat) (A001567 (n + 1))

end

end A173619.P17149339885929128947

/-! ## A173619.P17509070592306568112

`Δ[record[A001567(A328399(n))]]`
-/

namespace A173619.P17509070592306568112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173619.P17509070592306568112

/-! ## A173619.P8545764779161574883

`Δ[record[A001567(A344180(n))]]`
-/

namespace A173619.P8545764779161574883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173619.P8545764779161574883

/-! ## A173619.P13263524170907797027

`Δ[∩[A020136(n+1), A020137(n+1)]]`
-/

namespace A173619.P13263524170907797027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A173619.P13263524170907797027

/-! ## A173619.P1024385319010582576

`Δ[record[A001567(A065648(n))]]`
-/

namespace A173619.P1024385319010582576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173619.P1024385319010582576

/-! ## A173619.P2387772432506012243

`Δ[record[A001567(A263275(n))]]`
-/

namespace A173619.P2387772432506012243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173619.P2387772432506012243

/-!
# A173620: Main diagonal of array A[k,n] = n-th Fibonacci number which becomes prime when digits (base k) are reversed.

The programs for A173620, there is no canonical definition to state claims against.
-/

/-! ## A173620.P12507868069039258078

`A035516(A035517(n+1)+A035509(n))`
-/

namespace A173620.P12507868069039258078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A035517 (n + 1) + A035509 n).toNat

end

end A173620.P12507868069039258078

/-! ## A173620.P16645002155168192737

`A035516(A066099(n+1)+A035509(n))`
-/

namespace A173620.P16645002155168192737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A066099 (n + 1) + A035509 n).toNat

end

end A173620.P16645002155168192737

/-! ## A173620.P9530731133567691377

`A035516(A141110(3*n+5)+A035509(n))`
-/

namespace A173620.P9530731133567691377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A141110 (3 * n + 5) + A035509 n).toNat

end

end A173620.P9530731133567691377

/-! ## A173620.P17937741072451599616

`A000045(or(A085090(n+2), A329228(2*(n+1))))`
-/

namespace A173620.P17937741072451599616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor (A085090 (n + 2)) (A329228 (2 * (n + 1)))).toNat

end

end A173620.P17937741072451599616

/-!
# A173622: Triangle T(n,m) read by rows: The number of m-Schroeder paths of order n with 2 diagonal steps.

The programs for A173622, there is no canonical definition to state claims against.
-/

/-! ## A173622.P13472070750365880075

`gcd(n+1, 210)*A324696(A048194(n+1))`
-/

namespace A173622.P13472070750365880075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) 210 : ℤ) * A324696 (A048194 (n + 1)).toNat

end

end A173622.P13472070750365880075

/-! ## A173622.P14736237656523356211

`A261422(A157412(3*(n+2))+A145160(n))`
-/

namespace A173622.P14736237656523356211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 (A157412 (3 * (n + 2)) + A145160 n).toNat

end

end A173622.P14736237656523356211

/-!
# A173626: Primes p such that p-1 has no prime factors larger than sqrt(p).

The programs for A173626, the canonical program `A173626.P10775848943177706528` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173626 has offset 1).

The definition of A173626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173626.P10775848943177706528

`p?[A048098(n+1)+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A173626

/-- `p?[A048098(n+1)+1]` -/
def P10775848943177706528.Spec : Prop :=
  ∀ n, P10775848943177706528.a n = A173626 (n + 1)

theorem P10775848943177706528.correct : P10775848943177706528.Spec := by
  intro n
  simp only [A173626, Nat.add_sub_cancel]

end A173626

/-! ## A173626.P7312642927761064513

`record[A006530(A048098(n+1)+1)]`
-/

namespace A173626.P7312642927761064513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173626.P7312642927761064513

namespace A173626

/-- `record[A006530(A048098(n+1)+1)]` -/
def P7312642927761064513.Spec : Prop :=
  ∀ n, P7312642927761064513.a n = A173626 (n + 1)

end A173626

/-! ## A173626.P14909292321797782038

`record[A020639(A048098(n+1)+1)]`
-/

namespace A173626.P14909292321797782038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173626.P14909292321797782038

namespace A173626

/-- `record[A020639(A048098(n+1)+1)]` -/
def P14909292321797782038.Spec : Prop :=
  ∀ n, P14909292321797782038.a n = A173626 (n + 1)

end A173626

/-! ## A173626.P18388153915872648848

`record[A014963(A048098(n+1)+1)]`
-/

namespace A173626.P18388153915872648848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173626.P18388153915872648848

namespace A173626

/-- `record[A014963(A048098(n+1)+1)]` -/
def P18388153915872648848.Spec : Prop :=
  ∀ n, P18388153915872648848.a n = A173626 (n + 1)

end A173626

/-! ## A173626.P1312587243017370582

`record[A033677(A048098(n+1)+1)]`
-/

namespace A173626.P1312587243017370582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A048098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173626.P1312587243017370582

namespace A173626

/-- `record[A033677(A048098(n+1)+1)]` -/
def P1312587243017370582.Spec : Prop :=
  ∀ n, P1312587243017370582.a n = A173626 (n + 1)

end A173626

/-!
# A173628: Primes p such that p^3 + 6, p^3 + 12 and p^3 + 18 are all prime.

The programs for A173628, there is no canonical definition to state claims against.
-/

/-! ## A173628.P16133398130676418058

`10*A173629(n+1)+1`
-/

namespace A173628.P16133398130676418058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A173629 (n + 1) + 1

end

end A173628.P16133398130676418058

/-!
# A173629: Numbers k with property that p = 10k + 1, p^3 + 6, p^3 + 12 and p^3 + 18 are all prime.

The programs for A173629, there is no canonical definition to state claims against.
-/

/-! ## A173629.P8554137576744537450

`floor(A173628(n+1)/10)`
-/

namespace A173629.P8554137576744537450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173628 (n + 1) : ℚ) / 10⌋

end

end A173629.P8554137576744537450

/-! ## A173629.P3995650344656050161

`(A173628(n+1)+A057428(3*n+2))/10`
-/

namespace A173629.P3995650344656050161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173628 (n + 1) + A057428 (3 * n + 2) : ℚ) / 10

end

end A173629.P3995650344656050161

/-! ## A173629.P12010707742201388946

`round(A173628(n+1)/10)/A007318(C(n, n²))`
-/

namespace A173629.P12010707742201388946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A173628 (n + 1) : ℚ) / 10) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A173629.P12010707742201388946

/-! ## A173629.P6179695615096311007

`A063524(2*n+3)+round(A173628(n+1)/10)`
-/

namespace A173629.P6179695615096311007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (2 * n + 3) + SequenceMachineLib.roundAway ((A173628 (n + 1) : ℚ) / 10)

end

end A173629.P6179695615096311007

/-! ## A173629.P8094254592409055169

`A001222(gcd(n, n+1))+round(A173628(n+1)/10)`
-/

namespace A173629.P8094254592409055169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) + SequenceMachineLib.roundAway ((A173628 (n + 1) : ℚ) / 10)

end

end A173629.P8094254592409055169

/-! ## A173629.P2993063592420516062

`A007318(∑[n])*round(A173628(n+1)/10)`
-/

namespace A173629.P2993063592420516062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A173628 (n + 1) : ℚ) / 10)

end

end A173629.P2993063592420516062

/-!
# A173630: Denominator of A002445(n)/A145979(n).

The programs for A173630, there is no canonical definition to state claims against.
-/

/-! ## A173630.P4938983052724627940

`(n+2)/gcd(n+2, A002446(n))`
-/

namespace A173630.P4938983052724627940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A002446 n) : ℚ)

end

end A173630.P4938983052724627940

/-! ## A173630.P11464866313609074331

`lcm(n+2, A006954(n+1))/A006954(n+1)`
-/

namespace A173630.P11464866313609074331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (A006954 (n + 1)) : ℚ) / (A006954 (n + 1) : ℚ)

end

end A173630.P11464866313609074331

/-! ## A173630.P2090806857306532699

`A145979(n)/gcd(A002445(n), A145979(n))`
-/

namespace A173630.P2090806857306532699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145979 n : ℚ) / (Int.gcd (A002445 n) (A145979 n) : ℚ)

end

end A173630.P2090806857306532699

/-! ## A173630.P12253065333985637260

`gcd(A060789(n+2), A063462(A114112(n+3)))`
-/

namespace A173630.P12253065333985637260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060789 (n + 2)) (A063462 (A114112 (n + 3)).toNat)

end

end A173630.P12253065333985637260

/-! ## A173630.P5979360179740761968

`A060789(n+2)%(A007967(A085451(3*(n+1)))*A256268(n))`
-/

namespace A173630.P5979360179740761968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060789 (n + 2)) (A007967 (A085451 (3 * (n + 1))).toNat * A256268 n)

end

end A173630.P5979360179740761968

/-!
# A173631: a(n) = ceiling(sqrt(4*P_n)), where P_n is product of first n primes.

The programs for A173631, the canonical program `A173631.P3542235995944093546` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173631 has offset 0).

The definition of A173631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173631.P3542235995944093546

`ceil(sqrt(4*A002110(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173631

/-- `ceil(sqrt(4*A002110(n)))` -/
def P3542235995944093546.Spec : Prop :=
  ∀ n, P3542235995944093546.a n = A173631 n

theorem P3542235995944093546.correct : P3542235995944093546.Spec := by
  intro n
  simp only [A173631]

end A173631

/-! ## A173631.P16738329542763341614

`ceil(∏[sqrt(A175787(n+1))])`
-/

namespace A173631.P16738329542763341614
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175787 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A173631.P16738329542763341614

namespace A173631

/-- `ceil(∏[sqrt(A175787(n+1))])` -/
def P16738329542763341614.Spec : Prop :=
  ∀ n, P16738329542763341614.a n = A173631 n

end A173631

/-! ## A173631.P12699096194377810017

`ceil(sqrt(A102476(n+1)))`
-/

namespace A173631.P12699096194377810017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A102476 (n + 1) : ℝ)⌉

end

end A173631.P12699096194377810017

namespace A173631

/-- `ceil(sqrt(A102476(n+1)))` -/
def P12699096194377810017.Spec : Prop :=
  ∀ n, P12699096194377810017.a n = A173631 n

end A173631

/-! ## A173631.P14369545186826142438

`ceil(2*sqrt(sqrt(A135516(n))))`
-/

namespace A173631.P14369545186826142438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (Real.sqrt (A135516 n : ℝ))⌉

end

end A173631.P14369545186826142438

namespace A173631

/-- `ceil(2*sqrt(sqrt(A135516(n))))` -/
def P14369545186826142438.Spec : Prop :=
  ∀ n, P14369545186826142438.a n = A173631 n

end A173631

/-! ## A173631.P17252102031152757933

`ceil(sqrt(A272590(n+1)))`
-/

namespace A173631.P17252102031152757933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A272590 (n + 1) : ℝ)⌉

end

end A173631.P17252102031152757933

namespace A173631

/-- `ceil(sqrt(A272590(n+1)))` -/
def P17252102031152757933.Spec : Prop :=
  ∀ n, P17252102031152757933.a n = A173631 n

end A173631

/-!
# A173632: a(n)=sqrt((A173631(n))^2-4*P_n), where P_n is product of first n primes, if this value is integral and a(n)=0, otherwise.

The programs for A173632, there is no canonical definition to state claims against.
-/

/-! ## A173632.P4020363280936614594

`A061060(A028310(n))%A302752(n+1)`
-/

namespace A173632.P4020363280936614594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061060 (A028310 n).toNat) (A302752 (n + 1))

end

end A173632.P4020363280936614594

/-!
# A173633: a(n) = a(n-2) + a(n-3) - [a(n-3)/4] - [a(n-4)/2] - [a(n-5)/4].

The programs for A173633, the canonical program `A173633.P16342308059723214019` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173633 has offset 0).

The definition of A173633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173633.P16342308059723214019

`a(n-5)+4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3, a(6)=4, a(7)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173633

/-- `a(n-5)+4` -/
def P16342308059723214019.Spec : Prop :=
  ∀ n, (P16342308059723214019.a n : ℤ) = A173633 n

theorem P16342308059723214019.correct : P16342308059723214019.Spec := by
  intro n
  simp only [A173633]

end A173633

/-! ## A173633.P10996116824066940271

`A028310(A250120(n)-(4*n+1))`
-/

namespace A173633.P10996116824066940271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A250120 n - (4 * n + 1 : ℤ)).toNat

end

end A173633.P10996116824066940271

namespace A173633

/-- `A028310(A250120(n)-(4*n+1))` -/
def P10996116824066940271.Spec : Prop :=
  ∀ n, P10996116824066940271.a n = A173633 n

end A173633

/-! ## A173633.P12711302199238443110

`A028310((A250120(n)+3)%(n+1))`
-/

namespace A173633.P12711302199238443110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A250120 n + 3) (n + 1 : ℤ)).toNat

end

end A173633.P12711302199238443110

namespace A173633

/-- `A028310((A250120(n)+3)%(n+1))` -/
def P12711302199238443110.Spec : Prop :=
  ∀ n, P12711302199238443110.a n = A173633 n

end A173633

/-! ## A173633.P1526829996685811068

`A250120(n)-(A326178(n)+3*n)`
-/

namespace A173633.P1526829996685811068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - (A326178 n + (3 * n : ℤ))

end

end A173633.P1526829996685811068

namespace A173633

/-- `A250120(n)-(A326178(n)+3*n)` -/
def P1526829996685811068.Spec : Prop :=
  ∀ n, P1526829996685811068.a n = A173633 n

end A173633

/-! ## A173633.P13358219392320068001

`A004523(A002265(a(n-2))+n)` with `a(0)=1, a(1)=1`
-/

namespace A173633.P13358219392320068001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004523 (A002265 (a (n - 2)).toNat + (n : ℤ)).toNat

end

end A173633.P13358219392320068001

namespace A173633

/-- `A004523(A002265(a(n-2))+n)` -/
def P13358219392320068001.Spec : Prop :=
  ∀ n, P13358219392320068001.a n = A173633 n

end A173633

/-! ## A173633.P17679738270486215320

`A065033(∑[a(n-5)%4])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=0, a(5)=1, a(6)=2, a(7)=1, a(8)=3, a(9)=1`
-/

namespace A173633.P17679738270486215320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 3, 0, 1, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173633.P17679738270486215320

namespace A173633

/-- `A065033(∑[a(n-5)%4])` -/
def P17679738270486215320.Spec : Prop :=
  ∀ n, P17679738270486215320.a n = A173633 n

end A173633

/-! ## A173633.P6187188170919163175

`A065033(∑[a(n-5)^a(n-1)])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=0, a(5)=1, a(6)=2, a(7)=1, a(8)=3, a(9)=1`
-/

namespace A173633.P6187188170919163175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 3, 0, 1, 2, 1, 3, 1] fun n f1 =>
  f1 (n - 5) ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173633.P6187188170919163175

namespace A173633

/-- `A065033(∑[a(n-5)^a(n-1)])` -/
def P6187188170919163175.Spec : Prop :=
  ∀ n, P6187188170919163175.a n = A173633 n

end A173633

/-! ## A173633.P8848090248903318863

`A004524(A037915(a(n-2))+n)` with `a(0)=1, a(1)=1`
-/

namespace A173633.P8848090248903318863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004524 (A037915 (a (n - 2)).toNat + (n : ℤ)).toNat

end

end A173633.P8848090248903318863

namespace A173633

/-- `A004524(A037915(a(n-2))+n)` -/
def P8848090248903318863.Spec : Prop :=
  ∀ n, P8848090248903318863.a n = A173633 n

end A173633

/-! ## A173633.P1749434174657685930

`A000267(A008497(record[n/(2-n%2)]))`
-/

namespace A173633.P1749434174657685930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A008497 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A173633.P1749434174657685930

namespace A173633

/-- `A000267(A008497(record[n/(2-n%2)]))` -/
def P1749434174657685930.Spec : Prop :=
  ∀ n, P1749434174657685930.a n = A173633 n

end A173633

/-! ## A173633.P13061248800397165941

`A004737(A250120(n)+n*(n-2))`
-/

namespace A173633.P13061248800397165941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A250120 n + (n : ℤ) * ((n : ℤ) - 2)).toNat

end

end A173633.P13061248800397165941

namespace A173633

/-- `A004737(A250120(n)+n*(n-2))` -/
def P13061248800397165941.Spec : Prop :=
  ∀ n, P13061248800397165941.a n = A173633 n

end A173633

/-!
# A173634: Even numbers that are not the sum of 2 Ramanujan primes (A104272).

The programs for A173634, there is no canonical definition to state claims against.
-/

/-! ## A173634.P11307943125600598316

`2*(eq[0, A204814(n+1)]+1)`
-/

namespace A173634.P11307943125600598316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A173634.P11307943125600598316

/-! ## A173634.P13963515609226638817

`A005843(eq[0, A204814(n+1)]+1)`
-/

namespace A173634.P13963515609226638817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A173634.P13963515609226638817

/-! ## A173634.P4432646266319298908

`record[gcd(A005408(n)+1, A204814(n+1))]`
-/

namespace A173634.P4432646266319298908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 n + 1) (A204814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173634.P4432646266319298908

/-! ## A173634.P13524440832077320822

`lt[A052905(A036445(n+5)), 3*n+4]`
-/

namespace A173634.P13524440832077320822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A036445 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173634.P13524440832077320822

/-! ## A173634.P5635783637695154712

`lt[A280293(A260439(n+1)), A374633(n+1)]`
-/

namespace A173634.P5635783637695154712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280293 (A260439 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173634.P5635783637695154712

/-!
# A173635: Period 5 sequence: 1, 1, 4, 4, 2, ...

The programs for A173635, the canonical program `A173635.P17609885823078534944` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173635 has offset 0).

The definition of A173635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173635.P17609885823078534944

`(1+floor(n%5/2))²%7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173635

/-- `(1+floor(n%5/2))²%7` -/
def P17609885823078534944.Spec : Prop :=
  ∀ n, P17609885823078534944.a n = A173635 n

theorem P17609885823078534944.correct : P17609885823078534944.Spec := by
  intro n
  simp only [A173635]

end A173635

/-!
# A173636: Number of positive solutions of equation x(x+n)=y*y.

The programs for A173636, there is no canonical definition to state claims against.
-/

/-! ## A173636.P1444390819616735791

`A115878(gcd(n, C(2, n)))`
-/

namespace A173636.P1444390819616735791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (Nat.gcd n (Nat.choose 2 n))

end

end A173636.P1444390819616735791

/-! ## A173636.P4637225945880334983

`A115878(floor(acot(n)+n))`
-/

namespace A173636.P4637225945880334983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A173636.P4637225945880334983

/-! ## A173636.P354483249070781458

`A115878(round(acot(n)+n))`
-/

namespace A173636.P354483249070781458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A173636.P354483249070781458

/-! ## A173636.P12944452811388587511

`A115878(n^floor(atan(n)))`
-/

namespace A173636.P12944452811388587511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A173636.P12944452811388587511

/-! ## A173636.P3173952062094046461

`A115878(or(n, floor(acot(n))))`
-/

namespace A173636.P3173952062094046461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A173636.P3173952062094046461

/-! ## A173636.P8434196358919109808

`A115878(abs(1-n)+1)`
-/

namespace A173636.P8434196358919109808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (|1 - (n : ℤ)| + 1).toNat

end

end A173636.P8434196358919109808

/-! ## A173636.P10907553397529845553

`∑{d}[lcm(4, n)/4, A001221(#)]`
-/

namespace A173636.P10907553397529845553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A173636.P10907553397529845553

/-! ## A173636.P16637995969240432876

`∑{d}[A026741(n), A024361(#)]`
-/

namespace A173636.P16637995969240432876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024361 d

end

end A173636.P16637995969240432876

/-! ## A173636.P1015835419827823897

`∑{d}[A064680(n), A024361(#)]`
-/

namespace A173636.P1015835419827823897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024361 d

end

end A173636.P1015835419827823897

/-! ## A173636.P11237850078612676192

`∑{d}[sqrt(A181318(n)), A001221(#)]`
-/

namespace A173636.P11237850078612676192
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A173636.P11237850078612676192

/-!
# A173638: The n-th semiprime plus n gives a palindrome in base 10.

The programs for A173638, there is no canonical definition to state claims against.
-/

/-! ## A173638.P18033289399108375559

`record[A047813(A100493(n+1))-A001358(n+1)]`
-/

namespace A173638.P18033289399108375559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A100493 (n + 1)).toNat - A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173638.P18033289399108375559

/-!
# A173639: Numbers n such that the sum of the digits of 11*n is odd.

The programs for A173639, the canonical program `A173639.P4181958568565848688` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173639 has offset 1).

The definition of A173639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173639.P5424114318673355394

`A060979(n+1)/11`
-/

namespace A173639.P5424114318673355394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060979 (n + 1) : ℚ) / 11

end

end A173639.P5424114318673355394

namespace A173639

/-- `A060979(n+1)/11` -/
def P5424114318673355394.Spec : Prop :=
  ∀ n, P5424114318673355394.a n = (A173639 (n + 1) : ℚ)

end A173639

/-! ## A173639.P4181958568565848688

`eq[0, A059841(A245627(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173639

/-- `eq[0, A059841(A245627(n))]` -/
def P4181958568565848688.Spec : Prop :=
  ∀ n, (P4181958568565848688.a n : ℤ) = A173639 (n + 1)

theorem P4181958568565848688.correct : P4181958568565848688.Spec := by
  intro n
  simp only [A173639, Nat.add_sub_cancel]

end A173639

/-! ## A173639.P1334037580493909268

`eq[1, A088705(A245627(n)²)]`
-/

namespace A173639.P1334037580493909268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A245627 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173639.P1334037580493909268

namespace A173639

/-- `eq[1, A088705(A245627(n)²)]` -/
def P1334037580493909268.Spec : Prop :=
  ∀ n, (P1334037580493909268.a n : ℤ) = A173639 (n + 1)

end A173639

/-! ## A173639.P2128015229552985818

`eq[2, A065338(A245627(n)²+1)]`
-/

namespace A173639.P2128015229552985818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A245627 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173639.P2128015229552985818

namespace A173639

/-- `eq[2, A065338(A245627(n)²+1)]` -/
def P2128015229552985818.Spec : Prop :=
  ∀ n, (P2128015229552985818.a n : ℤ) = A173639 (n + 1)

end A173639

/-! ## A173639.P10558087389637168009

`eq[A000007(n), A142150(A245627(n))]`
-/

namespace A173639.P10558087389637168009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173639.P10558087389637168009

namespace A173639

/-- `eq[A000007(n), A142150(A245627(n))]` -/
def P10558087389637168009.Spec : Prop :=
  ∀ n, (P10558087389637168009.a n : ℤ) = A173639 (n + 1)

end A173639

/-! ## A173639.P5017417735578185044

`eq[A000038(n), A142150(A245627(n))]`
-/

namespace A173639.P5017417735578185044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173639.P5017417735578185044

namespace A173639

/-- `eq[A000038(n), A142150(A245627(n))]` -/
def P5017417735578185044.Spec : Prop :=
  ∀ n, (P5017417735578185044.a n : ℤ) = A173639 (n + 1)

end A173639

/-! ## A173639.P3338417002260388436

`eq[1, A179081(11*n)]`
-/

namespace A173639.P3338417002260388436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173639.P3338417002260388436

namespace A173639

/-- `eq[1, A179081(11*n)]` -/
def P3338417002260388436.Spec : Prop :=
  ∀ n, (P3338417002260388436.a n : ℤ) = A173639 (n + 1)

end A173639

/-! ## A173639.P755938250895279093

`A106612(A060979(n+1))`
-/

namespace A173639.P755938250895279093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A060979 (n + 1)).toNat

end

end A173639.P755938250895279093

namespace A173639

/-- `A106612(A060979(n+1))` -/
def P755938250895279093.Spec : Prop :=
  ∀ n, P755938250895279093.a n = A173639 (n + 1)

end A173639

/-! ## A173639.P9881379250328081281

`eq[1, A000035(A007953(11*n))]`
-/

namespace A173639.P9881379250328081281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007953 (11 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173639.P9881379250328081281

namespace A173639

/-- `eq[1, A000035(A007953(11*n))]` -/
def P9881379250328081281.Spec : Prop :=
  ∀ n, (P9881379250328081281.a n : ℤ) = A173639 (n + 1)

end A173639

/-!
# A173641: Primes p such that p^2+4 and p^2-6 are both prime.

The programs for A173641, there is no canonical definition to state claims against.
-/

/-! ## A173641.P12612365631536821661

`∩[A062324(n+1), A128925(n+1)]`
-/

namespace A173641.P12612365631536821661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173641.P12612365631536821661

/-! ## A173641.P15083808768464307584

`∩[A062324(n+1), A137270(n+1)]`
-/

namespace A173641.P15083808768464307584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173641.P15083808768464307584

/-! ## A173641.P1842192486955997765

`∩[A028879(n+1), A062324(n+1)]`
-/

namespace A173641.P1842192486955997765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173641.P1842192486955997765

/-! ## A173641.P13478828775769359416

`∩[A007591(n+1), A128925(n+1)]`
-/

namespace A173641.P13478828775769359416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173641.P13478828775769359416

/-! ## A173641.P7949199192436765870

`∩[A007591(n+1), A137270(n+1)]`
-/

namespace A173641.P7949199192436765870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173641.P7949199192436765870

/-!
# A173642: A distribution of electrons. By rows whose sum is A000027 (for periodic table).

The programs for A173642, there is no canonical definition to state claims against.
-/

/-! ## A173642.P11399098207021315704

`A335105(2*(n+1))-A335105(Δ[n²])`
-/

namespace A173642.P11399098207021315704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335105 (2 * (n + 1)) - A335105 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A173642.P11399098207021315704

/-! ## A173642.P16102878608016190057

`A234305(record[A187184(A007947(n+1))])`
-/

namespace A173642.P16102878608016190057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173642.P16102878608016190057

/-! ## A173642.P18184769007990742054

`A234305(n+1)+A000007(A124773(n))`
-/

namespace A173642.P18184769007990742054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234305 (n + 1) + A000007 (A124773 n).toNat

end

end A173642.P18184769007990742054

/-! ## A173642.P17027098879899535855

`or(A036987(A022279(n)), A234305(n+1))`
-/

namespace A173642.P17027098879899535855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A022279 n).toNat) (A234305 (n + 1))

end

end A173642.P17027098879899535855

/-! ## A173642.P2351639399373447151

`A234305(n+1)+A066503(A033246(n+1))`
-/

namespace A173642.P2351639399373447151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234305 (n + 1) + A066503 (A033246 (n + 1)).toNat

end

end A173642.P2351639399373447151

/-! ## A173642.P11117661131838742537

`A001222(A352445(n+1))*A234305(n+1)`
-/

namespace A173642.P11117661131838742537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A352445 (n + 1)).toNat * A234305 (n + 1)

end

end A173642.P11117661131838742537

/-! ## A173642.P1583280569752266407

`A234305(A199426(A199426(n+1)))`
-/

namespace A173642.P1583280569752266407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234305 (A199426 (A199426 (n + 1)).toNat).toNat

end

end A173642.P1583280569752266407

/-! ## A173642.P3998991883873740273

`A234305(A091995(A273751(n+1)))`
-/

namespace A173642.P3998991883873740273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234305 (A091995 (A273751 (n + 1)).toNat).toNat

end

end A173642.P3998991883873740273

/-! ## A173642.P11970104253593492549

`and(A002223(n+1), A234305(n+1))`
-/

namespace A173642.P11970104253593492549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A234305 (n + 1))

end

end A173642.P11970104253593492549

/-! ## A173642.P10629998835221624943

`A234305(A265436(A183867(n+2)))`
-/

namespace A173642.P10629998835221624943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234305 (A265436 (A183867 (n + 2)).toNat).toNat

end

end A173642.P10629998835221624943

/-!
# A173643: Positive numbers of form 2^m - 2^l - 3*2^k (A172233) divisible by 9, divided by 9.

The programs for A173643, there is no canonical definition to state claims against.
-/

/-! ## A173643.P10448373205263493175

`lt[A006667(n+1), 3]+1`
-/

namespace A173643.P10448373205263493175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173643.P10448373205263493175

/-! ## A173643.P2115466153231948490

`lt[A078719(n+1), 4]+1`
-/

namespace A173643.P2115466153231948490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173643.P2115466153231948490

/-! ## A173643.P10165272318119318783

`lt[A004526(A220182(n+1)), 3]+1`
-/

namespace A173643.P10165272318119318783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A220182 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173643.P10165272318119318783

/-! ## A173643.P15050713962998556080

`lt[A286380(A000265(n+1)), 3]+1`
-/

namespace A173643.P15050713962998556080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A000265 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A173643.P15050713962998556080

/-! ## A173643.P659826343186278559

`∪[A062053(n+1), A181666(n+1)]`
-/

namespace A173643.P659826343186278559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173643.P659826343186278559

/-! ## A173643.P3284018145780986605

`eq[1, A000009(A006667(2*(n+1)))]+1`
-/

namespace A173643.P3284018145780986605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A006667 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173643.P3284018145780986605

/-!
# A173645: Partial sums of floor(n^2/11).

The programs for A173645, the canonical program `A173645.P14862527155654226409` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173645 has offset 0).

The definition of A173645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173645.P14862527155654226409

`round((2*n^3+3*n²-23*n-12)/66)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173645

/-- `round((2*n^3+3*n²-23*n-12)/66)` -/
def P14862527155654226409.Spec : Prop :=
  ∀ n, P14862527155654226409.a n = A173645 n

theorem P14862527155654226409.correct : P14862527155654226409.Spec := by
  intro n
  simp only [A173645]

end A173645

/-! ## A173645.P1685959031641421536

`a(n-1)+floor(n²/11)` with `a(0)=0`
-/

namespace A173645.P1685959031641421536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n ^ 2 : ℚ) / 11⌋

end

end A173645.P1685959031641421536

namespace A173645

/-- `a(n-1)+floor(n²/11)` -/
def P1685959031641421536.Spec : Prop :=
  ∀ n, P1685959031641421536.a n = A173645 n

end A173645

/-! ## A173645.P9796588442793942810

`-∑[∑[1-A008621(A312656(n))+n]]`
-/

namespace A173645.P9796588442793942810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008621 (A312656 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173645.P9796588442793942810

namespace A173645

/-- `-∑[∑[1-A008621(A312656(n))+n]]` -/
def P9796588442793942810.Spec : Prop :=
  ∀ n, P9796588442793942810.a n = A173645 n

end A173645

/-! ## A173645.P6643544952437971011

`∑[A025907(A017545(n))]%A017619(n)`
-/

namespace A173645.P6643544952437971011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A017545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017619 n)

end

end A173645.P6643544952437971011

namespace A173645

/-- `∑[A025907(A017545(n))]%A017619(n)` -/
def P6643544952437971011.Spec : Prop :=
  ∀ n, P6643544952437971011.a n = A173645 n

end A173645

/-! ## A173645.P9964753885251915743

`A056594(2*n)²*∑[A025907(A017545(n))]`
-/

namespace A173645.P9964753885251915743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A017545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173645.P9964753885251915743

namespace A173645

/-- `A056594(2*n)²*∑[A025907(A017545(n))]` -/
def P9964753885251915743.Spec : Prop :=
  ∀ n, P9964753885251915743.a n = A173645 n

end A173645

/-! ## A173645.P7204668904285753587

`A000007(2*n+1)+∑[A025907(A017545(n))]`
-/

namespace A173645.P7204668904285753587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A017545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173645.P7204668904285753587

namespace A173645

/-- `A000007(2*n+1)+∑[A025907(A017545(n))]` -/
def P7204668904285753587.Spec : Prop :=
  ∀ n, P7204668904285753587.a n = A173645 n

end A173645

/-! ## A173645.P801685842426474351

`A014963(6*(n+1))*∑[A025907(A017545(n))]`
-/

namespace A173645.P801685842426474351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A017545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173645.P801685842426474351

namespace A173645

/-- `A014963(6*(n+1))*∑[A025907(A017545(n))]` -/
def P801685842426474351.Spec : Prop :=
  ∀ n, P801685842426474351.a n = A173645 n

end A173645

/-! ## A173645.P16941319250019964371

`∑[A344420(n²)]`
-/

namespace A173645.P16941319250019964371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173645.P16941319250019964371

namespace A173645

/-- `∑[A344420(n²)]` -/
def P16941319250019964371.Spec : Prop :=
  ∀ n, P16941319250019964371.a n = A173645 n

end A173645

/-!
# A173646: Fixed points of the operation x->(max_d(x)+min_d(x))/2, where max_d(x) iteratively replaces each digit d of x from left to right with the largest of the d digits to its right (itself included), and similarly for min_d.

The programs for A173646, there is no canonical definition to state claims against.
-/

/-! ## A173646.P15365106897132179673

`lt[A347689(A222210(n)), A168046(n)]`
-/

namespace A173646.P15365106897132179673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A222210 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173646.P15365106897132179673

/-! ## A173646.P12208043837016502949

`lt[A347689(A306436(n)), A168046(n)]`
-/

namespace A173646.P12208043837016502949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A306436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173646.P12208043837016502949

/-! ## A173646.P18137708530895150056

`record[A033862(A118168(n))]`
-/

namespace A173646.P18137708530895150056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A118168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173646.P18137708530895150056

/-! ## A173646.P17667319978917011082

`lt[A193581(A045918(n)), n]`
-/

namespace A173646.P17667319978917011082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A045918 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A173646.P17667319978917011082

/-! ## A173646.P8427669585298190655

`A347520(A227510(n+1))`
-/

namespace A173646.P8427669585298190655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A227510 (n + 1)).toNat

end

end A173646.P8427669585298190655

/-!
# A173650: Expansion of x^2*(1 + 2*x - x^2) / ((1 + x)*(1 - x - 4*x^2 + 2*x^3)).

The programs for A173650, the canonical program `A173650.P8580690379846144039` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173650 has offset 0).

The definition of A173650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+2x^3-x^4)/(1-5x^2-2x^3+2x^4))` (program `A173650.P8580690379846144039`, by `A173650.P8580690379846144039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173650.P8580690379846144039

`ogf((x^2+2x^3-x^4)/(1-5x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173650

/-- `ogf((x^2+2x^3-x^4)/(1-5x^2-2x^3+2x^4))` -/
def P8580690379846144039.Spec : Prop :=
  ∀ n, P8580690379846144039.a n = A173650 n

theorem P8580690379846144039.correct : P8580690379846144039.Spec := by
  intro n
  simp only [A173650]

end A173650

/-! ## A173650.P10661346542583420788

`5*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A173650.P10661346542583420788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 4] fun n a =>
  5 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A173650.P10661346542583420788

namespace A173650

/-- `5*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P10661346542583420788.Spec : Prop :=
  ∀ n, P10661346542583420788.a n = A173650 n

end A173650

/-! ## A173650.P7245568935542391735

`A026520(n)-A194441(A239555(n))`
-/

namespace A173650.P7245568935542391735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026520 n - A194441 (A239555 n).toNat

end

end A173650.P7245568935542391735

namespace A173650

/-- `A026520(n)-A194441(A239555(n))` -/
def P7245568935542391735.Spec : Prop :=
  ∀ n, P7245568935542391735.a n = A173650 n

end A173650

/-!
# A173651: Triangle T(n,m) read by rows: numerator of 1/(n-m)^2-1/m^2, or -1 if m=0.

The programs for A173651, there is no canonical definition to state claims against.
-/

/-! ## A173651.P9289255149621690641

`A165795(comp[∑[n-1]])`
-/

namespace A173651.P9289255149621690641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A173651.P9289255149621690641

/-! ## A173651.P10121179919519055194

`A165795(A007401(n+1))%(2*(2*n+1))`
-/

namespace A173651.P10121179919519055194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165795 (A007401 (n + 1)).toNat) (2 * (2 * n + 1) : ℤ)

end

end A173651.P10121179919519055194

/-! ## A173651.P10527050688966126671

`or(A000007(n), A165795(A007401(n+1)))`
-/

namespace A173651.P10527050688966126671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A165795 (A007401 (n + 1)).toNat)

end

end A173651.P10527050688966126671

/-! ## A173651.P9469276224062675062

`or(A000038(n), A165795(A007401(n+1)))`
-/

namespace A173651.P9469276224062675062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A165795 (A007401 (n + 1)).toNat)

end

end A173651.P9469276224062675062

/-! ## A173651.P18066813011755452384

`A165795(A007401(n+1))+A000007(n+1)`
-/

namespace A173651.P18066813011755452384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (A007401 (n + 1)).toNat + A000007 (n + 1)

end

end A173651.P18066813011755452384

/-! ## A173651.P4485075763595846675

`A000041(1-C(n, n²))*A165795(A007401(n+1))`
-/

namespace A173651.P4485075763595846675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - Nat.choose n (n ^ 2)) * A165795 (A007401 (n + 1)).toNat

end

end A173651.P4485075763595846675

/-! ## A173651.P984905433120707496

`A165795(A007401(n+1))+A000038(A007401(n+1)²)`
-/

namespace A173651.P984905433120707496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (A007401 (n + 1)).toNat + A000038 (A007401 (n + 1) ^ 2).toNat

end

end A173651.P984905433120707496

/-!
# A173652: Expansion of g.f.: x^3*(1 + 4*x - x^2 - 6*x^3 + x^4)/(1 - 9*x^2 - 3*x^3 + 17*x^4 + 8*x^5 - 6*x^6 - 7*x^7 + x^8 - x^9).

The programs for A173652, the canonical program `A173652.P10824515290568333173` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173652 has offset 0).

The definition of A173652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^3+4x^4-x^5-6x^6+x^7)/(1-9x^2-3x^3+17x^4+8x^5-6x^6-7x^7+x^8-x^9))` (program `A173652.P10824515290568333173`, by `A173652.P10824515290568333173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173652.P10824515290568333173

`ogf((x^3+4x^4-x^5-6x^6+x^7)/(1-9x^2-3x^3+17x^4+8x^5-6x^6-7x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173652

/-- `ogf((x^3+4x^4-x^5-6x^6+x^7)/(1-9x^2-3x^3+17x^4+8x^5-6x^6-7x^7+x^8-x^9))` -/
def P10824515290568333173.Spec : Prop :=
  ∀ n, P10824515290568333173.a n = A173652 n

theorem P10824515290568333173.correct : P10824515290568333173.Spec := by
  intro n
  simp only [A173652]

end A173652

/-!
# A173653: Partial sums of floor(n^2/10) (A056865).

The programs for A173653, the canonical program `A173653.P9650060501094063089` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173653 has offset 0).

The definition of A173653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173653.P9650060501094063089

`a(n-10)+(n-5)²+n-1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=3, a(6)=6, a(7)=10, a(8)=16, a(9)=24`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173653

/-- `a(n-10)+(n-5)²+n-1` -/
def P9650060501094063089.Spec : Prop :=
  ∀ n, P9650060501094063089.a n = A173653 n

theorem P9650060501094063089.correct : P9650060501094063089.Spec := by
  intro n
  simp only [A173653]

end A173653

/-! ## A173653.P3529568384492408692

`∑[floor(n²/10)]`
-/

namespace A173653.P3529568384492408692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173653.P3529568384492408692

namespace A173653

/-- `∑[floor(n²/10)]` -/
def P3529568384492408692.Spec : Prop :=
  ∀ n, P3529568384492408692.a n = A173653 n

end A173653

/-! ## A173653.P10024892770406713419

`∑[n²-n²%10]/10`
-/

namespace A173653.P10024892770406713419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n ^ 2 % 10 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 10

end

end A173653.P10024892770406713419

namespace A173653

/-- `∑[n²-n²%10]/10` -/
def P10024892770406713419.Spec : Prop :=
  ∀ n, P10024892770406713419.a n = (A173653 n : ℚ)

end A173653

/-! ## A173653.P14002659940235838749

`floor(a(n-1)+n²/10)` with `a(0)=0`
-/

namespace A173653.P14002659940235838749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 : ℚ) / 10⌋

end

end A173653.P14002659940235838749

namespace A173653

/-- `floor(a(n-1)+n²/10)` -/
def P14002659940235838749.Spec : Prop :=
  ∀ n, P14002659940235838749.a n = A173653 n

end A173653

/-! ## A173653.P14805333583098328931

`A056865(n)+a(n-1)` with `a(0)=0`
-/

namespace A173653.P14805333583098328931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056865 n + a (n - 1)

end

end A173653.P14805333583098328931

namespace A173653

/-- `A056865(n)+a(n-1)` -/
def P14805333583098328931.Spec : Prop :=
  ∀ n, P14805333583098328931.a n = A173653 n

end A173653

/-! ## A173653.P6776691228127805756

`∑[ceil(A005897(n)/60)]-n-1`
-/

namespace A173653.P6776691228127805756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005897 n : ℚ) / 60⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - 1

end

end A173653.P6776691228127805756

namespace A173653

/-- `∑[ceil(A005897(n)/60)]-n-1` -/
def P6776691228127805756.Spec : Prop :=
  ∀ n, P6776691228127805756.a n = A173653 n

end A173653

/-! ## A173653.P9647724094280423866

`A175827(n)-A081600(n)`
-/

namespace A173653.P9647724094280423866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175827 n - A081600 n

end

end A173653.P9647724094280423866

namespace A173653

/-- `A175827(n)-A081600(n)` -/
def P9647724094280423866.Spec : Prop :=
  ∀ n, P9647724094280423866.a n = A173653 n

end A173653

/-! ## A173653.P9082258305095013991

`lcm(A004442(n)-n, ∑[A056865(n)])`
-/

namespace A173653.P9082258305095013991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173653.P9082258305095013991

namespace A173653

/-- `lcm(A004442(n)-n, ∑[A056865(n)])` -/
def P9082258305095013991.Spec : Prop :=
  ∀ n, (P9082258305095013991.a n : ℤ) = A173653 n

end A173653

/-! ## A173653.P12100685282455925289

`∑[A056865(n+1)]-A056865(n+1)`
-/

namespace A173653.P12100685282455925289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056865 (n + 1)

end

end A173653.P12100685282455925289

namespace A173653

/-- `∑[A056865(n+1)]-A056865(n+1)` -/
def P12100685282455925289.Spec : Prop :=
  ∀ n, P12100685282455925289.a n = A173653 n

end A173653

/-! ## A173653.P12030668470566351669

`∑[A056865(n)]%∑[A056865(n+1)+1]`
-/

namespace A173653.P12030668470566351669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A173653.P12030668470566351669

namespace A173653

/-- `∑[A056865(n)]%∑[A056865(n+1)+1]` -/
def P12030668470566351669.Spec : Prop :=
  ∀ n, P12030668470566351669.a n = A173653 n

end A173653

/-! ## A173653.P15682737117797622623

`A000035(2*n)+∑[A056865(n)]`
-/

namespace A173653.P15682737117797622623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173653.P15682737117797622623

namespace A173653

/-- `A000035(2*n)+∑[A056865(n)]` -/
def P15682737117797622623.Spec : Prop :=
  ∀ n, P15682737117797622623.a n = A173653 n

end A173653

/-! ## A173653.P6628013063712711018

`A057078(3*n+1)+∑[A056865(n)]`
-/

namespace A173653.P6628013063712711018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (3 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173653.P6628013063712711018

namespace A173653

/-- `A057078(3*n+1)+∑[A056865(n)]` -/
def P6628013063712711018.Spec : Prop :=
  ∀ n, P6628013063712711018.a n = A173653 n

end A173653

/-! ## A173653.P1210550183124030342

`∑[A056865(n)]*A181591(A056874(n+1))`
-/

namespace A173653.P1210550183124030342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A181591 (A056874 (n + 1)).toNat

end

end A173653.P1210550183124030342

namespace A173653

/-- `∑[A056865(n)]*A181591(A056874(n+1))` -/
def P1210550183124030342.Spec : Prop :=
  ∀ n, P1210550183124030342.a n = A173653 n

end A173653

/-! ## A173653.P15993949997342668720

`A014963(Δ[12*n²])*∑[A056865(n)]`
-/

namespace A173653.P15993949997342668720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A173653.P15993949997342668720

namespace A173653

/-- `A014963(Δ[12*n²])*∑[A056865(n)]` -/
def P15993949997342668720.Spec : Prop :=
  ∀ n, P15993949997342668720.a n = A173653 n

end A173653

/-! ## A173653.P9871731559161765404

`A059995(n²)+a(n-1)` with `a(0)=0`
-/

namespace A173653.P9871731559161765404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059995 (n ^ 2) + a (n - 1)

end

end A173653.P9871731559161765404

namespace A173653

/-- `A059995(n²)+a(n-1)` -/
def P9871731559161765404.Spec : Prop :=
  ∀ n, P9871731559161765404.a n = A173653 n

end A173653

/-!
# A173654: Primes in A001129 (= Iccanobif numbers).

The programs for A173654, there is no canonical definition to state claims against.
-/

/-! ## A173654.P1272345195862869879

`A001129(A101759(n+1))`
-/

namespace A173654.P1272345195862869879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001129 (A101759 (n + 1)).toNat

end

end A173654.P1272345195862869879

/-!
# A173655: Triangle read by rows: T(n,k) = prime(n) mod prime(k), 0 < k <= n.

The programs for A173655, the canonical program `A173655.P12752858914218572338` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173655 has offset 1).

The definition of A173655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)+1)%A000040(col(n)+1)` (program `A173655.P12752858914218572338`, by `A173655.P12752858914218572338.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173655.P12752858914218572338

`A000040(row(n)+1)%A000040(col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173655

/-- `A000040(row(n)+1)%A000040(col(n)+1)` -/
def P12752858914218572338.Spec : Prop :=
  ∀ n, P12752858914218572338.a n = A173655 (n + 1)

theorem P12752858914218572338.correct : P12752858914218572338.Spec := by
  intro n
  simp only [A173655, Nat.add_sub_cancel]

end A173655

/-! ## A173655.P5859809533377959756

`A069859(A087112(n+1))`
-/

namespace A173655.P5859809533377959756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (A087112 (n + 1)).toNat

end

end A173655.P5859809533377959756

namespace A173655

/-- `A069859(A087112(n+1))` -/
def P5859809533377959756.Spec : Prop :=
  ∀ n, P5859809533377959756.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P6709299333076339341

`A005145(n+1)%A037126(n+1)`
-/

namespace A173655.P6709299333076339341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (A037126 (n + 1))

end

end A173655.P6709299333076339341

namespace A173655

/-- `A005145(n+1)%A037126(n+1)` -/
def P6709299333076339341.Spec : Prop :=
  ∀ n, P6709299333076339341.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P9803804199236851508

`A065342(n+1)%A037126(n+1)`
-/

namespace A173655.P9803804199236851508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1)) (A037126 (n + 1))

end

end A173655.P9803804199236851508

namespace A173655

/-- `A065342(n+1)%A037126(n+1)` -/
def P9803804199236851508.Spec : Prop :=
  ∀ n, P9803804199236851508.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P4917148496891121708

`A079950(n+1)%A037126(n+1)`
-/

namespace A173655.P4917148496891121708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079950 (n + 1)) (A037126 (n + 1))

end

end A173655.P4917148496891121708

namespace A173655

/-- `A079950(n+1)%A037126(n+1)` -/
def P4917148496891121708.Spec : Prop :=
  ∀ n, P4917148496891121708.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P7570824214315884791

`A086800(n+1)%A037126(n+1)`
-/

namespace A173655.P7570824214315884791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086800 (n + 1)) (A037126 (n + 1))

end

end A173655.P7570824214315884791

namespace A173655

/-- `A086800(n+1)%A037126(n+1)` -/
def P7570824214315884791.Spec : Prop :=
  ∀ n, P7570824214315884791.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P9666366442506118755

`A000040(∑[char[∑[n]]])%A037126(n+1)`
-/

namespace A173655.P9666366442506118755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)) (A037126 (n + 1))

end

end A173655.P9666366442506118755

namespace A173655

/-- `A000040(∑[char[∑[n]]])%A037126(n+1)` -/
def P9666366442506118755.Spec : Prop :=
  ∀ n, P9666366442506118755.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P7545805444122607062

`A065342(n+1)%A000040(A128227(n))`
-/

namespace A173655.P7545805444122607062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065342 (n + 1)) (A000040 (A128227 n).toNat)

end

end A173655.P7545805444122607062

namespace A173655

/-- `A065342(n+1)%A000040(A128227(n))` -/
def P7545805444122607062.Spec : Prop :=
  ∀ n, P7545805444122607062.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P13052619563568151695

`A086800(n+1)%A000040(A128227(n))`
-/

namespace A173655.P13052619563568151695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086800 (n + 1)) (A000040 (A128227 n).toNat)

end

end A173655.P13052619563568151695

namespace A173655

/-- `A086800(n+1)%A000040(A128227(n))` -/
def P13052619563568151695.Spec : Prop :=
  ∀ n, P13052619563568151695.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P11524811419529356498

`A000040(A002024(n+1))%A000040(A002260(n+1))`
-/

namespace A173655.P11524811419529356498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1)).toNat) (A000040 (A002260 (n + 1)).toNat)

end

end A173655.P11524811419529356498

namespace A173655

/-- `A000040(A002024(n+1))%A000040(A002260(n+1))` -/
def P11524811419529356498.Spec : Prop :=
  ∀ n, P11524811419529356498.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P3011685487794876271

`A000040(A003056(n)+1)%A000040(A002260(n+1))`
-/

namespace A173655.P3011685487794876271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A003056 n + 1).toNat) (A000040 (A002260 (n + 1)).toNat)

end

end A173655.P3011685487794876271

namespace A173655

/-- `A000040(A003056(n)+1)%A000040(A002260(n+1))` -/
def P3011685487794876271.Spec : Prop :=
  ∀ n, P3011685487794876271.a n = A173655 (n + 1)

end A173655

/-! ## A173655.P13746397428831657745

`A006530(A077320(n+1))%A000040(A002260(n+1))`
-/

namespace A173655.P13746397428831657745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A077320 (n + 1)).toNat) (A000040 (A002260 (n + 1)).toNat)

end

end A173655.P13746397428831657745

namespace A173655

/-- `A006530(A077320(n+1))%A000040(A002260(n+1))` -/
def P13746397428831657745.Spec : Prop :=
  ∀ n, P13746397428831657745.a n = A173655 (n + 1)

end A173655

/-!
# A173657: a(n) = 2+2^n+3^n.

The programs for A173657, the canonical program `A173657.P5542724409868621389` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173657 has offset 0).

The definition of A173657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+2^n+3^n` (program `A173657.P5542724409868621389`, by `A173657.P5542724409868621389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173657.P5542724409868621389

`2+2^n+3^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173657

/-- `2+2^n+3^n` -/
def P5542724409868621389.Spec : Prop :=
  ∀ n, (P5542724409868621389.a n : ℤ) = A173657 n

theorem P5542724409868621389.correct : P5542724409868621389.Spec := by
  intro n
  simp only [A173657]

end A173657

/-! ## A173657.P16780556524646404390

`∑[6*(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=4, a(1)=3, a(2)=8`
-/

namespace A173657.P16780556524646404390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 8] fun n f1 =>
  6 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173657.P16780556524646404390

namespace A173657

/-- `∑[6*(a(n-1)-a(n-2))-a(n-1)]` -/
def P16780556524646404390.Spec : Prop :=
  ∀ n, P16780556524646404390.a n = A173657 n

end A173657

/-! ## A173657.P3486385863548167723

`abs(2-A229354(n))`
-/

namespace A173657.P3486385863548167723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A229354 n|

end

end A173657.P3486385863548167723

namespace A173657

/-- `abs(2-A229354(n))` -/
def P3486385863548167723.Spec : Prop :=
  ∀ n, P3486385863548167723.a n = A173657 n

end A173657

/-! ## A173657.P4051116284515697690

`abs(Δ[A099754(n)]+2)`
-/

namespace A173657.P4051116284515697690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A173657.P4051116284515697690

namespace A173657

/-- `abs(Δ[A099754(n)]+2)` -/
def P4051116284515697690.Spec : Prop :=
  ∀ n, P4051116284515697690.a n = A173657 n

end A173657

/-! ## A173657.P16509026995828130966

`Δ[A094374(n)+2*n]`
-/

namespace A173657.P16509026995828130966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173657.P16509026995828130966

namespace A173657

/-- `Δ[A094374(n)+2*n]` -/
def P16509026995828130966.Spec : Prop :=
  ∀ n, P16509026995828130966.a n = A173657 n

end A173657

/-! ## A173657.P12444333778409460000

`Δ[∑[A085281(n)]+2*n]`
-/

namespace A173657.P12444333778409460000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173657.P12444333778409460000

namespace A173657

/-- `Δ[∑[A085281(n)]+2*n]` -/
def P12444333778409460000.Spec : Prop :=
  ∀ n, P12444333778409460000.a n = A173657 n

end A173657

/-! ## A173657.P3637571058901255439

`Δ[A176691(n)+A003462(n)]`
-/

namespace A173657.P3637571058901255439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176691 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173657.P3637571058901255439

namespace A173657

/-- `Δ[A176691(n)+A003462(n)]` -/
def P3637571058901255439.Spec : Prop :=
  ∀ n, P3637571058901255439.a n = A173657 n

end A173657

/-! ## A173657.P4766537701290848743

`Δ[2*n+A007051(n)+A000918(n)]`
-/

namespace A173657.P4766537701290848743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A007051 n + A000918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173657.P4766537701290848743

namespace A173657

/-- `Δ[2*n+A007051(n)+A000918(n)]` -/
def P4766537701290848743.Spec : Prop :=
  ∀ n, P4766537701290848743.a n = A173657 n

end A173657

/-! ## A173657.P12820915035761213109

`ceil(A048578(n)+A002783(n)/2)`
-/

namespace A173657.P12820915035761213109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048578 n : ℚ) + (A002783 n : ℚ) / 2⌉

end

end A173657.P12820915035761213109

namespace A173657

/-- `ceil(A048578(n)+A002783(n)/2)` -/
def P12820915035761213109.Spec : Prop :=
  ∀ n, P12820915035761213109.a n = A173657 n

end A173657

/-! ## A173657.P298817128756395991

`record[A007689(A025581(n))+2]`
-/

namespace A173657.P298817128756395991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (A025581 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173657.P298817128756395991

namespace A173657

/-- `record[A007689(A025581(n))+2]` -/
def P298817128756395991.Spec : Prop :=
  ∀ n, P298817128756395991.a n = A173657 n

end A173657

/-! ## A173657.P4759415183666083529

`record[A137688(n)+A140303(n)+2]`
-/

namespace A173657.P4759415183666083529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + (A140303 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173657.P4759415183666083529

namespace A173657

/-- `record[A137688(n)+A140303(n)+2]` -/
def P4759415183666083529.Spec : Prop :=
  ∀ n, P4759415183666083529.a n = A173657 n

end A173657

/-! ## A173657.P4348803663626938404

`(A001550(n)²-1)/A007689(n)`
-/

namespace A173657.P4348803663626938404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001550 n ^ 2 - 1 : ℚ) / (A007689 n : ℚ)

end

end A173657.P4348803663626938404

namespace A173657

/-- `(A001550(n)²-1)/A007689(n)` -/
def P4348803663626938404.Spec : Prop :=
  ∀ n, P4348803663626938404.a n = (A173657 n : ℚ)

theorem P4348803663626938404.correct : P4348803663626938404.Spec := by
  intro n
  simp only [A173657, Nat.add_sub_cancel, A173657.P4348803663626938404.a, A173657.P5542724409868621389.a, A001550, A001550.P5500954164040164324.a, A007689, A007689.P5844437503402331617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173657

/-!
# A173659: a(n) = a(n-1) + 8*a(n-2) - 3*a(n-3) - 17*a(n-4) + a(n-5) + 13*a(n-6) + 4*a(n-7) - 6*a(n-8) - a(n-9).

The programs for A173659, there is no canonical definition to state claims against.
-/

/-! ## A173659.P4615258271070105239

`A185714(A027742(n+1))`
-/

namespace A173659.P4615258271070105239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A027742 (n + 1)).toNat

end

end A173659.P4615258271070105239

/-! ## A173659.P11835870763817698042

`A185714(A011260(2*(n+1)))`
-/

namespace A173659.P11835870763817698042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A011260 (2 * (n + 1))).toNat

end

end A173659.P11835870763817698042

/-! ## A173659.P7476563502442870918

`A293994(n)-A006446(A123946(n))`
-/

namespace A173659.P7476563502442870918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 n - A006446 (A123946 n).toNat

end

end A173659.P7476563502442870918

/-! ## A173659.P3193511627629823677

`A293994(n)-A023193(A063776(n+1))`
-/

namespace A173659.P3193511627629823677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 n - A023193 (A063776 (n + 1)).toNat

end

end A173659.P3193511627629823677

/-! ## A173659.P10295377552450822867

`A293994(n)-A023193(A082550(n+1))`
-/

namespace A173659.P10295377552450822867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 n - A023193 (A082550 (n + 1)).toNat

end

end A173659.P10295377552450822867

/-!
# A173661: Logarithmic derivative of the squares of the Fibonacci numbers (A007598, with offset).

The programs for A173661, the canonical program `A173661.P9102028949547016527` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173661 has offset 1).

The definition of A173661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173661.P9102028949547016527

`3*a(n-1)-a(n-2)+1+5*(-1)^(n+1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173661

/-- `3*a(n-1)-a(n-2)+1+5*(-1)^(n+1)` -/
def P9102028949547016527.Spec : Prop :=
  ∀ n, P9102028949547016527.a n = A173661 (n + 1)

theorem P9102028949547016527.correct : P9102028949547016527.Spec := by
  intro n
  simp only [A173661, Nat.add_sub_cancel]

end A173661

/-! ## A173661.P8107691640012304251

`A047946(n+1)-1`
-/

namespace A173661.P8107691640012304251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 (n + 1) - 1

end

end A173661.P8107691640012304251

namespace A173661

/-- `A047946(n+1)-1` -/
def P8107691640012304251.Spec : Prop :=
  ∀ n, P8107691640012304251.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P2727590902209869712

`A000032(n+1)²-(-1)^(n+1)-1`
-/

namespace A173661.P2727590902209869712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) ^ 2 - (-1) ^ (n + 1) - 1

end

end A173661.P2727590902209869712

namespace A173661

/-- `A000032(n+1)²-(-1)^(n+1)-1` -/
def P2727590902209869712.Spec : Prop :=
  ∀ n, P2727590902209869712.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P3735461360902049862

`(A000045(n)+A000045(n+2))²-2*n%2`
-/

namespace A173661.P3735461360902049862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n + A000045 (n + 2)) ^ 2 - ((2 * (n % 2) : ℕ) : ℤ)

end

end A173661.P3735461360902049862

namespace A173661

/-- `(A000045(n)+A000045(n+2))²-2*n%2` -/
def P3735461360902049862.Spec : Prop :=
  ∀ n, P3735461360902049862.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P11538580715884306187

`ogf((1+4x-5x^2+2x^3)/(1-3x+3x^3-x^4))`
-/

namespace A173661.P11538580715884306187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -5, 2] [1, -3, 0, 3, -1] n

end

end A173661.P11538580715884306187

namespace A173661

/-- `ogf((1+4x-5x^2+2x^3)/(1-3x+3x^3-x^4))` -/
def P11538580715884306187.Spec : Prop :=
  ∀ n, P11538580715884306187.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P16605642511380073827

`∑[abs(Δ[A047946(n)])]`
-/

namespace A173661.P16605642511380073827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173661.P16605642511380073827

namespace A173661

/-- `∑[abs(Δ[A047946(n)])]` -/
def P16605642511380073827.Spec : Prop :=
  ∀ n, P16605642511380073827.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P10407370233637203883

`A295674(Δ[n²])-1`
-/

namespace A173661.P10407370233637203883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A173661.P10407370233637203883

namespace A173661

/-- `A295674(Δ[n²])-1` -/
def P10407370233637203883.Spec : Prop :=
  ∀ n, P10407370233637203883.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P2233769919705915925

`∑[abs(A098149(n+1)+2)]`
-/

namespace A173661.P2233769919705915925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098149 (n + 1) + 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173661.P2233769919705915925

namespace A173661

/-- `∑[abs(A098149(n+1)+2)]` -/
def P2233769919705915925.Spec : Prop :=
  ∀ n, P2233769919705915925.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P4773895636922539177

`A000032(n+1)²-Δ[or(1, n)]`
-/

namespace A173661.P4773895636922539177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) ^ 2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A173661.P4773895636922539177

namespace A173661

/-- `A000032(n+1)²-Δ[or(1, n)]` -/
def P4773895636922539177.Spec : Prop :=
  ∀ n, P4773895636922539177.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P18407433766199286407

`∑[∑[A000032(2*n)]]-xor(1, n)`
-/

namespace A173661.P18407433766199286407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.xor 1 n : ℤ)

end

end A173661.P18407433766199286407

namespace A173661

/-- `∑[∑[A000032(2*n)]]-xor(1, n)` -/
def P18407433766199286407.Spec : Prop :=
  ∀ n, P18407433766199286407.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P7208867121925290711

`Δ[A000032(n+2)]²-and(2, 2*n)`
-/

namespace A173661.P7208867121925290711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (Nat.land 2 (2 * n) : ℤ)

end

end A173661.P7208867121925290711

namespace A173661

/-- `Δ[A000032(n+2)]²-and(2, 2*n)` -/
def P7208867121925290711.Spec : Prop :=
  ∀ n, P7208867121925290711.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P7969729190754401926

`A000032(2*(n+1))-((-1)^n+1)`
-/

namespace A173661.P7969729190754401926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) - ((-1) ^ n + 1)

end

end A173661.P7969729190754401926

namespace A173661

/-- `A000032(2*(n+1))-((-1)^n+1)` -/
def P7969729190754401926.Spec : Prop :=
  ∀ n, P7969729190754401926.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P5995027420201326147

`∑[A000032(2*n+1)]+2*and(1, n)`
-/

namespace A173661.P5995027420201326147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * Nat.land 1 n : ℤ)

end

end A173661.P5995027420201326147

namespace A173661

/-- `∑[A000032(2*n+1)]+2*and(1, n)` -/
def P5995027420201326147.Spec : Prop :=
  ∀ n, P5995027420201326147.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P11693717241520917997

`A000032(C(n+1, n))²-and(2, 2*n)`
-/

namespace A173661.P11693717241520917997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (n + 1) n) ^ 2 - (Nat.land 2 (2 * n) : ℤ)

end

end A173661.P11693717241520917997

namespace A173661

/-- `A000032(C(n+1, n))²-and(2, 2*n)` -/
def P11693717241520917997.Spec : Prop :=
  ∀ n, P11693717241520917997.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P15152885360071599866

`A000032(2*n+1-n)²-2*and(1, n)`
-/

namespace A173661.P15152885360071599866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1 - n) ^ 2 - (2 * Nat.land 1 n : ℤ)

end

end A173661.P15152885360071599866

namespace A173661

/-- `A000032(2*n+1-n)²-2*and(1, n)` -/
def P15152885360071599866.Spec : Prop :=
  ∀ n, P15152885360071599866.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P13033548350800964050

`A128533(n)+A069403(n)`
-/

namespace A173661.P13033548350800964050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n + A069403 n

end

end A173661.P13033548350800964050

namespace A173661

/-- `A128533(n)+A069403(n)` -/
def P13033548350800964050.Spec : Prop :=
  ∀ n, P13033548350800964050.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P506706488134248633

`A200408(n)+A010677(n)`
-/

namespace A173661.P506706488134248633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200408 n + A010677 n

end

end A173661.P506706488134248633

namespace A173661

/-- `A200408(n)+A010677(n)` -/
def P506706488134248633.Spec : Prop :=
  ∀ n, P506706488134248633.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P3384055115141280666

`A175395(n)+A119996(n+1)`
-/

namespace A173661.P3384055115141280666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A119996 (n + 1)

end

end A173661.P3384055115141280666

namespace A173661

/-- `A175395(n)+A119996(n+1)` -/
def P3384055115141280666.Spec : Prop :=
  ∀ n, P3384055115141280666.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P14152844870719632259

`A287350(n+1)-A087288(n)`
-/

namespace A173661.P14152844870719632259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287350 (n + 1) - A087288 n

end

end A173661.P14152844870719632259

namespace A173661

/-- `A287350(n+1)-A087288(n)` -/
def P14152844870719632259.Spec : Prop :=
  ∀ n, P14152844870719632259.a n = A173661 (n + 1)

end A173661

/-! ## A173661.P17394175070803269201

`A366508(n+1)-A010684(n)`
-/

namespace A173661.P17394175070803269201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366508 (n + 1) - A010684 n

end

end A173661.P17394175070803269201

namespace A173661

/-- `A366508(n+1)-A010684(n)` -/
def P17394175070803269201.Spec : Prop :=
  ∀ n, P17394175070803269201.a n = A173661 (n + 1)

end A173661

/-!
# A173662: Triangle read by rows: T(n,k) = semiprime(n) mod semiprime(k), 1 <= k <= n.

The programs for A173662, there is no canonical definition to state claims against.
-/

/-! ## A173662.P9036412360290666542

`A001358(A002024(n+1))%A001358(A002260(n+1))`
-/

namespace A173662.P9036412360290666542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (A002024 (n + 1)).toNat) (A001358 (A002260 (n + 1)).toNat)

end

end A173662.P9036412360290666542

/-! ## A173662.P12973770859359792566

`A001358(A003056(n)+1)%A001358(A002262(n)+1)`
-/

namespace A173662.P12973770859359792566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (A003056 n + 1).toNat) (A001358 (A002262 n + 1).toNat)

end

end A173662.P12973770859359792566

/-! ## A173662.P13126699296405743445

`A336916(A336918(n+2)^A002262(n+1))`
-/

namespace A173662.P13126699296405743445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (SequenceMachineLib.roundAway ((A336918 (n + 2) : ℚ) ^ (A002262 (n + 1) : ℤ))).toNat

end

end A173662.P13126699296405743445

/-! ## A173662.P416566601526821542

`(2*n)%A125173(A125121(7*(n+1)))`
-/

namespace A173662.P416566601526821542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A125173 (A125121 (7 * (n + 1))).toNat)

end

end A173662.P416566601526821542

/-! ## A173662.P14656071471756094779

`A007949(A016945(n)^A104244(n+1))`
-/

namespace A173662.P14656071471756094779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A016945 n : ℚ) ^ (A104244 (n + 1) : ℤ))).toNat

end

end A173662.P14656071471756094779

/-!
# A173664: Sums of 2 primes that are not product of 2 primes.

The programs for A173664, the canonical program `A173664.P13143587521739781158` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173664 has offset 1).

The definition of A173664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6913 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173664.P13143587521739781158

`∩[A014091(n+1), A100959(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A173664

/-- `∩[A014091(n+1), A100959(n+1)]` -/
def P13143587521739781158.Spec : Prop :=
  ∀ n, (P13143587521739781158.a n : ℤ) = A173664 (n + 1)

theorem P13143587521739781158.correct : P13143587521739781158.Spec := by
  intro n
  simp only [A173664, Nat.add_sub_cancel]

end A173664

/-! ## A173664.P65633522310413647

`∩[A038609(n+1), A100959(n+1)]`
-/

namespace A173664.P65633522310413647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173664.P65633522310413647

namespace A173664

/-- `∩[A038609(n+1), A100959(n+1)]` -/
def P65633522310413647.Spec : Prop :=
  ∀ n, (P65633522310413647.a n : ℤ) = A173664 (n + 1)

end A173664

/-! ## A173664.P7747920494831026533

`∩[comp[A001358(n+1)], A014091(n+1)]`
-/

namespace A173664.P7747920494831026533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173664.P7747920494831026533

namespace A173664

/-- `∩[comp[A001358(n+1)], A014091(n+1)]` -/
def P7747920494831026533.Spec : Prop :=
  ∀ n, (P7747920494831026533.a n : ℤ) = A173664 (n + 1)

end A173664

/-! ## A173664.P12679629523373942849

`∩[A100959(n+1), comp[A100962(n+1)]]`
-/

namespace A173664.P12679629523373942849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100962 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A173664.P12679629523373942849

namespace A173664

/-- `∩[A100959(n+1), comp[A100962(n+1)]]` -/
def P12679629523373942849.Spec : Prop :=
  ∀ n, (P12679629523373942849.a n : ℤ) = A173664 (n + 1)

end A173664

/-! ## A173664.P3679838653374630200

`∩[A100959(n+1), A157724(n+1)]`
-/

namespace A173664.P3679838653374630200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173664.P3679838653374630200

namespace A173664

/-- `∩[A100959(n+1), A157724(n+1)]` -/
def P3679838653374630200.Spec : Prop :=
  ∀ n, (P3679838653374630200.a n : ℤ) = A173664 (n + 1)

end A173664

/-!
# A173666: Partial sums of number of supersolvable groups of order n (A066083).

The programs for A173666, there is no canonical definition to state claims against.
-/

/-! ## A173666.P8130347910333545041

`∑[A066083(n+1)]`
-/

namespace A173666.P8130347910333545041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173666.P8130347910333545041

/-! ## A173666.P216464617583852521

`A066083(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A173666.P216464617583852521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066083 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A173666.P216464617583852521

/-! ## A173666.P13946498191491139703

`A066083(ceil(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A173666.P13946498191491139703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066083 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat + a (n - 1)

end

end A173666.P13946498191491139703

/-! ## A173666.P6186939530404951243

`A066083(char[1]+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A173666.P6186939530404951243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066083 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A173666.P6186939530404951243

/-! ## A173666.P9703928880981124919

`a(n-1)+A066083(n+1)%A158537(n)` with `a(0)=1`
-/

namespace A173666.P9703928880981124919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A066083 (n + 1)) (A158537 n)

end

end A173666.P9703928880981124919

/-! ## A173666.P15026914349421226054

`a(n-1)+A066083(n+1)/A025453(A001227(n+1))` with `a(0)=1`
-/

namespace A173666.P15026914349421226054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A066083 (n + 1) : ℚ) / (A025453 (A001227 (n + 1)).toNat : ℚ)

end

end A173666.P15026914349421226054

/-! ## A173666.P3936182520765813266

`a(n-1)+A066083(n+1)/A158416(A001844(n))` with `a(0)=1, a(1)=2`
-/

namespace A173666.P3936182520765813266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A066083 (n + 1) : ℚ) / (A158416 (A001844 n).toNat : ℚ)

end

end A173666.P3936182520765813266

/-!
# A173667: Number of real zeros of the polynomial whose coefficients are the decimal expansion of n.

The programs for A173667, the canonical program `A173667.P1180978088914052584` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173667 has offset 1).

The definition of A173667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173667.P13075878220953617574

`val(n+1, 10)+3%A160093(n+1)`
-/

namespace A173667.P13075878220953617574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 10 : ℤ) + Int.tmod 3 (A160093 (n + 1))

end

end A173667.P13075878220953617574

namespace A173667

/-- `val(n+1, 10)+3%A160093(n+1)` -/
def P13075878220953617574.Spec : Prop :=
  ∀ n, P13075878220953617574.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P4906168181561236155

`A035457((val(n+1, 10)+1)*∑{digits}[n, 10^#]%9)`
-/

namespace A173667.P4906168181561236155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 ((SequenceMachineLib.valuation (n + 1) 10 + 1) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A173667.P4906168181561236155

namespace A173667

/-- `A035457((val(n+1, 10)+1)*∑{digits}[n, 10^#]%9)` -/
def P4906168181561236155.Spec : Prop :=
  ∀ n, P4906168181561236155.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P17272423636938785086

`A234694(abs(Δ[A071980(n)]))`
-/

namespace A173667.P17272423636938785086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234694 |f1 (n + 1) - f1 n|.toNat

end

end A173667.P17272423636938785086

namespace A173667

/-- `A234694(abs(Δ[A071980(n)]))` -/
def P17272423636938785086.Spec : Prop :=
  ∀ n, P17272423636938785086.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P4410214640035296424

`and(A004216(n+1), A057942(n+9))`
-/

namespace A173667.P4410214640035296424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A057942 (n + 9))

end

end A173667.P4410214640035296424

namespace A173667

/-- `and(A004216(n+1), A057942(n+9))` -/
def P4410214640035296424.Spec : Prop :=
  ∀ n, P4410214640035296424.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P15979351027881404502

`and(Δ[A102487(n+1)], A004216(n+1))`
-/

namespace A173667.P15979351027881404502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A004216 (n + 1))

end

end A173667.P15979351027881404502

namespace A173667

/-- `and(Δ[A102487(n+1)], A004216(n+1))` -/
def P15979351027881404502.Spec : Prop :=
  ∀ n, P15979351027881404502.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P11805531702128681609

`A160094(n+1)-A160093(n+1)%2`
-/

namespace A173667.P11805531702128681609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1) - Int.tmod (A160093 (n + 1)) 2

end

end A173667.P11805531702128681609

namespace A173667

/-- `A160094(n+1)-A160093(n+1)%2` -/
def P11805531702128681609.Spec : Prop :=
  ∀ n, P11805531702128681609.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P6930720459554231676

`and(A004216(n+1), A064699(val(n+1, 10)+1))`
-/

namespace A173667.P6930720459554231676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A064699 (SequenceMachineLib.valuation (n + 1) 10 + 1))

end

end A173667.P6930720459554231676

namespace A173667

/-- `and(A004216(n+1), A064699(val(n+1, 10)+1))` -/
def P6930720459554231676.Spec : Prop :=
  ∀ n, P6930720459554231676.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P4378095244875559160

`and(A004216(n+1), A225702(val(n+1, 10)+1))`
-/

namespace A173667.P4378095244875559160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A225702 (SequenceMachineLib.valuation (n + 1) 10 + 1))

end

end A173667.P4378095244875559160

namespace A173667

/-- `and(A004216(n+1), A225702(val(n+1, 10)+1))` -/
def P4378095244875559160.Spec : Prop :=
  ∀ n, P4378095244875559160.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P523818251404579314

`and(A004216(n+1), A256582(val(n+1, 10)+1))`
-/

namespace A173667.P523818251404579314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A256582 (SequenceMachineLib.valuation (n + 1) 10 + 1))

end

end A173667.P523818251404579314

namespace A173667

/-- `and(A004216(n+1), A256582(val(n+1, 10)+1))` -/
def P523818251404579314.Spec : Prop :=
  ∀ n, P523818251404579314.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P12726649701909862202

`and(A004216(n+1), A322821(A182842(n)))`
-/

namespace A173667.P12726649701909862202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A322821 (A182842 n).toNat)

end

end A173667.P12726649701909862202

namespace A173667

/-- `and(A004216(n+1), A322821(A182842(n)))` -/
def P12726649701909862202.Spec : Prop :=
  ∀ n, P12726649701909862202.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P739568913924758339

`and(A004216(n+1), A339817(A005101(n+1)))`
-/

namespace A173667.P739568913924758339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A339817 (A005101 (n + 1)).toNat)

end

end A173667.P739568913924758339

namespace A173667

/-- `and(A004216(n+1), A339817(A005101(n+1)))` -/
def P739568913924758339.Spec : Prop :=
  ∀ n, P739568913924758339.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P1523341060056459063

`and(A004216(n+1), A187894(A296076(n+1)))`
-/

namespace A173667.P1523341060056459063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A187894 (A296076 (n + 1)).toNat)

end

end A173667.P1523341060056459063

namespace A173667

/-- `and(A004216(n+1), A187894(A296076(n+1)))` -/
def P1523341060056459063.Spec : Prop :=
  ∀ n, P1523341060056459063.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P1180978088914052584

`A004216(n+1)-A199560(n)%A055642(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A173667

/-- `A004216(n+1)-A199560(n)%A055642(n)` -/
def P1180978088914052584.Spec : Prop :=
  ∀ n, P1180978088914052584.a n = A173667 (n + 1)

theorem P1180978088914052584.correct : P1180978088914052584.Spec := by
  intro n
  simp only [A173667, Nat.add_sub_cancel]

end A173667

/-! ## A173667.P17595129070165142837

`and(3, A004216(n+1)^A098925(n))`
-/

namespace A173667.P17595129070165142837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((A004216 (n + 1) : ℚ) ^ (A098925 n : ℤ)))

end

end A173667.P17595129070165142837

namespace A173667

/-- `and(3, A004216(n+1)^A098925(n))` -/
def P17595129070165142837.Spec : Prop :=
  ∀ n, P17595129070165142837.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P13176955510157635994

`A055642(n+1)-A060417(A196222(n))`
-/

namespace A173667.P13176955510157635994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - A060417 (A196222 n).toNat

end

end A173667.P13176955510157635994

namespace A173667

/-- `A055642(n+1)-A060417(A196222(n))` -/
def P13176955510157635994.Spec : Prop :=
  ∀ n, P13176955510157635994.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P14006480911695348995

`A004216(n+1)*A014416(A196222(n))`
-/

namespace A173667.P14006480911695348995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) * A014416 (A196222 n).toNat

end

end A173667.P14006480911695348995

namespace A173667

/-- `A004216(n+1)*A014416(A196222(n))` -/
def P14006480911695348995.Spec : Prop :=
  ∀ n, P14006480911695348995.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P13865253411027559143

`and(A004216(n+1), A331899(A000010(n+1)))`
-/

namespace A173667.P13865253411027559143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (n + 1)) (A331899 (A000010 (n + 1)).toNat)

end

end A173667.P13865253411027559143

namespace A173667

/-- `and(A004216(n+1), A331899(A000010(n+1)))` -/
def P13865253411027559143.Spec : Prop :=
  ∀ n, P13865253411027559143.a n = A173667 (n + 1)

end A173667

/-! ## A173667.P18132865516750024631

`A196563(A079790(n+1)*A196222(n+1))`
-/

namespace A173667.P18132865516750024631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A079790 (n + 1) * A196222 (n + 1)).toNat

end

end A173667.P18132865516750024631

namespace A173667

/-- `A196563(A079790(n+1)*A196222(n+1))` -/
def P18132865516750024631.Spec : Prop :=
  ∀ n, P18132865516750024631.a n = A173667 (n + 1)

end A173667

/-!
# A173668: Smallest n-digit square such that no number made by chopping off a group of one or more digits from the left is a square.

The programs for A173668, there is no canonical definition to state claims against.
-/

/-! ## A173668.P4295001353499198420

`∑[A064377(A062514(3*n+1))]²`
-/

namespace A173668.P4295001353499198420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064377 (A062514 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A173668.P4295001353499198420

/-!
# A173670: Last nonzero decimal digit of (10^n)!.

The programs for A173670, there is no canonical definition to state claims against.
-/

/-! ## A173670.P710476921438823826

`A008904(A000079(n*dr(A034472(n))))`
-/

namespace A173670.P710476921438823826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A000079 (n * SequenceMachineLib.digitalRoot (A034472 n))).toNat

end

end A173670.P710476921438823826

/-! ## A173670.P4220079216284722953

`A008904(A000079(n)^dr(A034472(n)))`
-/

namespace A173670.P4220079216284722953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A000079 n ^ SequenceMachineLib.digitalRoot (A034472 n)).toNat

end

end A173670.P4220079216284722953

/-! ## A173670.P17971236963117285470

`A008904(gcd(A007052(2*n), A159721(n+4)))`
-/

namespace A173670.P17971236963117285470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (Int.gcd (A007052 (2 * n)) (A159721 (n + 4)))

end

end A173670.P17971236963117285470

/-!
# A173671: Positive integers that cannot be expressed as 3^m-2^n where m and n are integers.

The programs for A173671, the canonical program `A173671.P14753156303300427843` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173671 has offset 1).

The definition of A173671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173671.P7559812188502720445

`comp[A227048(n)]`
-/

namespace A173671.P7559812188502720445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173671.P7559812188502720445

namespace A173671

/-- `comp[A227048(n)]` -/
def P7559812188502720445.Spec : Prop :=
  ∀ n, (P7559812188502720445.a n : ℤ) = A173671 (n + 1)

end A173671

/-! ## A173671.P14753156303300427843

`comp[A254027(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173671

/-- `comp[A254027(n)]` -/
def P14753156303300427843.Spec : Prop :=
  ∀ n, (P14753156303300427843.a n : ℤ) = A173671 (n + 1)

theorem P14753156303300427843.correct : P14753156303300427843.Spec := by
  intro n
  simp only [A173671, Nat.add_sub_cancel]

end A173671

/-! ## A173671.P507043091320702225

`comp[A192111(n+1)]`
-/

namespace A173671.P507043091320702225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173671.P507043091320702225

namespace A173671

/-- `comp[A192111(n+1)]` -/
def P507043091320702225.Spec : Prop :=
  ∀ n, (P507043091320702225.a n : ℤ) = A173671 (n + 1)

end A173671

/-! ## A173671.P6824690123557781875

`comp[record[A192111(A020986(n))]]`
-/

namespace A173671.P6824690123557781875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173671.P6824690123557781875

namespace A173671

/-- `comp[record[A192111(A020986(n))]]` -/
def P6824690123557781875.Spec : Prop :=
  ∀ n, (P6824690123557781875.a n : ℤ) = A173671 (n + 1)

end A173671

/-! ## A173671.P4665471350214715550

`comp[record[A192111(A193592(n))]]`
-/

namespace A173671.P4665471350214715550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A173671.P4665471350214715550

namespace A173671

/-- `comp[record[A192111(A193592(n))]]` -/
def P4665471350214715550.Spec : Prop :=
  ∀ n, (P4665471350214715550.a n : ℤ) = A173671 (n + 1)

end A173671

/-! ## A173671.P12541393961290667125

`eq[0, char[A227048(A028242(n))]]`
-/

namespace A173671.P12541393961290667125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227048 (A028242 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173671.P12541393961290667125

namespace A173671

/-- `eq[0, char[A227048(A028242(n))]]` -/
def P12541393961290667125.Spec : Prop :=
  ∀ n, (P12541393961290667125.a n : ℤ) = A173671 (n + 1)

end A173671

/-! ## A173671.P7213111048109101771

`eq[0, A175832(n)]`
-/

namespace A173671.P7213111048109101771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173671.P7213111048109101771

namespace A173671

/-- `eq[0, A175832(n)]` -/
def P7213111048109101771.Spec : Prop :=
  ∀ n, (P7213111048109101771.a n : ℤ) = A173671 (n + 1)

end A173671

/-!
# A173672: Positive differences between any two primes without the differences that are semiprimes.

The programs for A173672, the canonical program `A173672.P11116447172890435173` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173672 has offset 1).

The definition of A173672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173672.P11116447172890435173

`∩[A030173(n+1), A100959(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A173672

/-- `∩[A030173(n+1), A100959(n+1)]` -/
def P11116447172890435173.Spec : Prop :=
  ∀ n, (P11116447172890435173.a n : ℤ) = A173672 (n + 1)

theorem P11116447172890435173.correct : P11116447172890435173.Spec := by
  intro n
  simp only [A173672, Nat.add_sub_cancel]

end A173672

/-! ## A173672.P5920276869454673702

`∩[comp[A001358(n+1)], A030173(n+1)]`
-/

namespace A173672.P5920276869454673702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P5920276869454673702

namespace A173672

/-- `∩[comp[A001358(n+1)], A030173(n+1)]` -/
def P5920276869454673702.Spec : Prop :=
  ∀ n, (P5920276869454673702.a n : ℤ) = A173672 (n + 1)

end A173672

/-! ## A173672.P7206780670780949193

`∩[comp[A186621(n+1)+1], A106092(n+2)-2]`
-/

namespace A173672.P7206780670780949193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P7206780670780949193

namespace A173672

/-- `∩[comp[A186621(n+1)+1], A106092(n+2)-2]` -/
def P7206780670780949193.Spec : Prop :=
  ∀ n, (P7206780670780949193.a n : ℤ) = A173672 (n + 1)

end A173672

/-! ## A173672.P10153404217877995588

`∩[comp[A088707(n+1)-1], A106092(n+2)-2]`
-/

namespace A173672.P10153404217877995588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P10153404217877995588

namespace A173672

/-- `∩[comp[A088707(n+1)-1], A106092(n+2)-2]` -/
def P10153404217877995588.Spec : Prop :=
  ∀ n, (P10153404217877995588.a n : ℤ) = A173672 (n + 1)

end A173672

/-! ## A173672.P5459572709319656143

`∩[comp[A186621(n+1)+1], A014091(n+2)-4]`
-/

namespace A173672.P5459572709319656143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 2) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P5459572709319656143

namespace A173672

/-- `∩[comp[A186621(n+1)+1], A014091(n+2)-4]` -/
def P5459572709319656143.Spec : Prop :=
  ∀ n, (P5459572709319656143.a n : ℤ) = A173672 (n + 1)

end A173672

/-! ## A173672.P9993666763771750267

`∩[comp[A088707(n+1)-1], A014091(n+2)-4]`
-/

namespace A173672.P9993666763771750267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 2) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P9993666763771750267

namespace A173672

/-- `∩[comp[A088707(n+1)-1], A014091(n+2)-4]` -/
def P9993666763771750267.Spec : Prop :=
  ∀ n, (P9993666763771750267.a n : ℤ) = A173672 (n + 1)

end A173672

/-! ## A173672.P12279671146416775130

`∩[comp[A175708(n+1)+1+n], A106092(n+2)-2]`
-/

namespace A173672.P12279671146416775130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P12279671146416775130

namespace A173672

/-- `∩[comp[A175708(n+1)+1+n], A106092(n+2)-2]` -/
def P12279671146416775130.Spec : Prop :=
  ∀ n, (P12279671146416775130.a n : ℤ) = A173672 (n + 1)

end A173672

/-! ## A173672.P1350825670493940120

`∩[comp[A100493(n+1)-(n+1)], A106092(n+2)-2]`
-/

namespace A173672.P1350825670493940120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A173672.P1350825670493940120

namespace A173672

/-- `∩[comp[A100493(n+1)-(n+1)], A106092(n+2)-2]` -/
def P1350825670493940120.Spec : Prop :=
  ∀ n, (P1350825670493940120.a n : ℤ) = A173672 (n + 1)

end A173672

/-!
# A173673: a(2k) = floor(F(k)/2), a(2k+1) = ceiling(F(k)/2), where F = A000045 is the Fibonacci sequence.

The programs for A173673, the canonical program `A173673.P5809439835741203774` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173673 has offset 0).

The definition of A173673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173673.P5809439835741203774

`Δ[floor(A123231(n+1)/A000034(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173673

/-- `Δ[floor(A123231(n+1)/A000034(n))]` -/
def P5809439835741203774.Spec : Prop :=
  ∀ n, P5809439835741203774.a n = A173673 n

theorem P5809439835741203774.correct : P5809439835741203774.Spec := by
  intro n
  simp only [A173673]

end A173673

/-! ## A173673.P13044444672123894282

`Δ[ceil(A163227(n+1)/A000034(n))]`
-/

namespace A173673.P13044444672123894282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163227 (n + 1) : ℚ) / (A000034 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173673.P13044444672123894282

namespace A173673

/-- `Δ[ceil(A163227(n+1)/A000034(n))]` -/
def P13044444672123894282.Spec : Prop :=
  ∀ n, P13044444672123894282.a n = A173673 n

end A173673

/-! ## A173673.P321832071787203295

`Δ[floor(A096748(n+1)/2)]`
-/

namespace A173673.P321832071787203295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096748 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173673.P321832071787203295

namespace A173673

/-- `Δ[floor(A096748(n+1)/2)]` -/
def P321832071787203295.Spec : Prop :=
  ∀ n, P321832071787203295.a n = A173673 n

end A173673

/-! ## A173673.P5856329931874244205

`Δ[ceil(A179999(n+1)/4)]`
-/

namespace A173673.P5856329931874244205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179999 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173673.P5856329931874244205

namespace A173673

/-- `Δ[ceil(A179999(n+1)/4)]` -/
def P5856329931874244205.Spec : Prop :=
  ∀ n, P5856329931874244205.a n = A173673 n

end A173673

/-! ## A173673.P12518115404302896053

`round(A103609(n)/ratio[A152046(n)])`
-/

namespace A173673.P12518115404302896053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103609 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A173673.P12518115404302896053

namespace A173673

/-- `round(A103609(n)/ratio[A152046(n)])` -/
def P12518115404302896053.Spec : Prop :=
  ∀ n, P12518115404302896053.a n = A173673 n

end A173673

/-!
# A173674: a(n) = ceiling(A003269(n)/2).

The programs for A173674, the canonical program `A173674.P1173747933919963172` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173674 has offset 0).

The definition of A173674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A003269(n)/2)` (program `A173674.P1173747933919963172`, by `A173674.P1173747933919963172.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173674.P1173747933919963172

`ceil(A003269(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173674

/-- `ceil(A003269(n)/2)` -/
def P1173747933919963172.Spec : Prop :=
  ∀ n, P1173747933919963172.a n = A173674 n

theorem P1173747933919963172.correct : P1173747933919963172.Spec := by
  intro n
  simp only [A173674]

end A173674

/-! ## A173674.P11893152726305535036

`ceil(A017898(n+3)/2)`
-/

namespace A173674.P11893152726305535036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017898 (n + 3) : ℚ) / 2⌉

end

end A173674.P11893152726305535036

namespace A173674

/-- `ceil(A017898(n+3)/2)` -/
def P11893152726305535036.Spec : Prop :=
  ∀ n, P11893152726305535036.a n = A173674 n

end A173674

/-! ## A173674.P5791098873158207688

`round(A003269(n)/gcd(2, A005843(n)))`
-/

namespace A173674.P5791098873158207688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003269 n : ℚ) / (Int.gcd 2 (A005843 n) : ℚ))

end

end A173674.P5791098873158207688

namespace A173674

/-- `round(A003269(n)/gcd(2, A005843(n)))` -/
def P5791098873158207688.Spec : Prop :=
  ∀ n, P5791098873158207688.a n = A173674 n

end A173674

/-! ## A173674.P6092205845289910087

`round(A003269(n)/A000032(C(2, n+2)))`
-/

namespace A173674.P6092205845289910087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003269 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ))

end

end A173674.P6092205845289910087

namespace A173674

/-- `round(A003269(n)/A000032(C(2, n+2)))` -/
def P6092205845289910087.Spec : Prop :=
  ∀ n, P6092205845289910087.a n = A173674 n

end A173674

/-! ## A173674.P1486179213530087393

`round(A003269(n)/A020639(A000118(n)))`
-/

namespace A173674.P1486179213530087393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003269 n : ℚ) / (A020639 (A000118 n).toNat : ℚ))

end

end A173674.P1486179213530087393

namespace A173674

/-- `round(A003269(n)/A020639(A000118(n)))` -/
def P1486179213530087393.Spec : Prop :=
  ∀ n, P1486179213530087393.a n = A173674 n

end A173674

/-! ## A173674.P9987941221930952014

`round(A003269(n)/A020639(A008458(n)))`
-/

namespace A173674.P9987941221930952014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003269 n : ℚ) / (A020639 (A008458 n).toNat : ℚ))

end

end A173674.P9987941221930952014

namespace A173674

/-- `round(A003269(n)/A020639(A008458(n)))` -/
def P9987941221930952014.Spec : Prop :=
  ∀ n, P9987941221930952014.a n = A173674 n

end A173674

/-! ## A173674.P2997897571033534506

`ceil((∑[A017898(n)]-A017898(n))/2)`
-/

namespace A173674.P2997897571033534506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - A017898 n : ℤ) : ℚ) / 2⌉

end

end A173674.P2997897571033534506

namespace A173674

/-- `ceil((∑[A017898(n)]-A017898(n))/2)` -/
def P2997897571033534506.Spec : Prop :=
  ∀ n, P2997897571033534506.a n = A173674 n

end A173674

/-! ## A173674.P17473642547415838285

`round(A003269(n)/2)%A000079(n)`
-/

namespace A173674.P17473642547415838285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A003269 n : ℚ) / 2)) (A000079 n)

end

end A173674.P17473642547415838285

namespace A173674

/-- `round(A003269(n)/2)%A000079(n)` -/
def P17473642547415838285.Spec : Prop :=
  ∀ n, P17473642547415838285.a n = A173674 n

end A173674

/-!
# A173675: Let d_1, d_2, d_3, ..., d_tau(n) be the divisors of n; a(n) = number of permutations p of d_1, d_2, d_3, ..., d_tau(n) such that p_(i+1)/p_i is a prime or 1/prime for i = 1,2,...,tau(n)-1 and p_1 <= p_tau(n).

The programs for A173675, there is no canonical definition to state claims against.
-/

/-! ## A173675.P3338175791728267421

`A295786(A101296(n+1))`
-/

namespace A173675.P3338175791728267421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295786 (A101296 (n + 1)).toNat

end

end A173675.P3338175791728267421

/-! ## A173675.P727908289453253357

`ceil(A295557(n+1)/2)`
-/

namespace A173675.P727908289453253357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295557 (n + 1) : ℚ) / 2⌉

end

end A173675.P727908289453253357

/-! ## A173675.P1347895996872011375

`A295557(A028310(n)+1)/2`
-/

namespace A173675.P1347895996872011375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (A028310 n + 1).toNat : ℚ) / 2

end

end A173675.P1347895996872011375

/-! ## A173675.P92952788151987633

`A295557(n+1)/A036453(n+1)`
-/

namespace A173675.P92952788151987633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A173675.P92952788151987633

/-! ## A173675.P12973660574140465067

`A295557(n+1)/A040001(2*n)`
-/

namespace A173675.P12973660574140465067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A173675.P12973660574140465067

/-! ## A173675.P17631881329349151767

`A295557(n+1)/A001227(A000040(n+1))`
-/

namespace A173675.P17631881329349151767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A001227 (A000040 (n + 1)).toNat : ℚ)

end

end A173675.P17631881329349151767

/-! ## A173675.P14814513255817308964

`A295557(n+1)/A295557(A006530(n+1))`
-/

namespace A173675.P14814513255817308964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A295557 (A006530 (n + 1)).toNat : ℚ)

end

end A173675.P14814513255817308964

/-! ## A173675.P2289114260284749767

`A295557(n+1)/A295557(A027746(n+1))`
-/

namespace A173675.P2289114260284749767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A295557 (A027746 (n + 1)).toNat : ℚ)

end

end A173675.P2289114260284749767

/-! ## A173675.P14193995438653522094

`A295557(n+1)/A295557(A276330(n)+1)`
-/

namespace A173675.P14193995438653522094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A295557 (A276330 n + 1).toNat : ℚ)

end

end A173675.P14193995438653522094

/-! ## A173675.P17195433775590690433

`A295557(n+1)/A237442(A165825(2*n+1)+1)`
-/

namespace A173675.P17195433775590690433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295557 (n + 1) : ℚ) / (A237442 (A165825 (2 * n + 1) + 1).toNat : ℚ)

end

end A173675.P17195433775590690433

/-! ## A173675.P11923020374280356501

`A295557(n+1)/A295557(A014963(a(n-1))+1)` with `a(0)=1`
-/

namespace A173675.P11923020374280356501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A295557 (n + 1) : ℚ) / (A295557 (A014963 (SequenceMachineLib.roundAway (a (n - 1))).toNat + 1).toNat : ℚ)

end

end A173675.P11923020374280356501

/-! ## A173675.P14946983375730767586

`A004525(A295557(n+1))`
-/

namespace A173675.P14946983375730767586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A295557 (n + 1)).toNat

end

end A173675.P14946983375730767586

/-!
# A173676: Number of ways of writing n as a sum of seven nonnegative cubes.

The programs for A173676, there is no canonical definition to state claims against.
-/

/-! ## A173676.P16044140362731828774

`A290054(A155212(n+4))`
-/

namespace A173676.P16044140362731828774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A155212 (n + 4)).toNat

end

end A173676.P16044140362731828774

/-! ## A173676.P14572909307174024676

`A290054(A000217(n+8)-8)`
-/

namespace A173676.P14572909307174024676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000217 (n + 8) - 8).toNat

end

end A173676.P14572909307174024676

/-! ## A173676.P2260960711728733812

`A290054(eq[8, A004736(n+1)])`
-/

namespace A173676.P2260960711728733812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173676.P2260960711728733812

/-! ## A173676.P13830134610914817590

`A290054(A008458(n+4)+A000124(n+2))`
-/

namespace A173676.P13830134610914817590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A008458 (n + 4) + A000124 (n + 2)).toNat

end

end A173676.P13830134610914817590

/-! ## A173676.P6338703819090360184

`A290054(A103517(n+4)+A027379(n+4))`
-/

namespace A173676.P6338703819090360184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A103517 (n + 4) + A027379 (n + 4)).toNat

end

end A173676.P6338703819090360184

/-! ## A173676.P9857191170229442643

`A290054(A000124(n+10)-A005843(n+14))`
-/

namespace A173676.P9857191170229442643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000124 (n + 10) - A005843 (n + 14)).toNat

end

end A173676.P9857191170229442643

/-!
# A173677: Number of ways of writing n as a sum of two nonnegative cubes.

The programs for A173677, there is no canonical definition to state claims against.
-/

/-! ## A173677.P16340521302446611786

`A025464(n)+A025446(n)`
-/

namespace A173677.P16340521302446611786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 n + A025446 n

end

end A173677.P16340521302446611786

/-! ## A173677.P12405344990380492324

`A175362(n)/gcd(4, A175365(n))`
-/

namespace A173677.P12405344990380492324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175362 n : ℚ) / (Int.gcd 4 (A175365 n) : ℚ)

end

end A173677.P12405344990380492324

/-! ## A173677.P2655404574498278171

`A010057(n)+A002265(A175362(n))`
-/

namespace A173677.P2655404574498278171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + A002265 (A175362 n).toNat

end

end A173677.P2655404574498278171

/-! ## A173677.P1336882490101271898

`A004525(A175362(n))-A280618(n)`
-/

namespace A173677.P1336882490101271898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A175362 n).toNat - A280618 n

end

end A173677.P1336882490101271898

/-! ## A173677.P4248277105881185218

`A010057(n)+A025464(n)+A025455(n)`
-/

namespace A173677.P4248277105881185218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + (A025464 n + A025455 n)

end

end A173677.P4248277105881185218

/-! ## A173677.P8365061323854030827

`(2-A010057(A008574(n)))*A025446(n)`
-/

namespace A173677.P8365061323854030827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010057 (A008574 n).toNat) * A025446 n

end

end A173677.P8365061323854030827

/-! ## A173677.P3950598572627134153

`A173678(n-A001489(n))%A000005(A108183(n+1))²`
-/

namespace A173677.P3950598572627134153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173678 ((n : ℤ) - A001489 n).toNat) (A000005 (A108183 (n + 1)).toNat ^ 2)

end

end A173677.P3950598572627134153

/-! ## A173677.P8637996233602499935

`A290054(∑[n+3])`
-/

namespace A173677.P8637996233602499935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173677.P8637996233602499935

/-! ## A173677.P13112559989458051191

`A347714(n)+A025455(n²+1)`
-/

namespace A173677.P13112559989458051191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347714 n + A025455 (n ^ 2 + 1)

end

end A173677.P13112559989458051191

/-! ## A173677.P9247598778822594784

`A347714(n)+char[A000578(n+1)]`
-/

namespace A173677.P9247598778822594784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347714 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A173677.P9247598778822594784

/-!
# A173678: Number of ways of writing n as a sum of 4 nonnegative cubes.

The programs for A173678, there is no canonical definition to state claims against.
-/

/-! ## A173678.P4196696315474919371

`A290054(A052905(n+2))`
-/

namespace A173678.P4196696315474919371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A052905 (n + 2)).toNat

end

end A173678.P4196696315474919371

/-! ## A173678.P10032981501967022899

`A290054(eq[4, A025581(n)])`
-/

namespace A173678.P10032981501967022899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173678.P10032981501967022899

/-! ## A173678.P18279543981176846055

`A290054(A027379(n+3)-2)`
-/

namespace A173678.P18279543981176846055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A027379 (n + 3) - 2).toNat

end

end A173678.P18279543981176846055

/-! ## A173678.P1546536525312386428

`A290054(A167614(n+4)-8)`
-/

namespace A173678.P1546536525312386428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A167614 (n + 4) - 8).toNat

end

end A173678.P1546536525312386428

/-! ## A173678.P15690078071908485598

`A290054(Δ[A000292(n+4)]-5)`
-/

namespace A173678.P15690078071908485598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (f1 (n + 1) - f1 n - 5).toNat

end

end A173678.P15690078071908485598

/-! ## A173678.P10990619542353635210

`A290054(n+1+A167614(n+2)+n)`
-/

namespace A173678.P10990619542353635210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 ((n + 1 : ℤ) + (A167614 (n + 2) + (n : ℤ))).toNat

end

end A173678.P10990619542353635210

/-! ## A173678.P16425031954332703655

`A290054(A167499(n)+A008574(n+1))`
-/

namespace A173678.P16425031954332703655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A167499 n + A008574 (n + 1)).toNat

end

end A173678.P16425031954332703655

/-!
# A173679: Number of ways of writing n as a sum of 5 nonnegative cubes.

The programs for A173679, there is no canonical definition to state claims against.
-/

/-! ## A173679.P6292820178592229436

`A290054(A055999(n+3))`
-/

namespace A173679.P6292820178592229436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A055999 (n + 3)).toNat

end

end A173679.P6292820178592229436

/-! ## A173679.P929361899753897089

`A290054(eq[5, A025581(n)])`
-/

namespace A173679.P929361899753897089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173679.P929361899753897089

/-! ## A173679.P15719207842031741054

`A290054(Δ[A023551(n+1)])`
-/

namespace A173679.P15719207842031741054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (f1 (n + 1) - f1 n).toNat

end

end A173679.P15719207842031741054

/-! ## A173679.P17337866808817411323

`A290054(Δ[A026054(n+3)])`
-/

namespace A173679.P17337866808817411323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (f1 (n + 1) - f1 n).toNat

end

end A173679.P17337866808817411323

/-! ## A173679.P11240194307314797868

`A290054(2*n+A056000(n)+15)`
-/

namespace A173679.P11240194307314797868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 ((2 * n : ℤ) + (A056000 n + 15)).toNat

end

end A173679.P11240194307314797868

/-! ## A173679.P11381631871173359788

`A290054(Δ[Δ[A006504(n+1)]]-1)`
-/

namespace A173679.P11381631871173359788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (f1 (n + 1) - f1 n - 1).toNat

end

end A173679.P11381631871173359788

/-!
# A173680: Number of ways of writing n as a sum of 6 nonnegative cubes.

The programs for A173680, there is no canonical definition to state claims against.
-/

/-! ## A173680.P15192801155176020963

`A290054(eq[7, A193739(n)])`
-/

namespace A173680.P15192801155176020963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173680.P15192801155176020963

/-! ## A173680.P7573493723969252608

`A290054(eq[13, A099375(n)])`
-/

namespace A173680.P7573493723969252608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A173680.P7573493723969252608

/-! ## A173680.P9148673799220574005

`A290054(A055999(n+4)-1)`
-/

namespace A173680.P9148673799220574005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A055999 (n + 4) - 1).toNat

end

end A173680.P9148673799220574005

/-! ## A173680.P1560595712207231321

`A290054(A052905(n+4)-2)`
-/

namespace A173680.P1560595712207231321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A052905 (n + 4) - 2).toNat

end

end A173680.P1560595712207231321

/-! ## A173680.P3200257823245059537

`A290054(A034856(n+6)-5)`
-/

namespace A173680.P3200257823245059537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A034856 (n + 6) - 5).toNat

end

end A173680.P3200257823245059537

/-! ## A173680.P2485275446018480572

`A290054(A000217(n+7)-7)`
-/

namespace A173680.P2485275446018480572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000217 (n + 7) - 7).toNat

end

end A173680.P2485275446018480572

/-! ## A173680.P6530186095387123205

`A290054(Δ[A023551(n+2)]-1)`
-/

namespace A173680.P6530186095387123205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (f1 (n + 1) - f1 n - 1).toNat

end

end A173680.P6530186095387123205

/-! ## A173680.P10256919400748517971

`A290054(Δ[A026054(n+4)]-1)`
-/

namespace A173680.P10256919400748517971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (f1 (n + 1) - f1 n - 1).toNat

end

end A173680.P10256919400748517971

/-! ## A173680.P425154662628540851

`A290054(A000096(n+5)+n+1)`
-/

namespace A173680.P425154662628540851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A173680.P425154662628540851

/-! ## A173680.P16574842471676821006

`A290054(2*n+A027379(n+3)+9)`
-/

namespace A173680.P16574842471676821006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 ((2 * n : ℤ) + (A027379 (n + 3) + 9)).toNat

end

end A173680.P16574842471676821006

/-!
# A173681: Number of ways of writing n as a sum of 8 nonnegative cubes.

The programs for A173681, there is no canonical definition to state claims against.
-/

/-! ## A173681.P4096660844270472668

`A290054(A000217(n+9)-9)`
-/

namespace A173681.P4096660844270472668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000217 (n + 9) - 9).toNat

end

end A173681.P4096660844270472668

/-! ## A173681.P2220617568978156596

`A290054(A000124(n+9)-10)`
-/

namespace A173681.P2220617568978156596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000124 (n + 9) - 10).toNat

end

end A173681.P2220617568978156596

/-! ## A173681.P7360147153639412284

`A290054(A008574(n+5)+A000124(n+5))`
-/

namespace A173681.P7360147153639412284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A008574 (n + 5) + A000124 (n + 5)).toNat

end

end A173681.P7360147153639412284

/-! ## A173681.P8223768567993606970

`A290054(A034856(n+6)+A005843(n+5))`
-/

namespace A173681.P8223768567993606970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A034856 (n + 6) + A005843 (n + 5)).toNat

end

end A173681.P8223768567993606970

/-! ## A173681.P16956131137863309618

`A290054(A034856(n+6)+A004275(n+6))`
-/

namespace A173681.P16956131137863309618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A034856 (n + 6) + A004275 (n + 6)).toNat

end

end A173681.P16956131137863309618

/-!
# A173682: Number of ways of writing n as a sum of 9 nonnegative cubes.

The programs for A173682, there is no canonical definition to state claims against.
-/

/-! ## A173682.P10742905755646700642

`A290054(A055999(n+7)-4)`
-/

namespace A173682.P10742905755646700642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A055999 (n + 7) - 4).toNat

end

end A173682.P10742905755646700642

/-! ## A173682.P15988691339657636753

`A290054(A000217(n+10)-10)`
-/

namespace A173682.P15988691339657636753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000217 (n + 10) - 10).toNat

end

end A173682.P15988691339657636753

/-! ## A173682.P1660371050872137864

`A290054(A000096(n+8)+n+1)`
-/

namespace A173682.P1660371050872137864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A173682.P1660371050872137864

/-! ## A173682.P12381385576992015156

`A290054(A167499(n+3)+A008458(n+5))`
-/

namespace A173682.P12381385576992015156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A167499 (n + 3) + A008458 (n + 5)).toNat

end

end A173682.P12381385576992015156

/-! ## A173682.P12458241433884908833

`A290054(A103517(n+5)+A027379(n+6))`
-/

namespace A173682.P12458241433884908833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (A103517 (n + 5) + A027379 (n + 6)).toNat

end

end A173682.P12458241433884908833

/-!
# A173683: Sum of n mod p, for p = 2, 3, 5, ..., smallest prime >= n.

The programs for A173683, the canonical program `A173683.P3255351781956052033` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173683 has offset 1).

The definition of A173683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173683.P3255351781956052033

`A024934(n+1)+1-∑{p}[n+1, C(#, n)]+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A173683

/-- `A024934(n+1)+1-∑{p}[n+1, C(#, n)]+n` -/
def P3255351781956052033.Spec : Prop :=
  ∀ n, P3255351781956052033.a n = A173683 (n + 1)

theorem P3255351781956052033.correct : P3255351781956052033.Spec := by
  intro n
  simp only [A173683, Nat.add_sub_cancel]

end A173683

/-! ## A173683.P7269770818723270110

`A191558(n+1)+A024934(n+1)`
-/

namespace A173683.P7269770818723270110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) + A024934 (n + 1)

end

end A173683.P7269770818723270110

namespace A173683

/-- `A191558(n+1)+A024934(n+1)` -/
def P7269770818723270110.Spec : Prop :=
  ∀ n, P7269770818723270110.a n = A173683 (n + 1)

end A173683

/-!
# A173684: Semiprimes of the form Fibonacci(k) + k.

The programs for A173684, there is no canonical definition to state claims against.
-/

/-! ## A173684.P11941059697997864450

`record[A055615(A002062(n+5))]`
-/

namespace A173684.P11941059697997864450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A002062 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173684.P11941059697997864450

/-! ## A173684.P7325045511472000580

`filter[A002062(n+1), A064911(#)]`
-/

namespace A173684.P7325045511472000580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A173684.P7325045511472000580

/-! ## A173684.P10060349053324872682

`filter[A002062(n+1), A280710(#)]`
-/

namespace A173684.P10060349053324872682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A173684.P10060349053324872682

/-!
# A173686: Periodic with period 12: repeat [2,8,2,2,8,5,5,8,5,5,8,2].

The programs for A173686, the canonical program `A173686.P4934482466966168594` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173686 has offset 1).

The definition of A173686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173686.P4934482466966168594

`a(n-3)-a(n-6)+a(n-9)` with `a(0)=2, a(1)=8, a(2)=2, a(3)=2, a(4)=8, a(5)=5, a(6)=5, a(7)=8, a(8)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173686

/-- `a(n-3)-a(n-6)+a(n-9)` -/
def P4934482466966168594.Spec : Prop :=
  ∀ n, P4934482466966168594.a n = A173686 (n + 1)

theorem P4934482466966168594.correct : P4934482466966168594.Spec := by
  intro n
  simp only [A173686, Nat.add_sub_cancel]

end A173686

/-!
# A173687: Numbers m such that the sum of factorial of the decimal digits of m is square.

The programs for A173687, there is no canonical definition to state claims against.
-/

/-! ## A173687.P11521006379370822142

`A130687(n)+a(floor(acot(n)))` with `a(0)=0`
-/

namespace A173687.P11521006379370822142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130687 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A173687.P11521006379370822142

/-! ## A173687.P8197581453153477522

`A130687(char[72*n]+n)-floor(acot(n))`
-/

namespace A173687.P8197581453153477522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 ((if ∃ j, f1 j = n then 1 else 0) + n) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A173687.P8197581453153477522

/-! ## A173687.P1419121950311629534

`A130687(round(sqrt(n²+1)))%((n+1)*Δ[n^3])`
-/

namespace A173687.P1419121950311629534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130687 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A173687.P1419121950311629534

/-! ## A173687.P18399587741041948438

`∪[A004927(n), A130687(n+1)]`
-/

namespace A173687.P18399587741041948438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P18399587741041948438

/-! ## A173687.P12185600778080281442

`∪[A004929(n), A130687(n+1)]`
-/

namespace A173687.P12185600778080281442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P12185600778080281442

/-! ## A173687.P12784922978730560976

`∪[A004930(n), A130687(n+1)]`
-/

namespace A173687.P12784922978730560976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P12784922978730560976

/-! ## A173687.P14868191241558497072

`∪[A004931(n), A130687(n+1)]`
-/

namespace A173687.P14868191241558497072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P14868191241558497072

/-! ## A173687.P2134146690585450601

`∪[A004932(n), A130687(n+1)]`
-/

namespace A173687.P2134146690585450601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P2134146690585450601

/-! ## A173687.P11165268204683268077

`∪[A004933(n), A130687(n+1)]`
-/

namespace A173687.P11165268204683268077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P11165268204683268077

/-! ## A173687.P1918701998557956454

`∪[A004934(n), A130687(n+1)]`
-/

namespace A173687.P1918701998557956454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004934 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173687.P1918701998557956454

/-!
# A173688: Numbers m such that the sum of square of factorial of decimal digits is prime.

The programs for A173688, there is no canonical definition to state claims against.
-/

/-! ## A173688.P15491667070217526058

`lt[A256754(A329562(n+4)), A062329(n)]`
-/

namespace A173688.P15491667070217526058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256754 (A329562 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173688.P15491667070217526058

/-! ## A173688.P5173699999277830144

`lt[A017867(n), A062329(n)]`
-/

namespace A173688.P5173699999277830144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173688.P5173699999277830144

/-! ## A173688.P4322827129891271145

`lt[A180019(A017859(n)), A062329(n)]`
-/

namespace A173688.P4322827129891271145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 (A017859 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173688.P4322827129891271145

/-! ## A173688.P16942280186757596727

`lt[A166508(n+4), A061882(n)*A062329(n)]`
-/

namespace A173688.P16942280186757596727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166508 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061882 n * A062329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A173688.P16942280186757596727

/-!
# A173689: Numbers m such that the sum of square of factorial of decimal digits is square.

The programs for A173689, there is no canonical definition to state claims against.
-/

/-! ## A173689.P10514599646524934907

`A352665(C(n, 9)+1)+n`
-/

namespace A173689.P10514599646524934907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352665 (Nat.choose n 9 + 1) + (n : ℤ)

end

end A173689.P10514599646524934907

/-! ## A173689.P6498776393193061050

`∑[A104714(A236856(n))]`
-/

namespace A173689.P6498776393193061050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A236856 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173689.P6498776393193061050

/-! ## A173689.P11234311963291609953

`A106801(A302501(n+1))`
-/

namespace A173689.P11234311963291609953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A302501 (n + 1)).toNat

end

end A173689.P11234311963291609953

/-! ## A173689.P4847700634922219885

`A100354(A128936(n))+n`
-/

namespace A173689.P4847700634922219885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100354 (A128936 n).toNat + (n : ℤ)

end

end A173689.P4847700634922219885

/-! ## A173689.P3942679772900472287

`A093393(A143404(n))+n`
-/

namespace A173689.P3942679772900472287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093393 (A143404 n).toNat + (n : ℤ)

end

end A173689.P3942679772900472287

/-!
# A173690: Partial sums of round(n^2/5).

The programs for A173690, the canonical program `A173690.P5728948565959556143` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173690 has offset 0).

The definition of A173690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173690.P5728948565959556143

`round((2*n^3+3*n²+n)/30)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173690

/-- `round((2*n^3+3*n²+n)/30)` -/
def P5728948565959556143.Spec : Prop :=
  ∀ n, P5728948565959556143.a n = A173690 n

theorem P5728948565959556143.correct : P5728948565959556143.Spec := by
  intro n
  simp only [A173690]

end A173690

/-! ## A173690.P11968502296789123657

`a(n-5)+(n-2)²+2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6`
-/

namespace A173690.P11968502296789123657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6] fun n a =>
  a (n - 5) + ((n : ℤ) - 2) ^ 2 + 2

end

end A173690.P11968502296789123657

namespace A173690

/-- `a(n-5)+(n-2)²+2` -/
def P11968502296789123657.Spec : Prop :=
  ∀ n, P11968502296789123657.a n = A173690 n

end A173690

/-! ## A173690.P573693167064010568

`floor(a(n-1)+(n²+1)/5)` with `a(0)=0`
-/

namespace A173690.P573693167064010568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n ^ 2 + 1 : ℚ) / 5⌋

end

end A173690.P573693167064010568

namespace A173690

/-- `floor(a(n-1)+(n²+1)/5)` -/
def P573693167064010568.Spec : Prop :=
  ∀ n, P573693167064010568.a n = A173690 n

end A173690

/-! ## A173690.P9299664059432381159

`a(n-1)-floor((1-n²)/5)` with `a(0)=0`
-/

namespace A173690.P9299664059432381159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(1 - (n ^ 2 : ℤ) : ℚ) / 5⌋

end

end A173690.P9299664059432381159

namespace A173690

/-- `a(n-1)-floor((1-n²)/5)` -/
def P9299664059432381159.Spec : Prop :=
  ∀ n, P9299664059432381159.a n = A173690 n

end A173690

/-! ## A173690.P5254913250340419091

`∑[floor((2*n+1)/5)]+a(n-1)` with `a(0)=0`
-/

namespace A173690.P5254913250340419091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A173690.P5254913250340419091

namespace A173690

/-- `∑[floor((2*n+1)/5)]+a(n-1)` -/
def P5254913250340419091.Spec : Prop :=
  ∀ n, P5254913250340419091.a n = A173690 n

end A173690

/-! ## A173690.P7555709891357884245

`∑[A008738(n)]`
-/

namespace A173690.P7555709891357884245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173690.P7555709891357884245

namespace A173690

/-- `∑[A008738(n)]` -/
def P7555709891357884245.Spec : Prop :=
  ∀ n, P7555709891357884245.a n = A173690 n

end A173690

/-! ## A173690.P9075533110004432554

`∑[∑[A288156(n)]]`
-/

namespace A173690.P9075533110004432554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173690.P9075533110004432554

namespace A173690

/-- `∑[∑[A288156(n)]]` -/
def P9075533110004432554.Spec : Prop :=
  ∀ n, P9075533110004432554.a n = A173690 n

end A173690

/-! ## A173690.P14118705469884782407

`floor(2*(∑[A000290(n)]+1)/10)`
-/

namespace A173690.P14118705469884782407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) : ℚ) / 10⌋

end

end A173690.P14118705469884782407

namespace A173690

/-- `floor(2*(∑[A000290(n)]+1)/10)` -/
def P14118705469884782407.Spec : Prop :=
  ∀ n, P14118705469884782407.a n = A173690 n

end A173690

/-! ## A173690.P2742294362632531144

`A173196(n)-A177239(n)`
-/

namespace A173690.P2742294362632531144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A177239 n

end

end A173690.P2742294362632531144

namespace A173690

/-- `A173196(n)-A177239(n)` -/
def P2742294362632531144.Spec : Prop :=
  ∀ n, P2742294362632531144.a n = A173690 n

end A173690

/-! ## A173690.P2710632045530987216

`A194222(n+1)+A181640(n)`
-/

namespace A173690.P2710632045530987216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194222 (n + 1) + A181640 n

end

end A173690.P2710632045530987216

namespace A173690

/-- `A194222(n+1)+A181640(n)` -/
def P2710632045530987216.Spec : Prop :=
  ∀ n, P2710632045530987216.a n = A173690 n

end A173690

/-! ## A173690.P12635898410197758706

`A063489(n+1)-A299260(n)`
-/

namespace A173690.P12635898410197758706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1) - A299260 n

end

end A173690.P12635898410197758706

namespace A173690

/-- `A063489(n+1)-A299260(n)` -/
def P12635898410197758706.Spec : Prop :=
  ∀ n, P12635898410197758706.a n = A173690 n

end A173690

/-! ## A173690.P5923404490253257891

`A181640(n+1)-A118015(n)`
-/

namespace A173690.P5923404490253257891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181640 (n + 1) - A118015 n

end

end A173690.P5923404490253257891

namespace A173690

/-- `A181640(n+1)-A118015(n)` -/
def P5923404490253257891.Spec : Prop :=
  ∀ n, P5923404490253257891.a n = A173690 n

end A173690

/-! ## A173690.P8537937871039970929

`∑[A118015(n+1)]-A118015(n)`
-/

namespace A173690.P8537937871039970929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118015 n

end

end A173690.P8537937871039970929

namespace A173690

/-- `∑[A118015(n+1)]-A118015(n)` -/
def P8537937871039970929.Spec : Prop :=
  ∀ n, P8537937871039970929.a n = A173690 n

end A173690

/-! ## A173690.P2822134532337007387

`A011795(n+3)-A011795(n+1)`
-/

namespace A173690.P2822134532337007387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (n + 3) - A011795 (n + 1)

end

end A173690.P2822134532337007387

namespace A173690

/-- `A011795(n+3)-A011795(n+1)` -/
def P2822134532337007387.Spec : Prop :=
  ∀ n, P2822134532337007387.a n = A173690 n

end A173690

/-! ## A173690.P4635868242548773236

`∑[A008798(2*n+1)]`
-/

namespace A173690.P4635868242548773236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008798 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173690.P4635868242548773236

namespace A173690

/-- `∑[A008798(2*n+1)]` -/
def P4635868242548773236.Spec : Prop :=
  ∀ n, P4635868242548773236.a n = A173690 n

end A173690

/-! ## A173690.P14676097291647762345

`∑[∑[A002266(2*n+1)]]`
-/

namespace A173690.P14676097291647762345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173690.P14676097291647762345

namespace A173690

/-- `∑[∑[A002266(2*n+1)]]` -/
def P14676097291647762345.Spec : Prop :=
  ∀ n, P14676097291647762345.a n = A173690 n

end A173690

/-! ## A173690.P756656187723981360

`∑[A134119(n²)]`
-/

namespace A173690.P756656187723981360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173690.P756656187723981360

namespace A173690

/-- `∑[A134119(n²)]` -/
def P756656187723981360.Spec : Prop :=
  ∀ n, P756656187723981360.a n = A173690 n

end A173690

/-! ## A173690.P4149197686613757840

`∑[A002266(n²+1)]`
-/

namespace A173690.P4149197686613757840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173690.P4149197686613757840

namespace A173690

/-- `∑[A002266(n²+1)]` -/
def P4149197686613757840.Spec : Prop :=
  ∀ n, P4149197686613757840.a n = A173690 n

end A173690

/-!
# A173691: Partial sums of round(n^2/6).

The programs for A173691, the canonical program `A173691.P18432164167927401668` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173691 has offset 0).

The definition of A173691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173691.P18432164167927401668

`round((2*n^3+3*n²+6*n)/36)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173691

/-- `round((2*n^3+3*n²+6*n)/36)` -/
def P18432164167927401668.Spec : Prop :=
  ∀ n, P18432164167927401668.a n = A173691 n

theorem P18432164167927401668.correct : P18432164167927401668.Spec := by
  intro n
  simp only [A173691]

end A173691

/-! ## A173691.P18137915145761019905

`a(n-6)+n²-5*n+10` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=10`
-/

namespace A173691.P18137915145761019905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6, 10] fun n a =>
  a (n - 6) + (n ^ 2 : ℤ) - (5 * n : ℤ) + 10

end

end A173691.P18137915145761019905

namespace A173691

/-- `a(n-6)+n²-5*n+10` -/
def P18137915145761019905.Spec : Prop :=
  ∀ n, P18137915145761019905.a n = A173691 n

end A173691

/-! ## A173691.P7242907597528050482

`∑[∑[floor(or(1, n)/3)]]`
-/

namespace A173691.P7242907597528050482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173691.P7242907597528050482

namespace A173691

/-- `∑[∑[floor(or(1, n)/3)]]` -/
def P7242907597528050482.Spec : Prop :=
  ∀ n, P7242907597528050482.a n = A173691 n

end A173691

/-! ## A173691.P18036447301532096034

`a(n-1)+round(n²/6)` with `a(0)=0`
-/

namespace A173691.P18036447301532096034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 6)

end

end A173691.P18036447301532096034

namespace A173691

/-- `a(n-1)+round(n²/6)` -/
def P18036447301532096034.Spec : Prop :=
  ∀ n, P18036447301532096034.a n = A173691 n

end A173691

/-! ## A173691.P13644370832893147608

`∑[A056829(n)]`
-/

namespace A173691.P13644370832893147608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173691.P13644370832893147608

namespace A173691

/-- `∑[A056829(n)]` -/
def P13644370832893147608.Spec : Prop :=
  ∀ n, P13644370832893147608.a n = A173691 n

end A173691

/-! ## A173691.P1278805145479074456

`A173196(n)-A175724(n)`
-/

namespace A173691.P1278805145479074456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A175724 n

end

end A173691.P1278805145479074456

namespace A173691

/-- `A173196(n)-A175724(n)` -/
def P1278805145479074456.Spec : Prop :=
  ∀ n, P1278805145479074456.a n = A173691 n

end A173691

/-! ## A173691.P4627830091272482114

`A181286(n)-A171965(n)`
-/

namespace A173691.P4627830091272482114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n - A171965 n

end

end A173691.P4627830091272482114

namespace A173691

/-- `A181286(n)-A171965(n)` -/
def P4627830091272482114.Spec : Prop :=
  ∀ n, P4627830091272482114.a n = A173691 n

end A173691

/-! ## A173691.P4507107675215241965

`∑[A002620(n)]-∑[A008724(n)]`
-/

namespace A173691.P4507107675215241965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A173691.P4507107675215241965

namespace A173691

/-- `∑[A002620(n)]-∑[A008724(n)]` -/
def P4507107675215241965.Spec : Prop :=
  ∀ n, P4507107675215241965.a n = A173691 n

end A173691

/-! ## A173691.P17493755370861023128

`A171965(n+3)-∑[n+1]`
-/

namespace A173691.P17493755370861023128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171965 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173691.P17493755370861023128

namespace A173691

/-- `A171965(n+3)-∑[n+1]` -/
def P17493755370861023128.Spec : Prop :=
  ∀ n, P17493755370861023128.a n = A173691 n

end A173691

/-! ## A173691.P7550899967606244288

`∑[A111709(n²+1)]`
-/

namespace A173691.P7550899967606244288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111709 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173691.P7550899967606244288

namespace A173691

/-- `∑[A111709(n²+1)]` -/
def P7550899967606244288.Spec : Prop :=
  ∀ n, P7550899967606244288.a n = A173691 n

end A173691

/-! ## A173691.P18387339930585565604

`∑[A152467(n²+3)]`
-/

namespace A173691.P18387339930585565604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (n ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173691.P18387339930585565604

namespace A173691

/-- `∑[A152467(n²+3)]` -/
def P18387339930585565604.Spec : Prop :=
  ∀ n, P18387339930585565604.a n = A173691 n

end A173691

/-!
# A173692: a(n) = ceiling(A000931(n)/2).

The programs for A173692, the canonical program `A173692.P9459968994118431354` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173692 has offset 0).

The definition of A173692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173692.P9459968994118431354

`a(n-2)+a(n-3)+a(n-7)-a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=2, a(8)=3, a(9)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173692

/-- `a(n-2)+a(n-3)+a(n-7)-a(n-9)-a(n-10)` -/
def P9459968994118431354.Spec : Prop :=
  ∀ n, P9459968994118431354.a n = A173692 n

theorem P9459968994118431354.correct : P9459968994118431354.Spec := by
  intro n
  simp only [A173692]

end A173692

/-! ## A173692.P5365802500971388235

`floor(A052954(n+1)/2)`
-/

namespace A173692.P5365802500971388235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052954 (n + 1) : ℚ) / 2⌋

end

end A173692.P5365802500971388235

namespace A173692

/-- `floor(A052954(n+1)/2)` -/
def P5365802500971388235.Spec : Prop :=
  ∀ n, P5365802500971388235.a n = A173692 n

end A173692

/-! ## A173692.P3709788648972390247

`ceil(A182097(n+1)/2)`
-/

namespace A173692.P3709788648972390247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182097 (n + 1) : ℚ) / 2⌉

end

end A173692.P3709788648972390247

namespace A173692

/-- `ceil(A182097(n+1)/2)` -/
def P3709788648972390247.Spec : Prop :=
  ∀ n, P3709788648972390247.a n = A173692 n

end A173692

/-! ## A173692.P4540526080250269931

`ceil(A000931(n+4)/2)`
-/

namespace A173692.P4540526080250269931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000931 (n + 4) : ℚ) / 2⌉

end

end A173692.P4540526080250269931

namespace A173692

/-- `ceil(A000931(n+4)/2)` -/
def P4540526080250269931.Spec : Prop :=
  ∀ n, P4540526080250269931.a n = A173692 n

end A173692

/-! ## A173692.P162752278861554189

`round((∑[A078027(n+1)]+1)/2)`
-/

namespace A173692.P162752278861554189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2)

end

end A173692.P162752278861554189

namespace A173692

/-- `round((∑[A078027(n+1)]+1)/2)` -/
def P162752278861554189.Spec : Prop :=
  ∀ n, P162752278861554189.a n = A173692 n

end A173692

/-! ## A173692.P7042734667738459771

`ceil(A127682(2*n+1)/2)`
-/

namespace A173692.P7042734667738459771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127682 (2 * n + 1) : ℚ) / 2⌉

end

end A173692.P7042734667738459771

namespace A173692

/-- `ceil(A127682(2*n+1)/2)` -/
def P7042734667738459771.Spec : Prop :=
  ∀ n, P7042734667738459771.a n = A173692 n

end A173692

/-! ## A173692.P12105712312201879680

`round(A127682(n+1+n)/2)`
-/

namespace A173692.P12105712312201879680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127682 (n + 1 + n) : ℚ) / 2)

end

end A173692.P12105712312201879680

namespace A173692

/-- `round(A127682(n+1+n)/2)` -/
def P12105712312201879680.Spec : Prop :=
  ∀ n, P12105712312201879680.a n = A173692 n

end A173692

/-! ## A173692.P15637462025459458686

`round(Δ[A023434(n+1)/2])`
-/

namespace A173692.P15637462025459458686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023434 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A173692.P15637462025459458686

namespace A173692

/-- `round(Δ[A023434(n+1)/2])` -/
def P15637462025459458686.Spec : Prop :=
  ∀ n, P15637462025459458686.a n = A173692 n

end A173692

/-!
# A173693: a(n) = ceiling(A107293(n)/2).

The programs for A173693, the canonical program `A173693.P15640502224323147865` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173693 has offset 0).

The definition of A173693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173693.P15640502224323147865

`ceil(A107293(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173693

/-- `ceil(A107293(n)/2)` -/
def P15640502224323147865.Spec : Prop :=
  ∀ n, P15640502224323147865.a n = A173693 n

theorem P15640502224323147865.correct : P15640502224323147865.Spec := by
  intro n
  simp only [A173693]

end A173693

/-! ## A173693.P17241087358990120154

`round(A107293(n-char[1])/2)`
-/

namespace A173693.P17241087358990120154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A107293 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / 2)

end

end A173693.P17241087358990120154

namespace A173693

/-- `round(A107293(n-char[1])/2)` -/
def P17241087358990120154.Spec : Prop :=
  ∀ n, P17241087358990120154.a n = A173693 n

end A173693

/-! ## A173693.P11586522330022406327

`round(A107293(n)/2)%A000032(n)`
-/

namespace A173693.P11586522330022406327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A107293 n : ℚ) / 2)) (A000032 n)

end

end A173693.P11586522330022406327

namespace A173693

/-- `round(A107293(n)/2)%A000032(n)` -/
def P11586522330022406327.Spec : Prop :=
  ∀ n, P11586522330022406327.a n = A173693 n

end A173693

/-! ## A173693.P14726985688414663631

`A007318(∑[n])*round(A107293(n)/2)`
-/

namespace A173693.P14726985688414663631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A107293 n : ℚ) / 2)

end

end A173693.P14726985688414663631

namespace A173693

/-- `A007318(∑[n])*round(A107293(n)/2)` -/
def P14726985688414663631.Spec : Prop :=
  ∀ n, P14726985688414663631.a n = A173693 n

end A173693

/-! ## A173693.P18020091362749593522

`ceil(Δ[A176510(A027379(n))/2])`
-/

namespace A173693.P18020091362749593522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176510 (A027379 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A173693.P18020091362749593522

namespace A173693

/-- `ceil(Δ[A176510(A027379(n))/2])` -/
def P18020091362749593522.Spec : Prop :=
  ∀ n, P18020091362749593522.a n = A173693 n

end A173693

/-!
# A173694: Arguments n for which the Carmichael lambda function A002322(n) is a perfect square.

The programs for A173694, there is no canonical definition to state claims against.
-/

/-! ## A173694.P12784497491307937124

`eq[1, and(1, A066800(n+1))]+1`
-/

namespace A173694.P12784497491307937124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066800 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173694.P12784497491307937124

/-! ## A173694.P2827377528387159040

`eq[2, A000122(A002322(n+1))]+1`
-/

namespace A173694.P2827377528387159040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A173694.P2827377528387159040

/-! ## A173694.P13676902835649183139

`record[and(1, A066800(n+1))*A000027(n+1)]`
-/

namespace A173694.P13676902835649183139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066800 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173694.P13676902835649183139

/-! ## A173694.P14469493658439891651

`record[A000027(n+1)/A055491(A002322(n+1))]`
-/

namespace A173694.P14469493658439891651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A055491 (A002322 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173694.P14469493658439891651

/-! ## A173694.P3725134723264194519

`record[and(1, A066800(n+1))*A028242(2*n)]`
-/

namespace A173694.P3725134723264194519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066800 (n + 1)) * A028242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173694.P3725134723264194519

/-! ## A173694.P1539894339063726270

`record[A008619(2*n)/A055491(A002322(n+1))]`
-/

namespace A173694.P1539894339063726270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A055491 (A002322 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173694.P1539894339063726270

/-!
# A173695: Numbers k such that lambda(k) = lambda(k+1).

The programs for A173695, there is no canonical definition to state claims against.
-/

/-! ## A173695.P7897980207079287147

`eq[A002322(n+1), A002322(n+2)]+1`
-/

namespace A173695.P7897980207079287147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173695.P7897980207079287147

/-! ## A173695.P9555426995244406259

`eq[A263027(n+1), A263027(n+2)]+1`
-/

namespace A173695.P9555426995244406259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173695.P9555426995244406259

/-! ## A173695.P8022726452123531208

`eq[A002322(A028310(n)), A277030(n+1)]`
-/

namespace A173695.P8022726452123531208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173695.P8022726452123531208

/-! ## A173695.P9378724819870137734

`eq[A134198(n+1)-A051903(n+1), A277030(n+2)]+1`
-/

namespace A173695.P9378724819870137734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) - A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173695.P9378724819870137734

/-! ## A173695.P8571749418800918362

`eq[(1-A051953(n+1)+n)/A034380(n+1), A277030(n+2)]+1`
-/

namespace A173695.P8571749418800918362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A173695.P8571749418800918362

/-!
# A173696: a(n) = ceiling(A117791(n)/2).

The programs for A173696, the canonical program `A173696.P16704578198849924230` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173696 has offset 0).

The definition of A173696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A117791(n)/2)` (program `A173696.P16704578198849924230`, by `A173696.P16704578198849924230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173696.P16704578198849924230

`ceil(A117791(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173696

/-- `ceil(A117791(n)/2)` -/
def P16704578198849924230.Spec : Prop :=
  ∀ n, P16704578198849924230.a n = A173696 n

theorem P16704578198849924230.correct : P16704578198849924230.Spec := by
  intro n
  simp only [A173696]

end A173696

/-! ## A173696.P3808334362557466965

`round(A117791(A028310(n))/2)`
-/

namespace A173696.P3808334362557466965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117791 (A028310 n).toNat : ℚ) / 2)

end

end A173696.P3808334362557466965

namespace A173696

/-- `round(A117791(A028310(n))/2)` -/
def P3808334362557466965.Spec : Prop :=
  ∀ n, P3808334362557466965.a n = A173696 n

end A173696

/-! ## A173696.P9654247326586933025

`round(A117791(n)/A036453(n+1))`
-/

namespace A173696.P9654247326586933025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117791 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A173696.P9654247326586933025

namespace A173696

/-- `round(A117791(n)/A036453(n+1))` -/
def P9654247326586933025.Spec : Prop :=
  ∀ n, P9654247326586933025.a n = A173696 n

end A173696

/-! ## A173696.P9673259662081547566

`round(A117791(n)/A020639(A103517(n)))`
-/

namespace A173696.P9673259662081547566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117791 n : ℚ) / (A020639 (A103517 n).toNat : ℚ))

end

end A173696.P9673259662081547566

namespace A173696

/-- `round(A117791(n)/A020639(A103517(n)))` -/
def P9673259662081547566.Spec : Prop :=
  ∀ n, P9673259662081547566.a n = A173696 n

end A173696

/-!
# A173697: a(n) = ceiling(A013984(n)/2).

The programs for A173697, the canonical program `A173697.P12232505073087085586` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173697 has offset 0).

The definition of A173697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A013984(n)/2)` (program `A173697.P12232505073087085586`, by `A173697.P12232505073087085586.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173697.P12232505073087085586

`ceil(A013984(n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173697

/-- `ceil(A013984(n)/2)` -/
def P12232505073087085586.Spec : Prop :=
  ∀ n, P12232505073087085586.a n = A173697 n

theorem P12232505073087085586.correct : P12232505073087085586.Spec := by
  intro n
  simp only [A173697]

end A173697

/-! ## A173697.P12839355899696157642

`round(A013984(n)/A036453(n+1))`
-/

namespace A173697.P12839355899696157642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013984 n : ℚ) / (A036453 (n + 1) : ℚ))

end

end A173697.P12839355899696157642

namespace A173697

/-- `round(A013984(n)/A036453(n+1))` -/
def P12839355899696157642.Spec : Prop :=
  ∀ n, P12839355899696157642.a n = A173697 n

end A173697

/-! ## A173697.P17433427172866243702

`round(A013984(n)/A014673(A059558(n+1)))`
-/

namespace A173697.P17433427172866243702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013984 n : ℚ) / (A014673 (A059558 (n + 1)).toNat : ℚ))

end

end A173697.P17433427172866243702

namespace A173697

/-- `round(A013984(n)/A014673(A059558(n+1)))` -/
def P17433427172866243702.Spec : Prop :=
  ∀ n, P17433427172866243702.a n = A173697 n

end A173697

/-! ## A173697.P3342268671258382189

`round(A013984(n)/A348717(A020639(n+1)))`
-/

namespace A173697.P3342268671258382189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013984 n : ℚ) / (A348717 (A020639 (n + 1)).toNat : ℚ))

end

end A173697.P3342268671258382189

namespace A173697

/-- `round(A013984(n)/A348717(A020639(n+1)))` -/
def P3342268671258382189.Spec : Prop :=
  ∀ n, P3342268671258382189.a n = A173697 n

end A173697

/-!
# A173698: a(n+1) is the smallest integer > a(n) such that the concatenation of a(n) and [a(n+1)-a(n)] is a prime number.

The programs for A173698, there is no canonical definition to state claims against.
-/

/-! ## A173698.P14389533434648824988

`A068695(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A173698.P14389533434648824988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068695 (a (n - 1)).toNat + a (n - 1)

end

end A173698.P14389533434648824988

/-! ## A173698.P1295983242957469261

`A091088(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A173698.P1295983242957469261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091088 (a (n - 1)).toNat + a (n - 1)

end

end A173698.P1295983242957469261

/-! ## A173698.P10273806618547481128

`A091088(a(n-1))-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A173698.P10273806618547481128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091088 (a (n - 1)).toNat - (A000038 n - a (n - 1))

end

end A173698.P10273806618547481128

/-! ## A173698.P13024980613858518610

`∑[3^A373126(n²)]`
-/

namespace A173698.P13024980613858518610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A373126 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173698.P13024980613858518610

/-! ## A173698.P16925887887380050482

`∑[∏{e}[n^6, A006530(#)]]`
-/

namespace A173698.P16925887887380050482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A006530 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173698.P16925887887380050482

/-!
# A173699: a(n+1) is the smallest integer > a(n) such that the concatenation of [a(n+1)-a(n)] and a(n+1) is a prime number.

The programs for A173699, there is no canonical definition to state claims against.
-/

/-! ## A173699.P9896824492976001546

`A032662(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A173699.P9896824492976001546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032662 (a (n - 1)).toNat + a (n - 1)

end

end A173699.P9896824492976001546

/-! ## A173699.P5762566144362734183

`A174583(a(n-1))` with `a(0)=1`
-/

namespace A173699.P5762566144362734183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174583 (a (n - 1)).toNat

end

end A173699.P5762566144362734183

/-! ## A173699.P16585236369535595767

`eq[A331410(A250120(n)), A338719(n+4)]`
-/

namespace A173699.P16585236369535595767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A250120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338719 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173699.P16585236369535595767

/-! ## A173699.P12120330276048990002

`eq[1, and(n, A074884(n+4))]`
-/

namespace A173699.P12120330276048990002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A074884 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173699.P12120330276048990002

