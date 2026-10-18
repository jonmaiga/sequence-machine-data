import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A291803: Partial sums of A230625.

The programs for A291803, there is no canonical definition to state claims against.
-/

/-! ## A291803.P886240344335770906

`∑[A230625(n+1)]`
-/

namespace A291803.P886240344335770906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291803.P886240344335770906

/-! ## A291803.P8132137677557099403

`A230625(n%(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A291803.P8132137677557099403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230625 (n % (n + 1) + 1) + a (n - 1)

end

end A291803.P8132137677557099403

/-! ## A291803.P3084284505101815637

`A230625(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A291803.P3084284505101815637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230625 (n + 1) + a (A023443 n).toNat

end

end A291803.P3084284505101815637

/-! ## A291803.P1417231476473153463

`A230625(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A291803.P1417231476473153463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230625 (A028310 n + 1).toNat + a (n - 1)

end

end A291803.P1417231476473153463

/-! ## A291803.P5672160326867696076

`A230625(A000038(n)+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A291803.P5672160326867696076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230625 (A000038 n + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A291803.P5672160326867696076

/-! ## A291803.P9205989221799639488

`A230625(n+1)+A008619(A004273(a(n-1)))` with `a(0)=1`
-/

namespace A291803.P9205989221799639488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230625 (n + 1) + A008619 (A004273 (a (n - 1)).toNat).toNat

end

end A291803.P9205989221799639488

/-!
# A291804: a(n) = sigma(A291789(n)).

The programs for A291804, there is no canonical definition to state claims against.
-/

/-! ## A291804.P12428257152337853367

`2*A291789(n+1)-A291805(n+1)`
-/

namespace A291804.P12428257152337853367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291789 (n + 1) - A291805 (n + 1)

end

end A291804.P12428257152337853367

/-! ## A291804.P12637461737657822874

`∑{d}[A291789(n), #]`
-/

namespace A291804.P12637461737657822874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291789 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A291804.P12637461737657822874

/-! ## A291804.P1041143085502831795

`A000203(A291789(n))`
-/

namespace A291804.P1041143085502831795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A291789 n).toNat

end

end A291804.P1041143085502831795

/-! ## A291804.P7296900951471253425

`A227131(A291789(n)+char[25])`
-/

namespace A291804.P7296900951471253425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 (A291789 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A291804.P7296900951471253425

/-! ## A291804.P5067151702141508719

`A227131(A291789(n)%A158394(n+1))`
-/

namespace A291804.P5067151702141508719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 (Int.tmod (A291789 n) (A158394 (n + 1))).toNat

end

end A291804.P5067151702141508719

/-!
# A291805: a(n) = phi(A291789(n)).

The programs for A291805, there is no canonical definition to state claims against.
-/

/-! ## A291805.P13424783658030604863

`2*A291789(n+1)-A291804(n+1)`
-/

namespace A291805.P13424783658030604863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291789 (n + 1) - A291804 (n + 1)

end

end A291805.P13424783658030604863

/-! ## A291805.P5107400185535502067

`A000010(A291789(n))`
-/

namespace A291805.P5107400185535502067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A291789 n).toNat

end

end A291805.P5107400185535502067

/-! ## A291805.P12267587991836875591

`∑{d}[A291789(n), A007431(#)]`
-/

namespace A291805.P12267587991836875591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A291805.P12267587991836875591

/-! ## A291805.P876059538223931311

`A055034(lcm(2, A291789(n)))`
-/

namespace A291805.P876059538223931311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A291789 n))

end

end A291805.P876059538223931311

/-! ## A291805.P11661105792746693003

`A039649(A291789(n))-A007318(∑[n])`
-/

namespace A291805.P11661105792746693003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A291789 n).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291805.P11661105792746693003

/-!
# A291811: Sixteen-hole chromatic harmonica standard tone solo layout.

The programs for A291811, there is no canonical definition to state claims against.
-/

/-! ## A291811.P5540634286624844670

`A291812(A109613(n))+n%2`
-/

namespace A291811.P5540634286624844670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A109613 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A291811.P5540634286624844670

/-! ## A291811.P14132076573281956199

`and(-A073753(n+1), A291812(n+1))`
-/

namespace A291811.P14132076573281956199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A073753 (n + 1)) (A291812 (n + 1))

end

end A291811.P14132076573281956199

/-! ## A291811.P14919148555718779669

`A291812(A109613(n))+A000035(n)`
-/

namespace A291811.P14919148555718779669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A109613 n).toNat + A000035 n

end

end A291811.P14919148555718779669

/-! ## A291811.P1288920748697462836

`A291812(A109613(n))+log2(A000034(n))`
-/

namespace A291811.P1288920748697462836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291812 (A109613 n).toNat : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A291811.P1288920748697462836

/-! ## A291811.P468742187945896192

`A291812(A109613(n))+Δ[A004526(n)]`
-/

namespace A291811.P468742187945896192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291812 (A109613 n).toNat + (f1 (n + 1) - f1 n)

end

end A291811.P468742187945896192

/-!
# A291812: Twelve-hole chromatic harmonica standard tone solo layout.

The programs for A291812, there is no canonical definition to state claims against.
-/

/-! ## A291812.P2983175204773888038

`A291811(∑[A046564(A050328(n+1))])`
-/

namespace A291812.P2983175204773888038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046564 (A050328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291812.P2983175204773888038

/-! ## A291812.P1868109627443511132

`A291811(n+1)+A010893(A220777(n))`
-/

namespace A291812.P1868109627443511132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (n + 1) + A010893 ((A220777 n).toNat + 13)

end

end A291812.P1868109627443511132

/-! ## A291812.P15578100971447659480

`A291811(n+1)+A059995(A249442(n))`
-/

namespace A291812.P15578100971447659480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (n + 1) + A059995 (A249442 n).toNat

end

end A291812.P15578100971447659480

/-! ## A291812.P10231416782736802157

`A291811(n+1)+A088722(A246465(n))`
-/

namespace A291812.P10231416782736802157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (n + 1) + A088722 (A246465 n).toNat

end

end A291812.P10231416782736802157

/-! ## A291812.P18014732432577296074

`A326457(A126760(n))+A291811(n+1)`
-/

namespace A291812.P18014732432577296074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 (A126760 n).toNat + A291811 (n + 1)

end

end A291812.P18014732432577296074

/-!
# A291813: G.f. A(x) satisfies: A(x - 2*x*A(x)) = x - x*A(x).

The programs for A291813, there is no canonical definition to state claims against.
-/

/-! ## A291813.P3110498446708215795

`A342498(∑[∑[n²]])`
-/

namespace A291813.P3110498446708215795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291813.P3110498446708215795

/-!
# A291814: G.f. A(x) satisfies: A(x - 3*x*A(x)) = x - 2*x*A(x).

The programs for A291814, there is no canonical definition to state claims against.
-/

/-! ## A291814.P2815863675355911386

`A032793(A005789(n)-A001842(n))`
-/

namespace A291814.P2815863675355911386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A005789 n - A001842 n).toNat

end

end A291814.P2815863675355911386

/-! ## A291814.P7340549718098851035

`A032793(A005789(n)-A324684(3*(n+1)))`
-/

namespace A291814.P7340549718098851035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A005789 n - A324684 (3 * (n + 1))).toNat

end

end A291814.P7340549718098851035

/-!
# A291815: G.f. A(x) satisfies: A(x - 4*x*A(x)) = x - 3*x*A(x).

The programs for A291815, there is no canonical definition to state claims against.
-/

/-! ## A291815.P12317386858507726255

`A042963(round(n²*(n+3)^(n-2))+1)`
-/

namespace A291815.P12317386858507726255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) + 1).toNat

end

end A291815.P12317386858507726255

/-!
# A291816: G.f. A(x) satisfies: A(x - 3*x*A(x)) = x - x*A(x).

The programs for A291816, there is no canonical definition to state claims against.
-/

/-! ## A291816.P15006576254500060666

`A020915(floor(sqrt(A258385(n+1))))`
-/

namespace A291816.P15006576254500060666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.sqrt (A258385 (n + 1))).toNat

end

end A291816.P15006576254500060666

/-!
# A291819: G.f. A(x) satisfies: A(x - x*A(x)) = x + 3*x*A(x).

The programs for A291819, there is no canonical definition to state claims against.
-/

/-! ## A291819.P1071429994914144241

`A066925(A334162(n))`
-/

namespace A291819.P1071429994914144241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066925 (A334162 n).toNat

end

end A291819.P1071429994914144241

/-!
# A291820: G.f. A(x,y) satisfies: A( x - x*y*A(x,y), y) = x + x*(1-y)*A(x,y), where the coefficients T(n,k) of x^n*y^k form a triangle read by rows n>=1, for k=0..n-1.

The programs for A291820, there is no canonical definition to state claims against.
-/

/-! ## A291820.P8932056469698872378

`A328003(A304336(floor(acot(n))+n+1))`
-/

namespace A291820.P8932056469698872378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A304336 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat).toNat

end

end A291820.P8932056469698872378

/-! ## A291820.P16809857403660951747

`A328003(A304336(n+1)^ceil(sin(n)²))`
-/

namespace A291820.P16809857403660951747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (SequenceMachineLib.roundAway ((A304336 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A291820.P16809857403660951747

/-! ## A291820.P16694728864050875419

`A131198(n)+A086707(A157147(n))`
-/

namespace A291820.P16694728864050875419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 n + A086707 (A157147 n).toNat

end

end A291820.P16694728864050875419

/-! ## A291820.P6738483507164191295

`A323837(n)+A107846(A323836(n))`
-/

namespace A291820.P6738483507164191295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323837 n + A107846 (A323836 n).toNat

end

end A291820.P6738483507164191295

/-!
# A291821: Central terms of triangle A291820.

The programs for A291821, there is no canonical definition to state claims against.
-/

/-! ## A291821.P16036920460869577779

`A291820(∑[4*n]+1)`
-/

namespace A291821.P16036920460869577779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A291821.P16036920460869577779

/-! ## A291821.P90752224850478487

`record[A003982(n)*A291820(n+1)]`
-/

namespace A291821.P90752224850478487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A291820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291821.P90752224850478487

/-! ## A291821.P5135514827379024854

`lcm(A033999(n), A291820(A001844(n)))`
-/

namespace A291821.P5135514827379024854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A291820 (A001844 n).toNat)

end

end A291821.P5135514827379024854

/-! ## A291821.P8403381836391788234

`or(A000007(n), A291820(A001844(n)))`
-/

namespace A291821.P8403381836391788234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291820 (A001844 n).toNat)

end

end A291821.P8403381836391788234

/-! ## A291821.P14140877587755038347

`or(A104488(n+1), A291820(A001844(n)))`
-/

namespace A291821.P14140877587755038347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104488 (n + 1)) (A291820 (A001844 n).toNat)

end

end A291821.P14140877587755038347

/-!
# A291822: A diagonal of triangle A291820.

The programs for A291822, there is no canonical definition to state claims against.
-/

/-! ## A291822.P17163456159435282253

`A277297(n+1)/2`
-/

namespace A291822.P17163456159435282253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277297 (n + 1) : ℚ) / 2

end

end A291822.P17163456159435282253

/-! ## A291822.P16950484495306818227

`A277295(∑[n+3]+1)/2`
-/

namespace A291822.P16950484495306818227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277295 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A291822.P16950484495306818227

/-! ## A291822.P4784173785576585509

`A291820(∑[n+3]+1)`
-/

namespace A291822.P4784173785576585509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A291822.P4784173785576585509

/-! ## A291822.P9897017057258606479

`record[A291820(eq[2, A325002(n+1)])]`
-/

namespace A291822.P9897017057258606479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291820 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291822.P9897017057258606479

/-! ## A291822.P13053303202218417659

`A204162(A125102(n))*A291820(A055999(n)+4)`
-/

namespace A291822.P13053303202218417659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (A125102 n).toNat * A291820 (A055999 n + 4).toNat

end

end A291822.P13053303202218417659

/-!
# A291823: Number of ordered rooted trees with n non-root nodes and all outdegrees <= eight.

The programs for A291823, there is no canonical definition to state claims against.
-/

/-! ## A291823.P11772077934322585695

`A288942(A055999(n+6)-3)`
-/

namespace A291823.P11772077934322585695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A055999 (n + 6) - 3).toNat

end

end A291823.P11772077934322585695

/-! ## A291823.P14997361217908091455

`A288942(A000217(n+9)-9)`
-/

namespace A291823.P14997361217908091455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000217 (n + 9) - 9).toNat

end

end A291823.P14997361217908091455

/-! ## A291823.P7994589708203652256

`A288942(A161680(n+10)-9)`
-/

namespace A291823.P7994589708203652256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A161680 (n + 10) - 9).toNat

end

end A291823.P7994589708203652256

/-! ## A291823.P4101900918225613756

`A288942(A167499(n+6)+A005408(n+1))`
-/

namespace A291823.P4101900918225613756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A167499 (n + 6) + A005408 (n + 1)).toNat

end

end A291823.P4101900918225613756

/-! ## A291823.P2706264819084865850

`A288942(A052905(n+2)+A016825(n+6))`
-/

namespace A291823.P2706264819084865850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A052905 (n + 2) + A016825 (n + 6)).toNat

end

end A291823.P2706264819084865850

/-!
# A291824: Number of ordered rooted trees with n non-root nodes and all outdegrees <= nine.

The programs for A291824, there is no canonical definition to state claims against.
-/

/-! ## A291824.P7886792871737511882

`A288942(A000217(n+10)-10)`
-/

namespace A291824.P7886792871737511882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000217 (n + 10) - 10).toNat

end

end A291824.P7886792871737511882

/-! ## A291824.P7363109900820157254

`A288942(A000096(n+8)+n+1)`
-/

namespace A291824.P7363109900820157254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A291824.P7363109900820157254

/-! ## A291824.P8942547834687257559

`A288942(Δ[A101853(n+4)]+n+9)`
-/

namespace A291824.P8942547834687257559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (f1 (n + 1) - f1 n + (n + 9 : ℤ)).toNat

end

end A291824.P8942547834687257559

/-! ## A291824.P7274668875810631714

`A288942(2*(n+4)+A000124(n+8))`
-/

namespace A291824.P7274668875810631714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 ((2 * (n + 4) : ℤ) + A000124 (n + 8)).toNat

end

end A291824.P7274668875810631714

/-! ## A291824.P17259124726990759742

`A288942(A161680(n+9)+A004273(n+5))`
-/

namespace A291824.P17259124726990759742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A161680 (n + 9) + A004273 (n + 5)).toNat

end

end A291824.P17259124726990759742

/-!
# A291825: Number of ordered rooted trees with n non-root nodes and all outdegrees <= ten.

The programs for A291825, there is no canonical definition to state claims against.
-/

/-! ## A291825.P2096550715470877551

`A288942(A000217(n+11)-11)`
-/

namespace A291825.P2096550715470877551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000217 (n + 11) - 11).toNat

end

end A291825.P2096550715470877551

/-! ## A291825.P1331350755717674853

`A288942(A000096(n+9)+n+1)`
-/

namespace A291825.P1331350755717674853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A291825.P1331350755717674853

/-! ## A291825.P3363394793343565298

`A288942(A167499(n+8)+A005408(n+2))`
-/

namespace A291825.P3363394793343565298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A167499 (n + 8) + A005408 (n + 2)).toNat

end

end A291825.P3363394793343565298

/-! ## A291825.P7033575114933881157

`A288942(A016825(n+6)+A000124(n+7))`
-/

namespace A291825.P7033575114933881157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A016825 (n + 6) + A000124 (n + 7)).toNat

end

end A291825.P7033575114933881157

/-! ## A291825.P996409714741905402

`A288942(A008486(n+6)+A000124(n+8))`
-/

namespace A291825.P996409714741905402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A008486 (n + 6) + A000124 (n + 8)).toNat

end

end A291825.P996409714741905402

/-!
# A291826: Numbers k such that k^5 is sum of 2 nonzero 6th powers.

The programs for A291826, there is no canonical definition to state claims against.
-/

/-! ## A291826.P6402854938466268269

`A191489(2*n+1)+A000038(A277087(n))`
-/

namespace A291826.P6402854938466268269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 (2 * n + 1) + A000038 (A277087 n).toNat

end

end A291826.P6402854938466268269

/-! ## A291826.P724634405247565426

`A291829(A358373(n+1))/A000027(n+1)`
-/

namespace A291826.P724634405247565426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291829 (A358373 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A291826.P724634405247565426

/-! ## A291826.P10005072398429204321

`A335462(A191490(n))+A191489(2*n+1)`
-/

namespace A291826.P10005072398429204321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A191490 n).toNat + A191489 (2 * n + 1)

end

end A291826.P10005072398429204321

/-! ## A291826.P3426129782994389121

`A001014(2*n+2)/A007978(A003229(n))`
-/

namespace A291826.P3426129782994389121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 (2 * n + 2) : ℚ) / (A007978 (A003229 n).toNat : ℚ)

end

end A291826.P3426129782994389121

/-! ## A291826.P8534814966235890392

`A001014(2*n+2)/A353486(A129384(n))`
-/

namespace A291826.P8534814966235890392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 (2 * n + 2) : ℚ) / (A353486 (A129384 n).toNat : ℚ)

end

end A291826.P8534814966235890392

/-!
# A291827: Number of maximal matchings in the n-Fibonacci cube graph.

The programs for A291827, there is no canonical definition to state claims against.
-/

/-! ## A291827.P13736261438808203203

`A117599(A058329(n+1))`
-/

namespace A291827.P13736261438808203203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A058329 (n + 1)).toNat

end

end A291827.P13736261438808203203

/-! ## A291827.P17324449200132254941

`A117599(eq[A001615(n+1), A173786(n)])`
-/

namespace A291827.P17324449200132254941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291827.P17324449200132254941

/-!
# A291828: Numbers k such that k^2 is sum of two positive 7th powers.

The programs for A291828, there is no canonical definition to state claims against.
-/

/-! ## A291828.P7048864956632007736

`A016802((n+1)²²)/(n+1)`
-/

namespace A291828.P7048864956632007736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016802 (((n + 1) ^ 2) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A291828.P7048864956632007736

/-! ## A291828.P5809248474276816685

`(n+1)*A000463(A000578(2*(n+1)))`
-/

namespace A291828.P5809248474276816685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000463 (A000578 (2 * (n + 1))).toNat

end

end A291828.P5809248474276816685

/-! ## A291828.P15366206127952106234

`(n+1)*A002620(A000578(2*n+2))`
-/

namespace A291828.P15366206127952106234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002620 (A000578 (2 * n + 2)).toNat

end

end A291828.P15366206127952106234

/-! ## A291828.P7412373115121365589

`A000005(A099900(2^(comp[∑[n]]-n))+2)²*(n+1)^7`
-/

namespace A291828.P7412373115121365589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A099900 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat + 2).toNat ^ 2 * ((n + 1) ^ 7 : ℤ)

end

end A291828.P7412373115121365589

/-!
# A291829: Numbers k such that k^3 is the sum of two positive 7th powers.

The programs for A291829, there is no canonical definition to state claims against.
-/

/-! ## A291829.P9038224851714309541

`A291832(n+1)/A105397(A001595(n))`
-/

namespace A291829.P9038224851714309541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291832 (n + 1) : ℚ) / (A105397 (A001595 n).toNat : ℚ)

end

end A291829.P9038224851714309541

/-! ## A291829.P7278222619913473354

`A016747(n+1)/A010702(A107709(n+1))`
-/

namespace A291829.P7278222619913473354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016747 (n + 1) : ℚ) / (A010702 (A107709 (n + 1)).toNat : ℚ)

end

end A291829.P7278222619913473354

/-! ## A291829.P11518708786729831245

`A291832(n+1)/A000005(A164622(2*n+1))`
-/

namespace A291829.P11518708786729831245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291832 (n + 1) : ℚ) / (A000005 (A164622 (2 * n + 1)).toNat : ℚ)

end

end A291829.P11518708786729831245

/-! ## A291829.P15473139894336073501

`A291832(n+1)/A020639(A291804(n+1))`
-/

namespace A291829.P15473139894336073501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291832 (n + 1) : ℚ) / (A020639 (A291804 (n + 1)).toNat : ℚ)

end

end A291829.P15473139894336073501

/-!
# A291830: Numbers k such that k^4 is sum of two positive 7th powers.

The programs for A291830, there is no canonical definition to state claims against.
-/

/-! ## A291830.P17143461651696305067

`filter[A003371(n+1), A380440(#)]`
-/

namespace A291830.P17143461651696305067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A291830.P17143461651696305067

/-!
# A291831: Numbers k such that k^5 is sum of two positive 7th powers.

The programs for A291831, there is no canonical definition to state claims against.
-/

/-! ## A291831.P17740929773686447307

`8*sqrt(A000005(14^n)^7)`
-/

namespace A291831.P17740929773686447307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * Real.sqrt (A000005 (14 ^ n) ^ 7 : ℝ)

end

end A291831.P17740929773686447307

/-!
# A291832: Numbers k such that k^6 is sum of two positive 7th powers.

The programs for A291832, there is no canonical definition to state claims against.
-/

/-! ## A291832.P1231336422708409500

`64*(n+1)^7`
-/

namespace A291832.P1231336422708409500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (n + 1) ^ 7

end

end A291832.P1231336422708409500

/-! ## A291832.P9603424326813625515

`∑[lcm(64, Δ[n^7])]`
-/

namespace A291832.P9603424326813625515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 64 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291832.P9603424326813625515

/-! ## A291832.P8437378624484032956

`record[xor(1, n)+1]^7/2`
-/

namespace A291832.P8437378624484032956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 7 : ℚ) / 2

end

end A291832.P8437378624484032956

/-! ## A291832.P15138767421596474875

`round(cosh(log((Δ[n²]+1)^7)))`
-/

namespace A291832.P15138767421596474875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 7 : ℝ)))

end

end A291832.P15138767421596474875

/-! ## A291832.P4092448307398373721

`record[(n^(n%2)+1)^7/2]`
-/

namespace A291832.P4092448307398373721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ (n % 2) + 1) ^ 7 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291832.P4092448307398373721

/-!
# A291833: Records transform of A252665.

The programs for A291833, there is no canonical definition to state claims against.
-/

/-! ## A291833.P14407917076028864616

`record[A252665(n+1)]`
-/

namespace A291833.P14407917076028864616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291833.P14407917076028864616

/-! ## A291833.P12258840893441238285

`A252665(A291834(n+1))`
-/

namespace A291833.P12258840893441238285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (A291834 (n + 1)).toNat

end

end A291833.P12258840893441238285

/-! ## A291833.P6794484359165031697

`record[A033999(n)*A252665(A004277(n))]`
-/

namespace A291833.P6794484359165031697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A252665 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291833.P6794484359165031697

/-! ## A291833.P12355105278187957931

`record[A252665(A004277(n))]%A002011(n)`
-/

namespace A291833.P12355105278187957931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002011 n)

end

end A291833.P12355105278187957931

/-! ## A291833.P16422279378938313901

`record[A252665(A004277(n))%A140801(n)]`
-/

namespace A291833.P16422279378938313901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252665 (A004277 n).toNat) (A140801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291833.P16422279378938313901

/-!
# A291834: First positions of records in A252665.

The programs for A291834, there is no canonical definition to state claims against.
-/

/-! ## A291834.P7104767178608724914

`A033833(∑[A216602(3*n+4)!])`
-/

namespace A291834.P7104767178608724914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A216602 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291834.P7104767178608724914

/-! ## A291834.P12759819236085581807

`record[A033833(n+1)/A078315(A001497(n))]`
-/

namespace A291834.P12759819236085581807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033833 (n + 1) : ℚ) / (A078315 (A001497 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291834.P12759819236085581807

/-! ## A291834.P3129489838353599365

`record[A330973(A272691(n+1)^A331024(2*n+3))]`
-/

namespace A291834.P3129489838353599365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (SequenceMachineLib.roundAway ((A272691 (n + 1) : ℚ) ^ (A331024 (2 * n + 3) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291834.P3129489838353599365

/-! ## A291834.P11215318769234068451

`A033833(A048766(A100178(n+1)))`
-/

namespace A291834.P11215318769234068451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (A048766 (A100178 (n + 1)).toNat).toNat

end

end A291834.P11215318769234068451

/-! ## A291834.P18365400102716443530

`∩[A033833(n+1), A382938(n+1)]`
-/

namespace A291834.P18365400102716443530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291834.P18365400102716443530

/-!
# A291837: a(n) is the maximal value in row n of triangle A100960.

The programs for A291837, there is no canonical definition to state claims against.
-/

/-! ## A291837.P12790232793414792088

`A100960((∑[2*n]+3)*A356630(n))`
-/

namespace A291837.P12790232793414792088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100960 (((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) * A356630 n).toNat

end

end A291837.P12790232793414792088

/-!
# A291839: a(n) is the minimal position at which the maximal value of row n appears in row n of triangle A100960.

The programs for A291839, there is no canonical definition to state claims against.
-/

/-! ## A291839.P3066300047339522839

`A137735(A034961(n+1)+5*(n²+n))`
-/

namespace A291839.P3066300047339522839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A034961 (n + 1) + (5 * (n ^ 2 + n) : ℤ)).toNat

end

end A291839.P3066300047339522839

/-! ## A291839.P6251306825528726583

`A000196(∑[A017005(A054386(n+1))])`
-/

namespace A291839.P6251306825528726583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A054386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291839.P6251306825528726583

/-! ## A291839.P7542190919570811602

`A000196(A124080(n)+A034961(n+1))`
-/

namespace A291839.P7542190919570811602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A124080 n + A034961 (n + 1)).toNat

end

end A291839.P7542190919570811602

/-! ## A291839.P15598063126335875328

`A137735(A124080(n)+A034961(n+1))`
-/

namespace A291839.P15598063126335875328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A124080 n + A034961 (n + 1)).toNat

end

end A291839.P15598063126335875328

/-! ## A291839.P6685045576460495033

`ceil(sqrt(A358300(2*n+1)))`
-/

namespace A291839.P6685045576460495033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A358300 (2 * n + 1) : ℝ)⌉

end

end A291839.P6685045576460495033

/-!
# A291841: a(n) is the number of labeled 2-connected planar graphs with n edges.

The programs for A291841, there is no canonical definition to state claims against.
-/

/-! ## A291841.P5090142299516921779

`record[gcd(floor(n/9), A322139(n))]`
-/

namespace A291841.P5090142299516921779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 9⌋ (A322139 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291841.P5090142299516921779

/-! ## A291841.P9322532487167355726

`A052410(record[A322139(n)])`
-/

namespace A291841.P9322532487167355726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291841.P9322532487167355726

/-!
# A291842: a(n) is the number of labeled connected planar graphs with n edges.

The programs for A291842, there is no canonical definition to state claims against.
-/

/-! ## A291842.P17641462073053303763

`A322137((n+1)^floor(n^(1/3))!)`
-/

namespace A291842.P17641462073053303763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322137 ((n + 1) ^ Nat.factorial ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat)

end

end A291842.P17641462073053303763

/-! ## A291842.P15590759183199861941

`A322137((n+1)/4^val(n+1, 4)*∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A291842.P15590759183199861941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))).toNat

end

end A291842.P15590759183199861941

/-! ## A291842.P9814142531272686647

`A322137(∑[A361705(n)])`
-/

namespace A291842.P9814142531272686647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291842.P9814142531272686647

/-! ## A291842.P1574251352455938133

`A322137(A000005(5^n))`
-/

namespace A291842.P1574251352455938133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322137 (A000005 (5 ^ n)).toNat

end

end A291842.P1574251352455938133

/-!
# A291846: Central terms in irregular triangle A291845.

The programs for A291846, there is no canonical definition to state claims against.
-/

/-! ## A291846.P2822760865789226072

`A291845(∑[2*n])`
-/

namespace A291846.P2822760865789226072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291846.P2822760865789226072

/-! ## A291846.P7692728488280004197

`or(1, A291845(n²+n))`
-/

namespace A291846.P7692728488280004197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A291845 (n ^ 2 + n))

end

end A291846.P7692728488280004197

/-! ## A291846.P9308798452695937888

`char[A002188(n+5)]*A291845(n²+n)`
-/

namespace A291846.P9308798452695937888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A291845 (n ^ 2 + n)

end

end A291846.P9308798452695937888

/-! ## A291846.P685383948238939327

`and(A008683(A001097(n+1)), A291845(n²+n))`
-/

namespace A291846.P685383948238939327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A001097 (n + 1)).toNat) (A291845 (n ^ 2 + n))

end

end A291846.P685383948238939327

/-! ## A291846.P12620629179086295260

`A291845(n²+n)^A014963(A001845(n)+3)`
-/

namespace A291846.P12620629179086295260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291845 (n ^ 2 + n) : ℚ) ^ (A014963 (A001845 n + 3).toNat : ℤ)

end

end A291846.P12620629179086295260

/-!
# A291847: A diagonal of irregular triangle A291845.

The programs for A291847, there is no canonical definition to state claims against.
-/

/-! ## A291847.P3995954820156165527

`A291845((n+1)²+n)`
-/

namespace A291847.P3995954820156165527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291845 ((n + 1) ^ 2 + n)

end

end A291847.P3995954820156165527

/-! ## A291847.P17689897399614536806

`record[A291845(∑[A028242(n)])]`
-/

namespace A291847.P17689897399614536806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291845 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291847.P17689897399614536806

/-! ## A291847.P14106409487668621762

`A291845(A028387(n))+A025439(n)`
-/

namespace A291847.P14106409487668621762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291845 (A028387 n).toNat + A025439 n

end

end A291847.P14106409487668621762

/-! ## A291847.P3526453859787653899

`or(A000007(n), A291845(A028387(n)))`
-/

namespace A291847.P3526453859787653899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291845 (A028387 n).toNat)

end

end A291847.P3526453859787653899

/-! ## A291847.P13093492266565224698

`record[A291845(gcd(n, A330709(n)))]`
-/

namespace A291847.P13093492266565224698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291845 (Int.gcd (n : ℤ) (A330709 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291847.P13093492266565224698

/-!
# A291848: G.f.: Sum_{n>=0} x^n * Product_{k=0..n-1} (1 + (2*k+1)*x + x^2).

The programs for A291848, there is no canonical definition to state claims against.
-/

/-! ## A291848.P17181916431365259184

`A260878(n)-A110656(A208674(n))`
-/

namespace A291848.P17181916431365259184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - A110656 (A208674 n).toNat

end

end A291848.P17181916431365259184

/-! ## A291848.P14229952562089028483

`A112689(A026029(n))+A073170(n+1)`
-/

namespace A291848.P14229952562089028483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A026029 n).toNat + A073170 (n + 1)

end

end A291848.P14229952562089028483

/-! ## A291848.P16727634100579545791

`or(A001221(A147744(n+1)), A128750(n))`
-/

namespace A291848.P16727634100579545791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A147744 (n + 1)).toNat) (A128750 n)

end

end A291848.P16727634100579545791

/-!
# A291849: Numbers k such that k^3 is the sum of two nonzero 4th powers.

The programs for A291849, there is no canonical definition to state claims against.
-/

/-! ## A291849.P3399223818647274854

`A079277(A206810(n+2)+A000142(n))`
-/

namespace A291849.P3399223818647274854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A206810 (n + 2) + A000142 n).toNat

end

end A291849.P3399223818647274854

/-!
# A291852: Numbers k such that k^4 is the sum of two positive 5th powers.

The programs for A291852, there is no canonical definition to state claims against.
-/

/-! ## A291852.P3043941145113355686

`(A000005(4^n)+1)^5/2`
-/

namespace A291852.P3043941145113355686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000005 (4 ^ n) + 1) ^ 5 : ℚ) / 2

end

end A291852.P3043941145113355686

/-! ## A291852.P800467480477800740

`(n+1)*A008598((n+1)²²)`
-/

namespace A291852.P800467480477800740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008598 (((n + 1) ^ 2) ^ 2)

end

end A291852.P800467480477800740

/-! ## A291852.P3277278946045981991

`A191484(A000005(4^n))`
-/

namespace A291852.P3277278946045981991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (A000005 (4 ^ n)).toNat

end

end A291852.P3277278946045981991

/-! ## A291852.P14924701565905733553

`A191902(A000005((2^n)²))`
-/

namespace A291852.P14924701565905733553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 (A000005 ((2 ^ n) ^ 2)).toNat

end

end A291852.P14924701565905733553

/-! ## A291852.P12313824852363715719

`A191484(A001222(4^n)+1)`
-/

namespace A291852.P12313824852363715719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 (A001222 (4 ^ n) + 1).toNat

end

end A291852.P12313824852363715719

/-!
# A291853: Numbers n such that (3^n - (-2)^n)/5 is prime.

The programs for A291853, there is no canonical definition to state claims against.
-/

/-! ## A291853.P6974764629285252640

`A057469(A028310(n))+char[1]`
-/

namespace A291853.P6974764629285252640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A291853.P6974764629285252640

/-! ## A291853.P1176392016499969082

`A063524(n)+A057469(A028310(n))`
-/

namespace A291853.P1176392016499969082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A057469 (A028310 n).toNat

end

end A291853.P1176392016499969082

/-! ## A291853.P7593585878174746908

`∪[A066825(A007510(n+1)), A057469(n+1)]`
-/

namespace A291853.P7593585878174746908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066825 (A007510 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291853.P7593585878174746908

/-! ## A291853.P15421136924026477128

`∪[A007678(A007678(2*(n+2))), A057469(n+1)]`
-/

namespace A291853.P15421136924026477128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A007678 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291853.P15421136924026477128

/-! ## A291853.P11742149379024001151

`∪[A057469(n+1), A067898(n)+A057469(n+1)]`
-/

namespace A291853.P11742149379024001151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n + A057469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291853.P11742149379024001151

/-!
# A291855: Numbers k such that gpf(2^k - 1) - 1 is not divisible by k.

The programs for A291855, there is no canonical definition to state claims against.
-/

/-! ## A291855.P2062319403818694136

`A364999(A376268(2*n+3)%A002009(n))`
-/

namespace A291855.P2062319403818694136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364999 (Int.tmod (A376268 (2 * n + 3)) (A002009 n)).toNat

end

end A291855.P2062319403818694136

/-! ## A291855.P15858960899352836044

`or(A004018(A122903(n+1)), A242118(3*n+4))`
-/

namespace A291855.P15858960899352836044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004018 (A122903 (n + 1)).toNat) (A242118 (3 * n + 4))

end

end A291855.P15858960899352836044

/-!
# A291856: a(0) = -1, a(1) = 1, a(n) = a(n-1) + (n-1)*a(n-2) for n > 1.

The programs for A291856, the canonical program `A291856.P2539508486091874599` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291856 has offset 0).

The definition of A291856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-1)*a(n-2)` (program `A291856.P2539508486091874599`, by `A291856.P2539508486091874599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291856.P2539508486091874599

`a(n-1)+(n-1)*a(n-2)` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A291856

/-- `a(n-1)+(n-1)*a(n-2)` -/
def P2539508486091874599.Spec : Prop :=
  ∀ n, P2539508486091874599.a n = A291856 n

theorem P2539508486091874599.correct : P2539508486091874599.Spec := by
  intro n
  simp only [A291856]

end A291856

/-! ## A291856.P11946930359204511083

`abs((1-n)*a(n-2)-a(n-1))` with `a(0)=-1, a(1)=1`
-/

namespace A291856.P11946930359204511083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  |(1 - (n : ℤ)) * a (n - 2) - a (n - 1)|

end

end A291856.P11946930359204511083

namespace A291856

/-- `abs((1-n)*a(n-2)-a(n-1))` -/
def P11946930359204511083.Spec : Prop :=
  ∀ n, P11946930359204511083.a n = A291856 n

end A291856

/-! ## A291856.P17849148201810486276

`floor(a(n-1)-(1-n)*a(n-2))` with `a(0)=-1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A291856.P17849148201810486276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) - (1 - (n : ℤ)) * a (n - 2)

end

end A291856.P17849148201810486276

namespace A291856

/-- `floor(a(n-1)-(1-n)*a(n-2))` -/
def P17849148201810486276.Spec : Prop :=
  ∀ n, P17849148201810486276.a n = A291856 n

theorem P17849148201810486276.correct : P17849148201810486276.Spec := by
  intro n
  simp only [A291856, Nat.add_sub_cancel, A291856.P17849148201810486276.a, A291856.P2539508486091874599.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A291856

/-! ## A291856.P15280443481028906751

`ceil(a(n-1)-(1-n)*a(n-2))` with `a(0)=-1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A291856.P15280443481028906751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) - (1 - (n : ℤ)) * a (n - 2)

end

end A291856.P15280443481028906751

namespace A291856

/-- `ceil(a(n-1)-(1-n)*a(n-2))` -/
def P15280443481028906751.Spec : Prop :=
  ∀ n, P15280443481028906751.a n = A291856 n

theorem P15280443481028906751.correct : P15280443481028906751.Spec := by
  intro n
  simp only [A291856, Nat.add_sub_cancel, A291856.P15280443481028906751.a, A291856.P2539508486091874599.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A291856

/-! ## A291856.P17893980887400142618

`a(n-1)-(a(n-2)-n*a(n-2))` with `a(0)=-1, a(1)=1`
-/

namespace A291856.P17893980887400142618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2))

end

end A291856.P17893980887400142618

namespace A291856

/-- `a(n-1)-(a(n-2)-n*a(n-2))` -/
def P17893980887400142618.Spec : Prop :=
  ∀ n, P17893980887400142618.a n = A291856 n

end A291856

/-!
# A291857: Number of convex hulls of vertices of a regular n-gon which include the centroid, up to dihedral symmetry.

The programs for A291857, there is no canonical definition to state claims against.
-/

/-! ## A291857.P7214359689169651931

`A350656(A300672(n+1))`
-/

namespace A291857.P7214359689169651931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A300672 (n + 1)).toNat

end

end A291857.P7214359689169651931

/-! ## A291857.P8707786662633351396

`A000194(A084078(n))-A035363(n)`
-/

namespace A291857.P8707786662633351396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A084078 n).toNat - A035363 n

end

end A291857.P8707786662633351396

/-! ## A291857.P661280922896278882

`A000194(A190156(n))-A035363(n)`
-/

namespace A291857.P661280922896278882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A190156 n).toNat - A035363 n

end

end A291857.P661280922896278882

/-! ## A291857.P9728150579032728773

`A300672(n+1)-A210713(A038023(n))`
-/

namespace A291857.P9728150579032728773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300672 (n + 1) - A210713 (A038023 n).toNat

end

end A291857.P9728150579032728773

/-! ## A291857.P15305703548116314847

`A113220(A358834(n))`
-/

namespace A291857.P15305703548116314847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A358834 n).toNat

end

end A291857.P15305703548116314847

/-!
# A291866: Numbers k such that (56*10^k + 691)/9 is prime.

The programs for A291866, there is no canonical definition to state claims against.
-/

/-! ## A291866.P15089390674720502123

`lt[A053604(n)/2, ∑{d}[2*n+1, 3-#%6]/2]`
-/

namespace A291866.P15089390674720502123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053604 n : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), (3 - ((d % 6 : ℕ) : ℤ)) : ℤ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291866.P15089390674720502123

/-! ## A291866.P5315870014578284454

`lt[A003285(A241563(n+4)), 3]`
-/

namespace A291866.P5315870014578284454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A241563 (n + 4)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291866.P5315870014578284454

/-! ## A291866.P12937387415842977837

`eq[A085424(n+1), A331843(n)]`
-/

namespace A291866.P12937387415842977837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291866.P12937387415842977837

/-! ## A291866.P1577977218463688104

`lt[A112689(n), A112603(n+1)]`
-/

namespace A291866.P1577977218463688104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291866.P1577977218463688104

/-! ## A291866.P12834552917044534914

`lt[A145911(n), A145737(n+5)]`
-/

namespace A291866.P12834552917044534914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291866.P12834552917044534914

/-!
# A291872: Array read by antidiagonals: T(m,n) = number of connected dominating sets in the grid graph P_m X P_n.

The programs for A291872, there is no canonical definition to state claims against.
-/

/-! ## A291872.P11864562002880517530

`A356930(A360846(n+1))`
-/

namespace A291872.P11864562002880517530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356930 (A360846 (n + 1)).toNat

end

end A291872.P11864562002880517530

/-!
# A291873: Array read by antidiagonals: T(m,n) = number of connected dominating sets in the m X n king graph.

The programs for A291873, there is no canonical definition to state claims against.
-/

/-! ## A291873.P4119030386890456753

`A155495(n)+A004216(A187298(3*n+2))`
-/

namespace A291873.P4119030386890456753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155495 n + A004216 (A187298 (3 * n + 2)).toNat

end

end A291873.P4119030386890456753

/-!
# A291874: Expansion of 1 - x/(1 - x^3/(1 - x^5/(1 - x^7/(1 - x^9/(1 - ... - x^(2*k-1)/(1 - ...)))))), a continued fraction.

The programs for A291874, there is no canonical definition to state claims against.
-/

/-! ## A291874.P6111395313918956619

`A000038(n)-A227310(n)`
-/

namespace A291874.P6111395313918956619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A227310 n

end

end A291874.P6111395313918956619

/-! ## A291874.P4232369174735716249

`A153881(n+1)*A227310(n)`
-/

namespace A291874.P4232369174735716249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A227310 n

end

end A291874.P4232369174735716249

/-! ## A291874.P4703746185162469302

`2*A000007(n)-A227310(n)`
-/

namespace A291874.P4703746185162469302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A227310 n

end

end A291874.P4703746185162469302

/-! ## A291874.P544036983893012739

`A061397(2*(n+1))-A227310(n)`
-/

namespace A291874.P544036983893012739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1)) - A227310 n

end

end A291874.P544036983893012739

/-! ## A291874.P6430844347305751926

`A237420(A063205(n+1))-A227310(n)`
-/

namespace A291874.P6430844347305751926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A063205 (n + 1)).toNat - A227310 n

end

end A291874.P6430844347305751926

/-! ## A291874.P1119431508087600849

`A237420(A171045(n+1))-A227310(n)`
-/

namespace A291874.P1119431508087600849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A171045 (n + 1)).toNat - A227310 n

end

end A291874.P1119431508087600849

/-! ## A291874.P16184709225108465555

`A008683(A000265(A000040(n+1)))*A227310(n)`
-/

namespace A291874.P16184709225108465555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000265 (A000040 (n + 1)).toNat).toNat * A227310 n

end

end A291874.P16184709225108465555

/-!
# A291875: Expansion of 1 - x/(1 - x/(1 - x^2/(1 - x^2/(1 - x^3/(1 - x^3/(1 - x^4/(1 - x^4/ ...))))))), a continued fraction.

The programs for A291875, there is no canonical definition to state claims against.
-/

/-! ## A291875.P6309746589325566025

`A000007(n)-A111660(A182027(n))`
-/

namespace A291875.P6309746589325566025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A111660 (A182027 n).toNat

end

end A291875.P6309746589325566025

/-!
# A291876: Consider the graph with one central vertex connected to three outer vertices (a star graph). Then, a(n) is the minimum number of moves required to transfer a stack of n pegs from one outer vertex to another outer vertex, moving pegs to adjacent vertices, following the rules of the Towers of Hanoi.

The programs for A291876, there is no canonical definition to state claims against.
-/

/-! ## A291876.P16678978005988784249

`2*A259823(n+1)`
-/

namespace A291876.P16678978005988784249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259823 (n + 1)

end

end A291876.P16678978005988784249

/-! ## A291876.P12379214678547453921

`∑[∑[2*A061987(n)]]`
-/

namespace A291876.P12379214678547453921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P12379214678547453921

/-! ## A291876.P2370481276184162120

`∑[A190812(n+1)+1]`
-/

namespace A291876.P2370481276184162120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P2370481276184162120

/-! ## A291876.P14365321256517624845

`∑[2*A003586(n+1)]`
-/

namespace A291876.P14365321256517624845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P14365321256517624845

/-! ## A291876.P1805338596537645051

`∑[A033845(n+1)/3]`
-/

namespace A291876.P1805338596537645051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033845 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P1805338596537645051

/-! ## A291876.P438702117635702640

`∑[2*(A069353(n+1)+1)]`
-/

namespace A291876.P438702117635702640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069353 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P438702117635702640

/-! ## A291876.P12519878822671040159

`∑[A065119(n+1)-∑[A061987(n)]]`
-/

namespace A291876.P12519878822671040159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P12519878822671040159

/-! ## A291876.P688224173981180578

`A003586(n+1)+A259823(n+1)+A259823(n)`
-/

namespace A291876.P688224173981180578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A259823 (n + 1) + A259823 n)

end

end A291876.P688224173981180578

/-! ## A291876.P2504410527255138337

`∑[A007694(n+2)]`
-/

namespace A291876.P2504410527255138337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P2504410527255138337

/-! ## A291876.P16054669619546937494

`∑[A187778(n+2)/3]`
-/

namespace A291876.P16054669619546937494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187778 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P16054669619546937494

/-! ## A291876.P12817050805141104849

`A259823(n)+A259823(n)+A007694(n+2)`
-/

namespace A291876.P12817050805141104849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n + (A259823 n + A007694 (n + 2))

end

end A291876.P12817050805141104849

/-! ## A291876.P15011398640780134637

`∑[sqrt(A063755(n+2))]`
-/

namespace A291876.P15011398640780134637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063755 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P15011398640780134637

/-! ## A291876.P5216099811204013886

`∑[A000423(n+3)/3]`
-/

namespace A291876.P5216099811204013886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000423 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P5216099811204013886

/-! ## A291876.P4669069366469450493

`A190812(n+1)+A174030(n+1)`
-/

namespace A291876.P4669069366469450493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1) + A174030 (n + 1)

end

end A291876.P4669069366469450493

/-! ## A291876.P6277039714696237829

`A174030(n+2)-1`
-/

namespace A291876.P6277039714696237829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174030 (n + 2) - 1

end

end A291876.P6277039714696237829

/-!
# A291878: Triangle read by rows: T(n,k) = number of fountains of n coins and height k.

The programs for A291878, there is no canonical definition to state claims against.
-/

/-! ## A291878.P13139497049372315577

`A187080(eq[A047998(n), A325189(n)])`
-/

namespace A291878.P13139497049372315577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291878.P13139497049372315577

/-! ## A291878.P12945056567869306841

`A187080(eq[A047998(n), A343088(n)])`
-/

namespace A291878.P12945056567869306841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291878.P12945056567869306841

/-! ## A291878.P16132759550930749238

`A187080(eq[A137252(n), A343088(n)])`
-/

namespace A291878.P16132759550930749238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291878.P16132759550930749238

/-! ## A291878.P774403913706498102

`A187080(eq[A325189(n)², A325189(n)])`
-/

namespace A291878.P774403913706498102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291878.P774403913706498102

/-! ## A291878.P10127405577598669989

`A187080(eq[A343088(n)², A343088(n)])`
-/

namespace A291878.P10127405577598669989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291878.P10127405577598669989

/-! ## A291878.P11311325684263836045

`A187080(eq[A177517(n+1), A343088(n)])`
-/

namespace A291878.P11311325684263836045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A291878.P11311325684263836045

/-!
# A291879: Number of monomials of the Schubert polynomial of the permutation 351624 tensor 1^n.

The programs for A291879, there is no canonical definition to state claims against.
-/

/-! ## A291879.P5139435012361035590

`A008793(n)*A352657(n)`
-/

namespace A291879.P5139435012361035590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008793 n * A352657 n

end

end A291879.P5139435012361035590

/-!
# A291883: Number T(n,k) of symmetrically unique Dyck paths of semilength n and height k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A291883, there is no canonical definition to state claims against.
-/

/-! ## A291883.P12969572398917886754

`or(A004248(n), A052344(A171882(n)))`
-/

namespace A291883.P12969572398917886754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004248 n) (A052344 (A171882 n).toNat)

end

end A291883.P12969572398917886754

/-! ## A291883.P11067228359567893837

`A082859(A289481(n))+A058716(n)`
-/

namespace A291883.P11067228359567893837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A289481 n).toNat + A058716 n

end

end A291883.P11067228359567893837

/-! ## A291883.P15199649705220564803

`A217956(A260340(n))+A097805(n)`
-/

namespace A291883.P15199649705220564803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217956 (A260340 n).toNat + A097805 n

end

end A291883.P15199649705220564803

/-! ## A291883.P13812371221441427529

`or(A004248(n), A210472(A135814(n)))`
-/

namespace A291883.P13812371221441427529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004248 n) (A210472 (A135814 n).toNat)

end

end A291883.P13812371221441427529

/-! ## A291883.P16930100769963125867

`or(A034369(n+1), A058710(A171882(n)))`
-/

namespace A291883.P16930100769963125867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034369 (n + 1)) (A058710 (A171882 n).toNat)

end

end A291883.P16930100769963125867

/-!
# A291884: Complement of A039691.

The programs for A291884, there is no canonical definition to state claims against.
-/

/-! ## A291884.P9085779604045397790

`comp[A039691(n+1)]`
-/

namespace A291884.P9085779604045397790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291884.P9085779604045397790

/-! ## A291884.P9537874980673928773

`lt[A059632(n), 11*n]`
-/

namespace A291884.P9537874980673928773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291884.P9537874980673928773

/-! ## A291884.P11275750662564938539

`eq[0, A000007(A008593(n)-A059632(n))]`
-/

namespace A291884.P11275750662564938539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008593 n - A059632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291884.P11275750662564938539

/-! ## A291884.P9252328482779473819

`eq[1, A057427(A008593(n)-A059632(n))]`
-/

namespace A291884.P9252328482779473819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008593 n - A059632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291884.P9252328482779473819

/-! ## A291884.P2061283756519494667

`lt[A005843(A059632(n)), A008604(n)]`
-/

namespace A291884.P2061283756519494667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A059632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291884.P2061283756519494667

/-!
# A291885: Number of symmetrically unique Dyck paths of semilength 2n and height n.

The programs for A291885, there is no canonical definition to state claims against.
-/

/-! ## A291885.P1433782399523785360

`A291883(∑[4*n])`
-/

namespace A291885.P1433782399523785360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291885.P1433782399523785360

/-! ## A291885.P13838567905847280548

`xor(1, xor(1, A291883(A046092(n))))`
-/

namespace A291885.P13838567905847280548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A291883 (A046092 n).toNat))

end

end A291885.P13838567905847280548

/-! ## A291885.P10084453596686611267

`A291883(A046092(n))^A178334(n)`
-/

namespace A291885.P10084453596686611267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291883 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A291885.P10084453596686611267

/-! ## A291885.P8759426629463980100

`gcd(A000038(n), A291883(A046092(n)))`
-/

namespace A291885.P8759426629463980100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A291883 (A046092 n).toNat)

end

end A291885.P8759426629463980100

/-! ## A291885.P9380409421484413217

`lcm(A033999(n), A291883(A046092(n)))`
-/

namespace A291885.P9380409421484413217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A291883 (A046092 n).toNat)

end

end A291885.P9380409421484413217

/-! ## A291885.P13377048288945837113

`or(A000007(n), A291883(A046092(n)))`
-/

namespace A291885.P13377048288945837113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291883 (A046092 n).toNat)

end

end A291885.P13377048288945837113

/-! ## A291885.P2072018337178485054

`A020985(n)²*A291883(A046092(n))`
-/

namespace A291885.P2072018337178485054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A291883 (A046092 n).toNat

end

end A291885.P2072018337178485054

/-! ## A291885.P11500263343507677995

`A291883(A046092(n))^(2-A057427(n))`
-/

namespace A291885.P11500263343507677995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291883 (A046092 n).toNat : ℚ) ^ (2 - A057427 n : ℤ)

end

end A291885.P11500263343507677995

/-! ## A291885.P9116781050136145783

`Δ[A005811(n)]²*A291883(A046092(n))`
-/

namespace A291885.P9116781050136145783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A291883 (A046092 n).toNat

end

end A291885.P9116781050136145783

/-! ## A291885.P3304407765249468939

`A291883(A046092(n))+2-A000040(gcd(n, n+1))`
-/

namespace A291885.P3304407765249468939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A046092 n).toNat + 2 - A000040 (Nat.gcd n (n + 1))

end

end A291885.P3304407765249468939

/-!
# A291886: Total height of all symmetrically unique Dyck paths of semilength n.

The programs for A291886, there is no canonical definition to state claims against.
-/

/-! ## A291886.P4150038899278480746

`A000958(n+1)-A096936(A061354(n))`
-/

namespace A291886.P4150038899278480746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000958 (n + 1) - A096936 (A061354 n).toNat

end

end A291886.P4150038899278480746

/-! ## A291886.P5266126896193512235

`∑[3*A092829(a(n-1))+1]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A291886.P5266126896193512235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n f1 =>
  3 * A092829 (f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291886.P5266126896193512235

/-! ## A291886.P18109157393641758936

`A055930(A125501(n))`
-/

namespace A291886.P18109157393641758936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A125501 n).toNat

end

end A291886.P18109157393641758936

/-!
# A291887: Number of symmetrically unique Dyck paths of semilength n and height three.

The programs for A291887, the canonical program `A291887.P7998709455536945116` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291887 has offset 3).

The definition of A291887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291887.P7998709455536945116

`A005207(n+3)-A005418(n+3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291887

/-- `A005207(n+3)-A005418(n+3)` -/
def P7998709455536945116.Spec : Prop :=
  ∀ n, P7998709455536945116.a n = A291887 (n + 3)

theorem P7998709455536945116.correct : P7998709455536945116.Spec := by
  intro n
  simp only [A291887, Nat.add_sub_cancel]

end A291887

/-! ## A291887.P16880591220167101857

`A291883(A167614(n+2))`
-/

namespace A291887.P16880591220167101857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (n + 2)).toNat

end

end A291887.P16880591220167101857

namespace A291887

/-- `A291883(A167614(n+2))` -/
def P16880591220167101857.Spec : Prop :=
  ∀ n, P16880591220167101857.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P14865644065357018205

`A291883(A052905(n)+8)`
-/

namespace A291887.P14865644065357018205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A052905 n + 8).toNat

end

end A291887.P14865644065357018205

namespace A291887

/-- `A291883(A052905(n)+8)` -/
def P14865644065357018205.Spec : Prop :=
  ∀ n, P14865644065357018205.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P10800634747372835414

`A291883(A055999(n)+9)`
-/

namespace A291887.P10800634747372835414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A055999 n + 9).toNat

end

end A291887.P10800634747372835414

namespace A291887

/-- `A291883(A055999(n)+9)` -/
def P10800634747372835414.Spec : Prop :=
  ∀ n, P10800634747372835414.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P2817064102814863225

`A291883(eq[3, A002262(n)])`
-/

namespace A291887.P2817064102814863225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291887.P2817064102814863225

namespace A291887

/-- `A291883(eq[3, A002262(n)])` -/
def P2817064102814863225.Spec : Prop :=
  ∀ n, P2817064102814863225.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P11823726029010765939

`record[A291883(A133263(n)+1)]`
-/

namespace A291887.P11823726029010765939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291887.P11823726029010765939

namespace A291887

/-- `record[A291883(A133263(n)+1)]` -/
def P11823726029010765939.Spec : Prop :=
  ∀ n, P11823726029010765939.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P6568728530889682562

`record[A291883(A167499(n)-2)]`
-/

namespace A291887.P6568728530889682562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167499 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291887.P6568728530889682562

namespace A291887

/-- `record[A291883(A167499(n)-2)]` -/
def P6568728530889682562.Spec : Prop :=
  ∀ n, P6568728530889682562.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P14835029979704241141

`record[A291883(A000096(n)+4)]`
-/

namespace A291887.P14835029979704241141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291887.P14835029979704241141

namespace A291887

/-- `record[A291883(A000096(n)+4)]` -/
def P14835029979704241141.Spec : Prop :=
  ∀ n, P14835029979704241141.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P11320088419919718958

`A291883(A133263(n+3)+1)`
-/

namespace A291887.P11320088419919718958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 3) + 1).toNat

end

end A291887.P11320088419919718958

namespace A291887

/-- `A291883(A133263(n+3)+1)` -/
def P11320088419919718958.Spec : Prop :=
  ∀ n, P11320088419919718958.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P10491998301900689183

`record[A291883(∑[A233583(n+1)])]`
-/

namespace A291887.P10491998301900689183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291887.P10491998301900689183

namespace A291887

/-- `record[A291883(∑[A233583(n+1)])]` -/
def P10491998301900689183.Spec : Prop :=
  ∀ n, P10491998301900689183.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P4169107364246264804

`record[A291883(A000124(n+1)+2)]`
-/

namespace A291887.P4169107364246264804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000124 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291887.P4169107364246264804

namespace A291887

/-- `record[A291883(A000124(n+1)+2)]` -/
def P4169107364246264804.Spec : Prop :=
  ∀ n, P4169107364246264804.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P12602892085661668526

`record[A291883(A027691(n+1)/2)]`
-/

namespace A291887.P12602892085661668526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.roundAway ((A027691 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291887.P12602892085661668526

namespace A291887

/-- `record[A291883(A027691(n+1)/2)]` -/
def P12602892085661668526.Spec : Prop :=
  ∀ n, P12602892085661668526.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P13735790570384865418

`A291883(eq[2, A002260(n+1)-2])`
-/

namespace A291887.P13735790570384865418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291887.P13735790570384865418

namespace A291887

/-- `A291883(eq[2, A002260(n+1)-2])` -/
def P13735790570384865418.Spec : Prop :=
  ∀ n, P13735790570384865418.a n = A291887 (n + 3)

end A291887

/-! ## A291887.P6828511219962141193

`A291883(eq[2, A002260(n+1)/2])`
-/

namespace A291887.P6828511219962141193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A291887.P6828511219962141193

namespace A291887

/-- `A291883(eq[2, A002260(n+1)/2])` -/
def P6828511219962141193.Spec : Prop :=
  ∀ n, P6828511219962141193.a n = A291887 (n + 3)

end A291887

/-!
# A291888: Number of symmetrically unique Dyck paths of semilength n and height four.

The programs for A291888, there is no canonical definition to state claims against.
-/

/-! ## A291888.P4360512636030227513

`A291883(eq[4, A002262(n)])`
-/

namespace A291888.P4360512636030227513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291888.P4360512636030227513

/-! ## A291888.P2412607839301134903

`record[A291883(A167499(n)-1)]`
-/

namespace A291888.P2412607839301134903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P2412607839301134903

/-! ## A291888.P2850418359821537681

`record[A291883(A000124(n)+3)]`
-/

namespace A291888.P2850418359821537681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P2850418359821537681

/-! ## A291888.P1166833239495253386

`record[A291883(A000217(n)+4)]`
-/

namespace A291888.P1166833239495253386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P1166833239495253386

/-! ## A291888.P8512857456752332971

`record[A291883(A161680(n)+4)]`
-/

namespace A291888.P8512857456752332971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A161680 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P8512857456752332971

/-! ## A291888.P5720336146429912592

`record[A291883(A167487(n)-3)]`
-/

namespace A291888.P5720336146429912592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167487 n - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P5720336146429912592

/-! ## A291888.P4388604249164819296

`A291883(A034856(n+3)+6)`
-/

namespace A291888.P4388604249164819296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A034856 (n + 3) + 6).toNat

end

end A291888.P4388604249164819296

/-! ## A291888.P1385232023523186598

`record[A291883(A167614(n+1)+1)]`
-/

namespace A291888.P1385232023523186598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P1385232023523186598

/-! ## A291888.P1547689119452996360

`record[A291883(A133263(n+1)+2)]`
-/

namespace A291888.P1547689119452996360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291888.P1547689119452996360

/-! ## A291888.P6643513224607620547

`A291883(eq[2, A144328(n+1)-2])`
-/

namespace A291888.P6643513224607620547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291888.P6643513224607620547

/-!
# A291889: Number of symmetrically unique Dyck paths of semilength n and height five.

The programs for A291889, there is no canonical definition to state claims against.
-/

/-! ## A291889.P8635208848934766645

`A291883(A167499(n+4))`
-/

namespace A291889.P8635208848934766645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167499 (n + 4)).toNat

end

end A291889.P8635208848934766645

/-! ## A291889.P10340034817455867220

`A291883(A000217(n+5)+5)`
-/

namespace A291889.P10340034817455867220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000217 (n + 5) + 5).toNat

end

end A291889.P10340034817455867220

/-! ## A291889.P18355106996140804115

`record[A291883(A167614(n+2)+2)]`
-/

namespace A291889.P18355106996140804115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291889.P18355106996140804115

/-! ## A291889.P532156487209426007

`record[A291883(A014132(A167499(n)))]`
-/

namespace A291889.P532156487209426007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A014132 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291889.P532156487209426007

/-! ## A291889.P17953621647945527385

`record[A291883(A061579(A055999(n)))]`
-/

namespace A291889.P17953621647945527385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A061579 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291889.P17953621647945527385

/-!
# A291890: Number of symmetrically unique Dyck paths of semilength n and height six.

The programs for A291890, there is no canonical definition to state claims against.
-/

/-! ## A291890.P1998193480942473552

`A291883(A167614(n+5)+3)`
-/

namespace A291890.P1998193480942473552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (n + 5) + 3).toNat

end

end A291890.P1998193480942473552

/-! ## A291890.P13962282420797544926

`A291883(A000096(n+5)+7)`
-/

namespace A291890.P13962282420797544926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000096 (n + 5) + 7).toNat

end

end A291890.P13962282420797544926

/-! ## A291890.P8077440722718640119

`A291883(A133263(n+7)-(n+3))`
-/

namespace A291890.P8077440722718640119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 7) - (n + 3 : ℤ)).toNat

end

end A291890.P8077440722718640119

/-! ## A291890.P17945952330561530121

`A291883(A008587(n+5)+A000124(n+1))`
-/

namespace A291890.P17945952330561530121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A008587 (n + 5) + A000124 (n + 1)).toNat

end

end A291890.P17945952330561530121

/-! ## A291890.P2058216229609418031

`A291883(A016789(n+6)+A000124(n+3))`
-/

namespace A291890.P2058216229609418031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A016789 (n + 6) + A000124 (n + 3)).toNat

end

end A291890.P2058216229609418031

/-! ## A291890.P4922241950443286397

`A291883(A027379(n+6)-A004271(n+5))`
-/

namespace A291890.P4922241950443286397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A027379 (n + 6) - A004271 (n + 5)).toNat

end

end A291890.P4922241950443286397

/-! ## A291890.P7317067817130353390

`A291883(A022856(n+8)+A004273(n+8))`
-/

namespace A291890.P7317067817130353390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A022856 (n + 8) + A004273 (n + 8)).toNat

end

end A291890.P7317067817130353390

/-! ## A291890.P14559600314935252780

`A291883(A014206(n+8)%A155212(n+6))`
-/

namespace A291890.P14559600314935252780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (Int.tmod (A014206 (n + 8)) (A155212 (n + 6))).toNat

end

end A291890.P14559600314935252780

/-!
# A291891: Number of symmetrically unique Dyck paths of semilength n and height seven.

The programs for A291891, there is no canonical definition to state claims against.
-/

/-! ## A291891.P9947934945871021024

`A291883(A167487(n+6))`
-/

namespace A291891.P9947934945871021024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167487 (n + 6)).toNat

end

end A291891.P9947934945871021024

/-! ## A291891.P12205412773270948245

`A291883(A000096(n+6)+8)`
-/

namespace A291891.P12205412773270948245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000096 (n + 6) + 8).toNat

end

end A291891.P12205412773270948245

/-! ## A291891.P3978238559145083014

`A291883(A000217(n+7)+7)`
-/

namespace A291891.P3978238559145083014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000217 (n + 7) + 7).toNat

end

end A291891.P3978238559145083014

/-! ## A291891.P16988435610364535953

`A291883(A133263(n+3)+A004767(n+6))`
-/

namespace A291891.P16988435610364535953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 3) + A004767 (n + 6)).toNat

end

end A291891.P16988435610364535953

/-! ## A291891.P13935588079661100734

`A291883(A022856(n+7)+A004767(n+6))`
-/

namespace A291891.P13935588079661100734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A022856 (n + 7) + A004767 (n + 6)).toNat

end

end A291891.P13935588079661100734

/-!
# A291892: Number of symmetrically unique Dyck paths of semilength n and height eight.

The programs for A291892, there is no canonical definition to state claims against.
-/

/-! ## A291892.P6504891630182916363

`A291883(A167614(n+7)+5)`
-/

namespace A291892.P6504891630182916363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (n + 7) + 5).toNat

end

end A291892.P6504891630182916363

/-! ## A291892.P14791238068588143407

`A291883(A133263(n+8)+6)`
-/

namespace A291892.P14791238068588143407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 8) + 6).toNat

end

end A291892.P14791238068588143407

/-! ## A291892.P11480814367602219496

`A291883(A000096(n+7)+9)`
-/

namespace A291892.P11480814367602219496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000096 (n + 7) + 9).toNat

end

end A291892.P11480814367602219496

/-! ## A291892.P15295869398547744864

`A291883(A022856(n+12)+6)`
-/

namespace A291892.P15295869398547744864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A022856 (n + 12) + 6).toNat

end

end A291892.P15295869398547744864

/-! ## A291892.P15972446899207099280

`A291883(A027379(n+8)-A004271(n+6))`
-/

namespace A291892.P15972446899207099280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A027379 (n + 8) - A004271 (n + 6)).toNat

end

end A291892.P15972446899207099280

/-!
# A291893: Number of symmetrically unique Dyck paths of semilength n and height nine.

The programs for A291893, there is no canonical definition to state claims against.
-/

/-! ## A291893.P13011910491499291827

`A291883(A167614(n+8)+6)`
-/

namespace A291893.P13011910491499291827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (n + 8) + 6).toNat

end

end A291893.P13011910491499291827

/-! ## A291893.P16930047939823488828

`A291883(A000096(n+8)+10)`
-/

namespace A291893.P16930047939823488828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000096 (n + 8) + 10).toNat

end

end A291893.P16930047939823488828

/-! ## A291893.P1827143770727598185

`A291883(A133263(n+7)+A005843(n+12))`
-/

namespace A291893.P1827143770727598185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 7) + A005843 (n + 12)).toNat

end

end A291893.P1827143770727598185

/-! ## A291893.P14580581170527160433

`A291883(A022856(n+11)+A005843(n+12))`
-/

namespace A291893.P14580581170527160433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A022856 (n + 11) + A005843 (n + 12)).toNat

end

end A291893.P14580581170527160433

/-! ## A291893.P7546318814875165425

`A291883(A014206(A155212(n+6))%A155212(n+7))`
-/

namespace A291893.P7546318814875165425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (Int.tmod (A014206 (A155212 (n + 6)).toNat) (A155212 (n + 7))).toNat

end

end A291893.P7546318814875165425

/-!
# A291894: Number of symmetrically unique Dyck paths of semilength n and height ten.

The programs for A291894, there is no canonical definition to state claims against.
-/

/-! ## A291894.P9206131398831904396

`A291883(eq[10, A002262(n)])`
-/

namespace A291894.P9206131398831904396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291894.P9206131398831904396

/-! ## A291894.P484300496709224138

`A291883(eq[10, A144328(n+1)])`
-/

namespace A291894.P484300496709224138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291894.P484300496709224138

/-! ## A291894.P13147095783066655491

`A291883(eq[11, A002260(n+1)])`
-/

namespace A291894.P13147095783066655491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291894.P13147095783066655491

/-! ## A291894.P2032300708271536414

`A291883(eq[21, A158405(n+1)])`
-/

namespace A291894.P2032300708271536414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291894.P2032300708271536414

/-! ## A291894.P13233701205935282210

`A291883(A052905(n+8)-(n-4))`
-/

namespace A291894.P13233701205935282210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A052905 (n + 8) - ((n : ℤ) - 4)).toNat

end

end A291894.P13233701205935282210

/-! ## A291894.P15201831302371454548

`A291883(A133263(n+8)+A004273(n+14))`
-/

namespace A291894.P15201831302371454548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A133263 (n + 8) + A004273 (n + 14)).toNat

end

end A291894.P15201831302371454548

/-! ## A291894.P4881051493270646965

`A291883(A022856(n+12)+A004273(n+14))`
-/

namespace A291894.P4881051493270646965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A022856 (n + 12) + A004273 (n + 14)).toNat

end

end A291894.P4881051493270646965

/-!
# A291895: Triangle read by rows: T(n,k) = T(n-k,k-1) + T(n-k,k) + T(n-k,k+1) with T(0,0) = 1.

The programs for A291895, there is no canonical definition to state claims against.
-/

/-! ## A291895.P15756539468529679323

`A000120(A233569(A291929(n))²)`
-/

namespace A291895.P15756539468529679323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233569 (A291929 n).toNat ^ 2).toNat

end

end A291895.P15756539468529679323

/-! ## A291895.P1665430646252050536

`A270362(A048766(A291929(n)²))`
-/

namespace A291895.P1665430646252050536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A048766 (A291929 n ^ 2).toNat).toNat

end

end A291895.P1665430646252050536

/-! ## A291895.P12328965904530091692

`A048766(A005136(2*n+1)*A291929(n))`
-/

namespace A291895.P12328965904530091692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005136 (2 * n + 1) * A291929 n).toNat

end

end A291895.P12328965904530091692

/-! ## A291895.P8054350761972898526

`A222173(A362614(n)^∑{e}[n+1, #])`
-/

namespace A291895.P8054350761972898526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222173 (A362614 n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A291895.P8054350761972898526

/-! ## A291895.P10143273991230888181

`A331385(n*A056239(A330953(n+1)))`
-/

namespace A291895.P10143273991230888181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331385 ((n : ℤ) * A056239 (A330953 (n + 1)).toNat).toNat

end

end A291895.P10143273991230888181

/-!
# A291896: Number of 1-dimensional sandpiles with n grains piling up against the wall.

The programs for A291896, there is no canonical definition to state claims against.
-/

/-! ## A291896.P9936016279866604410

`A235963(A003114(∑[n]))`
-/

namespace A291896.P9936016279866604410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A003114 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A291896.P9936016279866604410

/-! ## A291896.P17099791432659125169

`A257639(2*A001997(n))`
-/

namespace A291896.P17099791432659125169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (2 * A001997 n).toNat

end

end A291896.P17099791432659125169

/-! ## A291896.P12519363449858829092

`Δ[A054846(A329675(n)-1)]`
-/

namespace A291896.P12519363449858829092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A329675 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291896.P12519363449858829092

/-! ## A291896.P13394614677995055992

`round(A256030(n+1)/A003945(n))`
-/

namespace A291896.P13394614677995055992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A256030 (n + 1) : ℚ) / (A003945 n : ℚ))

end

end A291896.P13394614677995055992

/-! ## A291896.P2983959381651990570

`A257639(∑[2*A192779(n+1)]+1)`
-/

namespace A291896.P2983959381651990570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A291896.P2983959381651990570

/-!
# A291897: Numerator of E(2*n-1,n), where E(n,x) is the Euler polynomial.

The programs for A291897, there is no canonical definition to state claims against.
-/

/-! ## A291897.P11583954060760694715

`2*(-1)^(n+1)*A292706(n+1)*A006519(2*(n+1))+A002425(n+1)`
-/

namespace A291897.P11583954060760694715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-1) ^ (n + 1) * A292706 (n + 1) * A006519 (2 * (n + 1)) + A002425 (n + 1)

end

end A291897.P11583954060760694715

/-!
# A291898: (n+1)^2*a(n+1) = -(9*n^2 + 9*n + 3)*a(n) - 27*n^2*a(n-1), with a(0) = 1 and a(1) = -3.

The programs for A291898, there is no canonical definition to state claims against.
-/

/-! ## A291898.P1795643469552938819

`(-1)^n*A006077(n)`
-/

namespace A291898.P1795643469552938819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006077 n

end

end A291898.P1795643469552938819

/-! ## A291898.P10037186898495038043

`A006077(n)*A033999(n)`
-/

namespace A291898.P10037186898495038043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006077 n * A033999 n

end

end A291898.P10037186898495038043

/-! ## A291898.P1518676773885791897

`A006077(n)*A009001(2*n)`
-/

namespace A291898.P1518676773885791897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006077 n * A009001 (2 * n)

end

end A291898.P1518676773885791897

/-! ## A291898.P5686805144423696610

`A006077(n)*A056594(2*n)`
-/

namespace A291898.P5686805144423696610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006077 n * A056594 (2 * n)

end

end A291898.P5686805144423696610

/-! ## A291898.P8640389559076303437

`A006077(n)/A010892(3*n)`
-/

namespace A291898.P8640389559076303437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006077 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A291898.P8640389559076303437

/-!
# A291899: Numbers n such that (pod(n)/tau(n)) > (pod(k)/tau(k)) for all k < n.

The programs for A291899, there is no canonical definition to state claims against.
-/

/-! ## A291899.P3402007075246795142

`record[A034287(C(n+1, n²)+n)]`
-/

namespace A291899.P3402007075246795142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (Nat.choose (n + 1) (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P3402007075246795142

/-! ## A291899.P7055062668440625100

`A034287(A065475(n+1))`
-/

namespace A291899.P7055062668440625100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (A065475 (n + 1)).toNat

end

end A291899.P7055062668440625100

/-! ## A291899.P8041499408882603058

`∪[A034288(n+1), A273379(n+1)]`
-/

namespace A291899.P8041499408882603058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291899.P8041499408882603058

/-! ## A291899.P17937077965651932157

`record[A034287(n+1)-A000038(A007599(n))]`
-/

namespace A291899.P17937077965651932157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1) - A000038 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P17937077965651932157

