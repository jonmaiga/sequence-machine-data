import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A373500: Number of (binary) heaps of length 2n whose element set equals [n].

The programs for A373500, there is no canonical definition to state claims against.
-/

/-! ## A373500.P11739949543336648126

`A373451(∑[4*n])`
-/

namespace A373500.P11739949543336648126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373500.P11739949543336648126

/-! ## A373500.P11168754468685123392

`A373451(A046092(n))+A023920(3*n+2)`
-/

namespace A373500.P11168754468685123392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A046092 n).toNat + A023920 (3 * n + 2)

end

end A373500.P11168754468685123392

/-! ## A373500.P625204366387431834

`A373451(A046092(n))+A193542(2*n+1)`
-/

namespace A373500.P625204366387431834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373451 (A046092 n).toNat + A193542 (2 * n + 1)

end

end A373500.P625204366387431834

/-!
# A373501: Size of the collineation group of classical projective planes of prime power order q.

The programs for A373501, the canonical program `A373501.P9060710270452767063` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373501 has offset 1).

The definition of A373501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373501.P9060710270452767063

`A003800(n+1)*A025474(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373501

/-- `A003800(n+1)*A025474(n+2)` -/
def P9060710270452767063.Spec : Prop :=
  ∀ n, P9060710270452767063.a n = A373501 (n + 1)

theorem P9060710270452767063.correct : P9060710270452767063.Spec := by
  intro n
  simp only [A373501, Nat.add_sub_cancel]

end A373501

/-! ## A373501.P12748112024939521854

`A001222(A246655(n+1))*A003800(n+1)`
-/

namespace A373501.P12748112024939521854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246655 (n + 1)).toNat * A003800 (n + 1)

end

end A373501.P12748112024939521854

namespace A373501

/-- `A001222(A246655(n+1))*A003800(n+1)` -/
def P12748112024939521854.Spec : Prop :=
  ∀ n, P12748112024939521854.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P10354022779936539087

`A001222(A000961(n+2))*A003800(n+1)`
-/

namespace A373501.P10354022779936539087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 2)).toNat * A003800 (n + 1)

end

end A373501.P10354022779936539087

namespace A373501

/-- `A001222(A000961(n+2))*A003800(n+1)` -/
def P10354022779936539087.Spec : Prop :=
  ∀ n, P10354022779936539087.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P1693997421899289115

`A001222(∑[A275120(n+1)])*A003800(n+1)`
-/

namespace A373501.P1693997421899289115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A003800 (n + 1)

end

end A373501.P1693997421899289115

namespace A373501

/-- `A001222(∑[A275120(n+1)])*A003800(n+1)` -/
def P1693997421899289115.Spec : Prop :=
  ∀ n, P1693997421899289115.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P16834652771415333418

`A001222(Δ[A024918(n+1)])*A003800(n+1)`
-/

namespace A373501.P16834652771415333418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat * A003800 (n + 1)

end

end A373501.P16834652771415333418

namespace A373501

/-- `A001222(Δ[A024918(n+1)])*A003800(n+1)` -/
def P16834652771415333418.Spec : Prop :=
  ∀ n, P16834652771415333418.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P11113664477951111934

`A001222(A138929(n+2)/2)*A003800(n+1)`
-/

namespace A373501.P11113664477951111934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A138929 (n + 2) : ℚ) / 2)).toNat * A003800 (n + 1)

end

end A373501.P11113664477951111934

namespace A373501

/-- `A001222(A138929(n+2)/2)*A003800(n+1)` -/
def P11113664477951111934.Spec : Prop :=
  ∀ n, P11113664477951111934.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P5825612644131050791

`A001222(∑[A057820(n+1)]+1)*A003800(n+1)`
-/

namespace A373501.P5825612644131050791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A003800 (n + 1)

end

end A373501.P5825612644131050791

namespace A373501

/-- `A001222(∑[A057820(n+1)]+1)*A003800(n+1)` -/
def P5825612644131050791.Spec : Prop :=
  ∀ n, P5825612644131050791.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P8486644605098653196

`A001222(A329119(n+1)/A060615(n))*A003800(n+1)`
-/

namespace A373501.P8486644605098653196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A329119 (n + 1) : ℚ) / (A060615 n : ℚ))).toNat * A003800 (n + 1)

end

end A373501.P8486644605098653196

namespace A373501

/-- `A001222(A329119(n+1)/A060615(n))*A003800(n+1)` -/
def P8486644605098653196.Spec : Prop :=
  ∀ n, P8486644605098653196.a n = A373501 (n + 1)

end A373501

/-! ## A373501.P12115408739997848121

`A001222(A192134(n+2)+A192015(n+2))*A003800(n+1)`
-/

namespace A373501.P12115408739997848121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A192134 (n + 2) + A192015 (n + 2)).toNat * A003800 (n + 1)

end

end A373501.P12115408739997848121

namespace A373501

/-- `A001222(A192134(n+2)+A192015(n+2))*A003800(n+1)` -/
def P12115408739997848121.Spec : Prop :=
  ∀ n, P12115408739997848121.a n = A373501 (n + 1)

end A373501

/-!
# A373504: Triangular array: row n gives the coefficients T(n,k) of powers x^(2k) in the series expansion of ((b^n + b^(-n))/2)^2, where b = x + sqrt(x^2 + 1).

The programs for A373504, there is no canonical definition to state claims against.
-/

/-! ## A373504.P15706464183613065298

`lcm(2, A127674(n))/2`
-/

namespace A373504.P15706464183613065298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A127674 n) : ℚ) / 2

end

end A373504.P15706464183613065298

/-! ## A373504.P17797511112373284740

`A211957(n)*A232089(n)`
-/

namespace A373504.P17797511112373284740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211957 n * A232089 n

end

end A373504.P17797511112373284740

/-! ## A373504.P2203940781123956682

`gcd(A106459(n), A123588(n))`
-/

namespace A373504.P2203940781123956682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A123588 n)

end

end A373504.P2203940781123956682

/-! ## A373504.P14913128640019561348

`abs(A127674(n)/A238303(n))`
-/

namespace A373504.P14913128640019561348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127674 n : ℚ) / (A238303 n : ℚ)|

end

end A373504.P14913128640019561348

/-! ## A373504.P7105107333628861189

`A232089(n)²*A208513(n+1)`
-/

namespace A373504.P7105107333628861189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n ^ 2 * A208513 (n + 1)

end

end A373504.P7105107333628861189

/-! ## A373504.P4936901609021855287

`A211957(n)²/A208513(n+1)`
-/

namespace A373504.P4936901609021855287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211957 n ^ 2 : ℚ) / (A208513 (n + 1) : ℚ)

end

end A373504.P4936901609021855287

/-! ## A373504.P7565282738413914332

`Δ[A048645(n+1)]²*A208513(n+1)`
-/

namespace A373504.P7565282738413914332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A208513 (n + 1)

end

end A373504.P7565282738413914332

/-! ## A373504.P8442382673188389721

`A011782(A002262(n))*A211957(n)`
-/

namespace A373504.P8442382673188389721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat * A211957 n

end

end A373504.P8442382673188389721

/-! ## A373504.P10528184249154362548

`A211955(n)/A085478(n)*A211957(n)`
-/

namespace A373504.P10528184249154362548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211955 n : ℚ) / (A085478 n : ℚ) * (A211957 n : ℚ)

end

end A373504.P10528184249154362548

/-! ## A373504.P5988290693992913451

`A011782(A002262(n))²*A208513(n+1)`
-/

namespace A373504.P5988290693992913451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat ^ 2 * A208513 (n + 1)

end

end A373504.P5988290693992913451

/-!
# A373505: Numbers k such that k and k+1 both have an equal number of odd and even digits in their factorial-base representations.

The programs for A373505, there is no canonical definition to state claims against.
-/

/-! ## A373505.P8363541998608566289

`∩[A351895(n+1)-1, A351895(n+1)]`
-/

namespace A373505.P8363541998608566289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351895 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373505.P8363541998608566289

/-! ## A373505.P452932976198533216

`∩[A351895(n+1), A233583(A351895(n+4))]`
-/

namespace A373505.P452932976198533216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A351895 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373505.P452932976198533216

/-!
# A373509: Expansion of 1/(1 - x/(1 - 8*x^4)^(1/4)).

The programs for A373509, there is no canonical definition to state claims against.
-/

/-! ## A373509.P14023709662413983635

`A134719(A061497(n+1))`
-/

namespace A373509.P14023709662413983635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (A061497 (n + 1)).toNat

end

end A373509.P14023709662413983635

/-! ## A373509.P14015996876759229572

`A134719(A077741(n+1))`
-/

namespace A373509.P14015996876759229572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (A077741 (n + 1)).toNat

end

end A373509.P14015996876759229572

/-! ## A373509.P16458298570837435385

`A134719(A004895(n+2))`
-/

namespace A373509.P16458298570837435385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (A004895 (n + 2)).toNat

end

end A373509.P16458298570837435385

/-! ## A373509.P16068945152290263237

`A134719(A004906(n+2))`
-/

namespace A373509.P16068945152290263237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (A004906 (n + 2)).toNat

end

end A373509.P16068945152290263237

/-! ## A373509.P2521314905068589153

`A134719(A004917(n+2))`
-/

namespace A373509.P2521314905068589153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (A004917 (n + 2)).toNat

end

end A373509.P2521314905068589153

/-!
# A373511: Expansion of 1/(1 - x/(1 - 49*x^7)^(1/7)).

The programs for A373511, there is no canonical definition to state claims against.
-/

/-! ## A373511.P9644682375058122484

`A113220(A140576(n+2))-n`
-/

namespace A373511.P9644682375058122484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A140576 (n + 2)).toNat - (n : ℤ)

end

end A373511.P9644682375058122484

/-! ## A373511.P10201005582640584084

`lt[A255593(n), A180599(n)]-n`
-/

namespace A373511.P10201005582640584084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A373511.P10201005582640584084

/-! ## A373511.P9083414391161136833

`A337277(A295056(n+1))`
-/

namespace A373511.P9083414391161136833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337277 (A295056 (n + 1)).toNat

end

end A373511.P9083414391161136833

/-!
# A373515: Numbers k, divisible by 2 but not by 4, such that rad(k) is primorial.

The programs for A373515, there is no canonical definition to state claims against.
-/

/-! ## A373515.P15510056509436998077

`A055932(eq[2, A055932(n+1)%4]+1)`
-/

namespace A373515.P15510056509436998077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055932 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A373515.P15510056509436998077

/-! ## A373515.P17259459128016518519

`filter[A304450(n+1), A359374(#)]`
-/

namespace A373515.P17259459128016518519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A373515.P17259459128016518519

/-! ## A373515.P7517566526677151745

`filter[A304450(n+1), A359820(#)]`
-/

namespace A373515.P7517566526677151745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A373515.P7517566526677151745

/-! ## A373515.P1510643887821962346

`filter[A055932(n+2), A359374(#)]`
-/

namespace A373515.P1510643887821962346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A373515.P1510643887821962346

/-! ## A373515.P17127882703764696072

`filter[A055932(n+2), A359820(#)]`
-/

namespace A373515.P17127882703764696072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A373515.P17127882703764696072

/-! ## A373515.P2045141099962263248

`record[2*A000265(A055932(n+1))]`
-/

namespace A373515.P2045141099962263248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373515.P2045141099962263248

/-! ## A373515.P13068248570731210498

`record[A071364(2*A000265(n+1))]`
-/

namespace A373515.P13068248570731210498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (2 * A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373515.P13068248570731210498

/-! ## A373515.P12936307579742598439

`filter[A304450(n+1), A166486(#)]`
-/

namespace A373515.P12936307579742598439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A373515.P12936307579742598439

/-! ## A373515.P16121622005333793401

`filter[A304450(n+1), A168185(#)]`
-/

namespace A373515.P16121622005333793401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A373515.P16121622005333793401

/-! ## A373515.P1187556873799203973

`filter[A304450(n+1), A391844(#)]`
-/

namespace A373515.P1187556873799203973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A373515.P1187556873799203973

/-!
# A373516: Number of sets that can be represented as a length-n combination of commas and braces, with elements possibly repeated.

The programs for A373516, there is no canonical definition to state claims against.
-/

/-! ## A373516.P2902037217885726478

`A364272(n+2)-A074290(A087207(3*n+2))`
-/

namespace A373516.P2902037217885726478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (n + 2) - A074290 (A087207 (3 * n + 2)).toNat

end

end A373516.P2902037217885726478

/-! ## A373516.P13808161257443264532

`A007920(A278330(n)+A007920(n))`
-/

namespace A373516.P13808161257443264532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A278330 n + A007920 n).toNat

end

end A373516.P13808161257443264532

/-!
# A373517: Expansion of e.g.f. exp(x/(1 - x^3)^(1/3)).

The programs for A373517, there is no canonical definition to state claims against.
-/

/-! ## A373517.P2978776783885880423

`A302405(A353223(n))`
-/

namespace A373517.P2978776783885880423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A353223 n).toNat

end

end A373517.P2978776783885880423

/-! ## A373517.P6901841432557016971

`A008620(2*A353223(n))`
-/

namespace A373517.P6901841432557016971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A353223 n).toNat

end

end A373517.P6901841432557016971

/-! ## A373517.P16509614107381684575

`A112689(4*A353223(n))`
-/

namespace A373517.P16509614107381684575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (4 * A353223 n).toNat

end

end A373517.P16509614107381684575

/-! ## A373517.P5958776506001095532

`A026166(abs(1-A353223(n))+1)`
-/

namespace A373517.P5958776506001095532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (|1 - A353223 n| + 1).toNat

end

end A373517.P5958776506001095532

/-!
# A373518: Expansion of e.g.f. exp(x/(1 - x^3)^(2/3)).

The programs for A373518, there is no canonical definition to state claims against.
-/

/-! ## A373518.P14575656720817386474

`A092092(A293050(n)+A208183(2*n))`
-/

namespace A373518.P14575656720817386474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (A293050 n + A208183 (2 * n)).toNat

end

end A373518.P14575656720817386474

/-! ## A373518.P10575334040379004592

`A092092(or(A208183(2*n), A293050(n)))`
-/

namespace A373518.P10575334040379004592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (Int.lor (A208183 (2 * n)) (A293050 n)).toNat

end

end A373518.P10575334040379004592

/-! ## A373518.P15556670584853499509

`A373523(7*C(n, 7)*720+n)`
-/

namespace A373518.P15556670584853499509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373523 (7 * (Nat.choose n 7 * 720) + n)

end

end A373518.P15556670584853499509

/-!
# A373519: Expansion of e.g.f. exp(x/(1 - x^4)^(1/4)).

The programs for A373519, there is no canonical definition to state claims against.
-/

/-! ## A373519.P3141056291545889776

`A003602(2*6*10*C(n, 5)+2)`
-/

namespace A373519.P3141056291545889776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * (6 * (10 * Nat.choose n 5)) + 2)

end

end A373519.P3141056291545889776

/-! ## A373519.P1155247162799397848

`A060819(2*6*10*C(n, 5)+4)`
-/

namespace A373519.P1155247162799397848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (6 * (10 * Nat.choose n 5)) + 4)

end

end A373519.P1155247162799397848

/-! ## A373519.P14559877360381153161

`A106621(2*6*10*C(n, 5)+4)`
-/

namespace A373519.P14559877360381153161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (2 * (6 * (10 * Nat.choose n 5)) + 4)

end

end A373519.P14559877360381153161

/-! ## A373519.P9757026610359264732

`A003602(xor(2, 2*6*10*C(n, 5)))`
-/

namespace A373519.P9757026610359264732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Nat.xor 2 (2 * (6 * (10 * Nat.choose n 5))))

end

end A373519.P9757026610359264732

/-! ## A373519.P6823600728379360051

`A008621(A052787(n))`
-/

namespace A373519.P6823600728379360051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A052787 n).toNat

end

end A373519.P6823600728379360051

/-!
# A373526: Expansion of e.g.f. exp(x * (1 + x^4)^(3/4)).

The programs for A373526, there is no canonical definition to state claims against.
-/

/-! ## A373526.P165759741814446662

`A139391(n*(n*(n-5)+5)²-∑{digits}[∑{digits}[n, 10^#]+1, 1-#])`
-/

namespace A373526.P165759741814446662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2 - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - (x : ℤ)).sum).toNat

end

end A373526.P165759741814446662

/-! ## A373526.P5403270199625332260

`A037915(A052787(n))`
-/

namespace A373526.P5403270199625332260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A052787 n).toNat

end

end A373526.P5403270199625332260

/-! ## A373526.P958790565679027633

`A037915(A190877(n))`
-/

namespace A373526.P958790565679027633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A190877 n).toNat

end

end A373526.P958790565679027633

/-! ## A373526.P3716998253041423067

`A006368(A293507(n))`
-/

namespace A373526.P3716998253041423067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A293507 n).toNat

end

end A373526.P3716998253041423067

/-! ## A373526.P116636741986708586

`A006368(A361703(n))`
-/

namespace A373526.P116636741986708586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A361703 n).toNat

end

end A373526.P116636741986708586

/-!
# A373531: a(n) is the maximum number of divisors of n with an equal value of the Euler totient function (A000010).

The programs for A373531, there is no canonical definition to state claims against.
-/

/-! ## A373531.P10898145360305318769

`A001221(A235482(n+1)*A363320(n+1))`
-/

namespace A373531.P10898145360305318769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A235482 (n + 1) * A363320 (n + 1)).toNat

end

end A373531.P10898145360305318769

/-! ## A373531.P15612640584098043052

`A103587(A390774(n+1))`
-/

namespace A373531.P15612640584098043052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103587 (A390774 (n + 1)).toNat

end

end A373531.P15612640584098043052

/-! ## A373531.P13486987687705203357

`A122841(3*n+3)+A000030(A062332(n+1))`
-/

namespace A373531.P13486987687705203357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (3 * n + 3) + A000030 (A062332 (n + 1)).toNat

end

end A373531.P13486987687705203357

/-! ## A373531.P4199911651220026142

`A122841(3*n+3)+A033676(A142928(n+1))`
-/

namespace A373531.P4199911651220026142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (3 * n + 3) + A033676 (A142928 (n + 1)).toNat

end

end A373531.P4199911651220026142

/-! ## A373531.P14055342266573986825

`A340373(A002496(n+5))+A122841(3*n+3)`
-/

namespace A373531.P14055342266573986825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (A002496 (n + 5)).toNat + A122841 (3 * n + 3)

end

end A373531.P14055342266573986825

/-!
# A373535: Number of self-conjugate 10 core partitions of n.

The programs for A373535, there is no canonical definition to state claims against.
-/

/-! ## A373535.P8704192306483210191

`A000700(n)%A004063(A007318(n))`
-/

namespace A373535.P8704192306483210191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) (A004063 (A007318 n).toNat)

end

end A373535.P8704192306483210191

/-! ## A373535.P777381771979056248

`A169995(n)%A332657(A026374(n))`
-/

namespace A373535.P777381771979056248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169995 n) (A332657 (A026374 n).toNat)

end

end A373535.P777381771979056248

/-! ## A373535.P6375940539063492358

`A245342(A000700(n))%A217493(n+1)`
-/

namespace A373535.P6375940539063492358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245342 (A000700 n).toNat) (A217493 (n + 1))

end

end A373535.P6375940539063492358

/-!
# A373536: Number of ways to form a direct sum decomposition of the vector space GF(2)^n and then choose a basis for each subspace in the decomposition.

The programs for A373536, the canonical program `A373536.P14270159377679087246` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373536 has offset 0).

The definition of A373536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373536.P14270159377679087246

`A000262(n)*A053601(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A373536

/-- `A000262(n)*A053601(n)` -/
def P14270159377679087246.Spec : Prop :=
  ∀ n, P14270159377679087246.a n = A373536 n

theorem P14270159377679087246.correct : P14270159377679087246.Spec := by
  intro n
  simp only [A373536]

end A373536

/-!
# A373539: Expansion of e.g.f. exp(x/(1 + x^3)^(1/3)).

The programs for A373539, there is no canonical definition to state claims against.
-/

/-! ## A373539.P5144352162600834370

`1-A008615(A373680(n))`
-/

namespace A373539.P5144352162600834370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008615 (A373680 n).toNat

end

end A373539.P5144352162600834370

/-! ## A373539.P8695742736350518289

`2-A099644(A143546(n))`
-/

namespace A373539.P8695742736350518289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099644 (A143546 n).toNat

end

end A373539.P8695742736350518289

/-! ## A373539.P4264523640418863234

`2-A118966(A287617(n))`
-/

namespace A373539.P4264523640418863234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A118966 (A287617 n).toNat

end

end A373539.P4264523640418863234

/-!
# A373540: Expansion of e.g.f. exp(x/(1 + x^4)^(1/4)).

The programs for A373540, there is no canonical definition to state claims against.
-/

/-! ## A373540.P11767384170941423715

`2-A003602(2*6*10*C(n, 5)+2)`
-/

namespace A373540.P11767384170941423715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003602 (2 * (6 * (10 * Nat.choose n 5)) + 2)

end

end A373540.P11767384170941423715

/-! ## A373540.P4956263525549200934

`2-A060819(2*6*10*C(n, 5)+4)`
-/

namespace A373540.P4956263525549200934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A060819 (2 * (6 * (10 * Nat.choose n 5)) + 4)

end

end A373540.P4956263525549200934

/-! ## A373540.P3478874705093108930

`2-A106621(2*6*10*C(n, 5)+4)`
-/

namespace A373540.P3478874705093108930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106621 (2 * (6 * (10 * Nat.choose n 5)) + 4)

end

end A373540.P3478874705093108930

/-! ## A373540.P5727185219410391006

`2-A003602(xor(2, 2*6*10*C(n, 5)))`
-/

namespace A373540.P5727185219410391006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003602 (Nat.xor 2 (2 * (6 * (10 * Nat.choose n 5))))

end

end A373540.P5727185219410391006

/-! ## A373540.P4162580931997824199

`A022958(A373519(n))`
-/

namespace A373540.P4162580931997824199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A373519 n).toNat

end

end A373540.P4162580931997824199

/-!
# A373543: Expansion of 1/(1 - x/(1 - 9*x^2)^(2/3)).

The programs for A373543, there is no canonical definition to state claims against.
-/

/-! ## A373543.P11680184663961699202

`A229848(A143546(n))`
-/

namespace A373543.P11680184663961699202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229848 (A143546 n).toNat

end

end A373543.P11680184663961699202

/-!
# A373545: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) is odd otherwise is coprime to a(n-1) if a(n-1) is even.

The programs for A373545, there is no canonical definition to state claims against.
-/

/-! ## A373545.P6803020334887999107

`A091857(A326178(n+1))`
-/

namespace A373545.P6803020334887999107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091857 (A326178 (n + 1)).toNat

end

end A373545.P6803020334887999107

/-! ## A373545.P1992979428744440581

`A289506(A000079(n))+A155457(n)`
-/

namespace A373545.P1992979428744440581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A000079 n).toNat + A155457 n

end

end A373545.P1992979428744440581

/-! ## A373545.P17714236183910793704

`A043547(n+1)-A349797(A327864(2*(n+2)))`
-/

namespace A373545.P17714236183910793704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (n + 1) - A349797 (A327864 (2 * (n + 2))).toNat

end

end A373545.P17714236183910793704

/-! ## A373545.P18284658595965706614

`A374433(A079326(n+2))+n`
-/

namespace A373545.P18284658595965706614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 (A079326 (n + 2)).toNat + (n : ℤ)

end

end A373545.P18284658595965706614

/-! ## A373545.P201897444274198953

`A138618(A217668(3*n))+n`
-/

namespace A373545.P201897444274198953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (A217668 (3 * n)).toNat + (n : ℤ)

end

end A373545.P201897444274198953

/-!
# A373546: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) is even otherwise is coprime to a(n-1) if a(n-1) is odd.

The programs for A373546, the canonical program `A373546.P4206591312085507531` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373546 has offset 1).

The definition of A373546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373546.P4206591312085507531

`xor(1, A236348(n))+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373546

/-- `xor(1, A236348(n))+1` -/
def P4206591312085507531.Spec : Prop :=
  ∀ n, P4206591312085507531.a n = A373546 (n + 1)

theorem P4206591312085507531.correct : P4206591312085507531.Spec := by
  intro n
  simp only [A373546, Nat.add_sub_cancel]

end A373546

/-! ## A373546.P145869973182483602

`A004442(A236348(n))+1`
-/

namespace A373546.P145869973182483602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A236348 n).toNat + 1

end

end A373546.P145869973182483602

namespace A373546

/-- `A004442(A236348(n))+1` -/
def P145869973182483602.Spec : Prop :=
  ∀ n, P145869973182483602.a n = A373546 (n + 1)

end A373546

/-! ## A373546.P18210193240860517441

`A014681(A064429(n+1))`
-/

namespace A373546.P18210193240860517441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A064429 (n + 1)).toNat

end

end A373546.P18210193240860517441

namespace A373546

/-- `A014681(A064429(n+1))` -/
def P18210193240860517441.Spec : Prop :=
  ∀ n, P18210193240860517441.a n = A373546 (n + 1)

end A373546

/-! ## A373546.P11196997509078415551

`A366619(A130508(n+1))`
-/

namespace A373546.P11196997509078415551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (A130508 (n + 1)).toNat

end

end A373546.P11196997509078415551

namespace A373546

/-- `A366619(A130508(n+1))` -/
def P11196997509078415551.Spec : Prop :=
  ∀ n, P11196997509078415551.a n = A373546 (n + 1)

end A373546

/-! ## A373546.P4624626275760201595

`A004442(A080782(n+2))-1`
-/

namespace A373546.P4624626275760201595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A080782 (n + 2)).toNat - 1

end

end A373546.P4624626275760201595

namespace A373546

/-- `A004442(A080782(n+2))-1` -/
def P4624626275760201595.Spec : Prop :=
  ∀ n, P4624626275760201595.a n = A373546 (n + 1)

end A373546

/-! ## A373546.P15726918070830541810

`A113778(A113655(2*n+1))/2`
-/

namespace A373546.P15726918070830541810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113778 (A113655 (2 * n + 1)).toNat : ℚ) / 2

end

end A373546.P15726918070830541810

namespace A373546

/-- `A113778(A113655(2*n+1))/2` -/
def P15726918070830541810.Spec : Prop :=
  ∀ n, P15726918070830541810.a n = (A373546 (n + 1) : ℚ)

end A373546

/-! ## A373546.P11260480467366180251

`A014681(n+1-A101675(2*n+1))`
-/

namespace A373546.P11260480467366180251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ((n + 1 : ℤ) - A101675 (2 * n + 1)).toNat

end

end A373546.P11260480467366180251

namespace A373546

/-- `A014681(n+1-A101675(2*n+1))` -/
def P11260480467366180251.Spec : Prop :=
  ∀ n, P11260480467366180251.a n = A373546 (n + 1)

end A373546

/-!
# A373547: Triangle read by rows: T(n,k) = 4^k*binomial(n+k, n-k) with 0 <= k <= n.

The programs for A373547, the canonical program `A373547.P3360985737469459485` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373547 has offset 0).

The definition of A373547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373547.P3360985737469459485

`A059268(n)*A123519(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A373547

/-- `A059268(n)*A123519(n)` -/
def P3360985737469459485.Spec : Prop :=
  ∀ n, P3360985737469459485.a n = A373547 n

theorem P3360985737469459485.correct : P3360985737469459485.Spec := by
  intro n
  simp only [A373547]

end A373547

/-! ## A373547.P15420966395535965377

`A059268(n)²*A085478(n)`
-/

namespace A373547.P15420966395535965377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A085478 n

end

end A373547.P15420966395535965377

namespace A373547

/-- `A059268(n)²*A085478(n)` -/
def P15420966395535965377.Spec : Prop :=
  ∀ n, P15420966395535965377.a n = A373547 n

end A373547

/-! ## A373547.P9780905649770803273

`abs(A059268(n)²*A123970(n))`
-/

namespace A373547.P9780905649770803273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n ^ 2 * A123970 n|

end

end A373547.P9780905649770803273

namespace A373547

/-- `abs(A059268(n)²*A123970(n))` -/
def P9780905649770803273.Spec : Prop :=
  ∀ n, P9780905649770803273.a n = A373547 n

end A373547

/-! ## A373547.P11984180335225033215

`A000079(A002262(n))²*A085478(n)`
-/

namespace A373547.P11984180335225033215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat ^ 2 * A085478 n

end

end A373547.P11984180335225033215

namespace A373547

/-- `A000079(A002262(n))²*A085478(n)` -/
def P11984180335225033215.Spec : Prop :=
  ∀ n, P11984180335225033215.a n = A373547 n

end A373547

/-! ## A373547.P14942260211292177782

`A059268(n)²*A054142(A061579(n))`
-/

namespace A373547.P14942260211292177782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A054142 (A061579 n).toNat

end

end A373547.P14942260211292177782

namespace A373547

/-- `A059268(n)²*A054142(A061579(n))` -/
def P14942260211292177782.Spec : Prop :=
  ∀ n, P14942260211292177782.a n = A373547 n

end A373547

/-! ## A373547.P9082350620811558576

`A123519(n)/A085478(n)*A123519(n)`
-/

namespace A373547.P9082350620811558576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n : ℚ) / (A085478 n : ℚ) * (A123519 n : ℚ)

end

end A373547.P9082350620811558576

namespace A373547

/-- `A123519(n)/A085478(n)*A123519(n)` -/
def P9082350620811558576.Spec : Prop :=
  ∀ n, P9082350620811558576.a n = (A373547 n : ℚ)

end A373547

/-! ## A373547.P16812941952084405105

`A011782(A002260(n+1))²*A085478(n)`
-/

namespace A373547.P16812941952084405105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat ^ 2 * A085478 n

end

end A373547.P16812941952084405105

namespace A373547

/-- `A011782(A002260(n+1))²*A085478(n)` -/
def P16812941952084405105.Spec : Prop :=
  ∀ n, P16812941952084405105.a n = A373547 n

end A373547

/-! ## A373547.P18345536135657045674

`A123519(n)²/A085478(n)`
-/

namespace A373547.P18345536135657045674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n ^ 2 : ℚ) / (A085478 n : ℚ)

end

end A373547.P18345536135657045674

namespace A373547

/-- `A123519(n)²/A085478(n)` -/
def P18345536135657045674.Spec : Prop :=
  ∀ n, P18345536135657045674.a n = (A373547 n : ℚ)

end A373547

/-! ## A373547.P9869687621066600414

`A115322(A185868(n+1))`
-/

namespace A373547.P9869687621066600414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115322 (A185868 (n + 1)).toNat

end

end A373547.P9869687621066600414

namespace A373547

/-- `A115322(A185868(n+1))` -/
def P9869687621066600414.Spec : Prop :=
  ∀ n, P9869687621066600414.a n = A373547 n

end A373547

/-! ## A373547.P9487739918946152498

`A167557(n+1)/A098361(n)`
-/

namespace A373547.P9487739918946152498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167557 (n + 1) : ℚ) / (A098361 n : ℚ)

end

end A373547.P9487739918946152498

namespace A373547

/-- `A167557(n+1)/A098361(n)` -/
def P9487739918946152498.Spec : Prop :=
  ∀ n, P9487739918946152498.a n = (A373547 n : ℚ)

end A373547

/-!
# A373549: a(n) is the parity of the n-th powerful number.

The programs for A373549, there is no canonical definition to state claims against.
-/

/-! ## A373549.P13091087166126895492

`A000035(A001694(n+1))`
-/

namespace A373549.P13091087166126895492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001694 (n + 1)).toNat

end

end A373549.P13091087166126895492

/-! ## A373549.P7779793939807203088

`A084371(n+1)%2`
-/

namespace A373549.P7779793939807203088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084371 (n + 1)) 2

end

end A373549.P7779793939807203088

/-! ## A373549.P2530927608761143437

`A258567(n+1)%2`
-/

namespace A373549.P2530927608761143437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258567 (n + 1)) 2

end

end A373549.P2530927608761143437

/-! ## A373549.P15123138829282735928

`A306458(n+1)%2`
-/

namespace A373549.P15123138829282735928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306458 (n + 1)) 2

end

end A373549.P15123138829282735928

/-! ## A373549.P12653966282429422151

`A369429(n+1)%2`
-/

namespace A373549.P12653966282429422151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369429 (n + 1)) 2

end

end A373549.P12653966282429422151

/-! ## A373549.P15525506947790635906

`A369430(n+1)%2`
-/

namespace A373549.P15525506947790635906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369430 (n + 1)) 2

end

end A373549.P15525506947790635906

/-! ## A373549.P7509211497154395312

`A374291(n+1)%2`
-/

namespace A373549.P7509211497154395312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374291 (n + 1)) 2

end

end A373549.P7509211497154395312

/-! ## A373549.P3645578370161560844

`gcd(2, A224866(n+1))-1`
-/

namespace A373549.P3645578370161560844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A224866 (n + 1)) : ℤ) - 1

end

end A373549.P3645578370161560844

/-! ## A373549.P1303867006762334419

`A000035(A084371(n+1))`
-/

namespace A373549.P1303867006762334419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A084371 (n + 1)).toNat

end

end A373549.P1303867006762334419

/-! ## A373549.P11681246011470274886

`A000035(A258567(n+1))`
-/

namespace A373549.P11681246011470274886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A258567 (n + 1)).toNat

end

end A373549.P11681246011470274886

/-! ## A373549.P953872631078398504

`A000035(A369429(n+1))`
-/

namespace A373549.P953872631078398504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A369429 (n + 1)).toNat

end

end A373549.P953872631078398504

/-! ## A373549.P3966705819710044103

`A000007(A383006(n+1))`
-/

namespace A373549.P3966705819710044103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A383006 (n + 1)).toNat

end

end A373549.P3966705819710044103

/-! ## A373549.P13121399308596448973

`and(A001694(n+1), A060576(n))`
-/

namespace A373549.P13121399308596448973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001694 (n + 1)) (A060576 n)

end

end A373549.P13121399308596448973

/-! ## A373549.P2041422374351255295

`and(A060576(n), A084371(n+1))`
-/

namespace A373549.P2041422374351255295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A084371 (n + 1))

end

end A373549.P2041422374351255295

/-! ## A373549.P13644136331737620785

`and(A001694(n+1), A158388(n))`
-/

namespace A373549.P13644136331737620785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001694 (n + 1)) (A158388 n)

end

end A373549.P13644136331737620785

/-! ## A373549.P9114719623738552708

`and(A001694(n+1), A179184(n))`
-/

namespace A373549.P9114719623738552708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001694 (n + 1)) (A179184 n)

end

end A373549.P9114719623738552708

/-! ## A373549.P16216357492783776752

`A000035(A369430(n+1))`
-/

namespace A373549.P16216357492783776752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A369430 (n + 1)).toNat

end

end A373549.P16216357492783776752

/-! ## A373549.P5840995403498810192

`A000035(A306458(n+1))`
-/

namespace A373549.P5840995403498810192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A306458 (n + 1)).toNat

end

end A373549.P5840995403498810192

/-! ## A373549.P10096213513384636368

`and(A048578(n), A084371(n+1))`
-/

namespace A373549.P10096213513384636368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A084371 (n + 1))

end

end A373549.P10096213513384636368

/-! ## A373549.P972042769813930026

`and(A001694(n+1), A020737(n))`
-/

namespace A373549.P972042769813930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001694 (n + 1)) (A020737 n)

end

end A373549.P972042769813930026

/-!
# A373550: a(n) is the parity of the n-th squarefree number.

The programs for A373550, the canonical program `A373550.P1857788289834885928` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373550 has offset 1).

The definition of A373550 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373550.P1857788289834885928

`A000035(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A373550

/-- `A000035(A005117(n+1))` -/
def P1857788289834885928.Spec : Prop :=
  ∀ n, P1857788289834885928.a n = A373550 (n + 1)

theorem P1857788289834885928.correct : P1857788289834885928.Spec := by
  intro n
  simp only [A373550, Nat.add_sub_cancel]

end A373550

/-! ## A373550.P1896864428780921327

`comp[A105570(n)]%2`
-/

namespace A373550.P1896864428780921327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A373550.P1896864428780921327

namespace A373550

/-- `comp[A105570(n)]%2` -/
def P1896864428780921327.Spec : Prop :=
  ∀ n, (P1896864428780921327.a n : ℤ) = A373550 (n + 1)

end A373550

/-! ## A373550.P3939872686504749211

`A062503(n+1)%2`
-/

namespace A373550.P3939872686504749211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062503 (n + 1)) 2

end

end A373550.P3939872686504749211

namespace A373550

/-- `A062503(n+1)%2` -/
def P3939872686504749211.Spec : Prop :=
  ∀ n, P3939872686504749211.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P9690071387284727324

`A062838(n+1)%2`
-/

namespace A373550.P9690071387284727324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062838 (n + 1)) 2

end

end A373550.P9690071387284727324

namespace A373550

/-- `A062838(n+1)%2` -/
def P9690071387284727324.Spec : Prop :=
  ∀ n, P9690071387284727324.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P4116817184407275456

`A073481(n+1)%2`
-/

namespace A373550.P4116817184407275456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073481 (n + 1)) 2

end

end A373550.P4116817184407275456

namespace A373550

/-- `A073481(n+1)%2` -/
def P4116817184407275456.Spec : Prop :=
  ∀ n, P4116817184407275456.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P667842807654315721

`A243351(n+1)%2`
-/

namespace A373550.P667842807654315721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243351 (n + 1)) 2

end

end A373550.P667842807654315721

namespace A373550

/-- `A243351(n+1)%2` -/
def P667842807654315721.Spec : Prop :=
  ∀ n, P667842807654315721.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P2661778393935576804

`A366786(n+1)%2`
-/

namespace A373550.P2661778393935576804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366786 (n + 1)) 2

end

end A373550.P2661778393935576804

namespace A373550

/-- `A366786(n+1)%2` -/
def P2661778393935576804.Spec : Prop :=
  ∀ n, P2661778393935576804.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P819822732220458713

`and(1, record[A007913(n+1)])`
-/

namespace A373550.P819822732220458713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A373550.P819822732220458713

namespace A373550

/-- `and(1, record[A007913(n+1)])` -/
def P819822732220458713.Spec : Prop :=
  ∀ n, P819822732220458713.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P5494188219936406326

`and(1, record[A007947(n+1)])`
-/

namespace A373550.P5494188219936406326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A373550.P5494188219936406326

namespace A373550

/-- `and(1, record[A007947(n+1)])` -/
def P5494188219936406326.Spec : Prop :=
  ∀ n, P5494188219936406326.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P2300999806553519126

`val(val(A133466(n+1), 2), 2)`
-/

namespace A373550.P2300999806553519126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (A133466 (n + 1)).toNat 2) 2

end

end A373550.P2300999806553519126

namespace A373550

/-- `val(val(A133466(n+1), 2), 2)` -/
def P2300999806553519126.Spec : Prop :=
  ∀ n, (P2300999806553519126.a n : ℤ) = A373550 (n + 1)

end A373550

/-! ## A373550.P8266795430864254198

`char[A322815(2*n+1)-1]`
-/

namespace A373550.P8266795430864254198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322815 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373550.P8266795430864254198

namespace A373550

/-- `char[A322815(2*n+1)-1]` -/
def P8266795430864254198.Spec : Prop :=
  ∀ n, (P8266795430864254198.a n : ℤ) = A373550 (n + 1)

end A373550

/-! ## A373550.P2074214060895072674

`A000035(A243351(n+1))`
-/

namespace A373550.P2074214060895072674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A243351 (n + 1)).toNat

end

end A373550.P2074214060895072674

namespace A373550

/-- `A000035(A243351(n+1))` -/
def P2074214060895072674.Spec : Prop :=
  ∀ n, P2074214060895072674.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P3345518397174253334

`A000007(A395754(n+1))`
-/

namespace A373550.P3345518397174253334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A395754 (n + 1)).toNat

end

end A373550.P3345518397174253334

namespace A373550

/-- `A000007(A395754(n+1))` -/
def P3345518397174253334.Spec : Prop :=
  ∀ n, P3345518397174253334.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P4918648765521004534

`A323239(record[A007947(n+1)])`
-/

namespace A373550.P4918648765521004534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A373550.P4918648765521004534

namespace A373550

/-- `A323239(record[A007947(n+1)])` -/
def P4918648765521004534.Spec : Prop :=
  ∀ n, P4918648765521004534.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P17680727700024371668

`A166486(A005117(n+1)+2)`
-/

namespace A373550.P17680727700024371668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A005117 (n + 1) + 2).toNat

end

end A373550.P17680727700024371668

namespace A373550

/-- `A166486(A005117(n+1)+2)` -/
def P17680727700024371668.Spec : Prop :=
  ∀ n, P17680727700024371668.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P9354962761758335548

`A008966(2*A005117(n+1))`
-/

namespace A373550.P9354962761758335548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * A005117 (n + 1)).toNat

end

end A373550.P9354962761758335548

namespace A373550

/-- `A008966(2*A005117(n+1))` -/
def P9354962761758335548.Spec : Prop :=
  ∀ n, P9354962761758335548.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P12271940330221150741

`A105597(2*A005117(n+1))`
-/

namespace A373550.P12271940330221150741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (2 * A005117 (n + 1)).toNat

end

end A373550.P12271940330221150741

namespace A373550

/-- `A105597(2*A005117(n+1))` -/
def P12271940330221150741.Spec : Prop :=
  ∀ n, P12271940330221150741.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P7024007571975704034

`A295316(2*A005117(n+1))`
-/

namespace A373550.P7024007571975704034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (2 * A005117 (n + 1)).toNat

end

end A373550.P7024007571975704034

namespace A373550

/-- `A295316(2*A005117(n+1))` -/
def P7024007571975704034.Spec : Prop :=
  ∀ n, P7024007571975704034.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P5798758126774592632

`A323154(2*A005117(n+1))`
-/

namespace A373550.P5798758126774592632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323154 (2 * A005117 (n + 1)).toNat

end

end A373550.P5798758126774592632

namespace A373550

/-- `A323154(2*A005117(n+1))` -/
def P5798758126774592632.Spec : Prop :=
  ∀ n, P5798758126774592632.a n = A373550 (n + 1)

end A373550

/-! ## A373550.P12501091159046435449

`A328248(2*A005117(n+1))`
-/

namespace A373550.P12501091159046435449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (2 * A005117 (n + 1)).toNat

end

end A373550.P12501091159046435449

namespace A373550

/-- `A328248(2*A005117(n+1))` -/
def P12501091159046435449.Spec : Prop :=
  ∀ n, P12501091159046435449.a n = A373550 (n + 1)

end A373550

/-!
# A373553: For any number m, let m* be the bi-infinite string obtained by repetition of the binary expansion of m; a(n) is the largest positive integer k such that the binary expansions of all positive integers <= k are found within n*.

The programs for A373553, there is no canonical definition to state claims against.
-/

/-! ## A373553.P10836142908755822144

`A144016(A020330(n+1))`
-/

namespace A373553.P10836142908755822144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144016 (A020330 (n + 1)).toNat

end

end A373553.P10836142908755822144

/-! ## A373553.P11481306374352043892

`A144016(2*n+3)%A002808(A064628(n))`
-/

namespace A373553.P11481306374352043892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144016 (2 * n + 3)) (A002808 (A064628 n).toNat)

end

end A373553.P11481306374352043892

/-! ## A373553.P45238401088012854

`A261461(2*n+3)-A175764(A256838(n+1))`
-/

namespace A373553.P45238401088012854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (2 * n + 3) - A175764 (A256838 (n + 1)).toNat

end

end A373553.P45238401088012854

/-! ## A373553.P4394157853521367776

`A261461(2*n+3)-A010052(A016778(n))`
-/

namespace A373553.P4394157853521367776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (2 * n + 3) - A010052 (A016778 n).toNat

end

end A373553.P4394157853521367776

/-! ## A373553.P16371415692652533156

`A366289(A214215(n+1))+A144016(2*n+3)`
-/

namespace A373553.P16371415692652533156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366289 (A214215 (n + 1)).toNat + A144016 (2 * n + 3)

end

end A373553.P16371415692652533156

/-!
# A373554: Number of ternary length-2 squarefree words of length n not containing the subwords 021 or 10.

The programs for A373554, the canonical program `A373554.P8589023469847850925` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373554 has offset 0).

The definition of A373554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373554.P8589023469847850925

`2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373554

/-- `2*a(n-2)+a(n-3)-a(n-4)` -/
def P8589023469847850925.Spec : Prop :=
  ∀ n, P8589023469847850925.a n = A373554 n

theorem P8589023469847850925.correct : P8589023469847850925.Spec := by
  intro n
  simp only [A373554]

end A373554

/-! ## A373554.P8751006074491709069

`A061266(A048793(n)+A001792(n))`
-/

namespace A373554.P8751006074491709069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (A048793 n + A001792 n).toNat

end

end A373554.P8751006074491709069

namespace A373554

/-- `A061266(A048793(n)+A001792(n))` -/
def P8751006074491709069.Spec : Prop :=
  ∀ n, P8751006074491709069.a n = A373554 n

end A373554

/-! ## A373554.P7657888643151995058

`A101886(A234852(n+1)+A000045(n))`
-/

namespace A373554.P7657888643151995058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (A234852 (n + 1) + A000045 n).toNat

end

end A373554.P7657888643151995058

namespace A373554

/-- `A101886(A234852(n+1)+A000045(n))` -/
def P7657888643151995058.Spec : Prop :=
  ∀ n, P7657888643151995058.a n = A373554 n

end A373554

/-! ## A373554.P12288663373359985370

`A135663(A006130(n+2))+A034709(n+1)`
-/

namespace A373554.P12288663373359985370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A006130 (n + 2)).toNat + A034709 (n + 1)

end

end A373554.P12288663373359985370

namespace A373554

/-- `A135663(A006130(n+2))+A034709(n+1)` -/
def P12288663373359985370.Spec : Prop :=
  ∀ n, P12288663373359985370.a n = A373554 n

end A373554

/-!
# A373557: Irregular triangle read by rows where row n lists (in decreasing order) the elements of the strong Schreier set encoded by A371176(2*n).

The programs for A373557, there is no canonical definition to state claims against.
-/

/-! ## A373557.P18064759109831137525

`A373345(n+1)+1`
-/

namespace A373557.P18064759109831137525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373345 (n + 1) + 1

end

end A373557.P18064759109831137525

/-! ## A373557.P7768903158518902257

`A020725(A373345(n+1))`
-/

namespace A373557.P7768903158518902257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A373345 (n + 1)).toNat

end

end A373557.P7768903158518902257

/-!
# A373559: Squares k such that rad(k) is a primorial number.

The programs for A373559, there is no canonical definition to state claims against.
-/

/-! ## A373559.P7150558138694725585

`A055932(n+1)²`
-/

namespace A373559.P7150558138694725585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) ^ 2

end

end A373559.P7150558138694725585

/-! ## A373559.P17694363286982442595

`∪[A363814(n+1), A070175(n)]²`
-/

namespace A373559.P17694363286982442595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P17694363286982442595

/-! ## A373559.P8217791109455021707

`∪[A025487(n+1), A056808(n+1)]²`
-/

namespace A373559.P8217791109455021707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P8217791109455021707

/-! ## A373559.P8171875352634202033

`(A055932(n+2)-A376690(n+1))*A055932(n+1)`
-/

namespace A373559.P8171875352634202033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055932 (n + 2) - A376690 (n + 1)) * A055932 (n + 1)

end

end A373559.P8171875352634202033

/-! ## A373559.P3763674842765168332

`record[A071364(n+1)²]`
-/

namespace A373559.P3763674842765168332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373559.P3763674842765168332

/-! ## A373559.P5047255809208042304

`∩[A073491(n+1), A151999(n+1)]²`
-/

namespace A373559.P5047255809208042304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P5047255809208042304

/-! ## A373559.P15786897673487872001

`∩[A073491(n+1), A174973(n+1)]²`
-/

namespace A373559.P15786897673487872001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P15786897673487872001

/-! ## A373559.P15883281963777018106

`∩[A073491(n+1), A239063(n+1)]²`
-/

namespace A373559.P15883281963777018106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P15883281963777018106

/-! ## A373559.P14827807291884629157

`∩[A073491(n+1), A267817(n+1)]²`
-/

namespace A373559.P14827807291884629157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P14827807291884629157

/-! ## A373559.P15805362307409959595

`∩[A073491(n+1), A290822(n+1)]²`
-/

namespace A373559.P15805362307409959595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P15805362307409959595

/-! ## A373559.P3033688539579053006

`∩[A073491(n+1), A331828(n+1)]²`
-/

namespace A373559.P3033688539579053006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P3033688539579053006

/-! ## A373559.P17904951361625799576

`∩[A073491(n+1), A359420(n+1)]²`
-/

namespace A373559.P17904951361625799576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P17904951361625799576

/-! ## A373559.P9076721826117084005

`∩[A005153(n+1), A073491(n+1)]²`
-/

namespace A373559.P9076721826117084005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P9076721826117084005

/-! ## A373559.P6086908867762799152

`∩[A073491(n+1), A093891(n+1)]²`
-/

namespace A373559.P6086908867762799152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P6086908867762799152

/-! ## A373559.P3644620964990656845

`∩[A073491(n+1), A209211(n+1)]²`
-/

namespace A373559.P3644620964990656845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A373559.P3644620964990656845

/-! ## A373559.P4220000823550965019

`record[((n+1)/A079068(n+1))²]`
-/

namespace A373559.P4220000823550965019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A079068 (n + 1) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373559.P4220000823550965019

/-! ## A373559.P11078542593476946115

`∩[A055932(n+1), A055808(n)]`
-/

namespace A373559.P11078542593476946115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373559.P11078542593476946115

/-! ## A373559.P10424608334262075400

`∩[A387901(n+1), A055808(n)]`
-/

namespace A373559.P10424608334262075400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373559.P10424608334262075400

/-! ## A373559.P15254710612351033228

`∩[A055932(n+1), A256944(n+1)]`
-/

namespace A373559.P15254710612351033228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373559.P15254710612351033228

/-! ## A373559.P2271153229394229476

`∩[A256944(n+1), A387901(n+1)]`
-/

namespace A373559.P2271153229394229476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373559.P2271153229394229476

/-!
# A373561: a(n) = (1/3)*n^5 + (1/2)*n^4 + (1/6)*n^3.

The programs for A373561, the canonical program `A373561.P15499834751725507168` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373561 has offset 0).

The definition of A373561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373561.P5898694587260340448

`n^3*(n+1)*(2*n+1)/6`
-/

namespace A373561.P5898694587260340448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 * (n + 1) * (2 * n + 1) : ℚ) / 6

end

end A373561.P5898694587260340448

namespace A373561

/-- `n^3*(n+1)*(2*n+1)/6` -/
def P5898694587260340448.Spec : Prop :=
  ∀ n, P5898694587260340448.a n = (A373561 n : ℚ)

end A373561

/-! ## A373561.P13928186945616556249

`1/3*n^5+1/2*n^4+1/6*n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373561.P13928186945616556249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (n ^ 5 : ℚ) + (1 : ℚ) / 2 * (n ^ 4 : ℚ) + (1 : ℚ) / 6 * (n ^ 3 : ℚ)

end

end A373561.P13928186945616556249

namespace A373561

/-- `1/3*n^5+1/2*n^4+1/6*n^3` -/
def P13928186945616556249.Spec : Prop :=
  ∀ n, P13928186945616556249.a n = (A373561 n : ℚ)

end A373561

/-! ## A373561.P15499834751725507168

`n²*A000330(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373561

/-- `n²*A000330(n)` -/
def P15499834751725507168.Spec : Prop :=
  ∀ n, P15499834751725507168.a n = A373561 n

theorem P15499834751725507168.correct : P15499834751725507168.Spec := by
  intro n
  simp only [A373561]

end A373561

/-! ## A373561.P9619659248376975405

`floor(n²/acot(∑[n²]))`
-/

namespace A373561.P9619659248376975405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A373561.P9619659248376975405

namespace A373561

/-- `floor(n²/acot(∑[n²]))` -/
def P9619659248376975405.Spec : Prop :=
  ∀ n, P9619659248376975405.a n = A373561 n

end A373561

/-! ## A373561.P4890770226419768609

`round(n²/acot(∑[n²]))`
-/

namespace A373561.P4890770226419768609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A373561.P4890770226419768609

namespace A373561

/-- `round(n²/acot(∑[n²]))` -/
def P4890770226419768609.Spec : Prop :=
  ∀ n, P4890770226419768609.a n = A373561 n

end A373561

/-!
# A373565: Expansion of x + 1/(1 - x).

The programs for A373565, the canonical program `A373565.P16782235386161217431` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373565 has offset 0).

The definition of A373565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-x))` (program `A373565.P16782235386161217431`, by `A373565.P16782235386161217431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373565.P16782235386161217431

`ogf((1+x-x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373565

/-- `ogf((1+x-x^2)/(1-x))` -/
def P16782235386161217431.Spec : Prop :=
  ∀ n, P16782235386161217431.a n = A373565 n

theorem P16782235386161217431.correct : P16782235386161217431.Spec := by
  intro n
  simp only [A373565]

end A373565

/-!
# A373566: Expansion of x - 1/(x - 1/(x + 1)).

The programs for A373566, the canonical program `A373566.P5157134453378657965` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373566 has offset 0).

The definition of A373566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2-x^3)/(1-x-x^2))` (program `A373566.P5157134453378657965`, by `A373566.P5157134453378657965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373566.P5157134453378657965

`ogf((1+2x-x^2-x^3)/(1-x-x^2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373566

/-- `ogf((1+2x-x^2-x^3)/(1-x-x^2))` -/
def P5157134453378657965.Spec : Prop :=
  ∀ n, P5157134453378657965.a n = A373566 n

theorem P5157134453378657965.correct : P5157134453378657965.Spec := by
  intro n
  simp only [A373566]

end A373566

/-! ## A373566.P14794269378461517223

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A373566.P14794269378461517223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A373566.P14794269378461517223

namespace A373566

/-- `round(ϕ*a(n-1))` -/
def P14794269378461517223.Spec : Prop :=
  ∀ n, P14794269378461517223.a n = A373566 n

end A373566

/-! ## A373566.P2351313062159316761

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5`
-/

namespace A373566.P2351313062159316761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 5] fun n a =>
  a (n - 1) + a (n - 2)

end

end A373566.P2351313062159316761

namespace A373566

/-- `a(n-1)+a(n-2)` -/
def P2351313062159316761.Spec : Prop :=
  ∀ n, (P2351313062159316761.a n : ℤ) = A373566 n

end A373566

/-! ## A373566.P14917956130697593638

`a(n-1)-floor(3/n-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A373566.P14917956130697593638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - ⌊3 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A373566.P14917956130697593638

namespace A373566

/-- `a(n-1)-floor(3/n-a(n-2))` -/
def P14917956130697593638.Spec : Prop :=
  ∀ n, P14917956130697593638.a n = A373566 n

end A373566

/-! ## A373566.P15708553579085800759

`a(n-1)-((4%a(n-1))%2-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A373566.P15708553579085800759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (Int.tmod (Int.tmod 4 (a (n - 1))) 2 - a (n - 2))

end

end A373566.P15708553579085800759

namespace A373566

/-- `a(n-1)-((4%a(n-1))%2-a(n-2))` -/
def P15708553579085800759.Spec : Prop :=
  ∀ n, P15708553579085800759.a n = A373566 n

end A373566

/-! ## A373566.P5997455773969961509

`A053602(2*n+1)+char[1]`
-/

namespace A373566.P5997455773969961509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A373566.P5997455773969961509

namespace A373566

/-- `A053602(2*n+1)+char[1]` -/
def P5997455773969961509.Spec : Prop :=
  ∀ n, P5997455773969961509.a n = A373566 n

end A373566

/-! ## A373566.P7529614955424665930

`A097575(A222945(n))`
-/

namespace A373566.P7529614955424665930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A222945 n).toNat

end

end A373566.P7529614955424665930

namespace A373566

/-- `A097575(A222945(n))` -/
def P7529614955424665930.Spec : Prop :=
  ∀ n, P7529614955424665930.a n = A373566 n

end A373566

/-! ## A373566.P5770043710371598738

`A115339(A223134(n))`
-/

namespace A373566.P5770043710371598738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A223134 n).toNat

end

end A373566.P5770043710371598738

namespace A373566

/-- `A115339(A223134(n))` -/
def P5770043710371598738.Spec : Prop :=
  ∀ n, P5770043710371598738.a n = A373566 n

end A373566

/-! ## A373566.P13959825952075766805

`A000045(A373565(n)+n+1)`
-/

namespace A373566.P13959825952075766805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A373565 n + (n + 1 : ℤ)).toNat

end

end A373566.P13959825952075766805

namespace A373566

/-- `A000045(A373565(n)+n+1)` -/
def P13959825952075766805.Spec : Prop :=
  ∀ n, P13959825952075766805.a n = A373566 n

end A373566

/-! ## A373566.P3204637457613930015

`A000045(A063524(n)+n+2)`
-/

namespace A373566.P3204637457613930015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A063524 n + (n + 2 : ℤ)).toNat

end

end A373566.P3204637457613930015

namespace A373566

/-- `A000045(A063524(n)+n+2)` -/
def P3204637457613930015.Spec : Prop :=
  ∀ n, P3204637457613930015.a n = A373566 n

end A373566

/-! ## A373566.P9989176877467192245

`A000045(A294619(n+1)+n+1)`
-/

namespace A373566.P9989176877467192245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A294619 (n + 1) + (n + 1 : ℤ)).toNat

end

end A373566.P9989176877467192245

namespace A373566

/-- `A000045(A294619(n+1)+n+1)` -/
def P9989176877467192245.Spec : Prop :=
  ∀ n, P9989176877467192245.a n = A373566 n

end A373566

/-! ## A373566.P12791551831424120565

`A000045(A185012(n+1)+n+2)`
-/

namespace A373566.P12791551831424120565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185012 (n + 1) + (n + 2 : ℤ)).toNat

end

end A373566.P12791551831424120565

namespace A373566

/-- `A000045(A185012(n+1)+n+2)` -/
def P12791551831424120565.Spec : Prop :=
  ∀ n, P12791551831424120565.a n = A373566 n

end A373566

/-! ## A373566.P14335151877017663843

`A232896(n+1)-A199969(n+1)`
-/

namespace A373566.P14335151877017663843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1) - A199969 (n + 1)

end

end A373566.P14335151877017663843

namespace A373566

/-- `A232896(n+1)-A199969(n+1)` -/
def P14335151877017663843.Spec : Prop :=
  ∀ n, P14335151877017663843.a n = A373566 n

end A373566

/-! ## A373566.P14664593716433946529

`A000045(A154272(n+2)+n+2)`
-/

namespace A373566.P14664593716433946529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A154272 (n + 2) + (n + 2 : ℤ)).toNat

end

end A373566.P14664593716433946529

namespace A373566

/-- `A000045(A154272(n+2)+n+2)` -/
def P14664593716433946529.Spec : Prop :=
  ∀ n, P14664593716433946529.a n = A373566 n

end A373566

/-! ## A373566.P2983258025482726556

`A000045(A370482(2*n)+n+1)`
-/

namespace A373566.P2983258025482726556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A370482 (2 * n) + (n + 1 : ℤ)).toNat

end

end A373566.P2983258025482726556

namespace A373566

/-- `A000045(A370482(2*n)+n+1)` -/
def P2983258025482726556.Spec : Prop :=
  ∀ n, P2983258025482726556.a n = A373566 n

end A373566

/-! ## A373566.P880929005552256894

`A000045(A055029(2*n)+n+2)`
-/

namespace A373566.P880929005552256894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A055029 (2 * n) + (n + 2 : ℤ)).toNat

end

end A373566.P880929005552256894

namespace A373566

/-- `A000045(A055029(2*n)+n+2)` -/
def P880929005552256894.Spec : Prop :=
  ∀ n, P880929005552256894.a n = A373566 n

end A373566

/-! ## A373566.P9448874040196876444

`A000045(A171386(2*n+1)+n+2)`
-/

namespace A373566.P9448874040196876444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A171386 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A373566.P9448874040196876444

namespace A373566

/-- `A000045(A171386(2*n+1)+n+2)` -/
def P9448874040196876444.Spec : Prop :=
  ∀ n, P9448874040196876444.a n = A373566 n

end A373566

/-! ## A373566.P16286526219894628698

`A000045(A348776(n+1))+A000045(n)`
-/

namespace A373566.P16286526219894628698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A348776 (n + 1)).toNat + A000045 n

end

end A373566.P16286526219894628698

namespace A373566

/-- `A000045(A348776(n+1))+A000045(n)` -/
def P16286526219894628698.Spec : Prop :=
  ∀ n, P16286526219894628698.a n = A373566 n

end A373566

/-! ## A373566.P14787351574112317630

`A000045(A233285(A000040(n+1))+n+1)`
-/

namespace A373566.P14787351574112317630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233285 (A000040 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A373566.P14787351574112317630

namespace A373566

/-- `A000045(A233285(A000040(n+1))+n+1)` -/
def P14787351574112317630.Spec : Prop :=
  ∀ n, P14787351574112317630.a n = A373566 n

end A373566

/-! ## A373566.P15863384384523373573

`A000045(A247193(A070174(n+1))+n+1)`
-/

namespace A373566.P15863384384523373573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A247193 (A070174 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A373566.P15863384384523373573

namespace A373566

/-- `A000045(A247193(A070174(n+1))+n+1)` -/
def P15863384384523373573.Spec : Prop :=
  ∀ n, P15863384384523373573.a n = A373566 n

end A373566

/-!
# A373567: Expansion of x + 1/(-x - 1/(-x - 1/(-x + 1))).

The programs for A373567, the canonical program `A373567.P8267683695452291464` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373567 has offset 0).

The definition of A373567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-3x^2-x^3+x^4)/(1-2x-x^2+x^3))` (program `A373567.P8267683695452291464`, by `A373567.P8267683695452291464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373567.P8267683695452291464

`ogf((1+2x-3x^2-x^3+x^4)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373567

/-- `ogf((1+2x-3x^2-x^3+x^4)/(1-2x-x^2+x^3))` -/
def P8267683695452291464.Spec : Prop :=
  ∀ n, P8267683695452291464.a n = A373567 n

theorem P8267683695452291464.correct : P8267683695452291464.Spec := by
  intro n
  simp only [A373567]

end A373567

/-! ## A373567.P15105069766116929709

`A006356(n)+char[1]`
-/

namespace A373567.P15105069766116929709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A373567.P15105069766116929709

namespace A373567

/-- `A006356(n)+char[1]` -/
def P15105069766116929709.Spec : Prop :=
  ∀ n, P15105069766116929709.a n = A373567 n

end A373567

/-! ## A373567.P16921726699457960464

`A077998(n+1)+char[1]`
-/

namespace A373567.P16921726699457960464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A373567.P16921726699457960464

namespace A373567

/-- `A077998(n+1)+char[1]` -/
def P16921726699457960464.Spec : Prop :=
  ∀ n, P16921726699457960464.a n = A373567 n

end A373567

/-! ## A373567.P4064916344380971569

`char[1]+record[A187068(2*n)]`
-/

namespace A373567.P4064916344380971569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A373567.P4064916344380971569

namespace A373567

/-- `char[1]+record[A187068(2*n)]` -/
def P4064916344380971569.Spec : Prop :=
  ∀ n, P4064916344380971569.a n = A373567 n

end A373567

/-! ## A373567.P8792759156015909916

`A063524(n)+A006356(n)`
-/

namespace A373567.P8792759156015909916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006356 n

end

end A373567.P8792759156015909916

namespace A373567

/-- `A063524(n)+A006356(n)` -/
def P8792759156015909916.Spec : Prop :=
  ∀ n, P8792759156015909916.a n = A373567 n

end A373567

/-!
# A373568: Expansion of x - 1/(x - 1/(x - 1/(x - 1/(x + 1)))).

The programs for A373568, the canonical program `A373568.P9035884112844069686` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373568 has offset 0).

The definition of A373568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-2x-3x^2+x^3+x^4))` (program `A373568.P9035884112844069686`, by `A373568.P9035884112844069686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373568.P9035884112844069686

`ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-2x-3x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373568

/-- `ogf((1+3x-3x^2-4x^3+x^4+x^5)/(1-2x-3x^2+x^3+x^4))` -/
def P9035884112844069686.Spec : Prop :=
  ∀ n, P9035884112844069686.a n = A373568 n

theorem P9035884112844069686.correct : P9035884112844069686.Spec := by
  intro n
  simp only [A373568]

end A373568

/-! ## A373568.P7229278158035237181

`A006357(n)+char[1]`
-/

namespace A373568.P7229278158035237181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A373568.P7229278158035237181

namespace A373568

/-- `A006357(n)+char[1]` -/
def P7229278158035237181.Spec : Prop :=
  ∀ n, P7229278158035237181.a n = A373568 n

end A373568

/-! ## A373568.P17637258308897560423

`A063524(n)+A006357(n)`
-/

namespace A373568.P17637258308897560423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006357 n

end

end A373568.P17637258308897560423

namespace A373568

/-- `A063524(n)+A006357(n)` -/
def P17637258308897560423.Spec : Prop :=
  ∀ n, P17637258308897560423.a n = A373568 n

end A373568

/-! ## A373568.P17560355769365847674

`or(char[A083816(n)], A006357(n))`
-/

namespace A373568.P17560355769365847674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083816 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A006357 n)

end

end A373568.P17560355769365847674

namespace A373568

/-- `or(char[A083816(n)], A006357(n))` -/
def P17560355769365847674.Spec : Prop :=
  ∀ n, P17560355769365847674.a n = A373568 n

end A373568

/-! ## A373568.P16114595404361570782

`or(char[A233698(n)], A006357(n))`
-/

namespace A373568.P16114595404361570782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A006357 n)

end

end A373568.P16114595404361570782

namespace A373568

/-- `or(char[A233698(n)], A006357(n))` -/
def P16114595404361570782.Spec : Prop :=
  ∀ n, P16114595404361570782.a n = A373568 n

end A373568

/-! ## A373568.P8738198739193813796

`A185012(n+1)+A006357(n)`
-/

namespace A373568.P8738198739193813796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 1) + A006357 n

end

end A373568.P8738198739193813796

namespace A373568

/-- `A185012(n+1)+A006357(n)` -/
def P8738198739193813796.Spec : Prop :=
  ∀ n, P8738198739193813796.a n = A373568 n

end A373568

/-! ## A373568.P9489144505318471295

`or(char[A296789(n)²], A006357(n))`
-/

namespace A373568.P9489144505318471295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296789 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A006357 n)

end

end A373568.P9489144505318471295

namespace A373568

/-- `or(char[A296789(n)²], A006357(n))` -/
def P9489144505318471295.Spec : Prop :=
  ∀ n, P9489144505318471295.a n = A373568 n

end A373568

/-! ## A373568.P13258183014752822487

`or(char[A296789(2*n)], A006357(n))`
-/

namespace A373568.P13258183014752822487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296789 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A006357 n)

end

end A373568.P13258183014752822487

namespace A373568

/-- `or(char[A296789(2*n)], A006357(n))` -/
def P13258183014752822487.Spec : Prop :=
  ∀ n, P13258183014752822487.a n = A373568 n

end A373568

/-! ## A373568.P2504011982435590679

`A010815(A002052(n+1))+A006357(n)`
-/

namespace A373568.P2504011982435590679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A002052 (n + 1)).toNat + A006357 n

end

end A373568.P2504011982435590679

namespace A373568

/-- `A010815(A002052(n+1))+A006357(n)` -/
def P2504011982435590679.Spec : Prop :=
  ∀ n, P2504011982435590679.a n = A373568 n

end A373568

/-! ## A373568.P13399422571810130983

`A361465(A176181(n+1))+A006357(n)`
-/

namespace A373568.P13399422571810130983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361465 (A176181 (n + 1)).toNat + A006357 n

end

end A373568.P13399422571810130983

namespace A373568

/-- `A361465(A176181(n+1))+A006357(n)` -/
def P13399422571810130983.Spec : Prop :=
  ∀ n, P13399422571810130983.a n = A373568 n

end A373568

/-!
# A373569: Expansion of x + 1/(-x - 1/(-x - 1/(-x - 1/(-x - 1/(-x + 1))))).

The programs for A373569, the canonical program `A373569.P8192955101016919978` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373569 has offset 0).

The definition of A373569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-6x^2-4x^3+5x^4+x^5-x^6)/(1-3x-3x^2+4x^3+x^4-x^5))` (program `A373569.P8192955101016919978`, by `A373569.P8192955101016919978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373569.P8192955101016919978

`ogf((1+3x-6x^2-4x^3+5x^4+x^5-x^6)/(1-3x-3x^2+4x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373569

/-- `ogf((1+3x-6x^2-4x^3+5x^4+x^5-x^6)/(1-3x-3x^2+4x^3+x^4-x^5))` -/
def P8192955101016919978.Spec : Prop :=
  ∀ n, P8192955101016919978.a n = A373569 n

theorem P8192955101016919978.correct : P8192955101016919978.Spec := by
  intro n
  simp only [A373569]

end A373569

/-! ## A373569.P18191770015608877786

`A006358(n)+char[1]`
-/

namespace A373569.P18191770015608877786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A373569.P18191770015608877786

namespace A373569

/-- `A006358(n)+char[1]` -/
def P18191770015608877786.Spec : Prop :=
  ∀ n, P18191770015608877786.a n = A373569 n

end A373569

/-! ## A373569.P14783623688406486995

`A063524(n)+A006358(n)`
-/

namespace A373569.P14783623688406486995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006358 n

end

end A373569.P14783623688406486995

namespace A373569

/-- `A063524(n)+A006358(n)` -/
def P14783623688406486995.Spec : Prop :=
  ∀ n, P14783623688406486995.a n = A373569 n

end A373569

/-! ## A373569.P13471464148729193608

`A010051(∑{d}[∏{p}[n+1, #], (n+1)/#])+A006358(n)`
-/

namespace A373569.P13471464148729193608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat + A006358 n

end

end A373569.P13471464148729193608

namespace A373569

/-- `A010051(∑{d}[∏{p}[n+1, #], (n+1)/#])+A006358(n)` -/
def P13471464148729193608.Spec : Prop :=
  ∀ n, P13471464148729193608.a n = A373569 n

end A373569

/-! ## A373569.P4819350482793012563

`A049084(A151708(n))+A006358(n)`
-/

namespace A373569.P4819350482793012563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A151708 n).toNat + A006358 n

end

end A373569.P4819350482793012563

namespace A373569

/-- `A049084(A151708(n))+A006358(n)` -/
def P4819350482793012563.Spec : Prop :=
  ∀ n, P4819350482793012563.a n = A373569 n

end A373569

/-! ## A373569.P15160848744454132581

`A266144(A016921(n+1))+A006358(n)`
-/

namespace A373569.P15160848744454132581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266144 (A016921 (n + 1)).toNat + A006358 n

end

end A373569.P15160848744454132581

namespace A373569

/-- `A266144(A016921(n+1))+A006358(n)` -/
def P15160848744454132581.Spec : Prop :=
  ∀ n, P15160848744454132581.a n = A373569 n

end A373569

/-! ## A373569.P8167360708971665527

`A302777(A001157(n+1))+A006358(n)`
-/

namespace A373569.P8167360708971665527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A001157 (n + 1)).toNat + A006358 n

end

end A373569.P8167360708971665527

namespace A373569

/-- `A302777(A001157(n+1))+A006358(n)` -/
def P8167360708971665527.Spec : Prop :=
  ∀ n, P8167360708971665527.a n = A373569 n

end A373569

/-! ## A373569.P4381369570168734925

`xor(A006358(n), A175663(A014632(n)))`
-/

namespace A373569.P4381369570168734925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006358 n) (A175663 (A014632 n).toNat)

end

end A373569.P4381369570168734925

namespace A373569

/-- `xor(A006358(n), A175663(A014632(n)))` -/
def P4381369570168734925.Spec : Prop :=
  ∀ n, P4381369570168734925.a n = A373569 n

end A373569

/-!
# A373575: Numbers k such that k and k-1 both have at least two distinct prime factors. First element of the n-th maximal antirun of non-prime-powers.

The programs for A373575, the canonical program `A373575.P9664136363461684318` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373575 has offset 1).

The definition of A373575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373575.P9664136363461684318

`record[A048671(A024619(n+1)+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373575

/-- `record[A048671(A024619(n+1)+1)]` -/
def P9664136363461684318.Spec : Prop :=
  ∀ n, P9664136363461684318.a n = A373575 (n + 1)

theorem P9664136363461684318.correct : P9664136363461684318.Spec := by
  intro n
  simp only [A373575, Nat.add_sub_cancel]

end A373575

/-! ## A373575.P1908284695698516885

`A361102(comp[∑[A110969(n+1)]]+1)`
-/

namespace A373575.P1908284695698516885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A373575.P1908284695698516885

namespace A373575

/-- `A361102(comp[∑[A110969(n+1)]]+1)` -/
def P1908284695698516885.Spec : Prop :=
  ∀ n, P1908284695698516885.a n = A373575 (n + 1)

end A373575

/-! ## A373575.P5584815549800594588

`record[A074591(lt[0, A178921(n+1)])+1]`
-/

namespace A373575.P5584815549800594588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373575.P5584815549800594588

namespace A373575

/-- `record[A074591(lt[0, A178921(n+1)])+1]` -/
def P5584815549800594588.Spec : Prop :=
  ∀ n, P5584815549800594588.a n = A373575 (n + 1)

end A373575

/-! ## A373575.P16576175720293821529

`record[A074591(lt[A011772(n+1), n])+1]`
-/

namespace A373575.P16576175720293821529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373575.P16576175720293821529

namespace A373575

/-- `record[A074591(lt[A011772(n+1), n])+1]` -/
def P16576175720293821529.Spec : Prop :=
  ∀ n, P16576175720293821529.a n = A373575 (n + 1)

end A373575

/-! ## A373575.P4484615795569981267

`∩[A361102(n+1), A065475(A361102(n+1))]`
-/

namespace A373575.P4484615795569981267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A361102 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373575.P4484615795569981267

namespace A373575

/-- `∩[A361102(n+1), A065475(A361102(n+1))]` -/
def P4484615795569981267.Spec : Prop :=
  ∀ n, (P4484615795569981267.a n : ℤ) = A373575 (n + 1)

end A373575

/-!
# A373577: Expansion of e.g.f. exp(x * (1 + x^2)^(3/2)).

The programs for A373577, there is no canonical definition to state claims against.
-/

/-! ## A373577.P5672734037127202593

`A347295(A373278(n))`
-/

namespace A373577.P5672734037127202593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347295 (A373278 n).toNat

end

end A373577.P5672734037127202593

/-! ## A373577.P7929354070030749701

`A122196(A365193(n)+3)`
-/

namespace A373577.P7929354070030749701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (A365193 n + 3).toNat

end

end A373577.P7929354070030749701

/-!
# A373578: Expansion of e.g.f. exp(x * (1 + x^2)^2).

The programs for A373578, there is no canonical definition to state claims against.
-/

/-! ## A373578.P6637293359265165415

`A005408(A065863(n+1)*A070946(n))`
-/

namespace A373578.P6637293359265165415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A065863 (n + 1) * A070946 n).toNat

end

end A373578.P6637293359265165415

/-! ## A373578.P5832821479992494678

`A130823(A000142(n)*A130823(n+1)+1)`
-/

namespace A373578.P5832821479992494678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A000142 n * A130823 (n + 1) + 1).toNat

end

end A373578.P5832821479992494678

/-!
# A373579: Irregular triangle read by rows where row n lists (in increasing order) the elements of the strong Schreier set encoded by A371176(2*n).

The programs for A373579, there is no canonical definition to state claims against.
-/

/-! ## A373579.P17428938876909930920

`A373359(n+1)+1`
-/

namespace A373579.P17428938876909930920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373359 (n + 1) + 1

end

end A373579.P17428938876909930920

/-! ## A373579.P3709475299255897374

`A109425(A373359(n+1))`
-/

namespace A373579.P3709475299255897374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109425 (A373359 (n + 1)).toNat

end

end A373579.P3709475299255897374

/-!
# A373581: Prime numbers whose base-2 representation is a "nested" palindrome.

The programs for A373581, there is no canonical definition to state claims against.
-/

/-! ## A373581.P2584865831864164769

`∩[A016041(n+1), A373941(n+1)]`
-/

namespace A373581.P2584865831864164769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373581.P2584865831864164769

/-! ## A373581.P12004407312002143606

`p?[A373941(n+1)]`
-/

namespace A373581.P12004407312002143606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373581.P12004407312002143606

/-! ## A373581.P13337468148304285574

`∩[A192862(n+1), A373941(n+1)]`
-/

namespace A373581.P13337468148304285574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373581.P13337468148304285574

/-! ## A373581.P10311330305058255153

`record[A020639(A373941(n+3))]`
-/

namespace A373581.P10311330305058255153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A373941 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373581.P10311330305058255153

/-! ## A373581.P3279981744421866156

`filter[A373941(n+2), A010051(#)]`
-/

namespace A373581.P3279981744421866156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A373581.P3279981744421866156

/-!
# A373584: a(n) is equal to the number of shaded cells in a regular hexagon with side n drawn on a hexagonal grid.

The programs for A373584, the canonical program `A373584.P1325323079314799769` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373584 has offset 1).

The definition of A373584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373584.P1325323079314799769

`6*ceil((n+1)*n/4)+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373584

/-- `6*ceil((n+1)*n/4)+1` -/
def P1325323079314799769.Spec : Prop :=
  ∀ n, P1325323079314799769.a n = A373584 (n + 1)

theorem P1325323079314799769.correct : P1325323079314799769.Spec := by
  intro n
  simp only [A373584, Nat.add_sub_cancel]

end A373584

/-! ## A373584.P7945241787289922453

`∑[∑[6-a(n-2)]]` with `a(0)=1, a(1)=5, a(2)=0, a(3)=0`
-/

namespace A373584.P7945241787289922453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 0, 0] fun n f2 =>
  6 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373584.P7945241787289922453

namespace A373584

/-- `∑[∑[6-a(n-2)]]` -/
def P7945241787289922453.Spec : Prop :=
  ∀ n, P7945241787289922453.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P8339528268823366415

`∑[A008458(A004525(n))]`
-/

namespace A373584.P8339528268823366415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373584.P8339528268823366415

namespace A373584

/-- `∑[A008458(A004525(n))]` -/
def P8339528268823366415.Spec : Prop :=
  ∀ n, P8339528268823366415.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P1333610252017688372

`∑[A008486(2*A004525(n))]`
-/

namespace A373584.P1333610252017688372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373584.P1333610252017688372

namespace A373584

/-- `∑[A008486(2*A004525(n))]` -/
def P1333610252017688372.Spec : Prop :=
  ∀ n, P1333610252017688372.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P1441838682008217520

`A016921(A054925(n+1))`
-/

namespace A373584.P1441838682008217520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A054925 (n + 1)).toNat

end

end A373584.P1441838682008217520

namespace A373584

/-- `A016921(A054925(n+1))` -/
def P1441838682008217520.Spec : Prop :=
  ∀ n, P1441838682008217520.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P344654599396700672

`A168301(∑[n]+1)`
-/

namespace A373584.P344654599396700672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168301 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A373584.P344654599396700672

namespace A373584

/-- `A168301(∑[n]+1)` -/
def P344654599396700672.Spec : Prop :=
  ∀ n, P344654599396700672.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P14674319853271917492

`A016777(A192447(n+1))`
-/

namespace A373584.P14674319853271917492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A192447 (n + 1)).toNat

end

end A373584.P14674319853271917492

namespace A373584

/-- `A016777(A192447(n+1))` -/
def P14674319853271917492.Spec : Prop :=
  ∀ n, P14674319853271917492.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P12168269125759150761

`A004273(A213484(n))`
-/

namespace A373584.P12168269125759150761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A213484 n).toNat

end

end A373584.P12168269125759150761

namespace A373584

/-- `A004273(A213484(n))` -/
def P12168269125759150761.Spec : Prop :=
  ∀ n, P12168269125759150761.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P13178309221039211816

`A071054(2*A192447(n+1))`
-/

namespace A373584.P13178309221039211816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 (2 * A192447 (n + 1)).toNat

end

end A373584.P13178309221039211816

namespace A373584

/-- `A071054(2*A192447(n+1))` -/
def P13178309221039211816.Spec : Prop :=
  ∀ n, P13178309221039211816.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P4201183364427995682

`A007310(A186422(A109613(n²+n)))`
-/

namespace A373584.P4201183364427995682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A186422 (A109613 (n ^ 2 + n)).toNat).toNat

end

end A373584.P4201183364427995682

namespace A373584

/-- `A007310(A186422(A109613(n²+n)))` -/
def P4201183364427995682.Spec : Prop :=
  ∀ n, P4201183364427995682.a n = A373584 (n + 1)

end A373584

/-! ## A373584.P2370974435899845692

`A007310(A109613(A212831(n²+n)))`
-/

namespace A373584.P2370974435899845692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A109613 (A212831 (n ^ 2 + n)).toNat).toNat

end

end A373584.P2370974435899845692

namespace A373584

/-- `A007310(A109613(A212831(n²+n)))` -/
def P2370974435899845692.Spec : Prop :=
  ∀ n, P2370974435899845692.a n = A373584 (n + 1)

end A373584

/-!
# A373585: a(n) = 1 if A373149(n) is even, otherwise 0, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

The programs for A373585, the canonical program `A373585.P17268978619105738609` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373585 has offset 1).

The definition of A373585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373585.P12673583175851115806

`A059841(A373149(n+1))`
-/

namespace A373585.P12673583175851115806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373149 (n + 1)).toNat

end

end A373585.P12673583175851115806

namespace A373585

/-- `A059841(A373149(n+1))` -/
def P12673583175851115806.Spec : Prop :=
  ∀ n, P12673583175851115806.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P17268978619105738609

`A059841(A001222(n+1)-A007949(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373585

/-- `A059841(A001222(n+1)-A007949(n+1))` -/
def P17268978619105738609.Spec : Prop :=
  ∀ n, P17268978619105738609.a n = A373585 (n + 1)

theorem P17268978619105738609.correct : P17268978619105738609.Spec := by
  intro n
  simp only [A373585, Nat.add_sub_cancel]

end A373585

/-! ## A373585.P8410206337749550617

`A374107(4*(n+1))`
-/

namespace A373585.P8410206337749550617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (4 * (n + 1))

end

end A373585.P8410206337749550617

namespace A373585

/-- `A374107(4*(n+1))` -/
def P8410206337749550617.Spec : Prop :=
  ∀ n, P8410206337749550617.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P3185462184709608674

`A065043(A038502(n+1))`
-/

namespace A373585.P3185462184709608674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A038502 (n + 1)).toNat

end

end A373585.P3185462184709608674

namespace A373585

/-- `A065043(A038502(n+1))` -/
def P3185462184709608674.Spec : Prop :=
  ∀ n, P3185462184709608674.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P4275288384574230891

`A059841(A374124(n+1))`
-/

namespace A373585.P4275288384574230891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A374124 (n + 1)).toNat

end

end A373585.P4275288384574230891

namespace A373585

/-- `A059841(A374124(n+1))` -/
def P4275288384574230891.Spec : Prop :=
  ∀ n, P4275288384574230891.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P4127420087882212788

`A152822(2*A374124(n+1))`
-/

namespace A373585.P4127420087882212788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * A374124 (n + 1)).toNat

end

end A373585.P4127420087882212788

namespace A373585

/-- `A152822(2*A374124(n+1))` -/
def P4127420087882212788.Spec : Prop :=
  ∀ n, P4127420087882212788.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P7671186964201192258

`A374045(2*A374124(n+1))`
-/

namespace A373585.P7671186964201192258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (2 * A374124 (n + 1)).toNat

end

end A373585.P7671186964201192258

namespace A373585

/-- `A374045(2*A374124(n+1))` -/
def P7671186964201192258.Spec : Prop :=
  ∀ n, P7671186964201192258.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P8150287878551749761

`A152822(A374124(n+1)+A374124(n+1))`
-/

namespace A373585.P8150287878551749761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A374124 (n + 1) + A374124 (n + 1)).toNat

end

end A373585.P8150287878551749761

namespace A373585

/-- `A152822(A374124(n+1)+A374124(n+1))` -/
def P8150287878551749761.Spec : Prop :=
  ∀ n, P8150287878551749761.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P2017682586938242244

`A374045(A374124(n+1)+A374124(n+1))`
-/

namespace A373585.P2017682586938242244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374045 (A374124 (n + 1) + A374124 (n + 1)).toNat

end

end A373585.P2017682586938242244

namespace A373585

/-- `A374045(A374124(n+1)+A374124(n+1))` -/
def P2017682586938242244.Spec : Prop :=
  ∀ n, P2017682586938242244.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P925403197337442424

`A356163(A061898(n+1))`
-/

namespace A373585.P925403197337442424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (A061898 (n + 1)).toNat

end

end A373585.P925403197337442424

namespace A373585

/-- `A356163(A061898(n+1))` -/
def P925403197337442424.Spec : Prop :=
  ∀ n, P925403197337442424.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P17260583674333046150

`A356163(A064614(n+1))`
-/

namespace A373585.P17260583674333046150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (A064614 (n + 1)).toNat

end

end A373585.P17260583674333046150

namespace A373585

/-- `A356163(A064614(n+1))` -/
def P17260583674333046150.Spec : Prop :=
  ∀ n, P17260583674333046150.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P12625607080929548503

`A356163(A072027(n+1))`
-/

namespace A373585.P12625607080929548503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (A072027 (n + 1)).toNat

end

end A373585.P12625607080929548503

namespace A373585

/-- `A356163(A072027(n+1))` -/
def P12625607080929548503.Spec : Prop :=
  ∀ n, P12625607080929548503.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P3998830173878405780

`A365390(n+1)%2`
-/

namespace A373585.P3998830173878405780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365390 (n + 1)) 2

end

end A373585.P3998830173878405780

namespace A373585

/-- `A365390(n+1)%2` -/
def P3998830173878405780.Spec : Prop :=
  ∀ n, P3998830173878405780.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P159575431619030679

`and(A060576(n), A365390(n+1))`
-/

namespace A373585.P159575431619030679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A365390 (n + 1))

end

end A373585.P159575431619030679

namespace A373585

/-- `and(A060576(n), A365390(n+1))` -/
def P159575431619030679.Spec : Prop :=
  ∀ n, P159575431619030679.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P2383394924459037585

`and(A158388(n), A365390(n+1))`
-/

namespace A373585.P2383394924459037585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A365390 (n + 1))

end

end A373585.P2383394924459037585

namespace A373585

/-- `and(A158388(n), A365390(n+1))` -/
def P2383394924459037585.Spec : Prop :=
  ∀ n, P2383394924459037585.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P7601320208874433607

`gcd(2, A113177(n+1))-1`
-/

namespace A373585.P7601320208874433607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A113177 (n + 1)) : ℤ) - 1

end

end A373585.P7601320208874433607

namespace A373585

/-- `gcd(2, A113177(n+1))-1` -/
def P7601320208874433607.Spec : Prop :=
  ∀ n, P7601320208874433607.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P3046562342627167763

`and(A143096(n+1), A365390(n+1))`
-/

namespace A373585.P3046562342627167763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143096 (n + 1)) (A365390 (n + 1))

end

end A373585.P3046562342627167763

namespace A373585

/-- `and(A143096(n+1), A365390(n+1))` -/
def P3046562342627167763.Spec : Prop :=
  ∀ n, P3046562342627167763.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P9319600680496447709

`and(A048578(n), A365390(n+1))`
-/

namespace A373585.P9319600680496447709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A365390 (n + 1))

end

end A373585.P9319600680496447709

namespace A373585

/-- `and(A048578(n), A365390(n+1))` -/
def P9319600680496447709.Spec : Prop :=
  ∀ n, P9319600680496447709.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P552334844421349306

`and(A066827(n+1), A365390(n+1))`
-/

namespace A373585.P552334844421349306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A365390 (n + 1))

end

end A373585.P552334844421349306

namespace A373585

/-- `and(A066827(n+1), A365390(n+1))` -/
def P552334844421349306.Spec : Prop :=
  ∀ n, P552334844421349306.a n = A373585 (n + 1)

end A373585

/-! ## A373585.P9212924130736701375

`and(A020737(n), A365390(n+1))`
-/

namespace A373585.P9212924130736701375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A365390 (n + 1))

end

end A373585.P9212924130736701375

namespace A373585

/-- `and(A020737(n), A365390(n+1))` -/
def P9212924130736701375.Spec : Prop :=
  ∀ n, P9212924130736701375.a n = A373585 (n + 1)

end A373585

/-!
# A373586: Numbers k for which A373149(k) is even, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

The programs for A373586, the canonical program `A373586.P5907604992002336986` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373586 has offset 1).

The definition of A373586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373586.P15712079545427222920

`eq[1, A373585(n+1)]+1`
-/

namespace A373586.P15712079545427222920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373586.P15712079545427222920

namespace A373586

/-- `eq[1, A373585(n+1)]+1` -/
def P15712079545427222920.Spec : Prop :=
  ∀ n, (P15712079545427222920.a n : ℤ) = A373586 (n + 1)

end A373586

/-! ## A373586.P5907604992002336986

`record[gcd(n+1, A374206(2*(n+1)))]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A373586

/-- `record[gcd(n+1, A374206(2*(n+1)))]` -/
def P5907604992002336986.Spec : Prop :=
  ∀ n, (P5907604992002336986.a n : ℤ) = A373586 (n + 1)

theorem P5907604992002336986.correct : P5907604992002336986.Spec := by
  intro n
  simp only [A373586, Nat.add_sub_cancel]

end A373586

/-! ## A373586.P5824466786124623793

`record[A000027(n+1)*A373585(n+1)]`
-/

namespace A373586.P5824466786124623793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A373585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373586.P5824466786124623793

namespace A373586

/-- `record[A000027(n+1)*A373585(n+1)]` -/
def P5824466786124623793.Spec : Prop :=
  ∀ n, P5824466786124623793.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P4067919408631041903

`filter[A171581(n+1), A373585(#)]`
-/

namespace A373586.P4067919408631041903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P4067919408631041903

namespace A373586

/-- `filter[A171581(n+1), A373585(#)]` -/
def P4067919408631041903.Spec : Prop :=
  ∀ n, P4067919408631041903.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P14341290757687992826

`filter[A173905(n+2), A373585(#)]`
-/

namespace A373586.P14341290757687992826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P14341290757687992826

namespace A373586

/-- `filter[A173905(n+2), A373585(#)]` -/
def P14341290757687992826.Spec : Prop :=
  ∀ n, P14341290757687992826.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P16044134091931761356

`filter[A171085(n+1), A373585(#)]`
-/

namespace A373586.P16044134091931761356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P16044134091931761356

namespace A373586

/-- `filter[A171085(n+1), A373585(#)]` -/
def P16044134091931761356.Spec : Prop :=
  ∀ n, P16044134091931761356.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P7415498465054005877

`filter[A121543(n+1), A373585(#)]`
-/

namespace A373586.P7415498465054005877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P7415498465054005877

namespace A373586

/-- `filter[A121543(n+1), A373585(#)]` -/
def P7415498465054005877.Spec : Prop :=
  ∀ n, P7415498465054005877.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P2744391304132854020

`filter[A379053(n+1), A373585(#)]`
-/

namespace A373586.P2744391304132854020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P2744391304132854020

namespace A373586

/-- `filter[A379053(n+1), A373585(#)]` -/
def P2744391304132854020.Spec : Prop :=
  ∀ n, P2744391304132854020.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P6208000542422811174

`filter[A101513(n+1), A373585(#)]`
-/

namespace A373586.P6208000542422811174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P6208000542422811174

namespace A373586

/-- `filter[A101513(n+1), A373585(#)]` -/
def P6208000542422811174.Spec : Prop :=
  ∀ n, P6208000542422811174.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P11536969984944350912

`filter[A376198(n+1), A373585(#)]`
-/

namespace A373586.P11536969984944350912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P11536969984944350912

namespace A373586

/-- `filter[A376198(n+1), A373585(#)]` -/
def P11536969984944350912.Spec : Prop :=
  ∀ n, P11536969984944350912.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P1492199930950452478

`filter[A156657(n+2), A373585(#)]`
-/

namespace A373586.P1492199930950452478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P1492199930950452478

namespace A373586

/-- `filter[A156657(n+2), A373585(#)]` -/
def P1492199930950452478.Spec : Prop :=
  ∀ n, P1492199930950452478.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P362037327044256889

`filter[A183300(n+1), A373585(#)]`
-/

namespace A373586.P362037327044256889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A373586.P362037327044256889

namespace A373586

/-- `filter[A183300(n+1), A373585(#)]` -/
def P362037327044256889.Spec : Prop :=
  ∀ n, P362037327044256889.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P9821023157711910833

`filter[n+1, A373585(#)]`
-/

namespace A373586.P9821023157711910833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j) = 1) n)

end

end A373586.P9821023157711910833

namespace A373586

/-- `filter[n+1, A373585(#)]` -/
def P9821023157711910833.Spec : Prop :=
  ∀ n, (P9821023157711910833.a n : ℤ) = A373586 (n + 1)

end A373586

/-! ## A373586.P7347025906404034078

`eq[char[A373587(n+1)], A000038(n)]`
-/

namespace A373586.P7347025906404034078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A373586.P7347025906404034078

namespace A373586

/-- `eq[char[A373587(n+1)], A000038(n)]` -/
def P7347025906404034078.Spec : Prop :=
  ∀ n, (P7347025906404034078.a n : ℤ) = A373586 (n + 1)

end A373586

/-! ## A373586.P5846570619409382371

`record[A246277(A373587(n+1))]`
-/

namespace A373586.P5846570619409382371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A373587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373586.P5846570619409382371

namespace A373586

/-- `record[A246277(A373587(n+1))]` -/
def P5846570619409382371.Spec : Prop :=
  ∀ n, P5846570619409382371.a n = A373586 (n + 1)

end A373586

/-! ## A373586.P457568569038934093

`lt[A373585(A008486(2*n)), 1]`
-/

namespace A373586.P457568569038934093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A008486 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A373586.P457568569038934093

namespace A373586

/-- `lt[A373585(A008486(2*n)), 1]` -/
def P457568569038934093.Spec : Prop :=
  ∀ n, (P457568569038934093.a n : ℤ) = A373586 (n + 1)

end A373586

/-!
# A373587: Numbers k for which A373149(k) is odd, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

The programs for A373587, the canonical program `A373587.P2627240491300231812` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373587 has offset 1).

The definition of A373587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373587.P2839367183757163517

`lt[A373585(n+1), 1]+1`
-/

namespace A373587.P2839367183757163517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373587.P2839367183757163517

namespace A373587

/-- `lt[A373585(n+1), 1]+1` -/
def P2839367183757163517.Spec : Prop :=
  ∀ n, (P2839367183757163517.a n : ℤ) = A373587 (n + 1)

end A373587

/-! ## A373587.P2627240491300231812

`comp[∪[A373586(n+1), n²]]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A373587

/-- `comp[∪[A373586(n+1), n²]]` -/
def P2627240491300231812.Spec : Prop :=
  ∀ n, (P2627240491300231812.a n : ℤ) = A373587 (n + 1)

theorem P2627240491300231812.correct : P2627240491300231812.Spec := by
  intro n
  simp only [A373587, Nat.add_sub_cancel]

end A373587

/-! ## A373587.P5533904711505981090

`eq[1, A373585(2*(n+1))]+1`
-/

namespace A373587.P5533904711505981090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373587.P5533904711505981090

namespace A373587

/-- `eq[1, A373585(2*(n+1))]+1` -/
def P5533904711505981090.Spec : Prop :=
  ∀ n, (P5533904711505981090.a n : ℤ) = A373587 (n + 1)

end A373587

/-! ## A373587.P5156715934634276670

`lt[A373585(A008486(n)), 1]`
-/

namespace A373587.P5156715934634276670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A008486 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A373587.P5156715934634276670

namespace A373587

/-- `lt[A373585(A008486(n)), 1]` -/
def P5156715934634276670.Spec : Prop :=
  ∀ n, (P5156715934634276670.a n : ℤ) = A373587 (n + 1)

end A373587

/-! ## A373587.P9150469328856995825

`record[gcd(A028242(2*(n+1)), A374206(n+2))]`
-/

namespace A373587.P9150469328856995825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028242 (2 * (n + 1))) (A374206 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373587.P9150469328856995825

namespace A373587

/-- `record[gcd(A028242(2*(n+1)), A374206(n+2))]` -/
def P9150469328856995825.Spec : Prop :=
  ∀ n, (P9150469328856995825.a n : ℤ) = A373587 (n + 1)

end A373587

/-! ## A373587.P1148594153181698290

`A008615(∩[A005843(3*(n+1)), A373586(n+1)])`
-/

namespace A373587.P1148594153181698290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A373587.P1148594153181698290

namespace A373587

/-- `A008615(∩[A005843(3*(n+1)), A373586(n+1)])` -/
def P1148594153181698290.Spec : Prop :=
  ∀ n, P1148594153181698290.a n = A373587 (n + 1)

end A373587

/-!
# A373588: 

The programs for A373588, there is no canonical definition to state claims against.
-/

/-! ## A373588.P3115238127334325937

`A369658(A087412(n+1))`
-/

namespace A373588.P3115238127334325937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 (A087412 (n + 1)).toNat

end

end A373588.P3115238127334325937

/-!
# A373589: Numbers whose number of prime factors (with multiplicity) is a multiple of 3, and all of them are of the type 3m-1 (in A003627).

The programs for A373589, there is no canonical definition to state claims against.
-/

/-! ## A373589.P4870923269574755886

`filter[A004612(n+1), A359430(#)]`
-/

namespace A373589.P4870923269574755886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A373589.P4870923269574755886

/-! ## A373589.P14084302481449369523

`filter[A004612(n+1), A369643(#)]`
-/

namespace A373589.P14084302481449369523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A373589.P14084302481449369523

/-! ## A373589.P17337703653289819751

`filter[A004612(n+1), A369658(#)]`
-/

namespace A373589.P17337703653289819751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A373589.P17337703653289819751

/-! ## A373589.P1858306572680803737

`filter[A004612(n+1), A373371(#)]`
-/

namespace A373589.P1858306572680803737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A373589.P1858306572680803737

/-! ## A373589.P11090106544066311827

`filter[A004612(n+1), A373472(#)]`
-/

namespace A373589.P11090106544066311827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373589.P11090106544066311827

/-! ## A373589.P13450844690217399819

`filter[A004612(n+1), A373474(#)]`
-/

namespace A373589.P13450844690217399819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A373589.P13450844690217399819

/-! ## A373589.P8120420166305884488

`filter[A004612(n+1), A373477(#)]`
-/

namespace A373589.P8120420166305884488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373477 (f1 j).toNat = 1) n)

end

end A373589.P8120420166305884488

/-! ## A373589.P9461984013346857566

`filter[A004612(n+1), A373491(#)]`
-/

namespace A373589.P9461984013346857566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373589.P9461984013346857566

/-! ## A373589.P2666282699326923517

`filter[A004612(n+1), A373493(#)]`
-/

namespace A373589.P2666282699326923517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373589.P2666282699326923517

/-! ## A373589.P12473416807941243118

`filter[A004612(n+1), A373975(#)]`
-/

namespace A373589.P12473416807941243118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A373589.P12473416807941243118

/-!
# A373590: Numbers whose number of prime factors (with multiplicity) is a multiple of 3, and all of them are of the type 3m+1 (in A002476).

The programs for A373590, the canonical program `A373590.P15721215332893616933` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373590 has offset 1).

The definition of A373590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 824 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373590.P14133133823726347963

`∩[A004611(n+1), A373484(n+1)]`
-/

namespace A373590.P14133133823726347963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P14133133823726347963

namespace A373590

/-- `∩[A004611(n+1), A373484(n+1)]` -/
def P14133133823726347963.Spec : Prop :=
  ∀ n, (P14133133823726347963.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P13871716947468087814

`∩[A004611(n+1), A373492(n+1)]`
-/

namespace A373590.P13871716947468087814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P13871716947468087814

namespace A373590

/-- `∩[A004611(n+1), A373492(n+1)]` -/
def P13871716947468087814.Spec : Prop :=
  ∀ n, (P13871716947468087814.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P15721215332893616933

`∩[A004611(n+1), A373597(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373590

/-- `∩[A004611(n+1), A373597(n+1)]` -/
def P15721215332893616933.Spec : Prop :=
  ∀ n, (P15721215332893616933.a n : ℤ) = A373590 (n + 1)

theorem P15721215332893616933.correct : P15721215332893616933.Spec := by
  intro n
  simp only [A373590, Nat.add_sub_cancel]

end A373590

/-! ## A373590.P3475885685035790700

`∩[A004611(n+1), A373837(n+1)]`
-/

namespace A373590.P3475885685035790700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P3475885685035790700

namespace A373590

/-- `∩[A004611(n+1), A373837(n+1)]` -/
def P3475885685035790700.Spec : Prop :=
  ∀ n, (P3475885685035790700.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P14262698547324778333

`∩[A004611(n+1), A373494(n+1)]`
-/

namespace A373590.P14262698547324778333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P14262698547324778333

namespace A373590

/-- `∩[A004611(n+1), A373494(n+1)]` -/
def P14262698547324778333.Spec : Prop :=
  ∀ n, (P14262698547324778333.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P3091848246805573869

`∩[A004611(n+1), A373473(n+1)]`
-/

namespace A373590.P3091848246805573869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P3091848246805573869

namespace A373590

/-- `∩[A004611(n+1), A373473(n+1)]` -/
def P3091848246805573869.Spec : Prop :=
  ∀ n, (P3091848246805573869.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P8414350187562018310

`∩[A004611(n+1), A373144(n+1)]`
-/

namespace A373590.P8414350187562018310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P8414350187562018310

namespace A373590

/-- `∩[A004611(n+1), A373144(n+1)]` -/
def P8414350187562018310.Spec : Prop :=
  ∀ n, (P8414350187562018310.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P16409550075951254306

`∩[A034017(n+1), A373144(n+1)]`
-/

namespace A373590.P16409550075951254306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P16409550075951254306

namespace A373590

/-- `∩[A034017(n+1), A373144(n+1)]` -/
def P16409550075951254306.Spec : Prop :=
  ∀ n, (P16409550075951254306.a n : ℤ) = A373590 (n + 1)

end A373590

/-! ## A373590.P2193478012868883930

`∩[A004611(n+1), A373373(n+1)]`
-/

namespace A373590.P2193478012868883930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P2193478012868883930

namespace A373590

/-- `∩[A004611(n+1), A373373(n+1)]` -/
def P2193478012868883930.Spec : Prop :=
  ∀ n, (P2193478012868883930.a n : ℤ) = A373590 (n + 1)

end A373590

/-!
# A373591: Number of primes congruent to 1 modulo 3 dividing n (with multiplicity).

The programs for A373591, the canonical program `A373591.P16264058647901355878` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373591 has offset 1).

The definition of A373591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A248909, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373591.P16264058647901355878

`A001222(A248909(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373591

/-- `A001222(A248909(n+1))` -/
def P16264058647901355878.Spec : Prop :=
  ∀ n, P16264058647901355878.a n = A373591 (n + 1)

theorem P16264058647901355878.correct : P16264058647901355878.Spec := by
  intro n
  simp only [A373591, Nat.add_sub_cancel]

end A373591

/-! ## A373591.P5597267067542904552

`A001222(n+1)-(A007949(n+1)+A373592(n+1))`
-/

namespace A373591.P5597267067542904552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A007949 (n + 1) + A373592 (n + 1))

end

end A373591.P5597267067542904552

namespace A373591

/-- `A001222(n+1)-(A007949(n+1)+A373592(n+1))` -/
def P5597267067542904552.Spec : Prop :=
  ∀ n, P5597267067542904552.a n = A373591 (n + 1)

end A373591

/-! ## A373591.P11001186028781915170

`val(A319986(n+1), 2)`
-/

namespace A373591.P11001186028781915170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319986 (n + 1)).toNat 2

end

end A373591.P11001186028781915170

namespace A373591

/-- `val(A319986(n+1), 2)` -/
def P11001186028781915170.Spec : Prop :=
  ∀ n, (P11001186028781915170.a n : ℤ) = A373591 (n + 1)

end A373591

/-! ## A373591.P3713247599168067552

`A106799((n+1)/A343431(n+1))`
-/

namespace A373591.P3713247599168067552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343431 (n + 1) : ℚ))).toNat

end

end A373591.P3713247599168067552

namespace A373591

/-- `A106799((n+1)/A343431(n+1))` -/
def P3713247599168067552.Spec : Prop :=
  ∀ n, P3713247599168067552.a n = A373591 (n + 1)

end A373591

/-! ## A373591.P15478669050550934004

`A007814(A319986(n+1))`
-/

namespace A373591.P15478669050550934004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319986 (n + 1)).toNat

end

end A373591.P15478669050550934004

namespace A373591

/-- `A007814(A319986(n+1))` -/
def P15478669050550934004.Spec : Prop :=
  ∀ n, P15478669050550934004.a n = A373591 (n + 1)

end A373591

/-! ## A373591.P4706285435818010224

`A010872(A341885(n+1))`
-/

namespace A373591.P4706285435818010224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A341885 (n + 1)).toNat

end

end A373591.P4706285435818010224

namespace A373591

/-- `A010872(A341885(n+1))` -/
def P4706285435818010224.Spec : Prop :=
  ∀ n, P4706285435818010224.a n = A373591 (n + 1)

end A373591

/-! ## A373591.P17831711970318236099

`A374099((n+1)*A374099(n+1))`
-/

namespace A373591.P17831711970318236099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374099 ((n + 1 : ℤ) * A374099 (n + 1)).toNat

end

end A373591.P17831711970318236099

namespace A373591

/-- `A374099((n+1)*A374099(n+1))` -/
def P17831711970318236099.Spec : Prop :=
  ∀ n, P17831711970318236099.a n = A373591 (n + 1)

end A373591

/-! ## A373591.P1965278712552271688

`A060571(A065764(n+1))`
-/

namespace A373591.P1965278712552271688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A065764 (n + 1)).toNat

end

end A373591.P1965278712552271688

namespace A373591

/-- `A060571(A065764(n+1))` -/
def P1965278712552271688.Spec : Prop :=
  ∀ n, P1965278712552271688.a n = A373591 (n + 1)

end A373591

/-! ## A373591.P6362076208115399654

`A007949(A362632(n+1))`
-/

namespace A373591.P6362076208115399654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A362632 (n + 1)).toNat

end

end A373591.P6362076208115399654

namespace A373591

/-- `A007949(A362632(n+1))` -/
def P6362076208115399654.Spec : Prop :=
  ∀ n, P6362076208115399654.a n = A373591 (n + 1)

end A373591

/-!
# A373592: Number of primes congruent to 2 modulo 3 dividing n (with multiplicity).

The programs for A373592, the canonical program `A373592.P4059303154280305185` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373592 has offset 1).

The definition of A373592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A373591, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373592.P17199679491906454763

`A001222(A343430(n+1))`
-/

namespace A373592.P17199679491906454763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A343430 (n + 1)).toNat

end

end A373592.P17199679491906454763

namespace A373592

/-- `A001222(A343430(n+1))` -/
def P17199679491906454763.Spec : Prop :=
  ∀ n, P17199679491906454763.a n = A373592 (n + 1)

end A373592

/-! ## A373592.P4059303154280305185

`A001222(n+1)-(A007949(n+1)+A373591(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373592

/-- `A001222(n+1)-(A007949(n+1)+A373591(n+1))` -/
def P4059303154280305185.Spec : Prop :=
  ∀ n, P4059303154280305185.a n = A373592 (n + 1)

theorem P4059303154280305185.correct : P4059303154280305185.Spec := by
  intro n
  simp only [A373592, Nat.add_sub_cancel]

end A373592

/-! ## A373592.P3413383598052966411

`∑{e}[2^val(n+1, 2)*A343431(n+1), #]`
-/

namespace A373592.P3413383598052966411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A343431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A373592.P3413383598052966411

namespace A373592

/-- `∑{e}[2^val(n+1, 2)*A343431(n+1), #]` -/
def P3413383598052966411.Spec : Prop :=
  ∀ n, (P3413383598052966411.a n : ℤ) = A373592 (n + 1)

end A373592

/-! ## A373592.P15387447394000104963

`A255201(n+1)-A319444(n+1)`
-/

namespace A373592.P15387447394000104963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A319444 (n + 1)

end

end A373592.P15387447394000104963

namespace A373592

/-- `A255201(n+1)-A319444(n+1)` -/
def P15387447394000104963.Spec : Prop :=
  ∀ n, P15387447394000104963.a n = A373592 (n + 1)

end A373592

/-! ## A373592.P4372998784024686299

`2*A001222(n+1)-A319444(n+1)`
-/

namespace A373592.P4372998784024686299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A319444 (n + 1)

end

end A373592.P4372998784024686299

namespace A373592

/-- `2*A001222(n+1)-A319444(n+1)` -/
def P4372998784024686299.Spec : Prop :=
  ∀ n, P4372998784024686299.a n = A373592 (n + 1)

end A373592

/-! ## A373592.P11574160749663674498

`A065339(A319985(n+1))`
-/

namespace A373592.P11574160749663674498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A319985 (n + 1)).toNat

end

end A373592.P11574160749663674498

namespace A373592

/-- `A065339(A319985(n+1))` -/
def P11574160749663674498.Spec : Prop :=
  ∀ n, P11574160749663674498.a n = A373592 (n + 1)

end A373592

/-! ## A373592.P12770669900811698420

`A065339(A319986(n+1))`
-/

namespace A373592.P12770669900811698420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A319986 (n + 1)).toNat

end

end A373592.P12770669900811698420

namespace A373592

/-- `A065339(A319986(n+1))` -/
def P12770669900811698420.Spec : Prop :=
  ∀ n, P12770669900811698420.a n = A373592 (n + 1)

end A373592

/-!
# A373596: 

The programs for A373596, there is no canonical definition to state claims against.
-/

/-! ## A373596.P13306228333999822897

`A373474(n+1)*A373493(n+1)`
-/

namespace A373596.P13306228333999822897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373474 (n + 1) * A373493 (n + 1)

end

end A373596.P13306228333999822897

/-!
# A373597: Non-multiples of 3 whose multiplicies of prime factors of types 3m-1 and 3m+1 are both multiples of 3.

The programs for A373597, the canonical program `A373597.P6489054015672801265` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373597 has offset 1).

The definition of A373597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5727 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373597.P6733738680697274413

`∩[A369659(n+1), A373494(n+1)]`
-/

namespace A373597.P6733738680697274413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373597.P6733738680697274413

namespace A373597

/-- `∩[A369659(n+1), A373494(n+1)]` -/
def P6733738680697274413.Spec : Prop :=
  ∀ n, (P6733738680697274413.a n : ℤ) = A373597 (n + 1)

end A373597

/-! ## A373597.P15518249981648053787

`filter[A373492(n+1), A369658(#)]`
-/

namespace A373597.P15518249981648053787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A373597.P15518249981648053787

namespace A373597

/-- `filter[A373492(n+1), A369658(#)]` -/
def P15518249981648053787.Spec : Prop :=
  ∀ n, P15518249981648053787.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P12006517701631878121

`filter[A373494(n+1), A369658(#)]`
-/

namespace A373597.P12006517701631878121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A373597.P12006517701631878121

namespace A373597

/-- `filter[A373494(n+1), A369658(#)]` -/
def P12006517701631878121.Spec : Prop :=
  ∀ n, P12006517701631878121.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P6489054015672801265

`filter[A373473(n+1), A369658(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373597

/-- `filter[A373473(n+1), A369658(#)]` -/
def P6489054015672801265.Spec : Prop :=
  ∀ n, P6489054015672801265.a n = A373597 (n + 1)

theorem P6489054015672801265.correct : P6489054015672801265.Spec := by
  intro n
  simp only [A373597, Nat.add_sub_cancel]

end A373597

/-! ## A373597.P7805622430954479989

`∩[A369659(n+1), A373473(n+1)]`
-/

namespace A373597.P7805622430954479989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373597.P7805622430954479989

namespace A373597

/-- `∩[A369659(n+1), A373473(n+1)]` -/
def P7805622430954479989.Spec : Prop :=
  ∀ n, (P7805622430954479989.a n : ℤ) = A373597 (n + 1)

end A373597

/-! ## A373597.P2900385685203893472

`filter[A369659(n+1), A373472(#)]`
-/

namespace A373597.P2900385685203893472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373472 (f1 j).toNat = 1) n)

end

end A373597.P2900385685203893472

namespace A373597

/-- `filter[A369659(n+1), A373472(#)]` -/
def P2900385685203893472.Spec : Prop :=
  ∀ n, P2900385685203893472.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P12416825463789322098

`filter[A369659(n+1), A373491(#)]`
-/

namespace A373597.P12416825463789322098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373491 (f1 j).toNat = 1) n)

end

end A373597.P12416825463789322098

namespace A373597

/-- `filter[A369659(n+1), A373491(#)]` -/
def P12416825463789322098.Spec : Prop :=
  ∀ n, P12416825463789322098.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P15946824149832280523

`filter[A369659(n+1), A373493(#)]`
-/

namespace A373597.P15946824149832280523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373493 (f1 j).toNat = 1) n)

end

end A373597.P15946824149832280523

namespace A373597

/-- `filter[A369659(n+1), A373493(#)]` -/
def P15946824149832280523.Spec : Prop :=
  ∀ n, P15946824149832280523.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P12102219852824615210

`filter[A369659(n+1), A373975(#)]`
-/

namespace A373597.P12102219852824615210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A373597.P12102219852824615210

namespace A373597

/-- `filter[A369659(n+1), A373975(#)]` -/
def P12102219852824615210.Spec : Prop :=
  ∀ n, P12102219852824615210.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P6343359536816140934

`filter[A145784(n+1), A369658(#)]`
-/

namespace A373597.P6343359536816140934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A373597.P6343359536816140934

namespace A373597

/-- `filter[A145784(n+1), A369658(#)]` -/
def P6343359536816140934.Spec : Prop :=
  ∀ n, P6343359536816140934.a n = A373597 (n + 1)

end A373597

/-! ## A373597.P5070951278221405575

`∩[A145784(n+1), A369659(n+1)]`
-/

namespace A373597.P5070951278221405575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373597.P5070951278221405575

namespace A373597

/-- `∩[A145784(n+1), A369659(n+1)]` -/
def P5070951278221405575.Spec : Prop :=
  ∀ n, (P5070951278221405575.a n : ℤ) = A373597 (n + 1)

end A373597

/-!
# A373598: a(n) = 1 if n and A327860(n) are both multiples of 3, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A373598, there is no canonical definition to state claims against.
-/

/-! ## A373598.P5045705287894281906

`A079978(n)*A369653(n)`
-/

namespace A373598.P5045705287894281906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n * A369653 n

end

end A373598.P5045705287894281906

/-! ## A373598.P13710645901615048214

`A373143(A276086(n))`
-/

namespace A373598.P13710645901615048214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (A276086 n).toNat

end

end A373598.P13710645901615048214

/-! ## A373598.P1896922228199383434

`A079978(A351083(n))`
-/

namespace A373598.P1896922228199383434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A351083 n).toNat

end

end A373598.P1896922228199383434

/-! ## A373598.P897321230865510697

`and(A173031(n), A369653(n))`
-/

namespace A373598.P897321230865510697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173031 n) (A369653 n)

end

end A373598.P897321230865510697

/-! ## A373598.P15572331170360753498

`and(A008998(n), A369653(n))`
-/

namespace A373598.P15572331170360753498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008998 n) (A369653 n)

end

end A373598.P15572331170360753498

/-! ## A373598.P6316577046643495381

`and(A332647(n), A369653(n))`
-/

namespace A373598.P6316577046643495381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A332647 n) (A369653 n)

end

end A373598.P6316577046643495381

/-! ## A373598.P12082099119866028171

`and(A004646(n), A369653(n))`
-/

namespace A373598.P12082099119866028171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004646 n) (A369653 n)

end

end A373598.P12082099119866028171

/-! ## A373598.P9755533967770853778

`and(A005594(n), A369653(n))`
-/

namespace A373598.P9755533967770853778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005594 n) (A369653 n)

end

end A373598.P9755533967770853778

/-! ## A373598.P8864419147376131203

`and(A032251(n), A267142(n))`
-/

namespace A373598.P8864419147376131203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032251 n) (A267142 n)

end

end A373598.P8864419147376131203

/-! ## A373598.P10507194053471688820

`and(A081407(n), A267142(n))`
-/

namespace A373598.P10507194053471688820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081407 n) (A267142 n)

end

end A373598.P10507194053471688820

/-! ## A373598.P4581189719334510928

`and(A267142(n), A357532(n))`
-/

namespace A373598.P4581189719334510928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267142 n) (A357532 n)

end

end A373598.P4581189719334510928

/-! ## A373598.P13669138837998850664

`and(A188164(n), A267142(n))`
-/

namespace A373598.P13669138837998850664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188164 n) (A267142 n)

end

end A373598.P13669138837998850664

/-! ## A373598.P8297636705691828547

`A014036(A000982(n))`
-/

namespace A373598.P8297636705691828547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014036 (A000982 n).toNat

end

end A373598.P8297636705691828547

/-! ## A373598.P16642839733216174662

`A014036(A030978(n))`
-/

namespace A373598.P16642839733216174662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014036 (A030978 n).toNat

end

end A373598.P16642839733216174662

/-!
# A373599: Numbers k such that k and A327860(k) are both multiples of 3, where A327860 is the arithmetic derivative of the primorial base exp-function.

The programs for A373599, there is no canonical definition to state claims against.
-/

/-! ## A373599.P15253059901636558428

`filter[A373602(3*n+1), A079979(#)]`
-/

namespace A373599.P15253059901636558428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373602 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A373599.P15253059901636558428

/-! ## A373599.P10691962297305362599

`filter[A373602(3*n+1), A373598(#)]`
-/

namespace A373599.P10691962297305362599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373602 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373598 (f1 j).toNat = 1) n)

end

end A373599.P10691962297305362599

/-! ## A373599.P3100909246873869313

`filter[6*n, A369653(#)]`
-/

namespace A373599.P3100909246873869313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j) = 1) n)

end

end A373599.P3100909246873869313

/-! ## A373599.P14313790050888838413

`filter[6*n, A373598(#)]`
-/

namespace A373599.P14313790050888838413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373598 (f1 j) = 1) n)

end

end A373599.P14313790050888838413

/-! ## A373599.P305767542978376687

`filter[6*n, A373601(#)]`
-/

namespace A373599.P305767542978376687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j) = 1) n)

end

end A373599.P305767542978376687

/-! ## A373599.P15107791556932532555

`filter[6*n, A373830(#)]`
-/

namespace A373599.P15107791556932532555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373830 (f1 j) = 1) n)

end

end A373599.P15107791556932532555

/-! ## A373599.P6202831607568962210

`∩[A373602(n+1), A008588(n)]`
-/

namespace A373599.P6202831607568962210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P6202831607568962210

/-! ## A373599.P14458468310255673851

`∩[A373831(2*n+1), A008588(n)]`
-/

namespace A373599.P14458468310255673851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373831 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P14458468310255673851

/-! ## A373599.P10055567580826660426

`eq[1, A373598(n)]`
-/

namespace A373599.P10055567580826660426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373599.P10055567580826660426

/-! ## A373599.P16478442200987207355

`∩[A369654(n+1), A008585(n)]`
-/

namespace A373599.P16478442200987207355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P16478442200987207355

/-! ## A373599.P2143548645530094775

`∩[A369654(n+1), A008588(n)]`
-/

namespace A373599.P2143548645530094775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P2143548645530094775

/-! ## A373599.P10682186746213992719

`∩[A369654(n+1), A319451(n)]`
-/

namespace A373599.P10682186746213992719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P10682186746213992719

/-! ## A373599.P2125086797936480104

`∩[A047238(n+1), A369654(n+1)]`
-/

namespace A373599.P2125086797936480104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P2125086797936480104

/-! ## A373599.P8765000972946157508

`∩[A256882(n+1), A369654(n+1)]`
-/

namespace A373599.P8765000972946157508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P8765000972946157508

/-! ## A373599.P2620529179069117824

`∩[A047244(n+1), A369654(n+1)]`
-/

namespace A373599.P2620529179069117824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373599.P2620529179069117824

/-! ## A373599.P17481180218316036861

`eq[A010882(n), A369653(n)]`
-/

namespace A373599.P17481180218316036861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373599.P17481180218316036861

/-! ## A373599.P14849966123108803902

`eq[A010885(n), A369653(n)]`
-/

namespace A373599.P14849966123108803902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373599.P14849966123108803902

/-! ## A373599.P2807990087645534862

`eq[A010885(n), A373601(n)]`
-/

namespace A373599.P2807990087645534862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373599.P2807990087645534862

/-! ## A373599.P11399404232264857483

`eq[A010885(n), A373830(n)]`
-/

namespace A373599.P11399404232264857483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373599.P11399404232264857483

/-! ## A373599.P16539342718973856987

`filter[A373602(3*n+1), A059841(#)]`
-/

namespace A373599.P16539342718973856987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373602 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A373599.P16539342718973856987

