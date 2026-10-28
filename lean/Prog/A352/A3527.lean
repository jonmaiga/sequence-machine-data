import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A352700: G.f.: Sum_{n>=0} binomial((n+1)*(2*n+1),n)/(2*n+1) * x^n / C(x)^(n*(2*n+1)+1), where C(x) = 1 + x*C(x)^2 is the Catalan function (A000108).

The programs for A352700, there is no canonical definition to state claims against.
-/

/-! ## A352700.P7504174911088728819

`A054860(A054879(n)-1)+1`
-/

namespace A352700.P7504174911088728819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054860 (A054879 n - 1).toNat + 1

end

end A352700.P7504174911088728819

/-!
# A352701: G.f. (1/x)*Series_Reversion( x*(1-x)*(3 - 2*x + sqrt(1+4*x-4*x^2))/4 ).

The programs for A352701, there is no canonical definition to state claims against.
-/

/-! ## A352701.P7254405120244597673

`abs(A351771(n+1))`
-/

namespace A352701.P7254405120244597673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351771 (n + 1)|

end

end A352701.P7254405120244597673

/-! ## A352701.P9076733836477887710

`∏[abs(ratio[A351771(n)])]`
-/

namespace A352701.P9076733836477887710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351771 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352701.P9076733836477887710

/-! ## A352701.P4270519492385683932

`(-1)^n*A351771(ceil(sqrt(∑[2*n])))`
-/

namespace A352701.P4270519492385683932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A351771 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A352701.P4270519492385683932

/-! ## A352701.P13449517130283818247

`A351771(n+1)/A033999(n)`
-/

namespace A352701.P13449517130283818247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351771 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A352701.P13449517130283818247

/-! ## A352701.P6866638253160246580

`gcd(A000038(n), A351771(n+1))`
-/

namespace A352701.P6866638253160246580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A351771 (n + 1))

end

end A352701.P6866638253160246580

/-!
# A352702: G.f. A(x) satisfies: (1 - x*A(x))^3 = 1 - 3*x - x^3*A(x^3).

The programs for A352702, there is no canonical definition to state claims against.
-/

/-! ## A352702.P433767023791140647

`abs(A107092(n+1))`
-/

namespace A352702.P433767023791140647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107092 (n + 1)|

end

end A352702.P433767023791140647

/-! ## A352702.P17861759897044320464

`∏[abs(ratio[A107092(n)])]`
-/

namespace A352702.P17861759897044320464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107092 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352702.P17861759897044320464

/-! ## A352702.P4346166753118434568

`A033999(n)*A107092(n+1)`
-/

namespace A352702.P4346166753118434568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107092 (n + 1)

end

end A352702.P4346166753118434568

/-! ## A352702.P11371039496049849213

`∏[A000038(n)-ratio[A107092(n)]]`
-/

namespace A352702.P11371039496049849213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107092 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) - (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352702.P11371039496049849213

/-! ## A352702.P6737228095133162166

`gcd(C(2, A000045(2*n)), A107092(n+1))`
-/

namespace A352702.P6737228095133162166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (A000045 (2 * n)).toNat : ℤ) (A107092 (n + 1))

end

end A352702.P6737228095133162166

/-! ## A352702.P16606078356736203122

`A107092(n+1)/A352703(n+1)*A352704(n)`
-/

namespace A352702.P16606078356736203122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) : ℚ) / (A352703 (n + 1) : ℚ) * (A352704 n : ℚ)

end

end A352702.P16606078356736203122

/-! ## A352702.P12876592623268733418

`A107092(n+1)/A352705(n+1)*A352706(n)`
-/

namespace A352702.P12876592623268733418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) : ℚ) / (A352705 (n + 1) : ℚ) * (A352706 n : ℚ)

end

end A352702.P12876592623268733418

/-! ## A352702.P1280890734628896800

`A107092(n+1)*A352703(n+1)/A352704(n)`
-/

namespace A352702.P1280890734628896800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) * A352703 (n + 1) : ℚ) / (A352704 n : ℚ)

end

end A352702.P1280890734628896800

/-! ## A352702.P3003147282211561721

`A107092(n+1)*A352705(n+1)/A352706(n)`
-/

namespace A352702.P3003147282211561721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) * A352705 (n + 1) : ℚ) / (A352706 n : ℚ)

end

end A352702.P3003147282211561721

/-!
# A352703: G.f. A(x) satisfies: A(x)^5 = A(x^5) + 5*x.

The programs for A352703, there is no canonical definition to state claims against.
-/

/-! ## A352703.P5241243653633850962

`A327051(A184955(n))+A196345(n)`
-/

namespace A352703.P5241243653633850962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A184955 n).toNat + A196345 n

end

end A352703.P5241243653633850962

/-! ## A352703.P21397169517226091

`A196345(n)-A016389(A208039(n+1))`
-/

namespace A352703.P21397169517226091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 n - A016389 (A208039 (n + 1)).toNat

end

end A352703.P21397169517226091

/-! ## A352703.P16408303600793992825

`A196345(n)+A187946(A025612(2*n+5))`
-/

namespace A352703.P16408303600793992825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 n + A187946 (A025612 (2 * n + 5)).toNat

end

end A352703.P16408303600793992825

/-! ## A352703.P843285639887049721

`A196345(n^A053164(n+1))`
-/

namespace A352703.P843285639887049721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A053164 (n + 1) : ℤ))).toNat

end

end A352703.P843285639887049721

/-! ## A352703.P203599345949705897

`A000120(A011782(n))*A196345(n)`
-/

namespace A352703.P203599345949705897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A011782 n).toNat * A196345 n

end

end A352703.P203599345949705897

/-!
# A352704: G.f. A(x) satisfies: (1 - x*A(x))^5 = 1 - 5*x - x^5*A(x^5).

The programs for A352704, there is no canonical definition to state claims against.
-/

/-! ## A352704.P3462390298163360480

`abs(A352703(n+1))`
-/

namespace A352704.P3462390298163360480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352703 (n + 1)|

end

end A352704.P3462390298163360480

/-! ## A352704.P16590398217422930085

`∏[abs(ratio[A352703(n)])]`
-/

namespace A352704.P16590398217422930085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352703 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352704.P16590398217422930085

/-! ## A352704.P9370267372396454913

`record[abs(A352703(n-3*floor(n/10)))]`
-/

namespace A352704.P9370267372396454913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352703 ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352704.P9370267372396454913

/-! ## A352704.P2272076327477609163

`A033999(n)*A352703(n+1)`
-/

namespace A352704.P2272076327477609163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A352703 (n + 1)

end

end A352704.P2272076327477609163

/-! ## A352704.P17319257223151799061

`gcd(A000038(n), A352703(n+1))`
-/

namespace A352704.P17319257223151799061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A352703 (n + 1))

end

end A352704.P17319257223151799061

/-! ## A352704.P14989547713085723636

`A107092(n+1)/A352702(n)*A352703(n+1)`
-/

namespace A352704.P14989547713085723636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) : ℚ) / (A352702 n : ℚ) * (A352703 (n + 1) : ℚ)

end

end A352704.P14989547713085723636

/-! ## A352704.P3678822814158666932

`A352703(n+1)/A352705(n+1)*A352706(n)`
-/

namespace A352704.P3678822814158666932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352703 (n + 1) : ℚ) / (A352705 (n + 1) : ℚ) * (A352706 n : ℚ)

end

end A352704.P3678822814158666932

/-! ## A352704.P5580158984978712099

`A107092(n+1)*A352703(n+1)/A352702(n)`
-/

namespace A352704.P5580158984978712099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) * A352703 (n + 1) : ℚ) / (A352702 n : ℚ)

end

end A352704.P5580158984978712099

/-! ## A352704.P15239208473739339728

`A352703(n+1)*A352705(n+1)/A352706(n)`
-/

namespace A352704.P15239208473739339728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352703 (n + 1) * A352705 (n + 1) : ℚ) / (A352706 n : ℚ)

end

end A352704.P15239208473739339728

/-!
# A352705: G.f. A(x) satisfies: A(x)^7 = A(x^7) + 7*x.

The programs for A352705, there is no canonical definition to state claims against.
-/

/-! ## A352705.P4723025600555742700

`A106227(n)-A079998(∑[A079967(n)])`
-/

namespace A352705.P4723025600555742700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106227 n - A079998 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352705.P4723025600555742700

/-! ## A352705.P10328330305934405140

`A106227(n)-A024155(A244476(n+5))`
-/

namespace A352705.P10328330305934405140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106227 n - A024155 (A244476 (n + 5)).toNat

end

end A352705.P10328330305934405140

/-!
# A352706: G.f. A(x) satisfies: (1 - x*A(x))^7 = 1 - 7*x - x^7*A(x^7).

The programs for A352706, there is no canonical definition to state claims against.
-/

/-! ## A352706.P12594191288543362487

`abs(A352705(n+1))`
-/

namespace A352706.P12594191288543362487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352705 (n + 1)|

end

end A352706.P12594191288543362487

/-! ## A352706.P7464553157631429506

`record[abs(A352705(A002262(n)))]`
-/

namespace A352706.P7464553157631429506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352705 (A002262 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352706.P7464553157631429506

/-! ## A352706.P11713511790805784072

`record[abs(A352705(A143182(n)))]`
-/

namespace A352706.P11713511790805784072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352705 (A143182 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352706.P11713511790805784072

/-! ## A352706.P12748394233746983296

`gcd(A000038(n), A352705(n+1))`
-/

namespace A352706.P12748394233746983296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A352705 (n + 1))

end

end A352706.P12748394233746983296

/-! ## A352706.P16618315672801058398

`A107092(n+1)/A352702(n)*A352705(n+1)`
-/

namespace A352706.P16618315672801058398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) : ℚ) / (A352702 n : ℚ) * (A352705 (n + 1) : ℚ)

end

end A352706.P16618315672801058398

/-! ## A352706.P3867932288484811895

`A352703(n+1)/A352704(n)*A352705(n+1)`
-/

namespace A352706.P3867932288484811895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352703 (n + 1) : ℚ) / (A352704 n : ℚ) * (A352705 (n + 1) : ℚ)

end

end A352706.P3867932288484811895

/-! ## A352706.P15960336711753499297

`A107092(n+1)*A352705(n+1)/A352702(n)`
-/

namespace A352706.P15960336711753499297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107092 (n + 1) * A352705 (n + 1) : ℚ) / (A352702 n : ℚ)

end

end A352706.P15960336711753499297

/-! ## A352706.P11860345094478218442

`A352703(n+1)*A352705(n+1)/A352704(n)`
-/

namespace A352706.P11860345094478218442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352703 (n + 1) * A352705 (n + 1) : ℚ) / (A352704 n : ℚ)

end

end A352706.P11860345094478218442

/-!
# A352707: Array read by ascending antidiagonals T(n,k) = abs(prime(n)-nonprime(k)).

The programs for A352707, there is no canonical definition to state claims against.
-/

/-! ## A352707.P8592938985211410474

`abs(A018252(A002260(n+1))-A104887(n+1))`
-/

namespace A352707.P8592938985211410474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A018252 (A002260 (n + 1)).toNat - A104887 (n + 1)|

end

end A352707.P8592938985211410474

/-!
# A352709: a(n) = A109812(1) XOR ... XOR A109812(n) (where XOR denotes the bitwise XOR operator).

The programs for A352709, there is no canonical definition to state claims against.
-/

/-! ## A352709.P18032695038527072983

`xor(a(n-2), A353240(n))` with `a(0)=1, a(1)=3`
-/

namespace A352709.P18032695038527072983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (a (n - 2)) (A353240 n)

end

end A352709.P18032695038527072983

/-! ## A352709.P14490894468216381440

`xor(a(n-1), A109812(n+1))` with `a(0)=1`
-/

namespace A352709.P14490894468216381440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A109812 (n + 1))

end

end A352709.P14490894468216381440

/-! ## A352709.P6409389983137240936

`xor(a(n-1), A004525(A305371(2*(n+1))))` with `a(0)=1`
-/

namespace A352709.P6409389983137240936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A004525 (A305371 (2 * (n + 1))).toNat)

end

end A352709.P6409389983137240936

/-! ## A352709.P17360048529797436183

`xor(a(n-1), A004524(A305371(2*(n+1))+1))` with `a(0)=1`
-/

namespace A352709.P17360048529797436183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A004524 (A305371 (2 * (n + 1)) + 1).toNat)

end

end A352709.P17360048529797436183

/-! ## A352709.P6152574816315926594

`xor(a(n-1), A113233(A113232(n+1)))` with `a(0)=1`
-/

namespace A352709.P6152574816315926594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A113233 (A113232 (n + 1)).toNat)

end

end A352709.P6152574816315926594

/-!
# A352710: Least k such that A352483(k) = 2*n-1, or -1 if no such k exists.

The programs for A352710, there is no canonical definition to state claims against.
-/

/-! ## A352710.P1183440377218171801

`A351913(2*n+1)`
-/

namespace A352710.P1183440377218171801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351913 (2 * n + 1)

end

end A352710.P1183440377218171801

/-! ## A352710.P13545769728773111809

`A351913(or(1, 2*n))/A007318(C(n, 2))`
-/

namespace A352710.P13545769728773111809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351913 (Nat.lor 1 (2 * n)) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A352710.P13545769728773111809

/-! ## A352710.P14286939776551309906

`A351913(or(1, 2*n))-A131242(A000120(n))`
-/

namespace A352710.P14286939776551309906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351913 (Nat.lor 1 (2 * n)) - A131242 (A000120 n).toNat

end

end A352710.P14286939776551309906

/-! ## A352710.P729360639826277002

`A351913(or(1, 2*n))-A124761(A178112(n))`
-/

namespace A352710.P729360639826277002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351913 (Nat.lor 1 (2 * n)) - A124761 (A178112 n).toNat

end

end A352710.P729360639826277002

/-! ## A352710.P8925455868851949557

`A351913(or(1, 2*n))-A124761(A324341(n))`
-/

namespace A352710.P8925455868851949557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351913 (Nat.lor 1 (2 * n)) - A124761 (A324341 n).toNat

end

end A352710.P8925455868851949557

/-! ## A352710.P1666771738660080607

`A166486(A008288(n))*A351913(or(1, 2*n))`
-/

namespace A352710.P1666771738660080607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A008288 n).toNat * A351913 (Nat.lor 1 (2 * n))

end

end A352710.P1666771738660080607

/-! ## A352710.P12832061071841620731

`A351913(or(1, 2*n))-A326445(A000120(3*n))`
-/

namespace A352710.P12832061071841620731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351913 (Nat.lor 1 (2 * n)) - A326445 (A000120 (3 * n)).toNat

end

end A352710.P12832061071841620731

/-!
# A352717: Greatest Lucas number that does not exceed n.

The programs for A352717, there is no canonical definition to state claims against.
-/

/-! ## A352717.P9250530301611108169

`A280694((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A352717.P9250530301611108169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A280694 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A352717.P9250530301611108169

/-! ## A352717.P1656298673170593762

`A000032(A130241(n+1))`
-/

namespace A352717.P1656298673170593762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130241 (n + 1)).toNat

end

end A352717.P1656298673170593762

/-! ## A352717.P4515971350424939931

`A000032(∑[char[A001610(n)]])`
-/

namespace A352717.P4515971350424939931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352717.P4515971350424939931

/-! ## A352717.P10413101334973245562

`A000204(∑[char[A001610(n)]])`
-/

namespace A352717.P10413101334973245562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352717.P10413101334973245562

/-! ## A352717.P12626845381633292789

`A193686(∑[char[A001610(n)]])`
-/

namespace A352717.P12626845381633292789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193686 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352717.P12626845381633292789

/-! ## A352717.P11932052741499022903

`A127218(2*A130241(n+1))`
-/

namespace A352717.P11932052741499022903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * A130241 (n + 1)).toNat

end

end A352717.P11932052741499022903

/-! ## A352717.P7025100667959924700

`A000032(A130247(n+1)+char[1])`
-/

namespace A352717.P7025100667959924700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130247 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A352717.P7025100667959924700

/-! ## A352717.P11782200923470114652

`A000204(A130247(n+1)+char[1])`
-/

namespace A352717.P11782200923470114652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A130247 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A352717.P11782200923470114652

/-! ## A352717.P1576555147377694069

`A000032(∑[char[∑[A000032(n)]]]+1)`
-/

namespace A352717.P1576555147377694069
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A352717.P1576555147377694069

/-! ## A352717.P11928535094631014753

`A000204(A130241(2*n+1-n))`
-/

namespace A352717.P11928535094631014753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A130241 (2 * n + 1 - n)).toNat

end

end A352717.P11928535094631014753

/-!
# A352718: a(n) = floor(n^(3/2)) - floor(n^(1/2))^3.

The programs for A352718, the canonical program `A352718.P15740514395323846500` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352718 has offset 0).

The definition of A352718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(3/2))-floor(n^(1/2))^3` (program `A352718.P15740514395323846500`, by `A352718.P15740514395323846500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352718.P15740514395323846500

`floor(n^(3/2))-floor(n^(1/2))^3`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352718

/-- `floor(n^(3/2))-floor(n^(1/2))^3` -/
def P15740514395323846500.Spec : Prop :=
  ∀ n, P15740514395323846500.a n = A352718 n

theorem P15740514395323846500.correct : P15740514395323846500.Spec := by
  intro n
  simp only [A352718]

end A352718

/-! ## A352718.P17222859195763783726

`A055400(floor(sqrt(n^3)))`
-/

namespace A352718.P17222859195763783726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (Nat.sqrt (n ^ 3))

end

end A352718.P17222859195763783726

namespace A352718

/-- `A055400(floor(sqrt(n^3)))` -/
def P17222859195763783726.Spec : Prop :=
  ∀ n, P17222859195763783726.a n = A352718 n

end A352718

/-! ## A352718.P11493714396260361116

`and(-1, A055400(A000093(n)))`
-/

namespace A352718.P11493714396260361116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A055400 (A000093 n).toNat)

end

end A352718.P11493714396260361116

namespace A352718

/-- `and(-1, A055400(A000093(n)))` -/
def P11493714396260361116.Spec : Prop :=
  ∀ n, P11493714396260361116.a n = A352718 n

end A352718

/-!
# A352719: Indices k of tribonacci numbers T(k) such that T(k+1) - (tribonacci constant)*T(k) is nonnegative.

The programs for A352719, there is no canonical definition to state claims against.
-/

/-! ## A352719.P12118058694706484264

`lt[0, A075495(n)]`
-/

namespace A352719.P12118058694706484264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352719.P12118058694706484264

/-! ## A352719.P16866155757415497307

`comp[A352748(n+1)]`
-/

namespace A352719.P16866155757415497307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352719.P16866155757415497307

/-! ## A352719.P12989429146952941803

`lt[A075419(n+1), 1]`
-/

namespace A352719.P12989429146952941803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075419 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352719.P12989429146952941803

/-! ## A352719.P16833186421047623450

`lt[A105580(n+2), 1]`
-/

namespace A352719.P16833186421047623450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105580 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352719.P16833186421047623450

/-! ## A352719.P13442952485681814375

`lt[-C(2, n²), A057597(n+4)]`
-/

namespace A352719.P13442952485681814375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose 2 (n ^ 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352719.P13442952485681814375

/-! ## A352719.P10291936570593260381

`lt[-A057597(n+4), A010815(n)]`
-/

namespace A352719.P10291936570593260381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057597 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352719.P10291936570593260381

/-! ## A352719.P6163227756796244673

`lt[-A057597(n+4), A027656(n)]`
-/

namespace A352719.P6163227756796244673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057597 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352719.P6163227756796244673

/-! ## A352719.P9361900954669758910

`lt[-A057597(n+4), A340905(n+6)]`
-/

namespace A352719.P9361900954669758910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057597 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340905 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352719.P9361900954669758910

/-!
# A352720: a(n) is the number of free polyominoes of width 2 and size n.

The programs for A352720, the canonical program `A352720.P2226307302509085096` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352720 has offset 2).

The definition of A352720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352720.P2226307302509085096

`ogf((1-x^3-2x^4-x^5-2x^6-x^7-x^8)/(1-x-3x^2+x^3+2x^4+2x^5+x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352720

/-- `ogf((1-x^3-2x^4-x^5-2x^6-x^7-x^8)/(1-x-3x^2+x^3+2x^4+2x^5+x^8-x^9-x^10-x^11))` -/
def P2226307302509085096.Spec : Prop :=
  ∀ n, P2226307302509085096.a n = A352720 (n + 2)

theorem P2226307302509085096.correct : P2226307302509085096.Spec := by
  intro n
  simp only [A352720, Nat.add_sub_cancel]

end A352720

/-! ## A352720.P9721670763233870438

`A379623(A290743(n+2))`
-/

namespace A352720.P9721670763233870438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379623 (A290743 (n + 2)).toNat

end

end A352720.P9721670763233870438

namespace A352720

/-- `A379623(A290743(n+2))` -/
def P9721670763233870438.Spec : Prop :=
  ∀ n, P9721670763233870438.a n = A352720 (n + 2)

end A352720

/-! ## A352720.P5024328883883141088

`A379623(A002620(n+4)-(n+1))`
-/

namespace A352720.P5024328883883141088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379623 (A002620 (n + 4) - (n + 1 : ℤ)).toNat

end

end A352720.P5024328883883141088

namespace A352720

/-- `A379623(A002620(n+4)-(n+1))` -/
def P5024328883883141088.Spec : Prop :=
  ∀ n, P5024328883883141088.a n = A352720 (n + 2)

end A352720

/-! ## A352720.P9200020115627236012

`A379623(A080513(A080513((n+2)²)))`
-/

namespace A352720.P9200020115627236012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379623 (A080513 (A080513 ((n + 2) ^ 2)).toNat).toNat

end

end A352720.P9200020115627236012

namespace A352720

/-- `A379623(A080513(A080513((n+2)²)))` -/
def P9200020115627236012.Spec : Prop :=
  ∀ n, P9200020115627236012.a n = A352720 (n + 2)

end A352720

/-!
# A352721: Perfect cubes whose decimal digits appear in nonincreasing order.

The programs for A352721, there is no canonical definition to state claims against.
-/

/-! ## A352721.P3427848165125004976

`∪[A136859(n+1), A004643(n)]^3`
-/

namespace A352721.P3427848165125004976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A352721.P3427848165125004976

/-! ## A352721.P6550449306893270923

`A007094(floor(2^(n-1)))^3`
-/

namespace A352721.P6550449306893270923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat ^ 3

end

end A352721.P6550449306893270923

/-! ## A352721.P12506967194187244028

`lt[A055566(n), 8]^3`
-/

namespace A352721.P12506967194187244028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055566 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A352721.P12506967194187244028

/-! ## A352721.P5771202071754806458

`A000578(A007094(floor(2^(n-1))))`
-/

namespace A352721.P5771202071754806458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007094 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat).toNat

end

end A352721.P5771202071754806458

/-! ## A352721.P9019643711131474288

`A000578(eq[A000578(n), A032554(n)])`
-/

namespace A352721.P9019643711131474288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352721.P9019643711131474288

/-!
# A352723: a(n) = A352722(n) AND A352722(n+1) (where AND denotes the bitwise AND operator).

The programs for A352723, there is no canonical definition to state claims against.
-/

/-! ## A352723.P903527221795648807

`and(A352722(n+1), A352722(n+2))`
-/

namespace A352723.P903527221795648807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A352722 (n + 1)) (A352722 (n + 2))

end

end A352723.P903527221795648807

/-!
# A352724: Irregular table T(n, k) read by rows; the n-th row contains the lexicographically earlier list of A069010(n) distinct terms of A023758 summing to n.

The programs for A352724, there is no canonical definition to state claims against.
-/

/-! ## A352724.P4542525273668248000

`Δ[eq[A181940(n), A341839(n)]]`
-/

namespace A352724.P4542525273668248000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181940 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352724.P4542525273668248000

/-!
# A352725: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the binary expansions of a(n) and a(n+1) have no common runs of consecutive 1's.

The programs for A352725, there is no canonical definition to state claims against.
-/

/-! ## A352725.P10606170775852906412

`A316385(n+1)%A000005(A051437(n))`
-/

namespace A352725.P10606170775852906412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316385 (n + 1)) (A000005 (A051437 n).toNat)

end

end A352725.P10606170775852906412

/-! ## A352725.P11023904040643836502

`A330090(A333692(n)%A333778(3*n+5))`
-/

namespace A352725.P11023904040643836502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330090 (Int.tmod (A333692 n) (A333778 (3 * n + 5))).toNat

end

end A352725.P11023904040643836502

/-! ## A352725.P16018165176609129722

`A330090(A057889(n)%A074145(3*n+2))`
-/

namespace A352725.P16018165176609129722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330090 (Int.tmod (A057889 n) (A074145 (3 * n + 2))).toNat

end

end A352725.P16018165176609129722

/-! ## A352725.P17752876604371093822

`A316385(A187829(n+1))%A062383(n)`
-/

namespace A352725.P17752876604371093822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316385 (A187829 (n + 1)).toNat) (A062383 n)

end

end A352725.P17752876604371093822

/-!
# A352726: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the binary expansions of n and a(n) have no common runs of consecutive 1's.

The programs for A352726, there is no canonical definition to state claims against.
-/

/-! ## A352726.P21062874875973127

`A339927(A133406(n+1))+A014681(n)`
-/

namespace A352726.P21062874875973127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339927 (A133406 (n + 1)).toNat + A014681 n

end

end A352726.P21062874875973127

/-! ## A352726.P15865598443315544441

`A296082(A001225(n+2))+A093347(n+1)`
-/

namespace A352726.P15865598443315544441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (A001225 (n + 2)).toNat + A093347 (n + 1)

end

end A352726.P15865598443315544441

/-!
# A352727: Square array A(n, k), n, k >= 0, read by antidiagonals: the binary expansion of A(n, k) contains the runs of consecutive 1's that appear both in the binary expansions of n and k.

The programs for A352727, there is no canonical definition to state claims against.
-/

/-! ## A352727.P13846001000425625340

`and(A004198(n), A004198(A051682(n)))`
-/

namespace A352727.P13846001000425625340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004198 n) (A004198 (A051682 n).toNat)

end

end A352727.P13846001000425625340

/-! ## A352727.P9040897206275506318

`A250120(A372067(n))%A225174(n+1)`
-/

namespace A352727.P9040897206275506318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (A372067 n).toNat) (A225174 (n + 1))

end

end A352727.P9040897206275506318

/-! ## A352727.P15986278162167143760

`and(A004198(n), A368998(A197280(n+1)))`
-/

namespace A352727.P15986278162167143760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004198 n) (A368998 (A197280 (n + 1)).toNat)

end

end A352727.P15986278162167143760

/-! ## A352727.P14388482873285704788

`A349054(n)%A225174(n+1)`
-/

namespace A352727.P14388482873285704788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349054 n) (A225174 (n + 1))

end

end A352727.P14388482873285704788

/-! ## A352727.P12069480343540889303

`and(A351961(n), A387937(n+2))`
-/

namespace A352727.P12069480343540889303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A351961 n) (A387937 (n + 2))

end

end A352727.P12069480343540889303

/-!
# A352729: The binary expansion of a(n) contains the runs of consecutive 1's that appear both in the binary expansions of n and n+1.

The programs for A352729, the canonical program `A352729.P3431698846437154592` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352729 has offset 0).

The definition of A352729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352729.P3431698846437154592

`and(n, or(n, n+1)+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352729

/-- `and(n, or(n, n+1)+1)` -/
def P3431698846437154592.Spec : Prop :=
  ∀ n, (P3431698846437154592.a n : ℤ) = A352729 n

theorem P3431698846437154592.correct : P3431698846437154592.Spec := by
  intro n
  simp only [A352729]

end A352729

/-! ## A352729.P2012767480785187901

`and(n+2, xor(n, n+1)+n)`
-/

namespace A352729.P2012767480785187901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 2) (Nat.xor n (n + 1) + n)

end

end A352729.P2012767480785187901

namespace A352729

/-- `and(n+2, xor(n, n+1)+n)` -/
def P2012767480785187901.Spec : Prop :=
  ∀ n, (P2012767480785187901.a n : ℤ) = A352729 n

end A352729

/-! ## A352729.P3683573306305507049

`and(n, and(n, -(n+2))+n+2)`
-/

namespace A352729.P3683573306305507049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.land (n : ℤ) (-(n + 2 : ℤ)) + (n + 2 : ℤ))

end

end A352729.P3683573306305507049

namespace A352729

/-- `and(n, and(n, -(n+2))+n+2)` -/
def P3683573306305507049.Spec : Prop :=
  ∀ n, P3683573306305507049.a n = A352729 n

end A352729

/-! ## A352729.P4647127426368181144

`and(n, Δ[and(n, n+1)]+n+1)`
-/

namespace A352729.P4647127426368181144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ))

end

end A352729.P4647127426368181144

namespace A352729

/-- `and(n, Δ[and(n, n+1)]+n+1)` -/
def P4647127426368181144.Spec : Prop :=
  ∀ n, P4647127426368181144.a n = A352729 n

end A352729

/-! ## A352729.P3647926138022949665

`and(n, 2*(n+1)-and(n, n+1))`
-/

namespace A352729.P3647926138022949665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((2 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ))

end

end A352729.P3647926138022949665

namespace A352729

/-- `and(n, 2*(n+1)-and(n, n+1))` -/
def P3647926138022949665.Spec : Prop :=
  ∀ n, P3647926138022949665.a n = A352729 n

end A352729

/-! ## A352729.P1110226518922610362

`and(n, n+2-and(n, n+1)+n)`
-/

namespace A352729.P1110226518922610362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n + 2 : ℤ) - (Nat.land n (n + 1) : ℤ) + (n : ℤ))

end

end A352729.P1110226518922610362

namespace A352729

/-- `and(n, n+2-and(n, n+1)+n)` -/
def P1110226518922610362.Spec : Prop :=
  ∀ n, P1110226518922610362.a n = A352729 n

end A352729

/-! ## A352729.P17675085410433350858

`and(n, gcd(n+1, and(n, n+1))+n+1)`
-/

namespace A352729.P17675085410433350858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.gcd (n + 1) (Nat.land n (n + 1)) + (n + 1))

end

end A352729.P17675085410433350858

namespace A352729

/-- `and(n, gcd(n+1, and(n, n+1))+n+1)` -/
def P17675085410433350858.Spec : Prop :=
  ∀ n, (P17675085410433350858.a n : ℤ) = A352729 n

end A352729

/-! ## A352729.P7897055853220335666

`and(n, A285326(n+1))`
-/

namespace A352729.P7897055853220335666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A285326 (n + 1))

end

end A352729.P7897055853220335666

namespace A352729

/-- `and(n, A285326(n+1))` -/
def P7897055853220335666.Spec : Prop :=
  ∀ n, P7897055853220335666.a n = A352729 n

end A352729

/-! ## A352729.P17424898799003876151

`and(n, A349102(n+1))`
-/

namespace A352729.P17424898799003876151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A349102 (n + 1))

end

end A352729.P17424898799003876151

namespace A352729

/-- `and(n, A349102(n+1))` -/
def P17424898799003876151.Spec : Prop :=
  ∀ n, P17424898799003876151.a n = A352729 n

end A352729

/-! ## A352729.P3258094630509780606

`A322018(or(n, n+1))`
-/

namespace A352729.P3258094630509780606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (Nat.lor n (n + 1))

end

end A352729.P3258094630509780606

namespace A352729

/-- `A322018(or(n, n+1))` -/
def P3258094630509780606.Spec : Prop :=
  ∀ n, P3258094630509780606.a n = A352729 n

end A352729

/-! ## A352729.P15119587298068045730

`and(n, n-A142151(n))`
-/

namespace A352729.P15119587298068045730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A142151 n)

end

end A352729.P15119587298068045730

namespace A352729

/-- `and(n, n-A142151(n))` -/
def P15119587298068045730.Spec : Prop :=
  ∀ n, P15119587298068045730.a n = A352729 n

end A352729

/-! ## A352729.P1496478696412204037

`and(n, A341522(n)-n)`
-/

namespace A352729.P1496478696412204037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A341522 n - (n : ℤ))

end

end A352729.P1496478696412204037

namespace A352729

/-- `and(n, A341522(n)-n)` -/
def P1496478696412204037.Spec : Prop :=
  ∀ n, P1496478696412204037.a n = A352729 n

end A352729

/-! ## A352729.P4011744624500364640

`and(n, A086799(n+1)+1)`
-/

namespace A352729.P4011744624500364640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A086799 (n + 1) + 1)

end

end A352729.P4011744624500364640

namespace A352729

/-- `and(n, A086799(n+1)+1)` -/
def P4011744624500364640.Spec : Prop :=
  ∀ n, P4011744624500364640.a n = A352729 n

end A352729

/-! ## A352729.P7600531033343351942

`and(n+1, A100710(n+1))`
-/

namespace A352729.P7600531033343351942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A100710 (n + 1))

end

end A352729.P7600531033343351942

namespace A352729

/-- `and(n+1, A100710(n+1))` -/
def P7600531033343351942.Spec : Prop :=
  ∀ n, P7600531033343351942.a n = A352729 n

end A352729

/-! ## A352729.P8930718119252711066

`and(n, 2*A140472(n+1))`
-/

namespace A352729.P8930718119252711066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (2 * A140472 (n + 1))

end

end A352729.P8930718119252711066

namespace A352729

/-- `and(n, 2*A140472(n+1))` -/
def P8930718119252711066.Spec : Prop :=
  ∀ n, P8930718119252711066.a n = A352729 n

end A352729

/-! ## A352729.P14390319807360871273

`A322018(A086799(n+1))`
-/

namespace A352729.P14390319807360871273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (A086799 (n + 1)).toNat

end

end A352729.P14390319807360871273

namespace A352729

/-- `A322018(A086799(n+1))` -/
def P14390319807360871273.Spec : Prop :=
  ∀ n, P14390319807360871273.a n = A352729 n

end A352729

/-! ## A352729.P17122599191724627828

`A052928(A393292(n+1))`
-/

namespace A352729.P17122599191724627828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A393292 (n + 1)).toNat

end

end A352729.P17122599191724627828

namespace A352729

/-- `A052928(A393292(n+1))` -/
def P17122599191724627828.Spec : Prop :=
  ∀ n, P17122599191724627828.a n = A352729 n

end A352729

/-! ## A352729.P11804651290593755620

`2*A129760(A109168(n+1))`
-/

namespace A352729.P11804651290593755620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129760 (A109168 (n + 1)).toNat

end

end A352729.P11804651290593755620

namespace A352729

/-- `2*A129760(A109168(n+1))` -/
def P11804651290593755620.Spec : Prop :=
  ∀ n, P11804651290593755620.a n = A352729 n

end A352729

/-! ## A352729.P17821078997330224969

`A322018(A006519(n+1)+n)`
-/

namespace A352729.P17821078997330224969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (A006519 (n + 1) + (n : ℤ)).toNat

end

end A352729.P17821078997330224969

namespace A352729

/-- `A322018(A006519(n+1)+n)` -/
def P17821078997330224969.Spec : Prop :=
  ∀ n, P17821078997330224969.a n = A352729 n

end A352729

/-! ## A352729.P5554117209249462426

`A393292(n+1)-A166486(n)`
-/

namespace A352729.P5554117209249462426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393292 (n + 1) - A166486 n

end

end A352729.P5554117209249462426

namespace A352729

/-- `A393292(n+1)-A166486(n)` -/
def P5554117209249462426.Spec : Prop :=
  ∀ n, P5554117209249462426.a n = A352729 n

end A352729

/-!
# A352733: Least number k such that the total number of parts in all partitions of k into consecutive parts is a record.

The programs for A352733, there is no canonical definition to state claims against.
-/

/-! ## A352733.P5827241543417629769

`record[A000217(∑[n²]+4)%(n+1)]+n+1`
-/

namespace A352733.P5827241543417629769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (∑ j ∈ Finset.range (n + 1), f2 j + 4)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A352733.P5827241543417629769

/-! ## A352733.P15674802339841656216

`or(A040001(n)², A007187(n+2))`
-/

namespace A352733.P15674802339841656216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 n ^ 2) (A007187 (n + 2))

end

end A352733.P15674802339841656216

/-! ## A352733.P17011831948513832434

`or(A107279(n)², A007187(n+2))`
-/

namespace A352733.P17011831948513832434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107279 n ^ 2) (A007187 (n + 2))

end

end A352733.P17011831948513832434

/-! ## A352733.P17189299872742443153

`or(A134451(n)², A007187(n+2))`
-/

namespace A352733.P17189299872742443153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 n ^ 2) (A007187 (n + 2))

end

end A352733.P17189299872742443153

/-! ## A352733.P10023252244994617724

`A351388(n+3)+A005094(n+4)`
-/

namespace A352733.P10023252244994617724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351388 (n + 3) + A005094 (n + 4)

end

end A352733.P10023252244994617724

/-!
# A352734: Records of the total number of parts in all partitions of a positive integer into consecutive parts.

The programs for A352734, there is no canonical definition to state claims against.
-/

/-! ## A352734.P5210736411205106103

`A204217(A352733(n+1))`
-/

namespace A352734.P5210736411205106103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (A352733 (n + 1)).toNat

end

end A352734.P5210736411205106103

/-! ## A352734.P1892583562596740579

`record[A338616(n+1)/2]`
-/

namespace A352734.P1892583562596740579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352734.P1892583562596740579

/-! ## A352734.P15859764266324684323

`A001281(record[A338616(n+1)])`
-/

namespace A352734.P15859764266324684323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352734.P15859764266324684323

/-! ## A352734.P1467345197017520574

`A004525(record[A338616(n+1)])`
-/

namespace A352734.P1467345197017520574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352734.P1467345197017520574

/-! ## A352734.P18368881846527941792

`record[A204217(n+1)]`
-/

namespace A352734.P18368881846527941792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352734.P18368881846527941792

/-!
# A352735: Lucky numbers in Chinese: Numbers whose decimal expansion contains 8 but not 4.

The programs for A352735, the canonical program `A352735.P7182467444972131953` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352735 has offset 1).

The definition of A352735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352735.P7182467444972131953

`∩[A011538(n+1), A052406(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A352735

/-- `∩[A011538(n+1), A052406(n+1)]` -/
def P7182467444972131953.Spec : Prop :=
  ∀ n, (P7182467444972131953.a n : ℤ) = A352735 (n + 1)

theorem P7182467444972131953.correct : P7182467444972131953.Spec := by
  intro n
  simp only [A352735, Nat.add_sub_cancel]

end A352735

/-! ## A352735.P14635152974087328676

`eq[8, A054055(A222244(n))]`
-/

namespace A352735.P14635152974087328676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352735.P14635152974087328676

namespace A352735

/-- `eq[8, A054055(A222244(n))]` -/
def P14635152974087328676.Spec : Prop :=
  ∀ n, (P14635152974087328676.a n : ℤ) = A352735 (n + 1)

end A352735

/-! ## A352735.P3168153150209599721

`record[A004179(A011538(n+1))]`
-/

namespace A352735.P3168153150209599721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A011538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352735.P3168153150209599721

namespace A352735

/-- `record[A004179(A011538(n+1))]` -/
def P3168153150209599721.Spec : Prop :=
  ∀ n, P3168153150209599721.a n = A352735 (n + 1)

end A352735

/-! ## A352735.P12328949424132174200

`record[A004179(lt[A004183(n), n])]`
-/

namespace A352735.P12328949424132174200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352735.P12328949424132174200

namespace A352735

/-- `record[A004179(lt[A004183(n), n])]` -/
def P12328949424132174200.Spec : Prop :=
  ∀ n, P12328949424132174200.a n = A352735 (n + 1)

end A352735

/-! ## A352735.P16848752472138312604

`A242491(A337239(n+1))`
-/

namespace A352735.P16848752472138312604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242491 (A337239 (n + 1)).toNat

end

end A352735.P16848752472138312604

namespace A352735

/-- `A242491(A337239(n+1))` -/
def P16848752472138312604.Spec : Prop :=
  ∀ n, P16848752472138312604.a n = A352735 (n + 1)

end A352735

/-!
# A352736: a(n) is the smallest b >= 2 such that 1 + Sum_{k=0..n} b^(2^k) is prime, or 1 if no such b exists.

The programs for A352736, there is no canonical definition to state claims against.
-/

/-! ## A352736.P8735757920505078114

`A219347(or(7, A231495(n)))`
-/

namespace A352736.P8735757920505078114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (Int.lor 7 (A231495 n)).toNat

end

end A352736.P8735757920505078114

/-! ## A352736.P398184597273114070

`A318683(A099398(n))+A000161(n)`
-/

namespace A352736.P398184597273114070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318683 (A099398 n).toNat + A000161 n

end

end A352736.P398184597273114070

/-! ## A352736.P6790819059932037349

`A264977(A064098(n+1)+A064060(n+2))`
-/

namespace A352736.P6790819059932037349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 (A064098 (n + 1) + A064060 (n + 2)).toNat

end

end A352736.P6790819059932037349

/-!
# A352737: Number of oriented two-component rational links (or two-bridge links) with crossing number n (a chiral pair is counted as two distinct ones).

The programs for A352737, the canonical program `A352737.P15913068195670802469` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352737 has offset 2).

The definition of A352737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352737.P15913068195670802469

`a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=0, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352737

/-- `a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P15913068195670802469.Spec : Prop :=
  ∀ n, P15913068195670802469.a n = A352737 (n + 2)

theorem P15913068195670802469.correct : P15913068195670802469.Spec := by
  intro n
  simp only [A352737, Nat.add_sub_cancel]

end A352737

/-! ## A352737.P12651532799971836348

`(2^n+(-1)^(n+2)*2)/3+((-1)^(n+2)+1)*2^((n-2)/2)`
-/

namespace A352737.P12651532799971836348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 ^ n : ℤ) + (-1) ^ (n + 2) * 2 : ℚ) / 3 : ℝ) + ((-1) ^ (n + 2) + 1 : ℝ) * (2 : ℝ) ^ (((n : ℤ) - 2 : ℚ) / 2 : ℝ)

end

end A352737.P12651532799971836348

namespace A352737

/-- `(2^n+(-1)^(n+2)*2)/3+((-1)^(n+2)+1)*2^((n-2)/2)` -/
def P12651532799971836348.Spec : Prop :=
  ∀ n, P12651532799971836348.a n = (A352737 (n + 2) : ℝ)

end A352737

/-! ## A352737.P18269144308511152544

`ogf((2-2x-4x^2+2x^3)/(1-x-4x^2+2x^3+4x^4))`
-/

namespace A352737.P18269144308511152544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -4, 2] [1, -1, -4, 2, 4] n

end

end A352737.P18269144308511152544

namespace A352737

/-- `ogf((2-2x-4x^2+2x^3)/(1-x-4x^2+2x^3+4x^4))` -/
def P18269144308511152544.Spec : Prop :=
  ∀ n, P18269144308511152544.a n = A352737 (n + 2)

end A352737

/-! ## A352737.P3050329499778404037

`Δ[∏[gcd(2, n+1)]+round(2^n/3)]`
-/

namespace A352737.P3050329499778404037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352737.P3050329499778404037

namespace A352737

/-- `Δ[∏[gcd(2, n+1)]+round(2^n/3)]` -/
def P3050329499778404037.Spec : Prop :=
  ∀ n, P3050329499778404037.a n = A352737 (n + 2)

end A352737

/-!
# A352738: Squares in A086849.

The programs for A352738, there is no canonical definition to state claims against.
-/

/-! ## A352738.P9669452761874407191

`∩[A086849(n+1), n²]`
-/

namespace A352738.P9669452761874407191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086849 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A352738.P9669452761874407191

/-! ## A352738.P9420836124065707008

`A132295(A065992(n+1))`
-/

namespace A352738.P9420836124065707008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132295 (A065992 (n + 1)).toNat

end

end A352738.P9420836124065707008

/-!
# A352740: Irregular table T(n, k) read by rows; the n-th row contains, in ascending order, the numbers k < n such that for any base b >= 2, the sum of digits of n and k in base b are different.

The programs for A352740, there is no canonical definition to state claims against.
-/

/-! ## A352740.P9102466408769170138

`A039915(A141568(n+1))%A029644(n)`
-/

namespace A352740.P9102466408769170138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039915 (A141568 (n + 1)).toNat) (A029644 n)

end

end A352740.P9102466408769170138

/-! ## A352740.P17981302811163439509

`and(A065033(n), A312096(A129696(n+1)))`
-/

namespace A352740.P17981302811163439509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065033 n) (A312096 (A129696 (n + 1)).toNat)

end

end A352740.P17981302811163439509

/-! ## A352740.P12820928459601636574

`and(ceil(n/2), A250116(A028310(n)))`
-/

namespace A352740.P12820928459601636574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(n : ℚ) / 2⌉ (A250116 (A028310 n).toNat)

end

end A352740.P12820928459601636574

/-! ## A352740.P9918483816281948893

`(A050281(n+1)-1)%A005185(n+1)`
-/

namespace A352740.P9918483816281948893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050281 (n + 1) - 1) (A005185 (n + 1))

end

end A352740.P9918483816281948893

/-! ## A352740.P12833261356026604780

`and(A128402(2*n+5)*A340606(n+1), round(2*n/3))`
-/

namespace A352740.P12833261356026604780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128402 (2 * n + 5) * A340606 (n + 1)) (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)))

end

end A352740.P12833261356026604780

/-!
# A352741: Numbers on the Spiral of Theodorus that come closer to the x-axis than their neighbors; a(0) = 0 and a(1) = 1.

The programs for A352741, there is no canonical definition to state claims against.
-/

/-! ## A352741.P1129175521999163182

`floor(∑[atan(A057671(n+1))]²)`
-/

namespace A352741.P1129175521999163182
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A057671 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A352741.P1129175521999163182

/-! ## A352741.P8828052237097725554

`floor(∑[atan((n+1)^3-(A228272(n+1)+1))]²)`
-/

namespace A352741.P8828052237097725554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (((n + 1) ^ 3 : ℤ) - (A228272 (n + 1) + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A352741.P8828052237097725554

/-! ## A352741.P2453767597018640746

`round(∑[atan(A091707(n+1))]²)`
-/

namespace A352741.P2453767597018640746
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A091707 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A352741.P2453767597018640746

/-! ## A352741.P11331633327378309388

`A005476(n)-A048766(A033488(n))`
-/

namespace A352741.P11331633327378309388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n - A048766 (A033488 n).toNat

end

end A352741.P11331633327378309388

/-! ## A352741.P13892478831424902446

`round(∑[atan(A295225(2*n+3))]²)`
-/

namespace A352741.P13892478831424902446
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A295225 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A352741.P13892478831424902446

/-!
# A352743: a(n) = Product_{k=1..n} (p(k+1) + p(k))/(p(k+1) - p(k)), where p(k) = prime(k).

The programs for A352743, the canonical program `A352743.P13088174179551840130` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352743 has offset 0).

The definition of A352743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352743.P13088174179551840130

`a(n-1)*(A000040(n+1)+A000040(n))/(A000040(n+1)-A000040(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A352743

/-- `a(n-1)*(A000040(n+1)+A000040(n))/(A000040(n+1)-A000040(n))` -/
def P13088174179551840130.Spec : Prop :=
  ∀ n, P13088174179551840130.a n = (A352743 n : ℚ)

end A352743

/-! ## A352743.P8274329080612316668

`A018412(A250120(n))*A283877(n)`
-/

namespace A352743.P8274329080612316668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A250120 n).toNat * A283877 n

end

end A352743.P8274329080612316668

namespace A352743

/-- `A018412(A250120(n))*A283877(n)` -/
def P8274329080612316668.Spec : Prop :=
  ∀ n, P8274329080612316668.a n = A352743 n

end A352743

/-!
# A352744: Array read by ascending antidiagonals. Generalized Fibonacci numbers F(n, k) = (psi^k*(phi - n) - phi^k*(psi - n)) / (phi - psi) where phi = (1 + sqrt(5))/2 and psi = (1 - sqrt(5))/2. F(n, k) for n >= 0 and k >= 0.

The programs for A352744, the canonical program `A352744.P9010724261724988530` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352744 has offset 0).

The definition of A352744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352744.P9010724261724988530

`(row(n)-col(n)-1)*A000045(col(n))+A000045(col(n)+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A352744

/-- `(row(n)-col(n)-1)*A000045(col(n))+A000045(col(n)+1)` -/
def P9010724261724988530.Spec : Prop :=
  ∀ n, P9010724261724988530.a n = A352744 n

theorem P9010724261724988530.correct : P9010724261724988530.Spec := by
  intro n
  simp only [A352744]

end A352744

/-! ## A352744.P6958021338167338995

`A292030(comp[∑[n]])-A292030(n)`
-/

namespace A352744.P6958021338167338995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292030 n

end

end A352744.P6958021338167338995

namespace A352744

/-- `A292030(comp[∑[n]])-A292030(n)` -/
def P6958021338167338995.Spec : Prop :=
  ∀ n, P6958021338167338995.a n = A352744 n

end A352744

/-! ## A352744.P5280164303225514924

`A117501(n+1)-A141169(n)`
-/

namespace A352744.P5280164303225514924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 (n + 1) - A141169 n

end

end A352744.P5280164303225514924

namespace A352744

/-- `A117501(n+1)-A141169(n)` -/
def P5280164303225514924.Spec : Prop :=
  ∀ n, P5280164303225514924.a n = A352744 n

theorem P5280164303225514924.correct : P5280164303225514924.Spec := by
  intro n
  simp only [A352744, Nat.add_sub_cancel, A352744.P5280164303225514924.a, A352744.P9010724261724988530.a, A000045, A000045.P11838749114346432762.a, A117501, A117501.P18074844376975616405.a, A141169, A141169.P5864777374650614929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352744

/-! ## A352744.P7008838564035208532

`A117501(n+1)-A000045(A002262(n))`
-/

namespace A352744.P7008838564035208532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 (n + 1) - A000045 (A002262 n).toNat

end

end A352744.P7008838564035208532

namespace A352744

/-- `A117501(n+1)-A000045(A002262(n))` -/
def P7008838564035208532.Spec : Prop :=
  ∀ n, P7008838564035208532.a n = A352744 n

end A352744

/-! ## A352744.P17874904024219277970

`A117501(n+1)-A212804(A002260(n+1))`
-/

namespace A352744.P17874904024219277970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 (n + 1) - A212804 (A002260 (n + 1)).toNat

end

end A352744.P17874904024219277970

namespace A352744

/-- `A117501(n+1)-A212804(A002260(n+1))` -/
def P17874904024219277970.Spec : Prop :=
  ∀ n, P17874904024219277970.a n = A352744 n

end A352744

/-! ## A352744.P10382168830793439921

`A104763(n+1)+A117501(n+1)-A193588(n)`
-/

namespace A352744.P10382168830793439921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + (A117501 (n + 1) - A193588 n)

end

end A352744.P10382168830793439921

namespace A352744

/-- `A104763(n+1)+A117501(n+1)-A193588(n)` -/
def P10382168830793439921.Spec : Prop :=
  ∀ n, P10382168830793439921.a n = A352744 n

end A352744

/-! ## A352744.P8412077174990634918

`2*A117501(n+1)-A117501(A014132(n+1))`
-/

namespace A352744.P8412077174990634918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117501 (n + 1) - A117501 (A014132 (n + 1)).toNat

end

end A352744.P8412077174990634918

namespace A352744

/-- `2*A117501(n+1)-A117501(A014132(n+1))` -/
def P8412077174990634918.Spec : Prop :=
  ∀ n, P8412077174990634918.a n = A352744 n

end A352744

/-! ## A352744.P9094469640201964864

`A109754(comp[∑[n]])-A141169(n)`
-/

namespace A352744.P9094469640201964864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A141169 n

end

end A352744.P9094469640201964864

namespace A352744

/-- `A109754(comp[∑[n]])-A141169(n)` -/
def P9094469640201964864.Spec : Prop :=
  ∀ n, P9094469640201964864.a n = A352744 n

end A352744

/-! ## A352744.P5643131950048370726

`A093873(A099627(n))-A141169(n)`
-/

namespace A352744.P5643131950048370726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A099627 n).toNat - A141169 n

end

end A352744.P5643131950048370726

namespace A352744

/-- `A093873(A099627(n))-A141169(n)` -/
def P5643131950048370726.Spec : Prop :=
  ∀ n, P5643131950048370726.a n = A352744 n

end A352744

/-!
# A352745: a(n) is the number of Lyndon factors of the Fibonacci string of length n.

The programs for A352745, there is no canonical definition to state claims against.
-/

/-! ## A352745.P14536866409488605566

`a(xor(1, n)-3)+2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A352745.P14536866409488605566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  a (Nat.xor 1 n - 3) + 2

end

end A352745.P14536866409488605566

/-! ## A352745.P11658355741380982000

`a(n-2)+gcd(2, n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A352745.P11658355741380982000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  a (n - 2) + Nat.gcd 2 n

end

end A352745.P11658355741380982000

/-! ## A352745.P16434533093655324969

`comp[3*(n+2)]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A352745.P16434533093655324969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A352745.P16434533093655324969

/-! ## A352745.P4517335024882329350

`a(n-2)-or(n, -2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A352745.P4517335024882329350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2] fun n a =>
  a (n - 2) - Int.lor (n : ℤ) (-2)

end

end A352745.P4517335024882329350

/-! ## A352745.P13578379720072386833

`ceil((gcd(n-3, n%2)+n-1)/2)`
-/

namespace A352745.P13578379720072386833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Int.gcd ((n : ℤ) - 3) ((n % 2 : ℕ) : ℤ) : ℤ) + ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A352745.P13578379720072386833

/-!
# A352746: a(n) is the number of Lyndon factors of the Thue-Morse string of length n.

The programs for A352746, there is no canonical definition to state claims against.
-/

/-! ## A352746.P11403799084069504519

`A359121(n+1)+A257725(A007088(n))%2`
-/

namespace A352746.P11403799084069504519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359121 (n + 1) + Int.tmod (A257725 (A007088 n).toNat) 2

end

end A352746.P11403799084069504519

/-! ## A352746.P16520358192168100552

`A063962(A116406(n))+A000196(n)`
-/

namespace A352746.P16520358192168100552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A116406 n).toNat + A000196 n

end

end A352746.P16520358192168100552

/-! ## A352746.P9431540654568473232

`A064547(A054589(n+1)*A133263(n))`
-/

namespace A352746.P9431540654568473232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A054589 (n + 1) * A133263 n).toNat

end

end A352746.P9431540654568473232

/-! ## A352746.P3686549370189297700

`A002024(n+1)-A357732(A011534(n+4))`
-/

namespace A352746.P3686549370189297700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A357732 (A011534 (n + 4)).toNat

end

end A352746.P3686549370189297700

/-! ## A352746.P2147352613176682674

`A379731(A079150(n+1))`
-/

namespace A352746.P2147352613176682674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379731 (A079150 (n + 1)).toNat

end

end A352746.P2147352613176682674

/-!
# A352747: Array read by ascending antidiagonals. A(n, k) = F(k, n) mod n for n >= 1 and k >= 0, where F(n, k) = A352744(n, k) are the Fibonacci numbers, A(0, k) = 1 for k >= 0.

The programs for A352747, there is no canonical definition to state claims against.
-/

/-! ## A352747.P17402182702599743290

`and(A105422(n), A141214(A073254(n)))`
-/

namespace A352747.P17402182702599743290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105422 n) (A141214 (A073254 n).toNat)

end

end A352747.P17402182702599743290

/-! ## A352747.P13745858980700376681

`A215887(A109077(n)^A235508(n+1))`
-/

namespace A352747.P13745858980700376681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway ((A109077 n : ℚ) ^ (A235508 (n + 1) : ℤ))).toNat

end

end A352747.P13745858980700376681

/-! ## A352747.P18362576851586110352

`A330015(A109077(n)^A001221(n+1)+1)`
-/

namespace A352747.P18362576851586110352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330015 (SequenceMachineLib.roundAway ((A109077 n : ℚ) ^ (A001221 (n + 1) : ℤ) + 1)).toNat

end

end A352747.P18362576851586110352

/-! ## A352747.P10373398873019175210

`A248327(10*A109077(n)^A235508(n+1))`
-/

namespace A352747.P10373398873019175210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (SequenceMachineLib.roundAway (10 * (A109077 n : ℚ) ^ (A235508 (n + 1) : ℤ))).toNat

end

end A352747.P10373398873019175210

/-! ## A352747.P6282209286689889414

`and(A065650(A220147(n+1)), A105422(n))`
-/

namespace A352747.P6282209286689889414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065650 (A220147 (n + 1)).toNat) (A105422 n)

end

end A352747.P6282209286689889414

/-!
# A352748: Indices k of tribonacci numbers T(k) such that T(k+1) - (tribonacci constant)*T(k) is negative.

The programs for A352748, there is no canonical definition to state claims against.
-/

/-! ## A352748.P6190072177186535293

`lt[1, A105580(n+2)]`
-/

namespace A352748.P6190072177186535293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105580 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352748.P6190072177186535293

/-! ## A352748.P2520600963178221017

`lt[A057597(n+4), A003415(n)]`
-/

namespace A352748.P2520600963178221017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352748.P2520600963178221017

/-! ## A352748.P4928301908375617608

`lt[A057597(n+4), A057215(n)]`
-/

namespace A352748.P4928301908375617608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352748.P4928301908375617608

/-! ## A352748.P6803389311964275686

`lt[A057597(n+4), A334820(n)]`
-/

namespace A352748.P6803389311964275686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352748.P6803389311964275686

/-! ## A352748.P14487267331594965100

`comp[A352719(n+1)]`
-/

namespace A352748.P14487267331594965100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352748.P14487267331594965100

/-!
# A352749: a(n) = pi(n) * (pi(2n-1) - pi(n-1)).

The programs for A352749, the canonical program `A352749.P9390807807202768394` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352749 has offset 1).

The definition of A352749 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352749.P9390807807202768394

`A000720(n+1)*A035250(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352749

/-- `A000720(n+1)*A035250(n+1)` -/
def P9390807807202768394.Spec : Prop :=
  ∀ n, P9390807807202768394.a n = A352749 (n + 1)

theorem P9390807807202768394.correct : P9390807807202768394.Spec := by
  intro n
  simp only [A352749, Nat.add_sub_cancel]

end A352749

/-! ## A352749.P3729889434553957136

`A000720(n+1)*A056171(2*n+1)`
-/

namespace A352749.P3729889434553957136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A056171 (2 * n + 1)

end

end A352749.P3729889434553957136

namespace A352749

/-- `A000720(n+1)*A056171(2*n+1)` -/
def P3729889434553957136.Spec : Prop :=
  ∀ n, P3729889434553957136.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P5035720743202376565

`∑[char[record[A000010(n+1)]]]*A035250(n+1)`
-/

namespace A352749.P5035720743202376565
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035250 (n + 1)

end

end A352749.P5035720743202376565

namespace A352749

/-- `∑[char[record[A000010(n+1)]]]*A035250(n+1)` -/
def P5035720743202376565.Spec : Prop :=
  ∀ n, P5035720743202376565.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P12620428941863692301

`∑[char[A000040(n+1)-1]]*A035250(n+1)`
-/

namespace A352749.P12620428941863692301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035250 (n + 1)

end

end A352749.P12620428941863692301

namespace A352749

/-- `∑[char[A000040(n+1)-1]]*A035250(n+1)` -/
def P12620428941863692301.Spec : Prop :=
  ∀ n, P12620428941863692301.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P4340840890429573693

`∑[char[A006530(n+2)-1]]*A035250(n+1)`
-/

namespace A352749.P4340840890429573693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035250 (n + 1)

end

end A352749.P4340840890429573693

namespace A352749

/-- `∑[char[A006530(n+2)-1]]*A035250(n+1)` -/
def P4340840890429573693.Spec : Prop :=
  ∀ n, P4340840890429573693.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P17268280949730374844

`∑[char[A020639(n+2)-1]]*A035250(n+1)`
-/

namespace A352749.P17268280949730374844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035250 (n + 1)

end

end A352749.P17268280949730374844

namespace A352749

/-- `∑[char[A020639(n+2)-1]]*A035250(n+1)` -/
def P17268280949730374844.Spec : Prop :=
  ∀ n, P17268280949730374844.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P17628091268845319040

`∑[char[record[A000010(n+1)]]]*A056171(2*n+1)`
-/

namespace A352749.P17628091268845319040
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056171 (2 * n + 1)

end

end A352749.P17628091268845319040

namespace A352749

/-- `∑[char[record[A000010(n+1)]]]*A056171(2*n+1)` -/
def P17628091268845319040.Spec : Prop :=
  ∀ n, P17628091268845319040.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P9815285960015257607

`∑[1-char[A018252(n+1)-1]]*A035250(n+1)`
-/

namespace A352749.P9815285960015257607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A035250 (n + 1)

end

end A352749.P9815285960015257607

namespace A352749

/-- `∑[1-char[A018252(n+1)-1]]*A035250(n+1)` -/
def P9815285960015257607.Spec : Prop :=
  ∀ n, P9815285960015257607.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P13163225999285458012

`∑[char[A000040(n+1)-1]]*A056171(2*n+1)`
-/

namespace A352749.P13163225999285458012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056171 (2 * n + 1)

end

end A352749.P13163225999285458012

namespace A352749

/-- `∑[char[A000040(n+1)-1]]*A056171(2*n+1)` -/
def P13163225999285458012.Spec : Prop :=
  ∀ n, P13163225999285458012.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P15535137699876550330

`(A099802(n+1)-A230980(n))*A000720(n+1)`
-/

namespace A352749.P15535137699876550330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099802 (n + 1) - A230980 n) * A000720 (n + 1)

end

end A352749.P15535137699876550330

namespace A352749

/-- `(A099802(n+1)-A230980(n))*A000720(n+1)` -/
def P15535137699876550330.Spec : Prop :=
  ∀ n, P15535137699876550330.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P16565347317765524327

`∑[val(A000040(A000005(n+1)), 3)]*A035250(n+1)`
-/

namespace A352749.P16565347317765524327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A000005 (n + 1)).toNat).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035250 (n + 1)

end

end A352749.P16565347317765524327

namespace A352749

/-- `∑[val(A000040(A000005(n+1)), 3)]*A035250(n+1)` -/
def P16565347317765524327.Spec : Prop :=
  ∀ n, P16565347317765524327.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P2929428359523836810

`(A060715(n+1)+A010051(n+1))*A000720(n+1)`
-/

namespace A352749.P2929428359523836810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060715 (n + 1) + A010051 (n + 1)) * A000720 (n + 1)

end

end A352749.P2929428359523836810

namespace A352749

/-- `(A060715(n+1)+A010051(n+1))*A000720(n+1)` -/
def P2929428359523836810.Spec : Prop :=
  ∀ n, P2929428359523836810.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P12147585144515508979

`(A108954(n+1)+A010051(n+1))*A000720(n+1)`
-/

namespace A352749.P12147585144515508979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108954 (n + 1) + A010051 (n + 1)) * A000720 (n + 1)

end

end A352749.P12147585144515508979

namespace A352749

/-- `(A108954(n+1)+A010051(n+1))*A000720(n+1)` -/
def P12147585144515508979.Spec : Prop :=
  ∀ n, P12147585144515508979.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P7506058822288098609

`(A080339(n+1)+A060715(n+1))*A000720(n+1)`
-/

namespace A352749.P7506058822288098609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080339 (n + 1) + A060715 (n + 1)) * A000720 (n + 1)

end

end A352749.P7506058822288098609

namespace A352749

/-- `(A080339(n+1)+A060715(n+1))*A000720(n+1)` -/
def P7506058822288098609.Spec : Prop :=
  ∀ n, P7506058822288098609.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P6461824871829694243

`A128913(n+1)-A000720(n+1)*A307989(n+1)`
-/

namespace A352749.P6461824871829694243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - A000720 (n + 1) * A307989 (n + 1)

end

end A352749.P6461824871829694243

namespace A352749

/-- `A128913(n+1)-A000720(n+1)*A307989(n+1)` -/
def P6461824871829694243.Spec : Prop :=
  ∀ n, P6461824871829694243.a n = A352749 (n + 1)

theorem P6461824871829694243.correct : P6461824871829694243.Spec := by
  intro n
  simp only [A352749, Nat.add_sub_cancel, A352749.P6461824871829694243.a, A352749.P9390807807202768394.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A035250, A035250.P3307557265857479001.f1, A035250.P3307557265857479001.a, A128913, A128913.P17301333717528200460.a, A307989, A307989.P9420988974038816448.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352749

/-! ## A352749.P5736750388721192534

`(A099801(n+1)-A035250(n+2))*A035250(n+1)`
-/

namespace A352749.P5736750388721192534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099801 (n + 1) - A035250 (n + 2)) * A035250 (n + 1)

end

end A352749.P5736750388721192534

namespace A352749

/-- `(A099801(n+1)-A035250(n+2))*A035250(n+1)` -/
def P5736750388721192534.Spec : Prop :=
  ∀ n, P5736750388721192534.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P10466229748864537133

`A035250(n+1)*A230980(n+1)`
-/

namespace A352749.P10466229748864537133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) * A230980 (n + 1)

end

end A352749.P10466229748864537133

namespace A352749

/-- `A035250(n+1)*A230980(n+1)` -/
def P10466229748864537133.Spec : Prop :=
  ∀ n, P10466229748864537133.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P10937657110052733239

`(A099802(n+1)-A230980(n))*A230980(n+1)`
-/

namespace A352749.P10937657110052733239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099802 (n + 1) - A230980 n) * A230980 (n + 1)

end

end A352749.P10937657110052733239

namespace A352749

/-- `(A099802(n+1)-A230980(n))*A230980(n+1)` -/
def P10937657110052733239.Spec : Prop :=
  ∀ n, P10937657110052733239.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P11823249631783477083

`(A099802(n+2)-A035250(n+2))*A035250(n+1)`
-/

namespace A352749.P11823249631783477083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099802 (n + 2) - A035250 (n + 2)) * A035250 (n + 1)

end

end A352749.P11823249631783477083

namespace A352749

/-- `(A099802(n+2)-A035250(n+2))*A035250(n+1)` -/
def P11823249631783477083.Spec : Prop :=
  ∀ n, P11823249631783477083.a n = A352749 (n + 1)

end A352749

/-! ## A352749.P11130227651486913024

`A035250(n+1)*A056172(2*(n+1))`
-/

namespace A352749.P11130227651486913024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) * A056172 (2 * (n + 1))

end

end A352749.P11130227651486913024

namespace A352749

/-- `A035250(n+1)*A056172(2*(n+1))` -/
def P11130227651486913024.Spec : Prop :=
  ∀ n, P11130227651486913024.a n = A352749 (n + 1)

end A352749

/-!
# A352750: a(n) = binary complement of b(n-1) AND b(n); a(1) = 1, where b(n) = A109812(n).

The programs for A352750, there is no canonical definition to state claims against.
-/

/-! ## A352750.P5328263348722875059

`A035327(A353240(n)%A080335(n))`
-/

namespace A352750.P5328263348722875059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (A353240 n) (A080335 n)).toNat

end

end A352750.P5328263348722875059

/-!
# A352753: a(n) = (pi(2n-1) - pi(n-1)) * Sum_{p <= n, p prime} p.

The programs for A352753, the canonical program `A352753.P3714199880856668914` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352753 has offset 1).

The definition of A352753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352753.P3714199880856668914

`A035250(n+1)*A034387(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352753

/-- `A035250(n+1)*A034387(n+1)` -/
def P3714199880856668914.Spec : Prop :=
  ∀ n, P3714199880856668914.a n = A352753 (n + 1)

theorem P3714199880856668914.correct : P3714199880856668914.Spec := by
  intro n
  simp only [A352753, Nat.add_sub_cancel]

end A352753

/-! ## A352753.P4681889118377003216

`A352775(n+1)-A352754(n+1)`
-/

namespace A352753.P4681889118377003216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352775 (n + 1) - A352754 (n + 1)

end

end A352753.P4681889118377003216

namespace A352753

/-- `A352775(n+1)-A352754(n+1)` -/
def P4681889118377003216.Spec : Prop :=
  ∀ n, P4681889118377003216.a n = A352753 (n + 1)

theorem P4681889118377003216.correct : P4681889118377003216.Spec := by
  intro n
  simp only [A352753, Nat.add_sub_cancel, A352753.P4681889118377003216.a, A352753.P3714199880856668914.a, A034387, A034387.P4934732080317010833.a, A035250, A035250.P3307557265857479001.f1, A035250.P3307557265857479001.a, A352754, A352754.P7186785389553064570.a, A352775, A352775.P2048892064585624364.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A073837, A073837.P15829496930880543402.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A101264, A101264.P9977125953316836564.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A063955, A063955.P15955011138369882518.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352753

/-! ## A352753.P18101941824608085677

`∑[∑{p}[n+1, C(#, n)]]*A056171(2*n+1)`
-/

namespace A352753.P18101941824608085677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A056171 (2 * n + 1)

end

end A352753.P18101941824608085677

namespace A352753

/-- `∑[∑{p}[n+1, C(#, n)]]*A056171(2*n+1)` -/
def P18101941824608085677.Spec : Prop :=
  ∀ n, P18101941824608085677.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P12820678248617832913

`(1-A307989(n+1)+n)*∑[∑{p}[n+1, C(#, n)]]`
-/

namespace A352753.P12820678248617832913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A307989 (n + 1) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352753.P12820678248617832913

namespace A352753

/-- `(1-A307989(n+1)+n)*∑[∑{p}[n+1, C(#, n)]]` -/
def P12820678248617832913.Spec : Prop :=
  ∀ n, P12820678248617832913.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P6389647368004106703

`A034387(n+1)*A035250(n+1)`
-/

namespace A352753.P6389647368004106703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) * A035250 (n + 1)

end

end A352753.P6389647368004106703

namespace A352753

/-- `A034387(n+1)*A035250(n+1)` -/
def P6389647368004106703.Spec : Prop :=
  ∀ n, P6389647368004106703.a n = A352753 (n + 1)

theorem P6389647368004106703.correct : P6389647368004106703.Spec := by
  intro n
  simp only [A352753, Nat.add_sub_cancel, A352753.P6389647368004106703.a, A352753.P3714199880856668914.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A352753

/-! ## A352753.P8722786340374465766

`∑[A061397(n+1)]*A035250(n+1)`
-/

namespace A352753.P8722786340374465766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A035250 (n + 1)

end

end A352753.P8722786340374465766

namespace A352753

/-- `∑[A061397(n+1)]*A035250(n+1)` -/
def P8722786340374465766.Spec : Prop :=
  ∀ n, P8722786340374465766.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P17763909621969827982

`A034387(n+1)*A056171(2*n+1)`
-/

namespace A352753.P17763909621969827982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) * A056171 (2 * n + 1)

end

end A352753.P17763909621969827982

namespace A352753

/-- `A034387(n+1)*A056171(2*n+1)` -/
def P17763909621969827982.Spec : Prop :=
  ∀ n, P17763909621969827982.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P13650018743399628149

`(∑[C(A006530(n+1), n)]-1)*A035250(n+1)`
-/

namespace A352753.P13650018743399628149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A035250 (n + 1)

end

end A352753.P13650018743399628149

namespace A352753

/-- `(∑[C(A006530(n+1), n)]-1)*A035250(n+1)` -/
def P13650018743399628149.Spec : Prop :=
  ∀ n, P13650018743399628149.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P10693570516371056159

`(∑[C(A020639(n+1), n)]-1)*A035250(n+1)`
-/

namespace A352753.P10693570516371056159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A035250 (n + 1)

end

end A352753.P10693570516371056159

namespace A352753

/-- `(∑[C(A020639(n+1), n)]-1)*A035250(n+1)` -/
def P10693570516371056159.Spec : Prop :=
  ∀ n, P10693570516371056159.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P5519106953951551669

`∑[(n+1)*char[A000040(n+1)-1]]*A035250(n+1)`
-/

namespace A352753.P5519106953951551669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035250 (n + 1)

end

end A352753.P5519106953951551669

namespace A352753

/-- `∑[(n+1)*char[A000040(n+1)-1]]*A035250(n+1)` -/
def P5519106953951551669.Spec : Prop :=
  ∀ n, P5519106953951551669.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P14307187353284409015

`(∑[(n+1)*C(A000010(n+1), n)]-1)*A035250(n+1)`
-/

namespace A352753.P14307187353284409015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A035250 (n + 1)

end

end A352753.P14307187353284409015

namespace A352753

/-- `(∑[(n+1)*C(A000010(n+1), n)]-1)*A035250(n+1)` -/
def P14307187353284409015.Spec : Prop :=
  ∀ n, P14307187353284409015.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P8780784548491893008

`(∑[(n+1)*C(n+2, A000203(n+1))]-2)*A035250(n+1)`
-/

namespace A352753.P8780784548491893008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 2) (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * A035250 (n + 1)

end

end A352753.P8780784548491893008

namespace A352753

/-- `(∑[(n+1)*C(n+2, A000203(n+1))]-2)*A035250(n+1)` -/
def P8780784548491893008.Spec : Prop :=
  ∀ n, P8780784548491893008.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P4831500654636983116

`(A060715(n+1)+A010051(n+1))*A034387(n+1)`
-/

namespace A352753.P4831500654636983116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060715 (n + 1) + A010051 (n + 1)) * A034387 (n + 1)

end

end A352753.P4831500654636983116

namespace A352753

/-- `(A060715(n+1)+A010051(n+1))*A034387(n+1)` -/
def P4831500654636983116.Spec : Prop :=
  ∀ n, P4831500654636983116.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P10983342661579709196

`(A108954(n+1)+A010051(n+1))*A034387(n+1)`
-/

namespace A352753.P10983342661579709196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108954 (n + 1) + A010051 (n + 1)) * A034387 (n + 1)

end

end A352753.P10983342661579709196

namespace A352753

/-- `(A108954(n+1)+A010051(n+1))*A034387(n+1)` -/
def P10983342661579709196.Spec : Prop :=
  ∀ n, P10983342661579709196.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P1545200016406101777

`A035250(n+1)*A063960(2*(n+1))`
-/

namespace A352753.P1545200016406101777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) * A063960 (2 * (n + 1))

end

end A352753.P1545200016406101777

namespace A352753

/-- `A035250(n+1)*A063960(2*(n+1))` -/
def P1545200016406101777.Spec : Prop :=
  ∀ n, P1545200016406101777.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P9437627752096949407

`A056171(2*n+1)*A063960(2*(n+1))`
-/

namespace A352753.P9437627752096949407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * n + 1) * A063960 (2 * (n + 1))

end

end A352753.P9437627752096949407

namespace A352753

/-- `A056171(2*n+1)*A063960(2*(n+1))` -/
def P9437627752096949407.Spec : Prop :=
  ∀ n, P9437627752096949407.a n = A352753 (n + 1)

end A352753

/-! ## A352753.P15731697758501411866

`A352775(n+1)-A000720(n+1)*A073837(n+1)`
-/

namespace A352753.P15731697758501411866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352775 (n + 1) - A000720 (n + 1) * A073837 (n + 1)

end

end A352753.P15731697758501411866

namespace A352753

/-- `A352775(n+1)-A000720(n+1)*A073837(n+1)` -/
def P15731697758501411866.Spec : Prop :=
  ∀ n, P15731697758501411866.a n = A352753 (n + 1)

theorem P15731697758501411866.correct : P15731697758501411866.Spec := by
  intro n
  simp only [A352753, Nat.add_sub_cancel, A352753.P15731697758501411866.a, A352753.P3714199880856668914.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A034387, A034387.P4934732080317010833.a, A035250, A035250.P3307557265857479001.f1, A035250.P3307557265857479001.a, A073837, A073837.P15829496930880543402.a, A352775, A352775.P2048892064585624364.a, A063955, A063955.P15955011138369882518.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A101264, A101264.P9977125953316836564.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A352754, A352754.P7186785389553064570.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352753

/-!
# A352754: a(n) = pi(n) * Sum_{n <= q < 2n, q prime} q.

The programs for A352754, the canonical program `A352754.P7186785389553064570` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352754 has offset 1).

The definition of A352754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073837, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352754.P7186785389553064570

`A000720(n+1)*A073837(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A352754

/-- `A000720(n+1)*A073837(n+1)` -/
def P7186785389553064570.Spec : Prop :=
  ∀ n, P7186785389553064570.a n = A352754 (n + 1)

theorem P7186785389553064570.correct : P7186785389553064570.Spec := by
  intro n
  simp only [A352754, Nat.add_sub_cancel]

end A352754

/-! ## A352754.P17294620308693520004

`A352775(n+1)-A352753(n+1)`
-/

namespace A352754.P17294620308693520004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352775 (n + 1) - A352753 (n + 1)

end

end A352754.P17294620308693520004

namespace A352754

/-- `A352775(n+1)-A352753(n+1)` -/
def P17294620308693520004.Spec : Prop :=
  ∀ n, P17294620308693520004.a n = A352754 (n + 1)

theorem P17294620308693520004.correct : P17294620308693520004.Spec := by
  intro n
  simp only [A352754, Nat.add_sub_cancel, A352754.P17294620308693520004.a, A352754.P7186785389553064570.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A073837, A073837.P15829496930880543402.a, A352753, A352753.P3714199880856668914.a, A352775, A352775.P2048892064585624364.a, A034387, A034387.P4934732080317010833.a, A035250, A035250.P3307557265857479001.f1, A035250.P3307557265857479001.a, A063955, A063955.P15955011138369882518.a, A065033, A065033.P13150710762287634520.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A101264, A101264.P9977125953316836564.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352754

/-! ## A352754.P2258996896613589426

`∑[A010051(n+1)]*A073837(n+1)`
-/

namespace A352754.P2258996896613589426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073837 (n + 1)

end

end A352754.P2258996896613589426

namespace A352754

/-- `∑[A010051(n+1)]*A073837(n+1)` -/
def P2258996896613589426.Spec : Prop :=
  ∀ n, P2258996896613589426.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P17895029330644621414

`∑{d}[n+1, A062778(#)]*A073837(n+1)`
-/

namespace A352754.P17895029330644621414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A062778 d) * A073837 (n + 1)

end

end A352754.P17895029330644621414

namespace A352754

/-- `∑{d}[n+1, A062778(#)]*A073837(n+1)` -/
def P17895029330644621414.Spec : Prop :=
  ∀ n, P17895029330644621414.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P6334383235984122612

`∑[char[A000040(n+1)-1]]*A073837(n+1)`
-/

namespace A352754.P6334383235984122612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073837 (n + 1)

end

end A352754.P6334383235984122612

namespace A352754

/-- `∑[char[A000040(n+1)-1]]*A073837(n+1)` -/
def P6334383235984122612.Spec : Prop :=
  ∀ n, P6334383235984122612.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P14111101378502084683

`∑[char[A006530(n+2)-1]]*A073837(n+1)`
-/

namespace A352754.P14111101378502084683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073837 (n + 1)

end

end A352754.P14111101378502084683

namespace A352754

/-- `∑[char[A006530(n+2)-1]]*A073837(n+1)` -/
def P14111101378502084683.Spec : Prop :=
  ∀ n, P14111101378502084683.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P9936143705544648033

`∑[char[A020639(n+2)-1]]*A073837(n+1)`
-/

namespace A352754.P9936143705544648033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073837 (n + 1)

end

end A352754.P9936143705544648033

namespace A352754

/-- `∑[char[A020639(n+2)-1]]*A073837(n+1)` -/
def P9936143705544648033.Spec : Prop :=
  ∀ n, P9936143705544648033.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P15908010511491818624

`A000720(n+1)*A063955(2*n+1)`
-/

namespace A352754.P15908010511491818624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A063955 (2 * n + 1)

end

end A352754.P15908010511491818624

namespace A352754

/-- `A000720(n+1)*A063955(2*n+1)` -/
def P15908010511491818624.Spec : Prop :=
  ∀ n, P15908010511491818624.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P13429164689801908477

`A056172(2*(n+1))*A063955(2*n+1)`
-/

namespace A352754.P13429164689801908477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) * A063955 (2 * n + 1)

end

end A352754.P13429164689801908477

namespace A352754

/-- `A056172(2*(n+1))*A063955(2*n+1)` -/
def P13429164689801908477.Spec : Prop :=
  ∀ n, P13429164689801908477.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P2480882259709199712

`∑[A010051(n+1)]*A288726(2*n+3)`
-/

namespace A352754.P2480882259709199712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A288726 (2 * n + 3)

end

end A352754.P2480882259709199712

namespace A352754

/-- `∑[A010051(n+1)]*A288726(2*n+3)` -/
def P2480882259709199712.Spec : Prop :=
  ∀ n, P2480882259709199712.a n = A352754 (n + 1)

end A352754

/-! ## A352754.P6973751608528101570

`log2(A048656(n+1))*A073837(n+1)`
-/

namespace A352754.P6973751608528101570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A048656 (n + 1) : ℝ) * (A073837 (n + 1) : ℝ)

end

end A352754.P6973751608528101570

namespace A352754

/-- `log2(A048656(n+1))*A073837(n+1)` -/
def P6973751608528101570.Spec : Prop :=
  ∀ n, P6973751608528101570.a n = (A352754 (n + 1) : ℝ)

end A352754

/-! ## A352754.P15146144704094236115

`A352775(n+1)-A034387(n+1)*A035250(n+1)`
-/

namespace A352754.P15146144704094236115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352775 (n + 1) - A034387 (n + 1) * A035250 (n + 1)

end

end A352754.P15146144704094236115

namespace A352754

/-- `A352775(n+1)-A034387(n+1)*A035250(n+1)` -/
def P15146144704094236115.Spec : Prop :=
  ∀ n, P15146144704094236115.a n = A352754 (n + 1)

theorem P15146144704094236115.correct : P15146144704094236115.Spec := by
  intro n
  simp only [A352754, Nat.add_sub_cancel, A352754.P15146144704094236115.a, A352754.P7186785389553064570.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A034387, A034387.P4934732080317010833.a, A035250, A035250.P3307557265857479001.f1, A035250.P3307557265857479001.a, A073837, A073837.P15829496930880543402.a, A352775, A352775.P2048892064585624364.a, A063955, A063955.P15955011138369882518.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A101264, A101264.P9977125953316836564.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A352753, A352753.P3714199880856668914.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352754

/-!
# A352755: Positive centered cube numbers that can be written as the difference of two positive cubes: a(n) = t*(3*t^2 + 4)*(t^2*(3*t^2 + 4)^2 + 3)/4 with t = 2*n-1 and n > 0.

The programs for A352755, the canonical program `A352755.P16955159392249968499` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352755 has offset 1).

The definition of A352755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352755.P279448012425104586

`A352757(n+1)^3-A352758(n+1)^3`
-/

namespace A352755.P279448012425104586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352757 (n + 1) ^ 3 - A352758 (n + 1) ^ 3

end

end A352755.P279448012425104586

namespace A352755

/-- `A352757(n+1)^3-A352758(n+1)^3` -/
def P279448012425104586.Spec : Prop :=
  ∀ n, P279448012425104586.a n = A352755 (n + 1)

theorem P279448012425104586.correct : P279448012425104586.Spec := by
  intro n
  simp only [A352755, Nat.add_sub_cancel, A352755.P279448012425104586.a, A352755.P16955159392249968499.a, A352756, A352756.P5865514728052512487.a, A352757, A352757.P17485454614375003349.a, A352758, A352758.P5217664039599322537.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352755

/-! ## A352755.P16955159392249968499

`A352756(n+1)^3+(A352756(n+1)+1)^3`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A352755

/-- `A352756(n+1)^3+(A352756(n+1)+1)^3` -/
def P16955159392249968499.Spec : Prop :=
  ∀ n, P16955159392249968499.a n = A352755 (n + 1)

theorem P16955159392249968499.correct : P16955159392249968499.Spec := by
  intro n
  simp only [A352755, Nat.add_sub_cancel]

end A352755

/-! ## A352755.P3220212869016597861

`A005898(Δ[3*n^4]+n)`
-/

namespace A352755.P3220212869016597861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A352755.P3220212869016597861

namespace A352755

/-- `A005898(Δ[3*n^4]+n)` -/
def P3220212869016597861.Spec : Prop :=
  ∀ n, P3220212869016597861.a n = A352755 (n + 1)

end A352755

/-! ## A352755.P11375515346792069646

`or(1, A005898(A352756(n+1)))`
-/

namespace A352755.P11375515346792069646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005898 (A352756 (n + 1)).toNat)

end

end A352755.P11375515346792069646

namespace A352755

/-- `or(1, A005898(A352756(n+1)))` -/
def P11375515346792069646.Spec : Prop :=
  ∀ n, P11375515346792069646.a n = A352755 (n + 1)

end A352755

/-! ## A352755.P629619715703233961

`A033909(n)+A005898(A352756(n+1))`
-/

namespace A352755.P629619715703233961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033909 n + A005898 (A352756 (n + 1)).toNat

end

end A352755.P629619715703233961

namespace A352755

/-- `A033909(n)+A005898(A352756(n+1))` -/
def P629619715703233961.Spec : Prop :=
  ∀ n, P629619715703233961.a n = A352755 (n + 1)

end A352755

/-!
# A352756: Positive numbers k such that the centered cube number k^3 + (k+1)^3 is equal to the difference of two positive cubes and to A352755(n).

The programs for A352756, the canonical program `A352756.P5865514728052512487` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352756 has offset 1).

The definition of A352756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352756.P5662929208083992860

`ogf((3+34x+31x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A352756.P5662929208083992860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 34, 31, 4] [1, -4, 6, -4, 1] n

end

end A352756.P5662929208083992860

namespace A352756

/-- `ogf((3+34x+31x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5662929208083992860.Spec : Prop :=
  ∀ n, P5662929208083992860.a n = A352756 (n + 1)

end A352756

/-! ## A352756.P5865514728052512487

`(n+1)*(6*(n+1)*(2*(n+1)-3)+13)-4`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352756

/-- `(n+1)*(6*(n+1)*(2*(n+1)-3)+13)-4` -/
def P5865514728052512487.Spec : Prop :=
  ∀ n, P5865514728052512487.a n = A352756 (n + 1)

theorem P5865514728052512487.correct : P5865514728052512487.Spec := by
  intro n
  simp only [A352756, Nat.add_sub_cancel]

end A352756

/-! ## A352756.P17355779890610562444

`abs(∑[72*n²+1]+n-A355751(n+1))`
-/

namespace A352756.P17355779890610562444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - A355751 (n + 1)|

end

end A352756.P17355779890610562444

namespace A352756

/-- `abs(∑[72*n²+1]+n-A355751(n+1))` -/
def P17355779890610562444.Spec : Prop :=
  ∀ n, P17355779890610562444.a n = A352756 (n + 1)

end A352756

/-! ## A352756.P2836925896159919652

`Δ[A219056(n)+C(n, 2)]`
-/

namespace A352756.P2836925896159919652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219056 n + (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352756.P2836925896159919652

namespace A352756

/-- `Δ[A219056(n)+C(n, 2)]` -/
def P2836925896159919652.Spec : Prop :=
  ∀ n, P2836925896159919652.a n = A352756 (n + 1)

theorem P2836925896159919652.correct : P2836925896159919652.Spec := by
  intro n
  simp only [A352756, Nat.add_sub_cancel, A352756.P2836925896159919652.f1, A352756.P2836925896159919652.a, A352756.P5865514728052512487.a, A219056, A219056.P7269935841778079002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352756

/-! ## A352756.P8708554803970650018

`(A249354(2*n+1)-A003215(2*n))/2`
-/

namespace A352756.P8708554803970650018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249354 (2 * n + 1) - A003215 (2 * n) : ℚ) / 2

end

end A352756.P8708554803970650018

namespace A352756

/-- `(A249354(2*n+1)-A003215(2*n))/2` -/
def P8708554803970650018.Spec : Prop :=
  ∀ n, P8708554803970650018.a n = (A352756 (n + 1) : ℚ)

theorem P8708554803970650018.correct : P8708554803970650018.Spec := by
  intro n
  simp only [A352756, Nat.add_sub_cancel, A352756.P8708554803970650018.a, A352756.P5865514728052512487.a, A003215, A003215.P5851317289441473820.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352756

/-! ## A352756.P14029456098859214778

`ceil((A244728(2*n+1)-1)/2-A193252(n+1))`
-/

namespace A352756.P14029456098859214778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244728 (2 * n + 1) - 1 : ℚ) / 2 - (A193252 (n + 1) : ℚ)⌉

end

end A352756.P14029456098859214778

namespace A352756

/-- `ceil((A244728(2*n+1)-1)/2-A193252(n+1))` -/
def P14029456098859214778.Spec : Prop :=
  ∀ n, P14029456098859214778.a n = A352756 (n + 1)

end A352756

/-!
# A352757: a(n) = (3*(2*n - 1)^2*((2*n - 1)^2 + 2) + 2*n + 1)/2 for n > 0.

The programs for A352757, the canonical program `A352757.P17485454614375003349` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352757 has offset 1).

The definition of A352757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(2*(n+1)-1)²*((2*(n+1)-1)²+2)+2*(n+1)+1)/2` (program `A352757.P17413976840233532882`, by `A352757.P17413976840233532882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352757.P14252058310595761118

`ogf((6+121x+321x^2+123x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A352757.P14252058310595761118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 121, 321, 123, 5] [1, -5, 10, -10, 5, -1] n

end

end A352757.P14252058310595761118

namespace A352757

/-- `ogf((6+121x+321x^2+123x^3+5x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14252058310595761118.Spec : Prop :=
  ∀ n, P14252058310595761118.a n = A352757 (n + 1)

end A352757

/-! ## A352757.P17485454614375003349

`(n+1)*(24*(n+1)*((n-1)*(n+1)+2)-23)+5`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352757

/-- `(n+1)*(24*(n+1)*((n-1)*(n+1)+2)-23)+5` -/
def P17485454614375003349.Spec : Prop :=
  ∀ n, P17485454614375003349.a n = A352757 (n + 1)

theorem P17485454614375003349.correct : P17485454614375003349.Spec := by
  intro n
  simp only [A352757, Nat.add_sub_cancel]

end A352757

/-! ## A352757.P17413976840233532882

`(3*(2*(n+1)-1)²*((2*(n+1)-1)²+2)+2*(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352757.P17413976840233532882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((2 * (n + 1) : ℤ) - 1) ^ 2 * (((2 * (n + 1) : ℤ) - 1) ^ 2 + 2) + (2 * (n + 1) : ℤ) + 1 : ℚ) / 2

end

end A352757.P17413976840233532882

namespace A352757

/-- `(3*(2*(n+1)-1)²*((2*(n+1)-1)²+2)+2*(n+1)+1)/2` -/
def P17413976840233532882.Spec : Prop :=
  ∀ n, P17413976840233532882.a n = (A352757 (n + 1) : ℚ)

theorem P17413976840233532882.correct : P17413976840233532882.Spec := by
  intro n
  simp only [A352757, Nat.add_sub_cancel, A352757.P17413976840233532882.a, A352757.P17485454614375003349.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A352757

/-! ## A352757.P6723866727494673793

`∑[∑[A250120(A101096(n+1))]+1]`
-/

namespace A352757.P6723866727494673793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A101096 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352757.P6723866727494673793

namespace A352757

/-- `∑[∑[A250120(A101096(n+1))]+1]` -/
def P6723866727494673793.Spec : Prop :=
  ∀ n, P6723866727494673793.a n = A352757 (n + 1)

end A352757

/-! ## A352757.P3513274561458790519

`A000027(A352758(n+1)+Δ[n²])`
-/

namespace A352757.P3513274561458790519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A352758 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A352757.P3513274561458790519

namespace A352757

/-- `A000027(A352758(n+1)+Δ[n²])` -/
def P3513274561458790519.Spec : Prop :=
  ∀ n, P3513274561458790519.a n = A352757 (n + 1)

end A352757

/-!
# A352758: a(n) = (3*(2*n - 1)^2*((2*n - 1)^2 + 2) - 2*n + 3)/2 for n > 0.

The programs for A352758, the canonical program `A352758.P5217664039599322537` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352758 has offset 1).

The definition of A352758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(2*(n+1)-1)²*((2*(n+1)-1)²+2)-2*(n+1)+3)/2` (program `A352758.P13385932268377064549`, by `A352758.P13385932268377064549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352758.P10745295403948406774

`ogf((5+123x+321x^2+121x^3+6x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A352758.P10745295403948406774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 123, 321, 121, 6] [1, -5, 10, -10, 5, -1] n

end

end A352758.P10745295403948406774

namespace A352758

/-- `ogf((5+123x+321x^2+121x^3+6x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10745295403948406774.Spec : Prop :=
  ∀ n, P10745295403948406774.a n = A352758 (n + 1)

end A352758

/-! ## A352758.P5217664039599322537

`(n+1)*(24*(n+1)*((n-1)*(n+1)+2)-25)+6`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352758

/-- `(n+1)*(24*(n+1)*((n-1)*(n+1)+2)-25)+6` -/
def P5217664039599322537.Spec : Prop :=
  ∀ n, P5217664039599322537.a n = A352758 (n + 1)

theorem P5217664039599322537.correct : P5217664039599322537.Spec := by
  intro n
  simp only [A352758, Nat.add_sub_cancel]

end A352758

/-! ## A352758.P13385932268377064549

`(3*(2*(n+1)-1)²*((2*(n+1)-1)²+2)-2*(n+1)+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352758.P13385932268377064549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((2 * (n + 1) : ℤ) - 1) ^ 2 * (((2 * (n + 1) : ℤ) - 1) ^ 2 + 2) - (2 * (n + 1) : ℤ) + 3 : ℚ) / 2

end

end A352758.P13385932268377064549

namespace A352758

/-- `(3*(2*(n+1)-1)²*((2*(n+1)-1)²+2)-2*(n+1)+3)/2` -/
def P13385932268377064549.Spec : Prop :=
  ∀ n, P13385932268377064549.a n = (A352758 (n + 1) : ℚ)

theorem P13385932268377064549.correct : P13385932268377064549.Spec := by
  intro n
  simp only [A352758, Nat.add_sub_cancel, A352758.P13385932268377064549.a, A352758.P5217664039599322537.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A352758

/-! ## A352758.P12691199981922424779

`abs(A352757(n+1)-Δ[n²])`
-/

namespace A352758.P12691199981922424779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352757 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A352758.P12691199981922424779

namespace A352758

/-- `abs(A352757(n+1)-Δ[n²])` -/
def P12691199981922424779.Spec : Prop :=
  ∀ n, P12691199981922424779.a n = A352758 (n + 1)

end A352758

/-! ## A352758.P13030676804685882767

`abs(A264797((A005843(n)+1)²)-n)`
-/

namespace A352758.P13030676804685882767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A264797 ((A005843 n + 1) ^ 2).toNat - (n : ℤ)|

end

end A352758.P13030676804685882767

namespace A352758

/-- `abs(A264797((A005843(n)+1)²)-n)` -/
def P13030676804685882767.Spec : Prop :=
  ∀ n, P13030676804685882767.a n = A352758 (n + 1)

end A352758

/-!
# A352759: Centered cube numbers that are the difference of two positive cubes; a(n) = 27*t^3*(27*t^6 + 1)/4 with t = 2*n-1.

The programs for A352759, the canonical program `A352759.P2807270408411528565` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352759 has offset 1).

The definition of A352759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352759.P1470952148644553946

`27*(2*(n+1)-1)^3*(27*(2*(n+1)-1)^6+1)/4`
-/

namespace A352759.P1470952148644553946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (27 * ((2 * (n + 1) : ℤ) - 1) ^ 3 * (27 * ((2 * (n + 1) : ℤ) - 1) ^ 6 + 1) : ℚ) / 4

end

end A352759.P1470952148644553946

namespace A352759

/-- `27*(2*(n+1)-1)^3*(27*(2*(n+1)-1)^6+1)/4` -/
def P1470952148644553946.Spec : Prop :=
  ∀ n, P1470952148644553946.a n = (A352759 (n + 1) : ℚ)

end A352759

/-! ## A352759.P9678836101030734444

`A355752(n+1)^3-A355753(n+1)^3`
-/

namespace A352759.P9678836101030734444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355752 (n + 1) ^ 3 - A355753 (n + 1) ^ 3

end

end A352759.P9678836101030734444

namespace A352759

/-- `A355752(n+1)^3-A355753(n+1)^3` -/
def P9678836101030734444.Spec : Prop :=
  ∀ n, P9678836101030734444.a n = A352759 (n + 1)

end A352759

/-! ## A352759.P2807270408411528565

`A355751(n+1)^3+(A355751(n+1)+1)^3`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A352759

/-- `A355751(n+1)^3+(A355751(n+1)+1)^3` -/
def P2807270408411528565.Spec : Prop :=
  ∀ n, P2807270408411528565.a n = A352759 (n + 1)

theorem P2807270408411528565.correct : P2807270408411528565.Spec := by
  intro n
  simp only [A352759, Nat.add_sub_cancel]

end A352759

/-!
# A352760: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, among the ternary digits of n and a(n) (counted with multiplicity) there are as many 1's as 2's.

The programs for A352760, there is no canonical definition to state claims against.
-/

/-! ## A352760.P16221072669240352209

`A357616(n)-A091225(A357651(n+1))`
-/

namespace A352760.P16221072669240352209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 n - A091225 (A357651 (n + 1)).toNat

end

end A352760.P16221072669240352209

/-! ## A352760.P16813905854870204114

`A357616(n)-A320656(A160560(3*n+4))`
-/

namespace A352760.P16813905854870204114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 n - A320656 (A160560 (3 * n + 4)).toNat

end

end A352760.P16813905854870204114

/-! ## A352760.P6460512374679840941

`A357616(n)-A008683(A178256(n+5))`
-/

namespace A352760.P6460512374679840941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 n - A008683 (A178256 (n + 5)).toNat

end

end A352760.P6460512374679840941

/-!
# A352766: Maximum number of inequivalent orientations of an n-node graph.

The programs for A352766, there is no canonical definition to state claims against.
-/

/-! ## A352766.P8985440617350579347

`A351006(floor((9/4)^n)-1)`
-/

namespace A352766.P8985440617350579347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (⌊((9 : ℚ) / 4) ^ n⌋ - 1).toNat

end

end A352766.P8985440617350579347

/-! ## A352766.P17627659380285067763

`filter[A248822(n+2), A284957(#)]`
-/

namespace A352766.P17627659380285067763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248822 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284957 (f1 j).toNat = 1) n)

end

end A352766.P17627659380285067763

/-!
# A352767: Number of n-node graphs with the maximum number (A352766(n)) of orientations.

The programs for A352767, there is no canonical definition to state claims against.
-/

/-! ## A352767.P7121933241245990811

`gcd(6*n-2, A090100(n+1))`
-/

namespace A352767.P7121933241245990811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((6 * n : ℤ) - 2) (A090100 (n + 1))

end

end A352767.P7121933241245990811

/-! ## A352767.P13903209114178299546

`gcd(ceil(2/acot(n)²), A342785(n+2))`
-/

namespace A352767.P13903209114178299546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ (A342785 (n + 2))

end

end A352767.P13903209114178299546

/-! ## A352767.P9845923962350116575

`A144379(A315758(n))`
-/

namespace A352767.P9845923962350116575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144379 (A315758 n).toNat

end

end A352767.P9845923962350116575

/-! ## A352767.P11837313944196585802

`A076775(record[A284825(n)])`
-/

namespace A352767.P11837313944196585802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284825 (n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076775 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352767.P11837313944196585802

/-! ## A352767.P4717093258643748197

`A023126(A336035(n+1))`
-/

namespace A352767.P4717093258643748197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023126 (A336035 (n + 1)).toNat

end

end A352767.P4717093258643748197

/-!
# A352771: Decimal expansion of the unique real solution to exp(x) = 1/x - 1.

The programs for A352771, there is no canonical definition to state claims against.
-/

/-! ## A352771.P6195721194828983763

`9-A333761(n)`
-/

namespace A352771.P6195721194828983763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A333761 n

end

end A352771.P6195721194828983763

/-!
# A352772: a(n) = A109812(n) AND A109812(n+2) (where AND denotes the bitwise AND operator).

The programs for A352772, there is no canonical definition to state claims against.
-/

/-! ## A352772.P14742258533740198862

`and(A352794(n+1)+1+n, A353240(n+2))`
-/

namespace A352772.P14742258533740198862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A352794 (n + 1) + 1 + (n : ℤ)) (A353240 (n + 2))

end

end A352772.P14742258533740198862

/-! ## A352772.P3545676390908459307

`and(A109812(n+1), A109812(n+3))`
-/

namespace A352772.P3545676390908459307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109812 (n + 1)) (A109812 (n + 3))

end

end A352772.P3545676390908459307

/-! ## A352772.P10034305405765324025

`and(A305371(2*(n+1))/2, A353240(n+2))`
-/

namespace A352772.P10034305405765324025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A305371 (2 * (n + 1)) : ℚ) / 2)) (A353240 (n + 2))

end

end A352772.P10034305405765324025

/-! ## A352772.P16458456998059603845

`and(A065033(A305371(2*(n+1))), A353240(n+2))`
-/

namespace A352772.P16458456998059603845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065033 (A305371 (2 * (n + 1))).toNat) (A353240 (n + 2))

end

end A352772.P16458456998059603845

/-! ## A352772.P5192809151918665635

`and(A004524(A305371(2*(n+1))+1), A353240(n+2))`
-/

namespace A352772.P5192809151918665635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004524 (A305371 (2 * (n + 1)) + 1).toNat) (A353240 (n + 2))

end

end A352772.P5192809151918665635

/-!
# A352773: Numbers k such that A109812(k) AND A109812(k+2) = 0 (where AND denotes the bitwise AND operator).

The programs for A352773, there is no canonical definition to state claims against.
-/

/-! ## A352773.P1762981511726356356

`eq[0, A352772(A000038(n)+n)]`
-/

namespace A352773.P1762981511726356356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352772 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352773.P1762981511726356356

/-! ## A352773.P17452287943113365288

`eq[A000007(n), A352772(A028310(n))]`
-/

namespace A352773.P17452287943113365288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352772 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352773.P17452287943113365288

/-! ## A352773.P10771858001508746313

`eq[A000038(n), A352772(A028310(n))]`
-/

namespace A352773.P10771858001508746313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352772 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352773.P10771858001508746313

/-! ## A352773.P17912967177469915839

`eq[A000007(n), A352772(A000007(n)+n)]`
-/

namespace A352773.P17912967177469915839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352772 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352773.P17912967177469915839

/-! ## A352773.P3804345835539326023

`eq[A010051(2*(n+1)), A352772(A028310(n))]`
-/

namespace A352773.P3804345835539326023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352772 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352773.P3804345835539326023

/-!
# A352774: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not appeared that does not share a factor with a(n-2) + a(n-1) or a(n-2)*a(n-1).

The programs for A352774, there is no canonical definition to state claims against.
-/

/-! ## A352774.P7147860304699757072

`filter[A171837(n+1), A294905(#)]`
-/

namespace A352774.P7147860304699757072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A352774.P7147860304699757072

/-! ## A352774.P3561709969638732274

`A004482(lt[A328720(n+1), A328719(3*n+5)])`
-/

namespace A352774.P3561709969638732274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328719 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352774.P3561709969638732274

/-!
# A352775: a(n) = pi(n) * (Sum_{n <= q < 2n, q prime} q) + (pi(2n-1) - pi(n-1)) * (Sum_{p <= n, p prime} p).

The programs for A352775, the canonical program `A352775.P2048892064585624364` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352775 has offset 1).

The definition of A352775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352753, A352754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352775.P2048892064585624364

`A352753(n+1)+A352754(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A352775

/-- `A352753(n+1)+A352754(n+1)` -/
def P2048892064585624364.Spec : Prop :=
  ∀ n, P2048892064585624364.a n = A352775 (n + 1)

theorem P2048892064585624364.correct : P2048892064585624364.Spec := by
  intro n
  simp only [A352775, Nat.add_sub_cancel]

end A352775

/-! ## A352775.P6935426451767866456

`A352754(n+1)+A034387(n+1)*A035250(n+1)`
-/

namespace A352775.P6935426451767866456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352754 (n + 1) + A034387 (n + 1) * A035250 (n + 1)

end

end A352775.P6935426451767866456

namespace A352775

/-- `A352754(n+1)+A034387(n+1)*A035250(n+1)` -/
def P6935426451767866456.Spec : Prop :=
  ∀ n, P6935426451767866456.a n = A352775 (n + 1)

theorem P6935426451767866456.correct : P6935426451767866456.Spec := by
  intro n
  simp only [A352775, Nat.add_sub_cancel, A352775.P6935426451767866456.a, A352775.P2048892064585624364.a, A034387, A034387.P4934732080317010833.a, A035250, A035250.P3307557265857479001.f1, A035250.P3307557265857479001.a, A352753, A352753.P3714199880856668914.a, A352754, A352754.P7186785389553064570.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A073837, A073837.P15829496930880543402.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A101264, A101264.P9977125953316836564.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A063955, A063955.P15955011138369882518.a, A065033, A065033.P13150710762287634520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A352775

/-! ## A352775.P8469006787410702059

`A352753(n+1)+A000720(n+1)*A073837(n+1)`
-/

namespace A352775.P8469006787410702059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A000720 (n + 1) * A073837 (n + 1)

end

end A352775.P8469006787410702059

namespace A352775

/-- `A352753(n+1)+A000720(n+1)*A073837(n+1)` -/
def P8469006787410702059.Spec : Prop :=
  ∀ n, P8469006787410702059.a n = A352775 (n + 1)

end A352775

/-! ## A352775.P9438568026799527238

`A352753(n+1)+A073837(n+1)*A230980(n+1)`
-/

namespace A352775.P9438568026799527238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352753 (n + 1) + A073837 (n + 1) * A230980 (n + 1)

end

end A352775.P9438568026799527238

namespace A352775

/-- `A352753(n+1)+A073837(n+1)*A230980(n+1)` -/
def P9438568026799527238.Spec : Prop :=
  ∀ n, P9438568026799527238.a n = A352775 (n + 1)

end A352775

/-! ## A352775.P13617162210779331070

`A352753(n+1)+log2(A048656(n+1))*A073837(n+1)`
-/

namespace A352775.P13617162210779331070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A352753 (n + 1) : ℝ) + Real.logb 2 (A048656 (n + 1) : ℝ) * (A073837 (n + 1) : ℝ)

end

end A352775.P13617162210779331070

namespace A352775

/-- `A352753(n+1)+log2(A048656(n+1))*A073837(n+1)` -/
def P13617162210779331070.Spec : Prop :=
  ∀ n, P13617162210779331070.a n = (A352775 (n + 1) : ℝ)

end A352775

/-!
# A352776: Numbers k such that w(k + w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

The programs for A352776, the canonical program `A352776.P13844907865842794739` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352776 has offset 1).

The definition of A352776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352776.P13844907865842794739

`eq[0, A229745(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352776

/-- `eq[0, A229745(n)]` -/
def P13844907865842794739.Spec : Prop :=
  ∀ n, (P13844907865842794739.a n : ℤ) = A352776 (n + 1)

theorem P13844907865842794739.correct : P13844907865842794739.Spec := by
  intro n
  simp only [A352776, Nat.add_sub_cancel]

end A352776

/-! ## A352776.P2424556692623883162

`lt[A000045(A229745(n)²), 1]`
-/

namespace A352776.P2424556692623883162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A229745 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352776.P2424556692623883162

namespace A352776

/-- `lt[A000045(A229745(n)²), 1]` -/
def P2424556692623883162.Spec : Prop :=
  ∀ n, (P2424556692623883162.a n : ℤ) = A352776 (n + 1)

end A352776

/-! ## A352776.P2798020080750183643

`lt[A000292(A229745(n)²), 1]`
-/

namespace A352776.P2798020080750183643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A229745 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352776.P2798020080750183643

namespace A352776

/-- `lt[A000292(A229745(n)²), 1]` -/
def P2798020080750183643.Spec : Prop :=
  ∀ n, (P2798020080750183643.a n : ℤ) = A352776 (n + 1)

end A352776

/-! ## A352776.P18321791218752765498

`lt[A004525(A229745(n)²), 1]`
-/

namespace A352776.P18321791218752765498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A229745 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352776.P18321791218752765498

namespace A352776

/-- `lt[A004525(A229745(n)²), 1]` -/
def P18321791218752765498.Spec : Prop :=
  ∀ n, (P18321791218752765498.a n : ℤ) = A352776 (n + 1)

end A352776

/-! ## A352776.P15115807134154698121

`record[gcd(A038608(n), A229745(n))]`
-/

namespace A352776.P15115807134154698121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A229745 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352776.P15115807134154698121

namespace A352776

/-- `record[gcd(A038608(n), A229745(n))]` -/
def P15115807134154698121.Spec : Prop :=
  ∀ n, (P15115807134154698121.a n : ℤ) = A352776 (n + 1)

end A352776

/-! ## A352776.P96561161242490530

`lt[A229745(n)²*A000203(n+1), 1]`
-/

namespace A352776.P96561161242490530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n ^ 2 * A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352776.P96561161242490530

namespace A352776

/-- `lt[A229745(n)²*A000203(n+1), 1]` -/
def P96561161242490530.Spec : Prop :=
  ∀ n, (P96561161242490530.a n : ℤ) = A352776 (n + 1)

end A352776

/-! ## A352776.P5467951336645500762

`A011371(A352785(n+1))`
-/

namespace A352776.P5467951336645500762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A352785 (n + 1)).toNat

end

end A352776.P5467951336645500762

namespace A352776

/-- `A011371(A352785(n+1))` -/
def P5467951336645500762.Spec : Prop :=
  ∀ n, P5467951336645500762.a n = A352776 (n + 1)

end A352776

/-! ## A352776.P5936325823579062493

`eq[n, A011371(A092391(n))]`
-/

namespace A352776.P5936325823579062493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A092391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352776.P5936325823579062493

namespace A352776

/-- `eq[n, A011371(A092391(n))]` -/
def P5936325823579062493.Spec : Prop :=
  ∀ n, (P5936325823579062493.a n : ℤ) = A352776 (n + 1)

end A352776

/-! ## A352776.P4324934471554249875

`A227361(or(1, A352785(n+1)))`
-/

namespace A352776.P4324934471554249875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227361 (Int.lor 1 (A352785 (n + 1))).toNat

end

end A352776.P4324934471554249875

namespace A352776

/-- `A227361(or(1, A352785(n+1)))` -/
def P4324934471554249875.Spec : Prop :=
  ∀ n, P4324934471554249875.a n = A352776 (n + 1)

end A352776

/-! ## A352776.P4616449106734323743

`eq[n, A011371(A000120(n)+n)]`
-/

namespace A352776.P4616449106734323743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000120 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352776.P4616449106734323743

namespace A352776

/-- `eq[n, A011371(A000120(n)+n)]` -/
def P4616449106734323743.Spec : Prop :=
  ∀ n, (P4616449106734323743.a n : ℤ) = A352776 (n + 1)

end A352776

/-!
# A352777: a(n) = Sum_{p <= n <= q < 2n, p,q prime} (p * q).

The programs for A352777, the canonical program `A352777.P13491865834472496179` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352777 has offset 1).

The definition of A352777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352777.P13491865834472496179

`∑[∑{p}[n+1, C(#, n)]]*A073837(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A352777

/-- `∑[∑{p}[n+1, C(#, n)]]*A073837(n+1)` -/
def P13491865834472496179.Spec : Prop :=
  ∀ n, P13491865834472496179.a n = A352777 (n + 1)

theorem P13491865834472496179.correct : P13491865834472496179.Spec := by
  intro n
  simp only [A352777, Nat.add_sub_cancel]

end A352777

/-! ## A352777.P13086462708167861473

`∑[∑{p}[n+1, C(#, n)]]*A063955(2*n+1)`
-/

namespace A352777.P13086462708167861473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A063955 (2 * n + 1)

end

end A352777.P13086462708167861473

namespace A352777

/-- `∑[∑{p}[n+1, C(#, n)]]*A063955(2*n+1)` -/
def P13086462708167861473.Spec : Prop :=
  ∀ n, P13086462708167861473.a n = A352777 (n + 1)

end A352777

/-! ## A352777.P15360691894101877827

`∑[∑{p}[n+1, C(#, n)]]*A288726(2*n+3)`
-/

namespace A352777.P15360691894101877827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A288726 (2 * n + 3)

end

end A352777.P15360691894101877827

namespace A352777

/-- `∑[∑{p}[n+1, C(#, n)]]*A288726(2*n+3)` -/
def P15360691894101877827.Spec : Prop :=
  ∀ n, P15360691894101877827.a n = A352777 (n + 1)

end A352777

/-! ## A352777.P7626572196063721123

`A034387(n+1)*A073837(n+1)`
-/

namespace A352777.P7626572196063721123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) * A073837 (n + 1)

end

end A352777.P7626572196063721123

namespace A352777

/-- `A034387(n+1)*A073837(n+1)` -/
def P7626572196063721123.Spec : Prop :=
  ∀ n, P7626572196063721123.a n = A352777 (n + 1)

end A352777

/-! ## A352777.P10321652704804316589

`∑[A061397(n+1)]*A073837(n+1)`
-/

namespace A352777.P10321652704804316589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073837 (n + 1)

end

end A352777.P10321652704804316589

namespace A352777

/-- `∑[A061397(n+1)]*A073837(n+1)` -/
def P10321652704804316589.Spec : Prop :=
  ∀ n, P10321652704804316589.a n = A352777 (n + 1)

end A352777

/-! ## A352777.P9319302588349211304

`A034387(n+1)*A063955(2*n+1)`
-/

namespace A352777.P9319302588349211304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) * A063955 (2 * n + 1)

end

end A352777.P9319302588349211304

namespace A352777

/-- `A034387(n+1)*A063955(2*n+1)` -/
def P9319302588349211304.Spec : Prop :=
  ∀ n, P9319302588349211304.a n = A352777 (n + 1)

end A352777

/-! ## A352777.P7999129660133652285

`A063955(2*n+1)*A063960(2*(n+1))`
-/

namespace A352777.P7999129660133652285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) * A063960 (2 * (n + 1))

end

end A352777.P7999129660133652285

namespace A352777

/-- `A063955(2*n+1)*A063960(2*(n+1))` -/
def P7999129660133652285.Spec : Prop :=
  ∀ n, P7999129660133652285.a n = A352777 (n + 1)

end A352777

/-! ## A352777.P3994770038359921406

`A007504(A000720(n+1))*A073837(n+1)`
-/

namespace A352777.P3994770038359921406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (n + 1)).toNat * A073837 (n + 1)

end

end A352777.P3994770038359921406

namespace A352777

/-- `A007504(A000720(n+1))*A073837(n+1)` -/
def P3994770038359921406.Spec : Prop :=
  ∀ n, P3994770038359921406.a n = A352777 (n + 1)

end A352777

/-!
# A352778: Numbers k such that w(k + w(k)) > w(k), where w(k) is the binary weight of k, A000120(k).

The programs for A352778, the canonical program `A352778.P11519302946014693249` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352778 has offset 1).

The definition of A352778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352778.P11519302946014693249

`lt[0, A229745(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352778

/-- `lt[0, A229745(n)]` -/
def P11519302946014693249.Spec : Prop :=
  ∀ n, (P11519302946014693249.a n : ℤ) = A352778 (n + 1)

theorem P11519302946014693249.correct : P11519302946014693249.Spec := by
  intro n
  simp only [A352778, Nat.add_sub_cancel]

end A352778

/-! ## A352778.P6344015948067700333

`lt[A011371(A092391(n)), n]`
-/

namespace A352778.P6344015948067700333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A092391 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352778.P6344015948067700333

namespace A352778

/-- `lt[A011371(A092391(n)), n]` -/
def P6344015948067700333.Spec : Prop :=
  ∀ n, (P6344015948067700333.a n : ℤ) = A352778 (n + 1)

end A352778

/-! ## A352778.P8797729723951823617

`lt[A011371(A000120(n)+n), n]`
-/

namespace A352778.P8797729723951823617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000120 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352778.P8797729723951823617

namespace A352778

/-- `lt[A011371(A000120(n)+n), n]` -/
def P8797729723951823617.Spec : Prop :=
  ∀ n, (P8797729723951823617.a n : ℤ) = A352778 (n + 1)

end A352778

/-! ## A352778.P12232748594629734615

`lt[A011371(log2(A001316(n))+n), n]`
-/

namespace A352778.P12232748594629734615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352778.P12232748594629734615

namespace A352778

/-- `lt[A011371(log2(A001316(n))+n), n]` -/
def P12232748594629734615.Spec : Prop :=
  ∀ n, (P12232748594629734615.a n : ℤ) = A352778 (n + 1)

end A352778

/-! ## A352778.P8753582598078558334

`lt[A011371(2*n-A011371(n)), n]`
-/

namespace A352778.P8753582598078558334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 ((2 * n : ℤ) - A011371 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352778.P8753582598078558334

namespace A352778

/-- `lt[A011371(2*n-A011371(n)), n]` -/
def P8753582598078558334.Spec : Prop :=
  ∀ n, (P8753582598078558334.a n : ℤ) = A352778 (n + 1)

end A352778

/-! ## A352778.P584318454447004631

`lt[A011371(log2(A038573(n)+1)+n), n]`
-/

namespace A352778.P584318454447004631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.roundAway (Real.logb 2 (A038573 n + 1 : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352778.P584318454447004631

namespace A352778

/-- `lt[A011371(log2(A038573(n)+1)+n), n]` -/
def P584318454447004631.Spec : Prop :=
  ∀ n, (P584318454447004631.a n : ℤ) = A352778 (n + 1)

end A352778

/-! ## A352778.P17547721746706298312

`lt[A000120(n), A000120(A092391(n))]`
-/

namespace A352778.P17547721746706298312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A092391 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352778.P17547721746706298312

namespace A352778

/-- `lt[A000120(n), A000120(A092391(n))]` -/
def P17547721746706298312.Spec : Prop :=
  ∀ n, (P17547721746706298312.a n : ℤ) = A352778 (n + 1)

end A352778

/-!
# A352779: Powers of -3: a(n) = (-3)^n.

The programs for A352779, the canonical program `A352779.P6023694692476343587` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352779 has offset 0).

The definition of A352779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-3)^n` (program `A352779.P6023694692476343587`, by `A352779.P6023694692476343587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352779.P6023694692476343587

`(-3)^n`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352779

/-- `(-3)^n` -/
def P6023694692476343587.Spec : Prop :=
  ∀ n, P6023694692476343587.a n = A352779 n

theorem P6023694692476343587.correct : P6023694692476343587.Spec := by
  intro n
  simp only [A352779]

end A352779

/-! ## A352779.P2200381402741075565

`ogf(1/(1+3x))`
-/

namespace A352779.P2200381402741075565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 3] n

end

end A352779.P2200381402741075565

namespace A352779

/-- `ogf(1/(1+3x))` -/
def P2200381402741075565.Spec : Prop :=
  ∀ n, P2200381402741075565.a n = A352779 n

end A352779

/-! ## A352779.P16498290387158651070

`-(3*a(n-1))` with `a(0)=1`
-/

namespace A352779.P16498290387158651070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(3 * a (n - 1))

end

end A352779.P16498290387158651070

namespace A352779

/-- `-(3*a(n-1))` -/
def P16498290387158651070.Spec : Prop :=
  ∀ n, P16498290387158651070.a n = A352779 n

theorem P16498290387158651070.correct : P16498290387158651070.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A352779, Nat.add_sub_cancel, A352779.P16498290387158651070.a, A352779.P6023694692476343587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A352779, Nat.add_sub_cancel, A352779.P16498290387158651070.a, A352779.P6023694692476343587.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A352779

/-! ## A352779.P18107673650571823987

`9*a(n-2)` with `a(0)=1, a(1)=-3`
-/

namespace A352779.P18107673650571823987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  9 * a (n - 2)

end

end A352779.P18107673650571823987

namespace A352779

/-- `9*a(n-2)` -/
def P18107673650571823987.Spec : Prop :=
  ∀ n, P18107673650571823987.a n = A352779 n

theorem P18107673650571823987.correct : P18107673650571823987.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A352779, Nat.add_sub_cancel, A352779.P18107673650571823987.a, A352779.P6023694692476343587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A352779, Nat.add_sub_cancel, A352779.P18107673650571823987.a, A352779.P6023694692476343587.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A352779

/-! ## A352779.P14464590777370187165

`or(1, (abs(1-n)-(n+2))^n)`
-/

namespace A352779.P14464590777370187165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((|1 - (n : ℤ)| - (n + 2 : ℤ)) ^ n)

end

end A352779.P14464590777370187165

namespace A352779

/-- `or(1, (abs(1-n)-(n+2))^n)` -/
def P14464590777370187165.Spec : Prop :=
  ∀ n, P14464590777370187165.a n = A352779 n

end A352779

/-! ## A352779.P8170313713797512176

`a(n-1)-a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A352779.P8170313713797512176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A352779.P8170313713797512176

namespace A352779

/-- `a(n-1)-a(n-1)/(1/2)²` -/
def P8170313713797512176.Spec : Prop :=
  ∀ n, P8170313713797512176.a n = (A352779 n : ℚ)

theorem P8170313713797512176.correct : P8170313713797512176.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A352779, Nat.add_sub_cancel, A352779.P8170313713797512176.a, A352779.P6023694692476343587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A352779, Nat.add_sub_cancel, A352779.P8170313713797512176.a, A352779.P6023694692476343587.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A352779

/-! ## A352779.P13057719374003058943

`Δ[A014983(n)]`
-/

namespace A352779.P13057719374003058943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352779.P13057719374003058943

namespace A352779

/-- `Δ[A014983(n)]` -/
def P13057719374003058943.Spec : Prop :=
  ∀ n, P13057719374003058943.a n = A352779 n

end A352779

/-! ## A352779.P5830686851779855214

`Δ[A084222(n)]`
-/

namespace A352779.P5830686851779855214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352779.P5830686851779855214

namespace A352779

/-- `Δ[A084222(n)]` -/
def P5830686851779855214.Spec : Prop :=
  ∀ n, P5830686851779855214.a n = A352779 n

end A352779

/-! ## A352779.P15990556662600061415

`A141413(n+2)`
-/

namespace A352779.P15990556662600061415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 2)

end

end A352779.P15990556662600061415

namespace A352779

/-- `A141413(n+2)` -/
def P15990556662600061415.Spec : Prop :=
  ∀ n, P15990556662600061415.a n = A352779 n

end A352779

/-! ## A352779.P4417569785005166290

`2-A081630(n)`
-/

namespace A352779.P4417569785005166290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A081630 n

end

end A352779.P4417569785005166290

namespace A352779

/-- `2-A081630(n)` -/
def P4417569785005166290.Spec : Prop :=
  ∀ n, P4417569785005166290.a n = A352779 n

theorem P4417569785005166290.correct : P4417569785005166290.Spec := by
  intro n
  simp only [A352779, Nat.add_sub_cancel, A352779.P4417569785005166290.a, A352779.P6023694692476343587.a, A081630, A081630.P4380217740323657542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352779

/-! ## A352779.P11553787073267323028

`A128019(2*n)`
-/

namespace A352779.P11553787073267323028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128019 (2 * n)

end

end A352779.P11553787073267323028

namespace A352779

/-- `A128019(2*n)` -/
def P11553787073267323028.Spec : Prop :=
  ∀ n, P11553787073267323028.a n = A352779 n

end A352779

/-! ## A352779.P12901972644829018493

`Δ[-A084567(n)]`
-/

namespace A352779.P12901972644829018493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352779.P12901972644829018493

namespace A352779

/-- `Δ[-A084567(n)]` -/
def P12901972644829018493.Spec : Prop :=
  ∀ n, P12901972644829018493.a n = A352779 n

end A352779

/-! ## A352779.P6767084922749320557

`A287479(Δ[n²])`
-/

namespace A352779.P6767084922749320557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352779.P6767084922749320557

namespace A352779

/-- `A287479(Δ[n²])` -/
def P6767084922749320557.Spec : Prop :=
  ∀ n, P6767084922749320557.a n = A352779 n

end A352779

/-! ## A352779.P16350867831632533059

`Δ[A165553(n)/2]`
-/

namespace A352779.P16350867831632533059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165553 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352779.P16350867831632533059

namespace A352779

/-- `Δ[A165553(n)/2]` -/
def P16350867831632533059.Spec : Prop :=
  ∀ n, P16350867831632533059.a n = (A352779 n : ℚ)

end A352779

/-! ## A352779.P1268151602039154186

`3^n*A033999(n)`
-/

namespace A352779.P1268151602039154186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A033999 n

end

end A352779.P1268151602039154186

namespace A352779

/-- `3^n*A033999(n)` -/
def P1268151602039154186.Spec : Prop :=
  ∀ n, P1268151602039154186.a n = A352779 n

end A352779

/-! ## A352779.P8797408726458989773

`3^n*A062157(n+1)`
-/

namespace A352779.P8797408726458989773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A062157 (n + 1)

end

end A352779.P8797408726458989773

namespace A352779

/-- `3^n*A062157(n+1)` -/
def P8797408726458989773.Spec : Prop :=
  ∀ n, P8797408726458989773.a n = A352779 n

end A352779

/-! ## A352779.P11509615866732103541

`3^n*A165326(n+1)`
-/

namespace A352779.P11509615866732103541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A165326 (n + 1)

end

end A352779.P11509615866732103541

namespace A352779

/-- `3^n*A165326(n+1)` -/
def P11509615866732103541.Spec : Prop :=
  ∀ n, P11509615866732103541.a n = A352779 n

end A352779

/-! ## A352779.P5740075708019150998

`A000748(A047234(n+1))`
-/

namespace A352779.P5740075708019150998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000748 (A047234 (n + 1)).toNat

end

end A352779.P5740075708019150998

namespace A352779

/-- `A000748(A047234(n+1))` -/
def P5740075708019150998.Spec : Prop :=
  ∀ n, P5740075708019150998.a n = A352779 n

end A352779

/-! ## A352779.P17880491885892898208

`A076040(n)-A341463(n)`
-/

namespace A352779.P17880491885892898208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n - A341463 n

end

end A352779.P17880491885892898208

namespace A352779

/-- `A076040(n)-A341463(n)` -/
def P17880491885892898208.Spec : Prop :=
  ∀ n, P17880491885892898208.a n = A352779 n

end A352779

/-! ## A352779.P16095026705348455882

`xor(A024023(n), A033999(n))`
-/

namespace A352779.P16095026705348455882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024023 n) (A033999 n)

end

end A352779.P16095026705348455882

namespace A352779

/-- `xor(A024023(n), A033999(n))` -/
def P16095026705348455882.Spec : Prop :=
  ∀ n, P16095026705348455882.a n = A352779 n

end A352779

/-!
# A352780: Square array A(n,k), n >= 1, k >= 0, read by descending antidiagonals, such that the row product is n and column k contains only (2^k)-th powers of squarefree numbers.

The programs for A352780, there is no canonical definition to state claims against.
-/

/-! ## A352780.P15100995871969019181

`A334215(n+1)^A341279(A169992(3*n+4))`
-/

namespace A352780.P15100995871969019181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334215 (n + 1) : ℚ) ^ (A341279 (A169992 (3 * n + 4)).toNat : ℤ)

end

end A352780.P15100995871969019181

/-! ## A352780.P12697221039566798071

`A334215(n+1)^A240606(A162614(3*n+1))`
-/

namespace A352780.P12697221039566798071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334215 (n + 1) : ℚ) ^ (A240606 (A162614 (3 * n + 1)).toNat : ℤ)

end

end A352780.P12697221039566798071

/-! ## A352780.P1456892516612223284

`A334215(n+1)^A124540(A291680(n))`
-/

namespace A352780.P1456892516612223284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334215 (n + 1) : ℚ) ^ (A124540 (A291680 n).toNat : ℤ)

end

end A352780.P1456892516612223284

/-! ## A352780.P15967471334081509482

`gcd(A006288(A265044(n)), A109004(n+1))`
-/

namespace A352780.P15967471334081509482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006288 (A265044 n).toNat) (A109004 (n + 1))

end

end A352780.P15967471334081509482

/-! ## A352780.P6432577020168496358

`gcd(A003987(n+1), A099443(A299265(n)))`
-/

namespace A352780.P6432577020168496358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 (n + 1)) (A099443 (A299265 n).toNat)

end

end A352780.P6432577020168496358

/-!
# A352781: Partial sums of A109812.

The programs for A352781, there is no canonical definition to state claims against.
-/

/-! ## A352781.P3228942974985116367

`∑[A109812(n+1)]`
-/

namespace A352781.P3228942974985116367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P3228942974985116367

/-! ## A352781.P16043234072940378145

`A353240(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A352781.P16043234072940378145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A353240 n + a (n - 2)

end

end A352781.P16043234072940378145

/-! ## A352781.P13383413565799638633

`∑[A352794(n+1)+1+n]`
-/

namespace A352781.P13383413565799638633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352794 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P13383413565799638633

/-! ## A352781.P4757559198484465489

`A109812(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A352781.P4757559198484465489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109812 (n + 1) + a (A023443 n).toNat

end

end A352781.P4757559198484465489

/-! ## A352781.P12087639706860548701

`∑[A109812(ϕ²-(ϕ-n))%A017042(n)]`
-/

namespace A352781.P12087639706860548701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A017042 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P12087639706860548701

/-! ## A352781.P10654762465418425525

`∑[A305371(2*(n+1))/2]`
-/

namespace A352781.P10654762465418425525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305371 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P10654762465418425525

/-! ## A352781.P8222373624635257453

`∑[A113232(A113233(n+1))]`
-/

namespace A352781.P8222373624635257453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A113233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P8222373624635257453

/-! ## A352781.P11847753362485740869

`∑[A004526(A305369(2*(n+1)))]`
-/

namespace A352781.P11847753362485740869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305369 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P11847753362485740869

/-! ## A352781.P15006244654181875640

`∑[A004525(A305371(2*(n+1)))]`
-/

namespace A352781.P15006244654181875640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A305371 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P15006244654181875640

/-! ## A352781.P5846117030610302248

`∑[A113233(A113232(n+1))]`
-/

namespace A352781.P5846117030610302248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A113232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352781.P5846117030610302248

/-! ## A352781.P8445596082793826917

`A014682(∑[A305371(2*(n+1))])`
-/

namespace A352781.P8445596082793826917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352781.P8445596082793826917

/-!
# A352784: a(n) = w(n - w(n)), where w(n) is the binary weight of n, A000120(n).

The programs for A352784, the canonical program `A352784.P5385045809583543400` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352784 has offset 0).

The definition of A352784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352784.P5385045809583543400

`A280700(floor(n/2))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352784

/-- `A280700(floor(n/2))` -/
def P5385045809583543400.Spec : Prop :=
  ∀ n, P5385045809583543400.a n = A352784 n

theorem P5385045809583543400.correct : P5385045809583543400.Spec := by
  intro n
  simp only [A352784]

end A352784

/-! ## A352784.P12923899585925414962

`A000120(A011371(n))`
-/

namespace A352784.P12923899585925414962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A011371 n).toNat

end

end A352784.P12923899585925414962

namespace A352784

/-- `A000120(A011371(n))` -/
def P12923899585925414962.Spec : Prop :=
  ∀ n, P12923899585925414962.a n = A352784 n

end A352784

/-! ## A352784.P14776262679023189055

`A000120(n-A000120(n))`
-/

namespace A352784.P14776262679023189055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A000120 n).toNat

end

end A352784.P14776262679023189055

namespace A352784

/-- `A000120(n-A000120(n))` -/
def P14776262679023189055.Spec : Prop :=
  ∀ n, P14776262679023189055.a n = A352784 n

end A352784

/-! ## A352784.P4739201345634094686

`val(A001316(2*A011371(n)), 2)`
-/

namespace A352784.P4739201345634094686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (2 * A011371 n).toNat).toNat 2

end

end A352784.P4739201345634094686

namespace A352784

/-- `val(A001316(2*A011371(n)), 2)` -/
def P4739201345634094686.Spec : Prop :=
  ∀ n, (P4739201345634094686.a n : ℤ) = A352784 n

end A352784

/-! ## A352784.P9780407150704942016

`log2(A001316(n-log2(A001316(n))))`
-/

namespace A352784.P9780407150704942016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 (A001316 n : ℝ))).toNat : ℝ)

end

end A352784.P9780407150704942016

namespace A352784

/-- `log2(A001316(n-log2(A001316(n))))` -/
def P9780407150704942016.Spec : Prop :=
  ∀ n, P9780407150704942016.a n = (A352784 n : ℝ)

end A352784

/-! ## A352784.P13588781582450286840

`A000120(A233931(n)+A233905(n))`
-/

namespace A352784.P13588781582450286840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233931 n + A233905 n).toNat

end

end A352784.P13588781582450286840

namespace A352784

/-- `A000120(A233931(n)+A233905(n))` -/
def P13588781582450286840.Spec : Prop :=
  ∀ n, P13588781582450286840.a n = A352784 n

end A352784

/-! ## A352784.P9366498360872967082

`A011371(n)-A005187(A090616(n))`
-/

namespace A352784.P9366498360872967082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A005187 (A090616 n).toNat

end

end A352784.P9366498360872967082

namespace A352784

/-- `A011371(n)-A005187(A090616(n))` -/
def P9366498360872967082.Spec : Prop :=
  ∀ n, P9366498360872967082.a n = A352784 n

end A352784

/-! ## A352784.P14867971805149471726

`∑{e}[A071044(A233931(n)+A233905(n)), #]`
-/

namespace A352784.P14867971805149471726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A233931 n + A233905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352784.P14867971805149471726

namespace A352784

/-- `∑{e}[A071044(A233931(n)+A233905(n)), #]` -/
def P14867971805149471726.Spec : Prop :=
  ∀ n, (P14867971805149471726.a n : ℤ) = A352784 n

end A352784

/-! ## A352784.P17816398360966017313

`A023416(A001316(n+1-A063787(n+1)))`
-/

namespace A352784.P17816398360966017313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001316 ((n + 1 : ℤ) - A063787 (n + 1)).toNat).toNat

end

end A352784.P17816398360966017313

namespace A352784

/-- `A023416(A001316(n+1-A063787(n+1)))` -/
def P17816398360966017313.Spec : Prop :=
  ∀ n, P17816398360966017313.a n = A352784 n

end A352784

/-! ## A352784.P16881105600029731284

`∑{e}[A071044(n-(A160385(n)+A160383(n))), #]`
-/

namespace A352784.P16881105600029731284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 ((n : ℤ) - (A160385 n + A160383 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352784.P16881105600029731284

namespace A352784

/-- `∑{e}[A071044(n-(A160385(n)+A160383(n))), #]` -/
def P16881105600029731284.Spec : Prop :=
  ∀ n, (P16881105600029731284.a n : ℤ) = A352784 n

end A352784

/-! ## A352784.P7976508368149163755

`A011371(A004442(n))-A011371(A011371(n))`
-/

namespace A352784.P7976508368149163755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A004442 n).toNat - A011371 (A011371 n).toNat

end

end A352784.P7976508368149163755

namespace A352784

/-- `A011371(A004442(n))-A011371(A011371(n))` -/
def P7976508368149163755.Spec : Prop :=
  ∀ n, P7976508368149163755.a n = A352784 n

end A352784

/-! ## A352784.P8470375489581134163

`A011371(A028310(n))-A011371(A011371(n))`
-/

namespace A352784.P8470375489581134163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A028310 n).toNat - A011371 (A011371 n).toNat

end

end A352784.P8470375489581134163

namespace A352784

/-- `A011371(A028310(n))-A011371(A011371(n))` -/
def P8470375489581134163.Spec : Prop :=
  ∀ n, P8470375489581134163.a n = A352784 n

end A352784

/-! ## A352784.P6236013348521715837

`A265745(A197911(A005187(n)-n))`
-/

namespace A352784.P6236013348521715837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A197911 (A005187 n - (n : ℤ)).toNat).toNat

end

end A352784.P6236013348521715837

namespace A352784

/-- `A265745(A197911(A005187(n)-n))` -/
def P6236013348521715837.Spec : Prop :=
  ∀ n, P6236013348521715837.a n = A352784 n

end A352784

/-! ## A352784.P14506049944599271291

`A256478(A233278(A005187(n)-n))`
-/

namespace A352784.P14506049944599271291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A233278 (A005187 n - (n : ℤ)).toNat).toNat

end

end A352784.P14506049944599271291

namespace A352784

/-- `A256478(A233278(A005187(n)-n))` -/
def P14506049944599271291.Spec : Prop :=
  ∀ n, P14506049944599271291.a n = A352784 n

end A352784

/-! ## A352784.P6368912519708043779

`A048881(2*A011371(n))`
-/

namespace A352784.P6368912519708043779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A011371 n).toNat

end

end A352784.P6368912519708043779

namespace A352784

/-- `A048881(2*A011371(n))` -/
def P6368912519708043779.Spec : Prop :=
  ∀ n, P6368912519708043779.a n = A352784 n

end A352784

/-! ## A352784.P17213047606808647613

`A000120(A378992(2*n))`
-/

namespace A352784.P17213047606808647613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A378992 (2 * n)).toNat

end

end A352784.P17213047606808647613

namespace A352784

/-- `A000120(A378992(2*n))` -/
def P17213047606808647613.Spec : Prop :=
  ∀ n, P17213047606808647613.a n = A352784 n

end A352784

/-! ## A352784.P10622628326239838881

`A048881(A011371(n)+A011371(n))`
-/

namespace A352784.P10622628326239838881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A011371 n + A011371 n).toNat

end

end A352784.P10622628326239838881

namespace A352784

/-- `A048881(A011371(n)+A011371(n))` -/
def P10622628326239838881.Spec : Prop :=
  ∀ n, P10622628326239838881.a n = A352784 n

end A352784

/-! ## A352784.P15101285542176084723

`A279345(A279342(A005187(n)-n))`
-/

namespace A352784.P15101285542176084723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279345 (A279342 (A005187 n - (n : ℤ)).toNat).toNat

end

end A352784.P15101285542176084723

namespace A352784

/-- `A279345(A279342(A005187(n)-n))` -/
def P15101285542176084723.Spec : Prop :=
  ∀ n, P15101285542176084723.a n = A352784 n

end A352784

/-! ## A352784.P3784737303289989626

`A048881(2*A378992(2*n))`
-/

namespace A352784.P3784737303289989626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A378992 (2 * n)).toNat

end

end A352784.P3784737303289989626

namespace A352784

/-- `A048881(2*A378992(2*n))` -/
def P3784737303289989626.Spec : Prop :=
  ∀ n, P3784737303289989626.a n = A352784 n

end A352784

/-!
# A352785: Numbers k such that w(k - w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

The programs for A352785, the canonical program `A352785.P6519807018689113948` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352785 has offset 1).

The definition of A352785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352785.P6519807018689113948

`A092391(A352776(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A352785

/-- `A092391(A352776(n+1))` -/
def P6519807018689113948.Spec : Prop :=
  ∀ n, P6519807018689113948.a n = A352785 (n + 1)

theorem P6519807018689113948.correct : P6519807018689113948.Spec := by
  intro n
  simp only [A352785, Nat.add_sub_cancel]

end A352785

/-! ## A352785.P2898351343842172724

`eq[n, A092391(A011371(n))]`
-/

namespace A352785.P2898351343842172724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352785.P2898351343842172724

namespace A352785

/-- `eq[n, A092391(A011371(n))]` -/
def P2898351343842172724.Spec : Prop :=
  ∀ n, (P2898351343842172724.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P4219708252648345831

`eq[A000120(n), A352784(n)]`
-/

namespace A352785.P4219708252648345831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P4219708252648345831

namespace A352785

/-- `eq[A000120(n), A352784(n)]` -/
def P4219708252648345831.Spec : Prop :=
  ∀ n, (P4219708252648345831.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P3135178777230470049

`eq[n, A092391(n-A000120(n))]`
-/

namespace A352785.P3135178777230470049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 ((n : ℤ) - A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352785.P3135178777230470049

namespace A352785

/-- `eq[n, A092391(n-A000120(n))]` -/
def P3135178777230470049.Spec : Prop :=
  ∀ n, (P3135178777230470049.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P15526766792217261895

`eq[A000120(n), A000120(A011371(n))]`
-/

namespace A352785.P15526766792217261895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P15526766792217261895

namespace A352785

/-- `eq[A000120(n), A000120(A011371(n))]` -/
def P15526766792217261895.Spec : Prop :=
  ∀ n, (P15526766792217261895.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P6288404231487438681

`eq[A001316(n), A001316(A011371(n))]`
-/

namespace A352785.P6288404231487438681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P6288404231487438681

namespace A352785

/-- `eq[A001316(n), A001316(A011371(n))]` -/
def P6288404231487438681.Spec : Prop :=
  ∀ n, (P6288404231487438681.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P17138661450213400725

`eq[A038573(A011371(n)), A038573(n)]`
-/

namespace A352785.P17138661450213400725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A011371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P17138661450213400725

namespace A352785

/-- `eq[A038573(A011371(n)), A038573(n)]` -/
def P17138661450213400725.Spec : Prop :=
  ∀ n, (P17138661450213400725.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P17912851178286790192

`eq[A048883(A011371(n)), A048883(n)]`
-/

namespace A352785.P17912851178286790192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A011371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P17912851178286790192

namespace A352785

/-- `eq[A048883(A011371(n)), A048883(n)]` -/
def P17912851178286790192.Spec : Prop :=
  ∀ n, (P17912851178286790192.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P16580214188561273182

`eq[A151712(A011371(n)), A151712(n)]`
-/

namespace A352785.P16580214188561273182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 (A011371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P16580214188561273182

namespace A352785

/-- `eq[A151712(A011371(n)), A151712(n)]` -/
def P16580214188561273182.Spec : Prop :=
  ∀ n, (P16580214188561273182.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P14330372025004024210

`eq[A324467(A011371(n)), A324467(n)]`
-/

namespace A352785.P14330372025004024210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (A011371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P14330372025004024210

namespace A352785

/-- `eq[A324467(A011371(n)), A324467(n)]` -/
def P14330372025004024210.Spec : Prop :=
  ∀ n, (P14330372025004024210.a n : ℤ) = A352785 (n + 1)

end A352785

/-! ## A352785.P5716755343225744464

`eq[A000120(n-A000120(n)), A000120(n)]`
-/

namespace A352785.P5716755343225744464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352785.P5716755343225744464

namespace A352785

/-- `eq[A000120(n-A000120(n)), A000120(n)]` -/
def P5716755343225744464.Spec : Prop :=
  ∀ n, (P5716755343225744464.a n : ℤ) = A352785 (n + 1)

end A352785

/-!
# A352787: Numbers with as many divisors as Goldbach partitions.

The programs for A352787, there is no canonical definition to state claims against.
-/

/-! ## A352787.P13979448372061711077

`eq[A032741(n)+1, A061358(n)]`
-/

namespace A352787.P13979448372061711077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352787.P13979448372061711077

/-! ## A352787.P5160657365755672715

`eq[A061358(n), A339147(n+1)]`
-/

namespace A352787.P5160657365755672715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352787.P5160657365755672715

/-! ## A352787.P14475480848285505727

`eq[A000005(C(2, n+2)+n), A061358(n)]`
-/

namespace A352787.P14475480848285505727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (n + 2) + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352787.P14475480848285505727

/-! ## A352787.P9503778094468172135

`eq[A000005(A028310(n)), A061358(n)]`
-/

namespace A352787.P9503778094468172135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352787.P9503778094468172135

/-! ## A352787.P10571881864483794938

`eq[A000005(A065190(n+1)), A061358(n)]`
-/

namespace A352787.P10571881864483794938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065190 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352787.P10571881864483794938

/-!
# A352789: Number of ways to tile a 3 X n strip with squares and P-shaped heptominoes.

The programs for A352789, the canonical program `A352789.P12230565502395155256` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352789 has offset 0).

The definition of A352789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352789.P4715966124077438321

`ogf(1/(1-x-8x^3-6x^5))`
-/

namespace A352789.P4715966124077438321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -8, 0, -6] n

end

end A352789.P4715966124077438321

namespace A352789

/-- `ogf(1/(1-x-8x^3-6x^5))` -/
def P4715966124077438321.Spec : Prop :=
  ∀ n, P4715966124077438321.a n = A352789 n

end A352789

/-! ## A352789.P12230565502395155256

`a(n-1)+8*a(n-3)+6*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=9, a(4)=17`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352789

/-- `a(n-1)+8*a(n-3)+6*a(n-5)` -/
def P12230565502395155256.Spec : Prop :=
  ∀ n, (P12230565502395155256.a n : ℤ) = A352789 n

theorem P12230565502395155256.correct : P12230565502395155256.Spec := by
  intro n
  simp only [A352789]

end A352789

/-! ## A352789.P15030248467855980123

`A115928(A383606(n))`
-/

namespace A352789.P15030248467855980123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115928 (A383606 n).toNat

end

end A352789.P15030248467855980123

namespace A352789

/-- `A115928(A383606(n))` -/
def P15030248467855980123.Spec : Prop :=
  ∀ n, P15030248467855980123.a n = A352789 n

end A352789

/-!
# A352792: a(n) is the number of numbers k < n such that A109812(k) < A109812(n).

The programs for A352792, there is no canonical definition to state claims against.
-/

/-! ## A352792.P7267081587484112847

`n+1-A227736(A205490(n))`
-/

namespace A352792.P7267081587484112847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A227736 (A205490 n).toNat

end

end A352792.P7267081587484112847

/-! ## A352792.P16423031418504491049

`A336694(A004111(n+3)+A000108(n))`
-/

namespace A352792.P16423031418504491049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336694 (A004111 (n + 3) + A000108 n).toNat

end

end A352792.P16423031418504491049

/-!
# A352794: a(n) = A109812(n) - n.

The programs for A352794, there is no canonical definition to state claims against.
-/

/-! ## A352794.P3342283543984031499

`A109812(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352794.P3342283543984031499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (n + 1) - (n + 1 : ℤ)

end

end A352794.P3342283543984031499

/-! ## A352794.P17587463744188662957

`A305371(2*(n+1))/2-(n+1)`
-/

namespace A352794.P17587463744188662957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305371 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A352794.P17587463744188662957

/-! ## A352794.P6029985595482214727

`A023443(A109812(n+1))-n`
-/

namespace A352794.P6029985595482214727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A109812 (n + 1)).toNat - (n : ℤ)

end

end A352794.P6029985595482214727

/-! ## A352794.P12530245325754791563

`A113232(A113233(n+1))-(n+1)`
-/

namespace A352794.P12530245325754791563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A113233 (n + 1)).toNat - (n + 1 : ℤ)

end

end A352794.P12530245325754791563

/-! ## A352794.P3825867469208646056

`A004526(A305369(2*(n+1)))-(n+1)`
-/

namespace A352794.P3825867469208646056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305369 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A352794.P3825867469208646056

/-! ## A352794.P8892051953017704975

`A004526(A305371(2*(n+1)))-(n+1)`
-/

namespace A352794.P8892051953017704975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A305371 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A352794.P8892051953017704975

/-! ## A352794.P13721117938202190144

`A123108(A305371(2*(n+1)))-A000027(n+1)`
-/

namespace A352794.P13721117938202190144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A305371 (2 * (n + 1))).toNat - A000027 (n + 1)

end

end A352794.P13721117938202190144

/-! ## A352794.P3684480054356640772

`A065033(A305371(2*(n+1)))-A065033(2*n+1)`
-/

namespace A352794.P3684480054356640772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A305371 (2 * (n + 1))).toNat - A065033 (2 * n + 1)

end

end A352794.P3684480054356640772

/-! ## A352794.P3793618287922473292

`A113233(A113232(n+1))-(n+1)`
-/

namespace A352794.P3793618287922473292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A113232 (n + 1)).toNat - (n + 1 : ℤ)

end

end A352794.P3793618287922473292

/-!
# A352795: Number of ways to tile a 4 X n strip with squares and L-shaped heptominoes with legs of equal length.

The programs for A352795, the canonical program `A352795.P16002478004892659593` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352795 has offset 0).

The definition of A352795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352795.P16308113686690155735

`ogf(1/(1-x-4x^4-2x^5-2x^6-2x^7))`
-/

namespace A352795.P16308113686690155735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, -4, -2, -2, -2] n

end

end A352795.P16308113686690155735

namespace A352795

/-- `ogf(1/(1-x-4x^4-2x^5-2x^6-2x^7))` -/
def P16308113686690155735.Spec : Prop :=
  ∀ n, P16308113686690155735.a n = A352795 n

end A352795

/-! ## A352795.P16002478004892659593

`a(n-1)+4*a(n-4)+2*a(n-5)+2*a(n-6)+2*a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=5, a(5)=11, a(6)=19`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352795

/-- `a(n-1)+4*a(n-4)+2*a(n-5)+2*a(n-6)+2*a(n-7)` -/
def P16002478004892659593.Spec : Prop :=
  ∀ n, (P16002478004892659593.a n : ℤ) = A352795 n

theorem P16002478004892659593.correct : P16002478004892659593.Spec := by
  intro n
  simp only [A352795]

end A352795

/-! ## A352795.P10478841901659967398

`A259225(A000288(n))-1`
-/

namespace A352795.P10478841901659967398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259225 (A000288 n).toNat - 1

end

end A352795.P10478841901659967398

namespace A352795

/-- `A259225(A000288(n))-1` -/
def P10478841901659967398.Spec : Prop :=
  ∀ n, P10478841901659967398.a n = A352795 n

end A352795

/-! ## A352795.P6325995982394212567

`A259225(A036378(n))-1`
-/

namespace A352795.P6325995982394212567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259225 (A036378 n).toNat - 1

end

end A352795.P6325995982394212567

namespace A352795

/-- `A259225(A036378(n))-1` -/
def P6325995982394212567.Spec : Prop :=
  ∀ n, P6325995982394212567.a n = A352795 n

end A352795

/-! ## A352795.P8858656996153718908

`A259225(A119266(n))-1`
-/

namespace A352795.P8858656996153718908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259225 (A119266 n).toNat - 1

end

end A352795.P8858656996153718908

namespace A352795

/-- `A259225(A119266(n))-1` -/
def P8858656996153718908.Spec : Prop :=
  ∀ n, P8858656996153718908.a n = A352795 n

end A352795

/-!
# A352796: Numbers m such that {d + m/d : d | m } does not contain consecutive integers.

The programs for A352796, the canonical program `A352796.P15094064464508577221` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352796 has offset 1).

The definition of A352796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352796.P15094064464508577221

`comp[A049207(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352796

/-- `comp[A049207(n)]` -/
def P15094064464508577221.Spec : Prop :=
  ∀ n, (P15094064464508577221.a n : ℤ) = A352796 (n + 1)

theorem P15094064464508577221.correct : P15094064464508577221.Spec := by
  intro n
  simp only [A352796, Nat.add_sub_cancel]

end A352796

/-! ## A352796.P6817181957392651787

`comp[A072389(n+1)]`
-/

namespace A352796.P6817181957392651787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P6817181957392651787

namespace A352796

/-- `comp[A072389(n+1)]` -/
def P6817181957392651787.Spec : Prop :=
  ∀ n, (P6817181957392651787.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P10545692146957952756

`comp[4*A268759(n)]`
-/

namespace A352796.P10545692146957952756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P10545692146957952756

namespace A352796

/-- `comp[4*A268759(n)]` -/
def P10545692146957952756.Spec : Prop :=
  ∀ n, (P10545692146957952756.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P15949495903452820743

`comp[4*A085780(n+1)]`
-/

namespace A352796.P15949495903452820743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P15949495903452820743

namespace A352796

/-- `comp[4*A085780(n+1)]` -/
def P15949495903452820743.Spec : Prop :=
  ∀ n, (P15949495903452820743.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P12286133174948703188

`comp[A003991(n+1)*A004247(n)]`
-/

namespace A352796.P12286133174948703188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A004247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P12286133174948703188

namespace A352796

/-- `comp[A003991(n+1)*A004247(n)]` -/
def P12286133174948703188.Spec : Prop :=
  ∀ n, (P12286133174948703188.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P6476349405954601095

`comp[A004247(n+1)*A004247(n)]`
-/

namespace A352796.P6476349405954601095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (n + 1) * A004247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P6476349405954601095

namespace A352796

/-- `comp[A004247(n+1)*A004247(n)]` -/
def P6476349405954601095.Spec : Prop :=
  ∀ n, (P6476349405954601095.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P12361532291322631868

`comp[A075362(n+1)*A079904(n)]`
-/

namespace A352796.P12361532291322631868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) * A079904 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P12361532291322631868

namespace A352796

/-- `comp[A075362(n+1)*A079904(n)]` -/
def P12361532291322631868.Spec : Prop :=
  ∀ n, (P12361532291322631868.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P18037125078195346386

`comp[A091435(n)*A095833(n+1)]`
-/

namespace A352796.P18037125078195346386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n * A095833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352796.P18037125078195346386

namespace A352796

/-- `comp[A091435(n)*A095833(n+1)]` -/
def P18037125078195346386.Spec : Prop :=
  ∀ n, (P18037125078195346386.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P17328217623153812127

`eq[char[A049207(n)], A000038(n)]`
-/

namespace A352796.P17328217623153812127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A352796.P17328217623153812127

namespace A352796

/-- `eq[char[A049207(n)], A000038(n)]` -/
def P17328217623153812127.Spec : Prop :=
  ∀ n, (P17328217623153812127.a n : ℤ) = A352796 (n + 1)

end A352796

/-! ## A352796.P13994656093653249928

`lt[char[A049207(n)], A000034(n)]`
-/

namespace A352796.P13994656093653249928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A352796.P13994656093653249928

namespace A352796

/-- `lt[char[A049207(n)], A000034(n)]` -/
def P13994656093653249928.Spec : Prop :=
  ∀ n, (P13994656093653249928.a n : ℤ) = A352796 (n + 1)

end A352796

/-!
# A352797: Let S(k) be the subsequence of multiples of k from k*positive integers where each element of S(k) sets a new record of divisors in that sequence. Then f(k) is the first element from S(k)/k that is not a power of 2. Sequence lists records for f(k).

The programs for A352797, there is no canonical definition to state claims against.
-/

/-! ## A352797.P2968885537687673553

`∏[or(1, A006530(A037459(n+1)))]`
-/

namespace A352797.P2968885537687673553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A037459 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352797.P2968885537687673553

/-! ## A352797.P16336121774607897149

`∏[or(1, A006530(A077656(n+1)))]`
-/

namespace A352797.P16336121774607897149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A077656 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352797.P16336121774607897149

/-! ## A352797.P18410550459590422203

`∏[or(1, A006530(A135130(n+1)))]`
-/

namespace A352797.P18410550459590422203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A135130 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352797.P18410550459590422203

/-! ## A352797.P16479736794990694460

`∏[or(1, A006530(A164514(n+1)))]`
-/

namespace A352797.P16479736794990694460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A164514 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352797.P16479736794990694460

/-! ## A352797.P7247944441444599063

`∏[or(1, A006530(A175084(n+1)))]`
-/

namespace A352797.P7247944441444599063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A175084 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A352797.P7247944441444599063

/-!
# A352798: a(n) = 1/(cf[0;n,n,n,...,n] - cf[0;n,n,...,n]) where the first continued fraction has n+1 terms and the second has n terms.

The programs for A352798, there is no canonical definition to state claims against.
-/

/-! ## A352798.P9266754126180904551

`A084844(n+1)*A084845(n+1)*(-1)^n`
-/

namespace A352798.P9266754126180904551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084844 (n + 1) * A084845 (n + 1) * (-1) ^ n

end

end A352798.P9266754126180904551

/-!
# A352799: Inventory sequence of binary weights.

The programs for A352799, there is no canonical definition to state claims against.
-/

/-! ## A352799.P11531620490261888805

`A260650(A133910(2*(n+2)))%A052938(n)`
-/

namespace A352799.P11531620490261888805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260650 (A133910 (2 * (n + 2))).toNat) (A052938 n)

end

end A352799.P11531620490261888805

/-! ## A352799.P9778720167167962400

`A346700(A317858(n+1))`
-/

namespace A352799.P9778720167167962400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A317858 (n + 1)).toNat

end

end A352799.P9778720167167962400

/-! ## A352799.P17670595789659076158

`A132187(record[or(5, n)-2])%A236190(3*n+2)`
-/

namespace A352799.P17670595789659076158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A236190 (3 * n + 2))

end

end A352799.P17670595789659076158

/-! ## A352799.P4092846776999346936

`A339896(A129221(n)+A116374(3*n+4))`
-/

namespace A352799.P4092846776999346936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (A129221 n + A116374 (3 * n + 4)).toNat

end

end A352799.P4092846776999346936

