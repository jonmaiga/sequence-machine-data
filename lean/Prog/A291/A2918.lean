import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
import Seq.B009.C000
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
import Seq.Opaque.C010
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A291803: Partial sums of A230625.

The programs for A291803, there is no canonical definition to state claims against.
-/

/-! ## A291803.P9525905726720939948

`∑[A230625(1+n)]`
-/

namespace A291803.P9525905726720939948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230625 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291803.P9525905726720939948

/-! ## A291803.P10754273955002575536

`A230625(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A291803.P10754273955002575536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230625 (n + 1) + a (n - 1)

end

end A291803.P10754273955002575536

/-! ## A291803.P16911491445507441128

`∑[A080719(A287874(n+1))]`
-/

namespace A291803.P16911491445507441128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A287874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291803.P16911491445507441128

/-!
# A291804: a(n) = sigma(A291789(n)).

The programs for A291804, there is no canonical definition to state claims against.
-/

/-! ## A291804.P1041143085502831795

`A000203(A291789(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291804.P1041143085502831795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A291789 n).toNat

end

end A291804.P1041143085502831795

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

/-!
# A291805: a(n) = phi(A291789(n)).

The programs for A291805, there is no canonical definition to state claims against.
-/

/-! ## A291805.P5107400185535502067

`A000010(A291789(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291805.P5107400185535502067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A291789 n).toNat

end

end A291805.P5107400185535502067

/-! ## A291805.P13424783658030604863

`2*A291789(n+1)-A291804(n+1)`
-/

namespace A291805.P13424783658030604863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291789 (n + 1) - A291804 (n + 1)

end

end A291805.P13424783658030604863

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

/-! ## A291813.P7397017822641756193

`∑{#}[n, A291820(C(n+1, 2)+#+1)*2^#]`
-/

namespace A291813.P7397017822641756193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A291820 (Nat.choose (n + 1) 2 + k + 1) * (2 ^ k : ℤ)

end

end A291813.P7397017822641756193

/-!
# A291814: G.f. A(x) satisfies: A(x - 3*x*A(x)) = x - 2*x*A(x).

The programs for A291814, there is no canonical definition to state claims against.
-/

/-! ## A291814.P16017619832341679117

`∑{#}[n, A291820(C(n+1, 2)+#+1)*3^#]`
-/

namespace A291814.P16017619832341679117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A291820 (Nat.choose (n + 1) 2 + k + 1) * (3 ^ k : ℤ)

end

end A291814.P16017619832341679117

/-! ## A291814.P2815863675355911386

`A032793(A005789(n)-A001842(n))`
-/

namespace A291814.P2815863675355911386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A005789 n - A001842 n).toNat

end

end A291814.P2815863675355911386

/-!
# A291815: G.f. A(x) satisfies: A(x - 4*x*A(x)) = x - 3*x*A(x).

The programs for A291815, there is no canonical definition to state claims against.
-/

/-! ## A291815.P13283642056626282704

`∑{#}[n, A291820(C(n+1, 2)+#+1)*4^#]`
-/

namespace A291815.P13283642056626282704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A291820 (Nat.choose (n + 1) 2 + k + 1) * (4 ^ k : ℤ)

end

end A291815.P13283642056626282704

/-!
# A291816: G.f. A(x) satisfies: A(x - 3*x*A(x)) = x - x*A(x).

The programs for A291816, there is no canonical definition to state claims against.
-/

/-! ## A291816.P4550648659712677060

`∑{#}[n, A291820(C(n+1, 2)+#+1)*3^#*2^(n+1-#-1)]`
-/

namespace A291816.P4550648659712677060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A291820 (Nat.choose (n + 1) 2 + k + 1) * (3 ^ k : ℤ) : ℚ) * (2 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) - 1 : ℤ)

end

end A291816.P4550648659712677060

/-!
# A291817: G.f. A(x) satisfies: A(x - 3*x*A(x)) = x + x*A(x).

The programs for A291817, there is no canonical definition to state claims against.
-/

/-! ## A291817.P4549817514306588718

`∑{#}[n, A291820(C(n+1, 2)+#+1)*3^#*4^(n+1-#-1)]`
-/

namespace A291817.P4549817514306588718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A291820 (Nat.choose (n + 1) 2 + k + 1) * (3 ^ k : ℤ) : ℚ) * (4 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) - 1 : ℤ)

end

end A291817.P4549817514306588718

/-!
# A291818: G.f. A(x) satisfies: A(x - 4*x*A(x)) = x - x*A(x).

The programs for A291818, there is no canonical definition to state claims against.
-/

/-! ## A291818.P555244247654424141

`∑{#}[n, A291820(C(n+1, 2)+#+1)*4^#*3^(n+1-#-1)]`
-/

namespace A291818.P555244247654424141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A291820 (Nat.choose (n + 1) 2 + k + 1) * (4 ^ k : ℤ) : ℚ) * (3 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) - 1 : ℤ)

end

end A291818.P555244247654424141

/-!
# A291819: G.f. A(x) satisfies: A(x - x*A(x)) = x + 3*x*A(x).

The programs for A291819, there is no canonical definition to state claims against.
-/

/-! ## A291819.P17731743958144752924

`∑{#}[n, A291820(C(n+1, 2)+#+1)*4^(n+1-#-1)]`
-/

namespace A291819.P17731743958144752924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A291820 (Nat.choose (n + 1) 2 + k + 1) : ℚ) * (4 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) - 1 : ℤ)

end

end A291819.P17731743958144752924

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

/-!
# A291826: Numbers k such that k^5 is sum of 2 nonzero 6th powers.

The programs for A291826, there is no canonical definition to state claims against.
-/

/-! ## A291826.P10502329381098421577

`A191489(2*n+1)`
-/

namespace A291826.P10502329381098421577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 (2 * n + 1)

end

end A291826.P10502329381098421577

/-! ## A291826.P724634405247565426

`A291829(A358373(n+1))/A000027(n+1)`
-/

namespace A291826.P724634405247565426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291829 (A358373 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A291826.P724634405247565426

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

/-! ## A291826.P15109634913610004149

`A139098(2*(n+1)^3)`
-/

namespace A291826.P15109634913610004149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 (2 * (n + 1) ^ 3)

end

end A291826.P15109634913610004149

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

/-! ## A291829.P4808866519057378755

`A291832(n+1)/A040000(A107709(n+1))`
-/

namespace A291829.P4808866519057378755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291832 (n + 1) : ℚ) / (A040000 (A107709 (n + 1)).toNat : ℚ)

end

end A291829.P4808866519057378755

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

/-! ## A291832.P14533871679360024792

`64*(1+n)^7`
-/

namespace A291832.P14533871679360024792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (1 + n) ^ 7

end

end A291832.P14533871679360024792

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

/-! ## A291832.P52188944409304034

`record[(xor(1, n)+1)^7]/2`
-/

namespace A291832.P52188944409304034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + 1) ^ 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A291832.P52188944409304034

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

/-! ## A291834.P7676445044006491065

`A291928(n+1)`
-/

namespace A291834.P7676445044006491065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291928 (n + 1)

end

end A291834.P7676445044006491065

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

/-! ## A291839.P6685045576460495033

`ceil(sqrt(A358300(2*n+1)))`
-/

namespace A291839.P6685045576460495033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A358300 (2 * n + 1) : ℝ)⌉

end

end A291839.P6685045576460495033

/-! ## A291839.P350144598755497853

`ceil(log(A231590(n+2)))`
-/

namespace A291839.P350144598755497853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A231590 (n + 2) : ℝ)⌉

end

end A291839.P350144598755497853

/-! ## A291839.P10282181664050001448

`ceil(log(A231592(n+2)))`
-/

namespace A291839.P10282181664050001448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A231592 (n + 2) : ℝ)⌉

end

end A291839.P10282181664050001448

/-!
# A291841: a(n) is the number of labeled 2-connected planar graphs with n edges.

The programs for A291841, there is no canonical definition to state claims against.
-/

/-! ## A291841.P11354179424299865834

`record[A322139(n)]`
-/

namespace A291841.P11354179424299865834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291841.P11354179424299865834

/-! ## A291841.P4018089085336474

`filter[A322139(n+2), A168181(#)]`
-/

namespace A291841.P4018089085336474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A291841.P4018089085336474

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

/-! ## A291852.P1010979562405731926

`A008586(n+1)*A008586(A000583(n+1))`
-/

namespace A291852.P1010979562405731926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) * A008586 (A000583 (n + 1)).toNat

end

end A291852.P1010979562405731926

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

/-! ## A291853.P16642740273339957402

`∪[A057469(n+1), A091643(A113395(n))]`
-/

namespace A291853.P16642740273339957402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091643 (A113395 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291853.P16642740273339957402

/-! ## A291853.P16803364602493214572

`∪[A057469(n+1), A379172(A250120(n))]`
-/

namespace A291853.P16803364602493214572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379172 (A250120 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291853.P16803364602493214572

/-! ## A291853.P10546931608546886366

`∪[A057469(n+1), A379172(A337691(n))]`
-/

namespace A291853.P10546931608546886366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379172 (A337691 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291853.P10546931608546886366

/-!
# A291855: Numbers k such that gpf(2^k - 1) - 1 is not divisible by k.

The programs for A291855, there is no canonical definition to state claims against.
-/

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

The programs for A291856, the canonical program `A291856.P2539508486091874599` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291856 has offset 0).

The definition of A291856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-1)*a(n-2)` (program `A291856.P2539508486091874599`, by `A291856.P2539508486091874599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291856.P2539508486091874599

`a(n-1)+(n-1)*a(n-2)` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A291857, the canonical program `A291857.P4614255770582263609` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291857 has offset 1).

The definition of A291857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000029, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291857.P4614255770582263609

`A000029(n+1)-2-1/2*∑{#}[floor((n-2)/2), 2^#+2^ceil(#/2)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A291857

/-- `A000029(n+1)-2-1/2*∑{#}[floor((n-2)/2), 2^#+2^ceil(#/2)]` -/
def P4614255770582263609.Spec : Prop :=
  ∀ n, P4614255770582263609.a n = (A291857 (n + 1) : ℚ)

end A291857

/-! ## A291857.P7214359689169651931

`A350656(A300672(n+1))`
-/

namespace A291857.P7214359689169651931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A300672 (n + 1)).toNat

end

end A291857.P7214359689169651931

namespace A291857

/-- `A350656(A300672(n+1))` -/
def P7214359689169651931.Spec : Prop :=
  ∀ n, P7214359689169651931.a n = A291857 (n + 1)

end A291857

/-! ## A291857.P8707786662633351396

`A000194(A084078(n))-A035363(n)`
-/

namespace A291857.P8707786662633351396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A084078 n).toNat - A035363 n

end

end A291857.P8707786662633351396

namespace A291857

/-- `A000194(A084078(n))-A035363(n)` -/
def P8707786662633351396.Spec : Prop :=
  ∀ n, P8707786662633351396.a n = A291857 (n + 1)

end A291857

/-! ## A291857.P661280922896278882

`A000194(A190156(n))-A035363(n)`
-/

namespace A291857.P661280922896278882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A190156 n).toNat - A035363 n

end

end A291857.P661280922896278882

namespace A291857

/-- `A000194(A190156(n))-A035363(n)` -/
def P661280922896278882.Spec : Prop :=
  ∀ n, P661280922896278882.a n = A291857 (n + 1)

end A291857

/-! ## A291857.P9728150579032728773

`A300672(n+1)-A210713(A038023(n))`
-/

namespace A291857.P9728150579032728773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300672 (n + 1) - A210713 (A038023 n).toNat

end

end A291857.P9728150579032728773

namespace A291857

/-- `A300672(n+1)-A210713(A038023(n))` -/
def P9728150579032728773.Spec : Prop :=
  ∀ n, P9728150579032728773.a n = A291857 (n + 1)

end A291857

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

/-! ## A291874.P8160371923117925919

`(2*T(n-1,k))%2-A227310(n)` with `a(0)=1`
-/

namespace A291874.P8160371923117925919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUp a n) 2 - A227310 n

end

end A291874.P8160371923117925919

/-! ## A291874.P18213374777725436204

`floor(1/(n+1))-abs(A049346(n))`
-/

namespace A291874.P18213374777725436204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋ - |A049346 n|

end

end A291874.P18213374777725436204

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

/-! ## A291874.P12046425899260825269

`A000122(A182318(n+1))-A227310(n)`
-/

namespace A291874.P12046425899260825269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A182318 (n + 1)).toNat - A227310 n

end

end A291874.P12046425899260825269

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

/-! ## A291874.P6988379363200707425

`A000122(n²+1)-A227310(n)`
-/

namespace A291874.P6988379363200707425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) - A227310 n

end

end A291874.P6988379363200707425

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

/-! ## A291876.P17514048422274618759

`2*A259823(1+n)`
-/

namespace A291876.P17514048422274618759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259823 (1 + n)

end

end A291876.P17514048422274618759

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

/-! ## A291876.P14895208167350809759

`A259823(n+1)+A259823(n+1)`
-/

namespace A291876.P14895208167350809759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (n + 1) + A259823 (n + 1)

end

end A291876.P14895208167350809759

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

/-! ## A291876.P137079073733235451

`∑[A007694(2+n)]`
-/

namespace A291876.P137079073733235451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P137079073733235451

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

/-! ## A291876.P11688130223228837122

`∑[eq[1, ∑{p}[n, 3-#]]]`
-/

namespace A291876.P11688130223228837122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), (3 - (p : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291876.P11688130223228837122

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

/-! ## A291884.P13536861911818652499

`comp[A039691(1+n)]`
-/

namespace A291884.P13536861911818652499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039691 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A291884.P13536861911818652499

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

/-! ## A291884.P741176182270629303

`lt[1, A008593(n)-A059632(n)]`
-/

namespace A291884.P741176182270629303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n - A059632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291884.P741176182270629303

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

/-! ## A291885.P11372855972928066571

`A291883(C(2*n+1, 2)+n)`
-/

namespace A291885.P11372855972928066571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (Nat.choose (2 * n + 1) 2 + n)

end

end A291885.P11372855972928066571

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

/-!
# A291886: Total height of all symmetrically unique Dyck paths of semilength n.

The programs for A291886, there is no canonical definition to state claims against.
-/

/-! ## A291886.P16363770523679173271

`∑{#}[n-1, (#+1)*A291883(C(n+1, 2)+#+1)]`
-/

namespace A291886.P16363770523679173271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * A291883 (Nat.choose (n + 1) 2 + (k + 1))

end

end A291886.P16363770523679173271

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

/-!
# A291887: Number of symmetrically unique Dyck paths of semilength n and height three.

The programs for A291887, the canonical program `A291887.P3194401786441826977` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291887 has offset 3).

The definition of A291887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291887.P3194401786441826977

`ogf((1-3x+2x^2+x^4)/(1-6x+9x^2+8x^3-27x^4+10x^5+10x^6-4x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A291887

/-- `ogf((1-3x+2x^2+x^4)/(1-6x+9x^2+8x^3-27x^4+10x^5+10x^6-4x^7))` -/
def P3194401786441826977.Spec : Prop :=
  ∀ n, P3194401786441826977.a n = A291887 (n + 3)

theorem P3194401786441826977.correct : P3194401786441826977.Spec := by
  intro n
  simp only [A291887, Nat.add_sub_cancel]

end A291887

/-! ## A291887.P7998709455536945116

`A005207(n+3)-A005418(n+3)`
-/

namespace A291887.P7998709455536945116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 3) - A005418 (n + 3)

end

end A291887.P7998709455536945116

namespace A291887

/-- `A005207(n+3)-A005418(n+3)` -/
def P7998709455536945116.Spec : Prop :=
  ∀ n, P7998709455536945116.a n = A291887 (n + 3)

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

/-!
# A291888: Number of symmetrically unique Dyck paths of semilength n and height four.

The programs for A291888, the canonical program `A291888.P7387122099033510491` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291888 has offset 4).

The definition of A291888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291888.P7387122099033510491

`ogf((1-4x+6x^2-5x^3+3x^4)/(1-8x+19x^2+2x^3-66x^4+76x^5-3x^6-30x^7+9x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A291888

/-- `ogf((1-4x+6x^2-5x^3+3x^4)/(1-8x+19x^2+2x^3-66x^4+76x^5-3x^6-30x^7+9x^8))` -/
def P7387122099033510491.Spec : Prop :=
  ∀ n, P7387122099033510491.a n = A291888 (n + 4)

theorem P7387122099033510491.correct : P7387122099033510491.Spec := by
  intro n
  simp only [A291888, Nat.add_sub_cancel]

end A291888

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

namespace A291888

/-- `A291883(eq[4, A002262(n)])` -/
def P4360512636030227513.Spec : Prop :=
  ∀ n, P4360512636030227513.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A167499(n)-1)]` -/
def P2412607839301134903.Spec : Prop :=
  ∀ n, P2412607839301134903.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A000124(n)+3)]` -/
def P2850418359821537681.Spec : Prop :=
  ∀ n, P2850418359821537681.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A000217(n)+4)]` -/
def P1166833239495253386.Spec : Prop :=
  ∀ n, P1166833239495253386.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A161680(n)+4)]` -/
def P8512857456752332971.Spec : Prop :=
  ∀ n, P8512857456752332971.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A167487(n)-3)]` -/
def P5720336146429912592.Spec : Prop :=
  ∀ n, P5720336146429912592.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A167614(n+1)+1)]` -/
def P1385232023523186598.Spec : Prop :=
  ∀ n, P1385232023523186598.a n = A291888 (n + 4)

end A291888

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

namespace A291888

/-- `record[A291883(A133263(n+1)+2)]` -/
def P1547689119452996360.Spec : Prop :=
  ∀ n, P1547689119452996360.a n = A291888 (n + 4)

end A291888

/-!
# A291889: Number of symmetrically unique Dyck paths of semilength n and height five.

The programs for A291889, there is no canonical definition to state claims against.
-/

/-! ## A291889.P11336300776285789936

`A291883(A167499(4+n))`
-/

namespace A291889.P11336300776285789936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167499 (4 + n)).toNat

end

end A291889.P11336300776285789936

/-! ## A291889.P17538893756692876750

`record[A291883(A167614(2+n)+2)]`
-/

namespace A291889.P17538893756692876750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (2 + n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291889.P17538893756692876750

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

/-!
# A291892: Number of symmetrically unique Dyck paths of semilength n and height eight.

The programs for A291892, there is no canonical definition to state claims against.
-/

/-! ## A291892.P12945992785276000491

`A291883(A167614(7+n)+5)`
-/

namespace A291892.P12945992785276000491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A167614 (7 + n) + 5).toNat

end

end A291892.P12945992785276000491

/-! ## A291892.P10198165427337282229

`record[A291883(A000124(n+7)-n)]`
-/

namespace A291892.P10198165427337282229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (A000124 (n + 7) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291892.P10198165427337282229

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

/-! ## A291896.P531813206471114899

`round(sqrt(A037143(A145547(n+1))))`
-/

namespace A291896.P531813206471114899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A037143 (A145547 (n + 1)).toNat : ℝ))

end

end A291896.P531813206471114899

/-! ## A291896.P13394614677995055992

`round(A256030(n+1)/A003945(n))`
-/

namespace A291896.P13394614677995055992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A256030 (n + 1) : ℚ) / (A003945 n : ℚ))

end

end A291896.P13394614677995055992

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

/-! ## A291898.P11183244261963551091

`A006077(n)/∑[A280560(n)]`
-/

namespace A291898.P11183244261963551091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006077 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A291898.P11183244261963551091

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

/-! ## A291898.P17146302723073280885

`A006077(n)*A130151(3*n)`
-/

namespace A291898.P17146302723073280885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006077 n * A130151 (3 * n)

end

end A291898.P17146302723073280885

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

/-! ## A291899.P10248604823795259941

`record[A034287(C(2, n²)+n)]`
-/

namespace A291899.P10248604823795259941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (Nat.choose 2 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P10248604823795259941

/-! ## A291899.P14297101606112586598

`A067128(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A291899.P14297101606112586598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A291899.P14297101606112586598

/-! ## A291899.P7055062668440625100

`A034287(A065475(n+1))`
-/

namespace A291899.P7055062668440625100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (A065475 (n + 1)).toNat

end

end A291899.P7055062668440625100

/-! ## A291899.P134465716042163418

`record[A067128(A056538(n+3))]`
-/

namespace A291899.P134465716042163418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (A056538 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P134465716042163418

/-! ## A291899.P6357095508674508925

`record[A067128(A003963(n+4))]`
-/

namespace A291899.P6357095508674508925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (A003963 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P6357095508674508925

/-! ## A291899.P10713714947388455541

`record[A067128(A055396(n+4))]`
-/

namespace A291899.P10713714947388455541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (A055396 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P10713714947388455541

/-! ## A291899.P7500967152642325974

`record[A067128(A289436(n+5))]`
-/

namespace A291899.P7500967152642325974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (A289436 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291899.P7500967152642325974

/-! ## A291899.P5738881630832830868

`A067128(n+2)-A000007(n)`
-/

namespace A291899.P5738881630832830868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067128 (n + 2) - A000007 n

end

end A291899.P5738881630832830868

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

/-! ## A291899.P6465979536244683857

`C(A067128(n+2), A011629(2*n)²)`
-/

namespace A291899.P6465979536244683857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067128 (n + 2)).toNat (A011629 (2 * n) ^ 2).toNat

end

end A291899.P6465979536244683857

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

/-! ## A291899.P11549878909502665558

`∪[A034288(n+1), A247022(n+1)]`
-/

namespace A291899.P11549878909502665558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291899.P11549878909502665558

/-! ## A291899.P5445234373855851100

`∪[A034288(n+1), A322676(n+1)]`
-/

namespace A291899.P5445234373855851100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291899.P5445234373855851100

/-! ## A291899.P5691407769388218995

`∪[A034288(n+1), A244353(n+1)]`
-/

namespace A291899.P5691407769388218995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291899.P5691407769388218995

/-! ## A291899.P4998042154813758694

`C(A067128(n+2), A011629(n²))`
-/

namespace A291899.P4998042154813758694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067128 (n + 2)).toNat (A011629 (n ^ 2)).toNat

end

end A291899.P4998042154813758694

