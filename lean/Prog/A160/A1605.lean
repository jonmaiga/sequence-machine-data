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
import Seq.B000.C033
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
import Seq.B000.C045
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160500: Prime p1 of consecutive primes p1, p2, where p2-p1=10, and p1, p2 are in different centuries.

The programs for A160500, there is no canonical definition to state claims against.
-/

/-! ## A160500.P11142643986541211971

`∩[A151800(10*10*n)-10, A122072(10*(n+1))]`
-/

namespace A160500.P11142643986541211971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * (10 * n)) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (10 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160500.P11142643986541211971

/-! ## A160500.P14361123212804728158

`∩[A151800(10*10*n)-10, A000040(A028505(n+1))]`
-/

namespace A160500.P14361123212804728158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * (10 * n)) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028505 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160500.P14361123212804728158

/-! ## A160500.P6526746115168020769

`∩[A122072(10*(n+1)), A118753(25*n)-10]`
-/

namespace A160500.P6526746115168020769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (10 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (25 * n) - 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160500.P6526746115168020769

/-! ## A160500.P5686715022015898713

`∩[A118753(25*n)-10, A000040(A028505(n+1))]`
-/

namespace A160500.P5686715022015898713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (25 * n) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028505 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160500.P5686715022015898713

/-! ## A160500.P378231985443753974

`∩[A000040(A038801(10*(n+1))), A118753(25*n)-10]`
-/

namespace A160500.P378231985443753974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038801 (10 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (25 * n) - 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160500.P378231985443753974

/-!
# A160501: (n+1)^prime(n+1) + n^prime(n).

The programs for A160501, the canonical program `A160501.P5853442810036552581` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160501 has offset 1).

The definition of A160501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160501.P5853442810036552581

`A062481(n+1)+A062481(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A160501

/-- `A062481(n+1)+A062481(n+2)` -/
def P5853442810036552581.Spec : Prop :=
  ∀ n, P5853442810036552581.a n = A160501 (n + 1)

theorem P5853442810036552581.correct : P5853442810036552581.Spec := by
  intro n
  simp only [A160501, Nat.add_sub_cancel]

end A160501

/-! ## A160501.P6125437453968387172

`(n+2)^A000040(n+2)+(n+1)^A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160501.P6125437453968387172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A000040 (n + 2) : ℤ) + (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A160501.P6125437453968387172

namespace A160501

/-- `(n+2)^A000040(n+2)+(n+1)^A000040(n+1)` -/
def P6125437453968387172.Spec : Prop :=
  ∀ n, P6125437453968387172.a n = (A160501 (n + 1) : ℚ)

end A160501

/-!
# A160503: Least prime divisor of pi(10^n).

The programs for A160503, there is no canonical definition to state claims against.
-/

/-! ## A160503.P8718978784042516622

`∑{p}[A006880(A088443(n+1)), #]`
-/

namespace A160503.P8718978784042516622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (A088443 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A160503.P8718978784042516622

/-!
# A160505: a(1)=1, a(n) = p*a(n-1), where p is the smallest prime satisfying gcd(n,p)=1.

The programs for A160505, there is no canonical definition to state claims against.
-/

/-! ## A160505.P16347490536582381051

`a(n-1)*A053669(n+1)` with `a(0)=1`
-/

namespace A160505.P16347490536582381051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A053669 (n + 1)

end

end A160505.P16347490536582381051

/-! ## A160505.P4356916008433147722

`(A071222(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A160505.P4356916008433147722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A071222 n + 1) * a (n - 1)

end

end A160505.P4356916008433147722

/-! ## A160505.P14897511350556031871

`a(n-1)*A214720(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A160505.P14897511350556031871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A214720 (n + 1)

end

end A160505.P14897511350556031871

/-! ## A160505.P5000822538680923246

`a(n-1)*A066727((n+1)²)` with `a(0)=1`
-/

namespace A160505.P5000822538680923246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A066727 ((n + 1) ^ 2)

end

end A160505.P5000822538680923246

/-! ## A160505.P6693067595918044067

`(A079578(n+1)-(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A160505.P6693067595918044067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A079578 (n + 1) - (n + 1 : ℤ)) * a (n - 1)

end

end A160505.P6693067595918044067

/-! ## A160505.P1079265435804121581

`a(n-1)*A020639(A328571(n+1))` with `a(0)=1`
-/

namespace A160505.P1079265435804121581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020639 (A328571 (n + 1)).toNat

end

end A160505.P1079265435804121581

/-! ## A160505.P7327063791852517075

`∏[A053669(A305566(a(n-1)+1)+n+1)]` with `a(0)=1`
-/

namespace A160505.P7327063791852517075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053669 (A305566 (f1 (n - 1) + 1).toNat + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160505.P7327063791852517075

/-! ## A160505.P8796548022868602930

`∏[A053669(n+1)^A072137(A000120(n))]`
-/

namespace A160505.P8796548022868602930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053669 (n + 1) : ℚ) ^ (A072137 (A000120 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160505.P8796548022868602930

/-! ## A160505.P14273527034819885194

`∏[A053669(n+1)]/2`
-/

namespace A160505.P14273527034819885194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A160505.P14273527034819885194

/-! ## A160505.P15356084522147723482

`∏[A071222(n)+1]/2`
-/

namespace A160505.P15356084522147723482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A160505.P15356084522147723482

/-! ## A160505.P2030623456528547728

`∏[sqrt(A089090(n+1))]/2`
-/

namespace A160505.P2030623456528547728
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A160505.P2030623456528547728

/-! ## A160505.P4495636591170527407

`∏[A077581(∑[n]+2)]`
-/

namespace A160505.P4495636591170527407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160505.P4495636591170527407

/-! ## A160505.P5747898451400169238

`a(n-1)*A116895((n+1)²)` with `a(0)=1`
-/

namespace A160505.P5747898451400169238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A116895 ((n + 1) ^ 2)

end

end A160505.P5747898451400169238

/-! ## A160505.P10869984497848089316

`a(n-1)*A007978((n+1)²)` with `a(0)=1`
-/

namespace A160505.P10869984497848089316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007978 ((n + 1) ^ 2)

end

end A160505.P10869984497848089316

/-! ## A160505.P6419219053509298020

`a(n-1)*A199968((n+1)²)` with `a(0)=1`
-/

namespace A160505.P6419219053509298020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A199968 ((n + 1) ^ 2)

end

end A160505.P6419219053509298020

/-! ## A160505.P10458775507467715701

`a(n-1)*A258115((n+1)²)` with `a(0)=1`
-/

namespace A160505.P10458775507467715701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A258115 ((n + 1) ^ 2)

end

end A160505.P10458775507467715701

/-! ## A160505.P5793120446731840874

`a(n-1)*A337686((n+1)²)` with `a(0)=1`
-/

namespace A160505.P5793120446731840874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A337686 ((n + 1) ^ 2)

end

end A160505.P5793120446731840874

/-! ## A160505.P17449480058375543458

`(A055874(n*(n+2)+1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A160505.P17449480058375543458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A055874 (n * (n + 2) + 1) + 1) * a (n - 1)

end

end A160505.P17449480058375543458

/-!
# A160506: Coefficients in the expansion of C^4/B^5, in Watson's notation of page 106.

The programs for A160506, there is no canonical definition to state claims against.
-/

/-! ## A160506.P11397274020315948378

`A023004(n)-A052998(A000272(n))`
-/

namespace A160506.P11397274020315948378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023004 n - A052998 (A000272 n).toNat

end

end A160506.P11397274020315948378

/-! ## A160506.P6346351188621702932

`A285928(n)+A080887(A109284(n))`
-/

namespace A160506.P6346351188621702932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285928 n + A080887 (A109284 n).toNat

end

end A160506.P6346351188621702932

/-!
# A160511: Number of weighings needed to find lighter coins among n coins.

The programs for A160511, there is no canonical definition to state claims against.
-/

/-! ## A160511.P7271074790390788807

`round((n+1)/atan(or(2, n)))`
-/

namespace A160511.P7271074790390788807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.arctan (Nat.lor 2 n : ℝ))

end

end A160511.P7271074790390788807

/-! ## A160511.P15019968352910054307

`round(n/acot(acot(∑[n])))+1`
-/

namespace A160511.P15019968352910054307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))) + 1

end

end A160511.P15019968352910054307

/-! ## A160511.P10307098566600342141

`ceil(1/atan(log2(3)/(n+1)))`
-/

namespace A160511.P10307098566600342141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / Real.arctan (Real.logb 2 (3 : ℝ) / (n + 1 : ℝ))⌉

end

end A160511.P10307098566600342141

/-! ## A160511.P10728264535801586983

`floor((n+1)/acot(acot(n/2)))`
-/

namespace A160511.P10728264535801586983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ))⌋

end

end A160511.P10728264535801586983

/-! ## A160511.P7484755655057905095

`ceil((char[2]+1+n)/(γ+1))`
-/

namespace A160511.P7484755655057905095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((if ∃ j, f1 j = n then 1 else 0) + 1 + n : ℕ) : ℝ) / (Real.eulerMascheroniConstant + 1)⌉

end

end A160511.P7484755655057905095

/-!
# A160512: a(1)=1. a(2n) = the smallest power of a prime > a(2n-1). a(2n+1) = the smallest squarefree integer > a(2n).

The programs for A160512, there is no canonical definition to state claims against.
-/

/-! ## A160512.P16598994888855798746

`∑[A316841(A161985(n)!)]`
-/

namespace A160512.P16598994888855798746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (Nat.factorial (A161985 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160512.P16598994888855798746

/-! ## A160512.P12619504515282776192

`A324759(lt[A222734(n+6), ∏{p}[n+1, #²]])`
-/

namespace A160512.P12619504515282776192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222734 (n + 6)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A160512.P12619504515282776192

/-! ## A160512.P7987673063842944747

`record[A125704(n+1)+A112378(n)]`
-/

namespace A160512.P7987673063842944747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125704 (n + 1) + A112378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160512.P7987673063842944747

/-!
# A160517: A walk of 10-divisible "less regular" figurate cuboctahedra, from sequence A160249.

The programs for A160517, there is no canonical definition to state claims against.
-/

/-! ## A160517.P1775564565552199234

`∑[10*C(floor(n/2)+2, 2)]`
-/

namespace A160517.P1775564565552199234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160517.P1775564565552199234

/-! ## A160517.P6755426998069819787

`10*∑[C(ceil((n+3)/2), 2)]`
-/

namespace A160517.P6755426998069819787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n + 3 : ℚ) / 2⌉.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160517.P6755426998069819787

/-! ## A160517.P17934557202383368121

`∑[10*floor(or(1, n+2)²/8)]`
-/

namespace A160517.P17934557202383368121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160517.P17934557202383368121

/-! ## A160517.P9728697313022990480

`∑[10*round(or(1, n+2)²/8)]`
-/

namespace A160517.P9728697313022990480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.roundAway ((Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160517.P9728697313022990480

/-! ## A160517.P7784786263837101994

`5*∑[∑[or(n, (-1)^n)+1]]`
-/

namespace A160517.P7784786263837101994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((-1) ^ n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160517.P7784786263837101994

/-!
# A160519: Range and record values of A088468.

The programs for A160519, there is no canonical definition to state claims against.
-/

/-! ## A160519.P4334742387976367831

`A061985(n)+1`
-/

namespace A160519.P4334742387976367831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061985 n + 1

end

end A160519.P4334742387976367831

/-! ## A160519.P16767037117551424768

`A008619(2*A061985(n))`
-/

namespace A160519.P16767037117551424768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A061985 n).toNat

end

end A160519.P16767037117551424768

/-! ## A160519.P15583927109436954419

`A028242(2*A061985(n))`
-/

namespace A160519.P15583927109436954419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A061985 n).toNat

end

end A160519.P15583927109436954419

/-! ## A160519.P11755040707922772489

`record[A088468(A005044(n))]`
-/

namespace A160519.P11755040707922772489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A005044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160519.P11755040707922772489

/-! ## A160519.P619870340908666514

`record[A088468(A024937(n))]`
-/

namespace A160519.P619870340908666514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A024937 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160519.P619870340908666514

/-! ## A160519.P15249956537658378727

`record[A088468(A225850(n))]`
-/

namespace A160519.P15249956537658378727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A225850 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160519.P15249956537658378727

/-! ## A160519.P11037820063866012645

`record[A061984(A027350(n+1))+1]`
-/

namespace A160519.P11037820063866012645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (A027350 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160519.P11037820063866012645

/-! ## A160519.P18433239934424101263

`record[A061984(A161088(n+1))+1]`
-/

namespace A160519.P18433239934424101263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (A161088 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160519.P18433239934424101263

/-! ## A160519.P13925032837824295881

`record[A061984(A161316(n+1))+1]`
-/

namespace A160519.P13925032837824295881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (A161316 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160519.P13925032837824295881

/-! ## A160519.P15924840382277095941

`A088468(A069353(n+1))`
-/

namespace A160519.P15924840382277095941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (A069353 (n + 1)).toNat

end

end A160519.P15924840382277095941

/-!
# A160520: a(n) is the number of distinct values in the periodic part of the continued fraction of the square root of n-th nonsquare positive integer.

The programs for A160520, there is no canonical definition to state claims against.
-/

/-! ## A160520.P2164238247080989673

`A028832(comp[n²])`
-/

namespace A160520.P2164238247080989673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A160520.P2164238247080989673

/-! ## A160520.P1945820780767723347

`A096492(comp[n²])`
-/

namespace A160520.P1945820780767723347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A160520.P1945820780767723347

/-! ## A160520.P1501628694689754097

`dr(A028832(comp[A143844(n)]))`
-/

namespace A160520.P1501628694689754097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028832 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A160520.P1501628694689754097

/-! ## A160520.P11532210304387376187

`dr(A096492(comp[A143844(n)]))`
-/

namespace A160520.P11532210304387376187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096492 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A160520.P11532210304387376187

/-! ## A160520.P731920158014754771

`dr(A028832(A000037(n+1)))`
-/

namespace A160520.P731920158014754771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028832 (A000037 (n + 1)).toNat)

end

end A160520.P731920158014754771

/-! ## A160520.P10311442079850458772

`dr(A096492(A164386(n+1)))`
-/

namespace A160520.P10311442079850458772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096492 (A164386 (n + 1)).toNat)

end

end A160520.P10311442079850458772

/-! ## A160520.P4869546901021469125

`filter[A028832(n+1), A022932(#)]`
-/

namespace A160520.P4869546901021469125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A160520.P4869546901021469125

/-! ## A160520.P17257988366744450845

`filter[A028832(n+1), A075897(#)]`
-/

namespace A160520.P17257988366744450845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A160520.P17257988366744450845

/-! ## A160520.P680917078801024474

`filter[A028832(n+1), A079421(#)]`
-/

namespace A160520.P680917078801024474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A160520.P680917078801024474

/-! ## A160520.P18276487129403006901

`filter[A028832(n+1), A097325(#)]`
-/

namespace A160520.P18276487129403006901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A160520.P18276487129403006901

/-!
# A160521: Coefficients in the expansion of C^7/B^8, in Watson's notation of page 106.

The programs for A160521, there is no canonical definition to state claims against.
-/

/-! ## A160521.P7573755811423885689

`A023007(n)-A165878(A026553(n))`
-/

namespace A160521.P7573755811423885689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023007 n - A165878 (A026553 n).toNat

end

end A160521.P7573755811423885689

/-! ## A160521.P12980140988170457855

`A283077(n)-A070176(A203557(n))`
-/

namespace A160521.P12980140988170457855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283077 n - A070176 (A203557 n).toNat

end

end A160521.P12980140988170457855

/-!
# A160522: The n-th odd composite number minus the n-th even composite number.

The programs for A160522, the canonical program `A160522.P1046967172984511442` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160522 has offset 1).

The definition of A160522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160522.P1046967172984511442

`A071904(n+1)-A005843(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A160522

/-- `A071904(n+1)-A005843(n+2)` -/
def P1046967172984511442.Spec : Prop :=
  ∀ n, P1046967172984511442.a n = A160522 (n + 1)

theorem P1046967172984511442.correct : P1046967172984511442.Spec := by
  intro n
  simp only [A160522, Nat.add_sub_cancel]

end A160522

/-! ## A160522.P16716518955098770805

`2*A008508(n+1)-1`
-/

namespace A160522.P16716518955098770805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008508 (n + 1) - 1

end

end A160522.P16716518955098770805

namespace A160522

/-- `2*A008508(n+1)-1` -/
def P16716518955098770805.Spec : Prop :=
  ∀ n, P16716518955098770805.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P6565779723747450574

`A146538(n+1)-Δ[n²]`
-/

namespace A160522.P6565779723747450574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160522.P6565779723747450574

namespace A160522

/-- `A146538(n+1)-Δ[n²]` -/
def P6565779723747450574.Spec : Prop :=
  ∀ n, P6565779723747450574.a n = A160522 (n + 1)

theorem P6565779723747450574.correct : P6565779723747450574.Spec := by
  intro n
  simp only [A160522, Nat.add_sub_cancel, A160522.P6565779723747450574.f1, A160522.P6565779723747450574.a, A160522.P1046967172984511442.a, A005843, A005843.P3167286115683555970.a, A071904, A071904.P6554188440157640390.a, A146538, A146538.P8666981964067901687.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160522

/-! ## A160522.P9369576761018185756

`A007921(n+1)-2*(n+1)`
-/

namespace A160522.P9369576761018185756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - (2 * (n + 1) : ℤ)

end

end A160522.P9369576761018185756

namespace A160522

/-- `A007921(n+1)-2*(n+1)` -/
def P9369576761018185756.Spec : Prop :=
  ∀ n, P9369576761018185756.a n = A160522 (n + 1)

theorem P9369576761018185756.correct : P9369576761018185756.Spec := by
  intro n
  simp only [A160522, Nat.add_sub_cancel, A160522.P9369576761018185756.a, A160522.P1046967172984511442.a, A005843, A005843.P3167286115683555970.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A071904, A071904.P6554188440157640390.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160522

/-! ## A160522.P11110368238496414356

`A309355(n+1)-(2*n+3)`
-/

namespace A160522.P11110368238496414356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) - (2 * n + 3 : ℤ)

end

end A160522.P11110368238496414356

namespace A160522

/-- `A309355(n+1)-(2*n+3)` -/
def P11110368238496414356.Spec : Prop :=
  ∀ n, P11110368238496414356.a n = A160522 (n + 1)

theorem P11110368238496414356.correct : P11110368238496414356.Spec := by
  intro n
  simp only [A160522, Nat.add_sub_cancel, A160522.P11110368238496414356.a, A160522.P1046967172984511442.a, A005843, A005843.P3167286115683555970.a, A071904, A071904.P6554188440157640390.a, A309355, A309355.P9345418795961828822.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160522

/-! ## A160522.P1274036941933431969

`2*A104275(n+2)-(2*n+5)`
-/

namespace A160522.P1274036941933431969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 2) - (2 * n + 5 : ℤ)

end

end A160522.P1274036941933431969

namespace A160522

/-- `2*A104275(n+2)-(2*n+5)` -/
def P1274036941933431969.Spec : Prop :=
  ∀ n, P1274036941933431969.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P11007926270715600943

`lt[1, A325937(n+1)]-(2*n+3)`
-/

namespace A160522.P11007926270715600943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (2 * n + 3 : ℤ)

end

end A160522.P11007926270715600943

namespace A160522

/-- `lt[1, A325937(n+1)]-(2*n+3)` -/
def P11007926270715600943.Spec : Prop :=
  ∀ n, P11007926270715600943.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P14742682908960025219

`2*(lt[2, A000005(2*n+3)]-n)-1`
-/

namespace A160522.P14742682908960025219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)) - 1

end

end A160522.P14742682908960025219

namespace A160522

/-- `2*(lt[2, A000005(2*n+3)]-n)-1` -/
def P14742682908960025219.Spec : Prop :=
  ∀ n, P14742682908960025219.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P13916629001640782606

`A004273(A008508(n+1))`
-/

namespace A160522.P13916629001640782606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008508 (n + 1)).toNat

end

end A160522.P13916629001640782606

namespace A160522

/-- `A004273(A008508(n+1))` -/
def P13916629001640782606.Spec : Prop :=
  ∀ n, P13916629001640782606.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P10817620541216835955

`A004273(lt[1, A001222(2*n+3)]-n)`
-/

namespace A160522.P10817620541216835955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - n)

end

end A160522.P10817620541216835955

namespace A160522

/-- `A004273(lt[1, A001222(2*n+3)]-n)` -/
def P10817620541216835955.Spec : Prop :=
  ∀ n, P10817620541216835955.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P7226583098198262615

`A060747(lt[1, A001222(2*n+3)]-n)`
-/

namespace A160522.P7226583098198262615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - n)

end

end A160522.P7226583098198262615

namespace A160522

/-- `A060747(lt[1, A001222(2*n+3)]-n)` -/
def P7226583098198262615.Spec : Prop :=
  ∀ n, P7226583098198262615.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P10750516172042562929

`A004273(lt[2, A000005(2*n+3)]-n)`
-/

namespace A160522.P10750516172042562929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - n)

end

end A160522.P10750516172042562929

namespace A160522

/-- `A004273(lt[2, A000005(2*n+3)]-n)` -/
def P10750516172042562929.Spec : Prop :=
  ∀ n, P10750516172042562929.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P1843611238018031854

`A060747(lt[2, A000005(2*n+3)]-n)`
-/

namespace A160522.P1843611238018031854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - n)

end

end A160522.P1843611238018031854

namespace A160522

/-- `A060747(lt[2, A000005(2*n+3)]-n)` -/
def P1843611238018031854.Spec : Prop :=
  ∀ n, P1843611238018031854.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P11734049618728277729

`A165971(2+n)`
-/

namespace A160522.P11734049618728277729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (2 + n)

end

end A160522.P11734049618728277729

namespace A160522

/-- `A165971(2+n)` -/
def P11734049618728277729.Spec : Prop :=
  ∀ n, P11734049618728277729.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P6502923337110012257

`A014076(n+2)-2*(n+2)`
-/

namespace A160522.P6502923337110012257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) - (2 * (n + 2) : ℤ)

end

end A160522.P6502923337110012257

namespace A160522

/-- `A014076(n+2)-2*(n+2)` -/
def P6502923337110012257.Spec : Prop :=
  ∀ n, P6502923337110012257.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P16851193756148349516

`A165955(n+2)-4*(n+2)`
-/

namespace A160522.P16851193756148349516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165955 (n + 2) - (4 * (n + 2) : ℤ)

end

end A160522.P16851193756148349516

namespace A160522

/-- `A165955(n+2)-4*(n+2)` -/
def P16851193756148349516.Spec : Prop :=
  ∀ n, P16851193756148349516.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P11735669280007938169

`A071904(n+1)-A163300(n+2)`
-/

namespace A160522.P11735669280007938169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - A163300 (n + 2)

end

end A160522.P11735669280007938169

namespace A160522

/-- `A071904(n+1)-A163300(n+2)` -/
def P11735669280007938169.Spec : Prop :=
  ∀ n, P11735669280007938169.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P13981080205457069043

`A004273(A073432(n+2)-A004273(n+1))`
-/

namespace A160522.P13981080205457069043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A073432 (n + 2) - A004273 (n + 1)).toNat

end

end A160522.P13981080205457069043

namespace A160522

/-- `A004273(A073432(n+2)-A004273(n+1))` -/
def P13981080205457069043.Spec : Prop :=
  ∀ n, P13981080205457069043.a n = A160522 (n + 1)

end A160522

/-! ## A160522.P3789939426283636762

`A071904(n+1)+A028387(n)-A028387(n+1)`
-/

namespace A160522.P3789939426283636762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) + A028387 n - A028387 (n + 1)

end

end A160522.P3789939426283636762

namespace A160522

/-- `A071904(n+1)+A028387(n)-A028387(n+1)` -/
def P3789939426283636762.Spec : Prop :=
  ∀ n, P3789939426283636762.a n = A160522 (n + 1)

theorem P3789939426283636762.correct : P3789939426283636762.Spec := by
  intro n
  simp only [A160522, Nat.add_sub_cancel, A160522.P3789939426283636762.a, A160522.P1046967172984511442.a, A005843, A005843.P3167286115683555970.a, A028387, A028387.P5954590561330899546.a, A071904, A071904.P6554188440157640390.a, A007921, A007921.P2826303110664531110.f1, A007921.P2826303110664531110.f2, A007921.P2826303110664531110.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160522

/-! ## A160522.P7783538694381888416

`A153238(n+1)+A047845(n+2)-A005843(n+1)`
-/

namespace A160522.P7783538694381888416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + (A047845 (n + 2) - A005843 (n + 1))

end

end A160522.P7783538694381888416

namespace A160522

/-- `A153238(n+1)+A047845(n+2)-A005843(n+1)` -/
def P7783538694381888416.Spec : Prop :=
  ∀ n, P7783538694381888416.a n = A160522 (n + 1)

end A160522

/-!
# A160525: Coefficients in the expansion of C/B^2, in Watson's notation of page 118.

The programs for A160525, there is no canonical definition to state claims against.
-/

/-! ## A160525.P1785966741863024316

`∑[A000990(n)]-A238956(A111429(n))`
-/

namespace A160525.P1785966741863024316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238956 (A111429 n).toNat

end

end A160525.P1785966741863024316

/-! ## A160525.P8263685335783580018

`record[A224937(n+1)]-A239259(A332284(n))`
-/

namespace A160525.P8263685335783580018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A239259 (A332284 n).toNat

end

end A160525.P8263685335783580018

/-! ## A160525.P17601661718301406070

`A122768(n)+A000041(n)-A238956(A111429(n))`
-/

namespace A160525.P17601661718301406070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 n + A000041 n - A238956 (A111429 n).toNat

end

end A160525.P17601661718301406070

/-! ## A160525.P2945139400684252499

`A103925(n)+A011744(A024024(n))`
-/

namespace A160525.P2945139400684252499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103925 n + A011744 (A024024 n).toNat

end

end A160525.P2945139400684252499

/-! ## A160525.P924463541657365929

`A000712(n)-A057498(A000041(n))`
-/

namespace A160525.P924463541657365929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A057498 (A000041 n).toNat

end

end A160525.P924463541657365929

/-!
# A160526: Coefficients in the expansion of C^2/B^3, in Watson's notation of page 118.

The programs for A160526, there is no canonical definition to state claims against.
-/

/-! ## A160526.P12681477473178214212

`A000716(n)-A082858(A000712(n))`
-/

namespace A160526.P12681477473178214212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n - A082858 (A000712 n).toNat

end

end A160526.P12681477473178214212

/-! ## A160526.P18230337491525972771

`A000716(n)-A025458(A071734(n))`
-/

namespace A160526.P18230337491525972771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n - A025458 (A071734 n).toNat

end

end A160526.P18230337491525972771

/-! ## A160526.P2504656019256194417

`A000716(n)-A185234(A000579(n))`
-/

namespace A160526.P2504656019256194417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n - A185234 (A000579 n).toNat

end

end A160526.P2504656019256194417

/-! ## A160526.P14601908901643156621

`A000716(n)-A082858(A103926(n))`
-/

namespace A160526.P14601908901643156621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n - A082858 (A103926 n).toNat

end

end A160526.P14601908901643156621

/-!
# A160527: Coefficients in the expansion of C^3/B^4, in Watson's notation of page 118.

The programs for A160527, there is no canonical definition to state claims against.
-/

/-! ## A160527.P17472913997477022098

`A121593(n+1)+A004526(A309861(n))`
-/

namespace A160527.P17472913997477022098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121593 (n + 1) + A004526 (A309861 n).toNat

end

end A160527.P17472913997477022098

/-! ## A160527.P14787628063104064624

`A121593(n+1)+A025458(A193062(n+1))`
-/

namespace A160527.P14787628063104064624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121593 (n + 1) + A025458 (A193062 (n + 1)).toNat

end

end A160527.P14787628063104064624

/-! ## A160527.P8093504431217814064

`A329581(A324088(n+1))+A121593(n+1)`
-/

namespace A160527.P8093504431217814064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329581 (A324088 (n + 1)).toNat + A121593 (n + 1)

end

end A160527.P8093504431217814064

/-! ## A160527.P6690907794186768823

`A023003(n)-A373954(A282067(n))`
-/

namespace A160527.P6690907794186768823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023003 n - A373954 (A282067 n).toNat

end

end A160527.P6690907794186768823

/-!
# A160529: a(1) = 1; for n>1, a(n) = a(n-1) + d1 + d2 where d1 = 4 if n is even. d1 = 1 if n is odd, d2 = 15 if n mod 4 = 0, d2 = 0 if n mod 4 != 0.

The programs for A160529, the canonical program `A160529.P2675166934281184715` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160529 has offset 1).

The definition of A160529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160529.P13850554036383754757

`ogf((1+4x+x^2+19x^3)/(1-x-x^4+x^5))`
-/

namespace A160529.P13850554036383754757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1, 19] [1, -1, 0, 0, -1, 1] n

end

end A160529.P13850554036383754757

namespace A160529

/-- `ogf((1+4x+x^2+19x^3)/(1-x-x^4+x^5))` -/
def P13850554036383754757.Spec : Prop :=
  ∀ n, P13850554036383754757.a n = A160529 (n + 1)

end A160529

/-! ## A160529.P2675166934281184715

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=25, a(4)=26`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160529

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P2675166934281184715.Spec : Prop :=
  ∀ n, P2675166934281184715.a n = A160529 (n + 1)

theorem P2675166934281184715.correct : P2675166934281184715.Spec := by
  intro n
  simp only [A160529, Nat.add_sub_cancel]

end A160529

/-! ## A160529.P9933355526643595612

`a(n-4)+25` with `a(0)=1, a(1)=5, a(2)=6, a(3)=25`
-/

namespace A160529.P9933355526643595612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6, 25] fun n a =>
  a (n - 4) + 25

end

end A160529.P9933355526643595612

namespace A160529

/-- `a(n-4)+25` -/
def P9933355526643595612.Spec : Prop :=
  ∀ n, (P9933355526643595612.a n : ℤ) = A160529 (n + 1)

end A160529

/-! ## A160529.P2642314030847280066

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=4, a(2)=1, a(3)=19`

`floor` is left out, it is the identity on integers.
-/

namespace A160529.P2642314030847280066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1, 19] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160529.P2642314030847280066

namespace A160529

/-- `∑[floor(a(n-4))]` -/
def P2642314030847280066.Spec : Prop :=
  ∀ n, (P2642314030847280066.a n : ℤ) = A160529 (n + 1)

end A160529

/-! ## A160529.P17835824779805283176

`∑[a(n-4)^a(n-1)]` with `a(0)=1, a(1)=4, a(2)=1, a(3)=19`
-/

namespace A160529.P17835824779805283176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1, 19] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160529.P17835824779805283176

namespace A160529

/-- `∑[a(n-4)^a(n-1)]` -/
def P17835824779805283176.Spec : Prop :=
  ∀ n, (P17835824779805283176.a n : ℤ) = A160529 (n + 1)

end A160529

/-! ## A160529.P3316183607009810236

`∑[A065192(A065193(gcd(n+1, 4*n)))]`
-/

namespace A160529.P3316183607009810236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065192 (A065193 (Nat.gcd (n + 1) (4 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160529.P3316183607009810236

namespace A160529

/-- `∑[A065192(A065193(gcd(n+1, 4*n)))]` -/
def P3316183607009810236.Spec : Prop :=
  ∀ n, P3316183607009810236.a n = A160529 (n + 1)

end A160529

/-! ## A160529.P6274217249781032081

`∑[A115180(gcd((n+1)², A008574(n)²))]`
-/

namespace A160529.P6274217249781032081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (Int.gcd ((n + 1) ^ 2 : ℤ) (A008574 n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160529.P6274217249781032081

namespace A160529

/-- `∑[A115180(gcd((n+1)², A008574(n)²))]` -/
def P6274217249781032081.Spec : Prop :=
  ∀ n, P6274217249781032081.a n = A160529 (n + 1)

end A160529

/-! ## A160529.P15551192694312883819

`A174141(A047216(n+2))`
-/

namespace A160529.P15551192694312883819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174141 (A047216 (n + 2)).toNat

end

end A160529.P15551192694312883819

namespace A160529

/-- `A174141(A047216(n+2))` -/
def P15551192694312883819.Spec : Prop :=
  ∀ n, P15551192694312883819.a n = A160529 (n + 1)

end A160529

/-! ## A160529.P14736108962476498115

`∑[A261694(4*n)+1]`
-/

namespace A160529.P14736108962476498115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261694 (4 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160529.P14736108962476498115

namespace A160529

/-- `∑[A261694(4*n)+1]` -/
def P14736108962476498115.Spec : Prop :=
  ∀ n, P14736108962476498115.a n = A160529 (n + 1)

end A160529

/-!
# A160530: Positive integers that contain only odd-length runs of 0's and 1's in their binary expansion.

The programs for A160530, the canonical program `A160530.P7463755400473143513` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160530 has offset 1).

The definition of A160530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160530.P14131924890191827648

`eq[1, A284559(n+1)%2]+1`
-/

namespace A160530.P14131924890191827648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284559 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160530.P14131924890191827648

namespace A160530

/-- `eq[1, A284559(n+1)%2]+1` -/
def P14131924890191827648.Spec : Prop :=
  ∀ n, (P14131924890191827648.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P9753612202959467229

`eq[1, A284579(n+1)%2]+1`
-/

namespace A160530.P9753612202959467229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284579 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160530.P9753612202959467229

namespace A160530

/-- `eq[1, A284579(n+1)%2]+1` -/
def P9753612202959467229.Spec : Prop :=
  ∀ n, (P9753612202959467229.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P16991816737959968554

`eq[1, A040341(A284583(n+1))]+1`
-/

namespace A160530.P16991816737959968554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040341 (A284583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160530.P16991816737959968554

namespace A160530

/-- `eq[1, A040341(A284583(n+1))]+1` -/
def P16991816737959968554.Spec : Prop :=
  ∀ n, (P16991816737959968554.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P7463755400473143513

`eq[1, gcd(2, A167489(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A160530

/-- `eq[1, gcd(2, A167489(n+1))]+1` -/
def P7463755400473143513.Spec : Prop :=
  ∀ n, (P7463755400473143513.a n : ℤ) = A160530 (n + 1)

theorem P7463755400473143513.correct : P7463755400473143513.Spec := by
  intro n
  simp only [A160530, Nat.add_sub_cancel]

end A160530

/-! ## A160530.P11587296286835516397

`eq[gcd(2, A167489(n)), A057427(n)]`
-/

namespace A160530.P11587296286835516397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A167489 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160530.P11587296286835516397

namespace A160530

/-- `eq[gcd(2, A167489(n)), A057427(n)]` -/
def P11587296286835516397.Spec : Prop :=
  ∀ n, (P11587296286835516397.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P8095377330117736558

`eq[A162853(n+1), A175046(n+1)]+1`
-/

namespace A160530.P8095377330117736558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A160530.P8095377330117736558

namespace A160530

/-- `eq[A162853(n+1), A175046(n+1)]+1` -/
def P8095377330117736558.Spec : Prop :=
  ∀ n, (P8095377330117736558.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P2924397561185769703

`lt[A035457(A167489(n)), A057427(n)]`
-/

namespace A160530.P2924397561185769703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A167489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160530.P2924397561185769703

namespace A160530

/-- `lt[A035457(A167489(n)), A057427(n)]` -/
def P2924397561185769703.Spec : Prop :=
  ∀ n, (P2924397561185769703.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P4981198711247070656

`lt[A001511(A167489(n)), A107286(2*(n+1))]`
-/

namespace A160530.P4981198711247070656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A167489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160530.P4981198711247070656

namespace A160530

/-- `lt[A001511(A167489(n)), A107286(2*(n+1))]` -/
def P4981198711247070656.Spec : Prop :=
  ∀ n, (P4981198711247070656.a n : ℤ) = A160530 (n + 1)

end A160530

/-! ## A160530.P10347614647043757539

`lt[(1-n)^A284559(n), 1]`
-/

namespace A160530.P10347614647043757539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ) : ℚ) ^ (A284559 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A160530.P10347614647043757539

namespace A160530

/-- `lt[(1-n)^A284559(n), 1]` -/
def P10347614647043757539.Spec : Prop :=
  ∀ n, (P10347614647043757539.a n : ℤ) = A160530 (n + 1)

end A160530

/-!
# A160531: Positive integers that contain both odd- and even-length runs of 0's and 1's in their binary representation.

The programs for A160531, there is no canonical definition to state claims against.
-/

/-! ## A160531.P464677473886808743

`comp[∪[A160530(1+n), A001196(n)]]`
-/

namespace A160531.P464677473886808743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160530 (1 + n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160531.P464677473886808743

/-!
# A160532: Those positive integers n that contain runs of 0's and 1's that are each a power of 2 in length when n is represented in binary.

The programs for A160532, there is no canonical definition to state claims against.
-/

/-! ## A160532.P11480660345864526965

`lt[8%A167489(n), atan(n)]`
-/

namespace A160532.P11480660345864526965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A167489 n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A160532.P11480660345864526965

/-! ## A160532.P3390139736119574244

`lt[4%A284559(n), abs(sin(n))]`
-/

namespace A160532.P3390139736119574244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A284559 n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A160532.P3390139736119574244

/-! ## A160532.P1732932415102839290

`eq[4%A284559(n), A000007(n)]`
-/

namespace A160532.P1732932415102839290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A284559 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160532.P1732932415102839290

/-! ## A160532.P15719555912727383549

`eq[0, A331410(A167489(n+1))]+1`
-/

namespace A160532.P15719555912727383549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A167489 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160532.P15719555912727383549

/-! ## A160532.P7366912890741681724

`eq[1, A008517(A284559(n+1))]+1`
-/

namespace A160532.P7366912890741681724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A284559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160532.P7366912890741681724

/-! ## A160532.P496462111945760760

`lt[A006530(A167489(n)), A122553(n)]`
-/

namespace A160532.P496462111945760760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160532.P496462111945760760

/-! ## A160532.P13756032920118740432

`lt[A006530(A284559(n)), A122553(n)]`
-/

namespace A160532.P13756032920118740432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284559 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160532.P13756032920118740432

/-! ## A160532.P11689007610685076904

`lt[A006530(A284579(n)), A122553(n)]`
-/

namespace A160532.P11689007610685076904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160532.P11689007610685076904

/-!
# A160533: Coefficients in the expansion of C^5/B^6, in Watson's notation of page 118.

The programs for A160533, there is no canonical definition to state claims against.
-/

/-! ## A160533.P9252715796336508458

`A277283(n)+A265835(n+1)%2`
-/

namespace A160533.P9252715796336508458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277283 n + Int.tmod (A265835 (n + 1)) 2

end

end A160533.P9252715796336508458

/-! ## A160533.P12031529287943684093

`A028310(A277283(n)+A026812(n))`
-/

namespace A160533.P12031529287943684093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A277283 n + A026812 n).toNat

end

end A160533.P12031529287943684093

/-! ## A160533.P14228198347651662452

`A277283(n)+A277153(A277178(n))`
-/

namespace A160533.P14228198347651662452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277283 n + A277153 (A277178 n).toNat

end

end A160533.P14228198347651662452

/-! ## A160533.P10516832296704205542

`A033108(n+1)+A028310(A277283(n))`
-/

namespace A160533.P10516832296704205542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033108 (n + 1) + A028310 (A277283 n).toNat

end

end A160533.P10516832296704205542

/-!
# A160534: Coefficients in the expansion of B^7/C, in Watson's notation of page 118.

The programs for A160534, there is no canonical definition to state claims against.
-/

/-! ## A160534.P12223688461929558526

`A000007(n)+7*A160535(n)`
-/

namespace A160534.P12223688461929558526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 7 * A160535 n

end

end A160534.P12223688461929558526

/-! ## A160534.P5180180208042754393

`or(7*A160535(n), A010052(n))`
-/

namespace A160534.P5180180208042754393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (7 * A160535 n) (A010052 n)

end

end A160534.P5180180208042754393

/-! ## A160534.P5519333179530659070

`A008683(Δ[A077591(n)])+7*A160535(n)`
-/

namespace A160534.P5519333179530659070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + 7 * A160535 n

end

end A160534.P5519333179530659070

/-! ## A160534.P10674075777983788803

`7*A160535(n)-A008683(∏[A014963(2*(n+1))])`
-/

namespace A160534.P10674075777983788803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A160535 n - A008683 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160534.P10674075777983788803

/-! ## A160534.P123867261884008696

`(7*A160535(n))^A069283(A001749(n+1))`
-/

namespace A160534.P123867261884008696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A160535 n : ℚ) ^ (A069283 (A001749 (n + 1)).toNat : ℤ)

end

end A160534.P123867261884008696

/-! ## A160534.P3203879631080437184

`7*A160535(n)-A008683(A001105(n+1))`
-/

namespace A160534.P3203879631080437184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A160535 n - A008683 (A001105 (n + 1)).toNat

end

end A160534.P3203879631080437184

/-!
# A160535: Omit first term from A160534 and divide by 7.

The programs for A160535, there is no canonical definition to state claims against.
-/

/-! ## A160535.P7310905294990735803

`floor(A160534(n)/7)`
-/

namespace A160535.P7310905294990735803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160534 n : ℚ) / 7⌋

end

end A160535.P7310905294990735803

/-! ## A160535.P8426401320566765979

`(A160534(n)-A000007(n))/7`
-/

namespace A160535.P8426401320566765979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160534 n - A000007 n : ℚ) / 7

end

end A160535.P8426401320566765979

/-! ## A160535.P3185993395435604938

`A160534(n)%A160551(n)/7`
-/

namespace A160535.P3185993395435604938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A160534 n) (A160551 n) : ℚ) / 7

end

end A160535.P3185993395435604938

/-! ## A160535.P10344914044081069825

`(A040000(n)-1)*A160534(n)/7`
-/

namespace A160535.P10344914044081069825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040000 n - 1 : ℚ) * ((A160534 n : ℚ) / 7)

end

end A160535.P10344914044081069825

/-! ## A160535.P11237783693788561867

`A160534(n)/7*char[A026741(n+1)]`
-/

namespace A160535.P11237783693788561867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160534 n : ℚ) / 7 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A160535.P11237783693788561867

/-! ## A160535.P15731499842455932165

`A160534(n)/7*char[A121759(n+1)]`
-/

namespace A160535.P15731499842455932165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121759 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160534 n : ℚ) / 7 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A160535.P15731499842455932165

/-! ## A160535.P6302681019983831934

`A160534(n)/A160539(n)*A160549(n)`
-/

namespace A160535.P6302681019983831934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160534 n : ℚ) / (A160539 n : ℚ) * (A160549 n : ℚ)

end

end A160535.P6302681019983831934

/-!
# A160536: a(n) = Fibonacci(n) + n^2.

The programs for A160536, the canonical program `A160536.P8463650487165730283` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160536 has offset 0).

The definition of A160536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+n²` (program `A160536.P8463650487165730283`, by `A160536.P8463650487165730283.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160536.P8463650487165730283

`A000045(n)+n²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160536

/-- `A000045(n)+n²` -/
def P8463650487165730283.Spec : Prop :=
  ∀ n, P8463650487165730283.a n = A160536 n

theorem P8463650487165730283.correct : P8463650487165730283.Spec := by
  intro n
  simp only [A160536]

end A160536

/-! ## A160536.P7376329130995488221

`ogf((2x-3x^2+x^3-2x^4)/(1-4x+5x^2-x^3-2x^4+x^5))`
-/

namespace A160536.P7376329130995488221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3, 1, -2] [1, -4, 5, -1, -2, 1] n

end

end A160536.P7376329130995488221

namespace A160536

/-- `ogf((2x-3x^2+x^3-2x^4)/(1-4x+5x^2-x^3-2x^4+x^5))` -/
def P7376329130995488221.Spec : Prop :=
  ∀ n, P7376329130995488221.a n = A160536 n

end A160536

/-! ## A160536.P3266049508921978427

`a(n-4)-a(n-3)-2*a(n-2)+3*a(n-1)-2` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11`
-/

namespace A160536.P3266049508921978427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 11] fun n a =>
  a (n - 4) - a (n - 3) - 2 * a (n - 2) + 3 * a (n - 1) - 2

end

end A160536.P3266049508921978427

namespace A160536

/-- `a(n-4)-a(n-3)-2*a(n-2)+3*a(n-1)-2` -/
def P3266049508921978427.Spec : Prop :=
  ∀ n, P3266049508921978427.a n = A160536 n

end A160536

/-! ## A160536.P5000179489784942661

`∑[a(n-1)+a(n-2)]+n²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A160536.P5000179489784942661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A160536.P5000179489784942661

namespace A160536

/-- `∑[a(n-1)+a(n-2)]+n²` -/
def P5000179489784942661.Spec : Prop :=
  ∀ n, (P5000179489784942661.a n : ℤ) = A160536 n

end A160536

/-! ## A160536.P4655010359424879903

`n²+A000045(n)`
-/

namespace A160536.P4655010359424879903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000045 n

end

end A160536.P4655010359424879903

namespace A160536

/-- `n²+A000045(n)` -/
def P4655010359424879903.Spec : Prop :=
  ∀ n, P4655010359424879903.a n = A160536 n

theorem P4655010359424879903.correct : P4655010359424879903.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P4655010359424879903.a, A160536.P8463650487165730283.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160536

/-! ## A160536.P2303555741657241849

`n²+abs(A236191(n))`
-/

namespace A160536.P2303555741657241849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + |A236191 n|

end

end A160536.P2303555741657241849

namespace A160536

/-- `n²+abs(A236191(n))` -/
def P2303555741657241849.Spec : Prop :=
  ∀ n, P2303555741657241849.a n = A160536 n

end A160536

/-! ## A160536.P1779385835425992468

`A212804(n+1)+n²`
-/

namespace A160536.P1779385835425992468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (n ^ 2 : ℤ)

end

end A160536.P1779385835425992468

namespace A160536

/-- `A212804(n+1)+n²` -/
def P1779385835425992468.Spec : Prop :=
  ∀ n, P1779385835425992468.a n = A160536 n

end A160536

/-! ## A160536.P7281078246439868576

`n²+A001611(n)-1`
-/

namespace A160536.P7281078246439868576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A001611 n - 1)

end

end A160536.P7281078246439868576

namespace A160536

/-- `n²+A001611(n)-1` -/
def P7281078246439868576.Spec : Prop :=
  ∀ n, P7281078246439868576.a n = A160536 n

theorem P7281078246439868576.correct : P7281078246439868576.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P7281078246439868576.a, A160536.P8463650487165730283.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160536

/-! ## A160536.P8140317366734269010

`n²-A152163(n+2)`
-/

namespace A160536.P8140317366734269010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A152163 (n + 2)

end

end A160536.P8140317366734269010

namespace A160536

/-- `n²-A152163(n+2)` -/
def P8140317366734269010.Spec : Prop :=
  ∀ n, P8140317366734269010.a n = A160536 n

end A160536

/-! ## A160536.P13364182148198496722

`n²+A157725(n)-2`
-/

namespace A160536.P13364182148198496722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A157725 n - 2)

end

end A160536.P13364182148198496722

namespace A160536

/-- `n²+A157725(n)-2` -/
def P13364182148198496722.Spec : Prop :=
  ∀ n, P13364182148198496722.a n = A160536 n

theorem P13364182148198496722.correct : P13364182148198496722.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P13364182148198496722.a, A160536.P8463650487165730283.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160536

/-! ## A160536.P15442800687635817504

`A014283(n)+2*n²`
-/

namespace A160536.P15442800687635817504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014283 n + (2 * n ^ 2 : ℤ)

end

end A160536.P15442800687635817504

namespace A160536

/-- `A014283(n)+2*n²` -/
def P15442800687635817504.Spec : Prop :=
  ∀ n, P15442800687635817504.a n = A160536 n

theorem P15442800687635817504.correct : P15442800687635817504.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P15442800687635817504.a, A160536.P8463650487165730283.a, A000045, A000045.P11838749114346432762.a, A014283, A014283.P650192608423277431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160536

/-! ## A160536.P13273730336226978287

`A103609(2*n)+n²`
-/

namespace A160536.P13273730336226978287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + (n ^ 2 : ℤ)

end

end A160536.P13273730336226978287

namespace A160536

/-- `A103609(2*n)+n²` -/
def P13273730336226978287.Spec : Prop :=
  ∀ n, P13273730336226978287.a n = A160536 n

end A160536

/-! ## A160536.P13341856031621196674

`A065220(n)+∑[2*n]`
-/

namespace A160536.P13341856031621196674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A160536.P13341856031621196674

namespace A160536

/-- `A065220(n)+∑[2*n]` -/
def P13341856031621196674.Spec : Prop :=
  ∀ n, P13341856031621196674.a n = A160536 n

end A160536

/-! ## A160536.P13455084000198836488

`n²-n+A002062(n)`
-/

namespace A160536.P13455084000198836488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A002062 n

end

end A160536.P13455084000198836488

namespace A160536

/-- `n²-n+A002062(n)` -/
def P13455084000198836488.Spec : Prop :=
  ∀ n, P13455084000198836488.a n = A160536 n

theorem P13455084000198836488.correct : P13455084000198836488.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P13455084000198836488.a, A160536.P8463650487165730283.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160536

/-! ## A160536.P14099624535235372912

`A129982(2*n+1)+n²`
-/

namespace A160536.P14099624535235372912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1) + (n ^ 2 : ℤ)

end

end A160536.P14099624535235372912

namespace A160536

/-- `A129982(2*n+1)+n²` -/
def P14099624535235372912.Spec : Prop :=
  ∀ n, P14099624535235372912.a n = A160536 n

end A160536

/-! ## A160536.P1263882193427743313

`∑[2*n]+A000045(2*n-n)-n`
-/

namespace A160536.P1263882193427743313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000045 (2 * n - n) - (n : ℤ))

end

end A160536.P1263882193427743313

namespace A160536

/-- `∑[2*n]+A000045(2*n-n)-n` -/
def P1263882193427743313.Spec : Prop :=
  ∀ n, P1263882193427743313.a n = A160536 n

end A160536

/-! ## A160536.P17359594797752685682

`∑[2*n]-(n-A000045(gcd(n, 2*n)))`
-/

namespace A160536.P17359594797752685682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - A000045 (Nat.gcd n (2 * n)))

end

end A160536.P17359594797752685682

namespace A160536

/-- `∑[2*n]-(n-A000045(gcd(n, 2*n)))` -/
def P17359594797752685682.Spec : Prop :=
  ∀ n, P17359594797752685682.a n = A160536 n

end A160536

/-! ## A160536.P3559422569214549000

`A157729(n)+A028875(n)`
-/

namespace A160536.P3559422569214549000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n + A028875 n

end

end A160536.P3559422569214549000

namespace A160536

/-- `A157729(n)+A028875(n)` -/
def P3559422569214549000.Spec : Prop :=
  ∀ n, P3559422569214549000.a n = A160536 n

theorem P3559422569214549000.correct : P3559422569214549000.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P3559422569214549000.a, A160536.P8463650487165730283.a, A000045, A000045.P11838749114346432762.a, A028875, A028875.P8156869436290036666.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160536

/-! ## A160536.P2963953678888242254

`A212272(n)-A045991(n)`
-/

namespace A160536.P2963953678888242254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212272 n - A045991 n

end

end A160536.P2963953678888242254

namespace A160536

/-- `A212272(n)-A045991(n)` -/
def P2963953678888242254.Spec : Prop :=
  ∀ n, P2963953678888242254.a n = A160536 n

theorem P2963953678888242254.correct : P2963953678888242254.Spec := by
  intro n
  simp only [A160536, Nat.add_sub_cancel, A160536.P2963953678888242254.a, A160536.P8463650487165730283.a, A000045, A000045.P11838749114346432762.a, A045991, A045991.P16915764248010155243.a, A212272, A212272.P230076933571766686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160536

/-!
# A160537: a(n) = n!*c(n) where c(n) is the coefficient of the Taylor power series expansion of the real function sin(x)^cos(x) defined on (0,Pi), expanded around the point x = Pi/2.

The programs for A160537, there is no canonical definition to state claims against.
-/

/-! ## A160537.P5431874356531037510

`abs(A215516(n))`
-/

namespace A160537.P5431874356531037510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215516 n|

end

end A160537.P5431874356531037510

/-! ## A160537.P11678301647107152510

`A033999(n)*A215516(n)`
-/

namespace A160537.P11678301647107152510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215516 n

end

end A160537.P11678301647107152510

/-! ## A160537.P6830415640399995409

`gcd(A000038(n), A215516(n))`
-/

namespace A160537.P6830415640399995409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215516 n)

end

end A160537.P6830415640399995409

/-! ## A160537.P11388401306566038721

`lcm(A008612(n), A215516(n))`
-/

namespace A160537.P11388401306566038721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008612 n) (A215516 n)

end

end A160537.P11388401306566038721

/-! ## A160537.P9199285663609593041

`lcm(-A215516(n), A209615(n+1))`
-/

namespace A160537.P9199285663609593041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A215516 n) (A209615 (n + 1))

end

end A160537.P9199285663609593041

/-!
# A160538: a(n) = 4*(n^4-n^3).

The programs for A160538, the canonical program `A160538.P2096202092056556085` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160538 has offset 1).

The definition of A160538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*((n+1)^4-(n+1)^3)` (program `A160538.P2096202092056556085`, by `A160538.P2096202092056556085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160538.P3326930792123759165

`ogf((32x+56x^2+8x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A160538.P3326930792123759165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 32, 56, 8] [1, -5, 10, -10, 5, -1] n

end

end A160538.P3326930792123759165

namespace A160538

/-- `ogf((32x+56x^2+8x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3326930792123759165.Spec : Prop :=
  ∀ n, P3326930792123759165.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P2096202092056556085

`4*((n+1)^4-(n+1)^3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160538

/-- `4*((n+1)^4-(n+1)^3)` -/
def P2096202092056556085.Spec : Prop :=
  ∀ n, P2096202092056556085.a n = A160538 (n + 1)

theorem P2096202092056556085.correct : P2096202092056556085.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel]

end A160538

/-! ## A160538.P15729642499718038127

`4*lcm(n, (n+1)^3)`
-/

namespace A160538.P15729642499718038127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lcm n ((n + 1) ^ 3)

end

end A160538.P15729642499718038127

namespace A160538

/-- `4*lcm(n, (n+1)^3)` -/
def P15729642499718038127.Spec : Prop :=
  ∀ n, (P15729642499718038127.a n : ℤ) = A160538 (n + 1)

end A160538

/-! ## A160538.P9641018780705148822

`lcm(2, n*Δ[(n²+n)²])`
-/

namespace A160538.P9641018780705148822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A160538.P9641018780705148822

namespace A160538

/-- `lcm(2, n*Δ[(n²+n)²])` -/
def P9641018780705148822.Spec : Prop :=
  ∀ n, (P9641018780705148822.a n : ℤ) = A160538 (n + 1)

end A160538

/-! ## A160538.P6942213053496107953

`8*C(n+1, 2)*(n+1)²`
-/

namespace A160538.P6942213053496107953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (n + 1) 2 * (n + 1) ^ 2

end

end A160538.P6942213053496107953

namespace A160538

/-- `8*C(n+1, 2)*(n+1)²` -/
def P6942213053496107953.Spec : Prop :=
  ∀ n, (P6942213053496107953.a n : ℤ) = A160538 (n + 1)

theorem P6942213053496107953.correct : P6942213053496107953.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel, A160538.P6942213053496107953.a, A160538.P2096202092056556085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160538

/-! ## A160538.P8335337988382143480

`lcm(n+1, Δ[n²])²-(n+1)²`
-/

namespace A160538.P8335337988382143480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A160538.P8335337988382143480

namespace A160538

/-- `lcm(n+1, Δ[n²])²-(n+1)²` -/
def P8335337988382143480.Spec : Prop :=
  ∀ n, P8335337988382143480.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P14456625624220202613

`∑[a(n-1)+4]²-(n+1)²` with `a(0)=1`
-/

namespace A160538.P14456625624220202613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A160538.P14456625624220202613

namespace A160538

/-- `∑[a(n-1)+4]²-(n+1)²` -/
def P14456625624220202613.Spec : Prop :=
  ∀ n, P14456625624220202613.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P4388631202621882943

`lcm((2*n+1)², (n+1)²)-(n+1)²`
-/

namespace A160538.P4388631202621882943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((2 * n + 1) ^ 2) ((n + 1) ^ 2) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A160538.P4388631202621882943

namespace A160538

/-- `lcm((2*n+1)², (n+1)²)-(n+1)²` -/
def P4388631202621882943.Spec : Prop :=
  ∀ n, P4388631202621882943.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P8629084018827176284

`((2*n+1)*(n+1))²-record[(n-1)²]`
-/

namespace A160538.P8629084018827176284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (n + 1)) ^ 2 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160538.P8629084018827176284

namespace A160538

/-- `((2*n+1)*(n+1))²-record[(n-1)²]` -/
def P8629084018827176284.Spec : Prop :=
  ∀ n, P8629084018827176284.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P5037052477888753081

`(2*n+1)*lcm(2*n+1, ∑[2*n+1])-∑[2*n+1]`
-/

namespace A160538.P5037052477888753081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A160538.P5037052477888753081

namespace A160538

/-- `(2*n+1)*lcm(2*n+1, ∑[2*n+1])-∑[2*n+1]` -/
def P5037052477888753081.Spec : Prop :=
  ∀ n, P5037052477888753081.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P7547707084555927230

`A188785(n+1)/2`
-/

namespace A160538.P7547707084555927230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188785 (n + 1) : ℚ) / 2

end

end A160538.P7547707084555927230

namespace A160538

/-- `A188785(n+1)/2` -/
def P7547707084555927230.Spec : Prop :=
  ∀ n, P7547707084555927230.a n = (A160538 (n + 1) : ℚ)

theorem P7547707084555927230.correct : P7547707084555927230.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel, A160538.P7547707084555927230.a, A160538.P2096202092056556085.a, A188785, A188785.P5869383830856746385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160538

/-! ## A160538.P14156208130320822175

`∑[A046142(n+1)-1]`
-/

namespace A160538.P14156208130320822175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160538.P14156208130320822175

namespace A160538

/-- `∑[A046142(n+1)-1]` -/
def P14156208130320822175.Spec : Prop :=
  ∀ n, P14156208130320822175.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P3900919621449817743

`∑[n*(A157870(n)+2)]`
-/

namespace A160538.P3900919621449817743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A157870 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160538.P3900919621449817743

namespace A160538

/-- `∑[n*(A157870(n)+2)]` -/
def P3900919621449817743.Spec : Prop :=
  ∀ n, P3900919621449817743.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P15598711743328063492

`∑[2*(A316224(n)+n)]`
-/

namespace A160538.P15598711743328063492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A316224 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160538.P15598711743328063492

namespace A160538

/-- `∑[2*(A316224(n)+n)]` -/
def P15598711743328063492.Spec : Prop :=
  ∀ n, P15598711743328063492.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P7808082503828052153

`∑[4*n*(A033954(n)+1)]`
-/

namespace A160538.P7808082503828052153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * (A033954 n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160538.P7808082503828052153

namespace A160538

/-- `∑[4*n*(A033954(n)+1)]` -/
def P7808082503828052153.Spec : Prop :=
  ∀ n, P7808082503828052153.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P4941373336039749261

`abs(4*n*Δ[A000217(n)²])`
-/

namespace A160538.P4941373336039749261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A160538.P4941373336039749261

namespace A160538

/-- `abs(4*n*Δ[A000217(n)²])` -/
def P4941373336039749261.Spec : Prop :=
  ∀ n, P4941373336039749261.a n = A160538 (n + 1)

end A160538

/-! ## A160538.P12156509072010795028

`A000384(n+1)²-(n+1)²`
-/

namespace A160538.P12156509072010795028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A160538.P12156509072010795028

namespace A160538

/-- `A000384(n+1)²-(n+1)²` -/
def P12156509072010795028.Spec : Prop :=
  ∀ n, P12156509072010795028.a n = A160538 (n + 1)

theorem P12156509072010795028.correct : P12156509072010795028.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel, A160538.P12156509072010795028.a, A160538.P2096202092056556085.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160538

/-! ## A160538.P7585444301730459890

`((2*n+1)*(n+1))²-A005563(n)-1`
-/

namespace A160538.P7585444301730459890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (n + 1)) ^ 2 : ℤ) - A005563 n - 1

end

end A160538.P7585444301730459890

namespace A160538

/-- `((2*n+1)*(n+1))²-A005563(n)-1` -/
def P7585444301730459890.Spec : Prop :=
  ∀ n, P7585444301730459890.a n = A160538 (n + 1)

theorem P7585444301730459890.correct : P7585444301730459890.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel, A160538.P7585444301730459890.a, A160538.P2096202092056556085.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160538

/-! ## A160538.P3416636213772828117

`A248698(n)+A084367(n)`
-/

namespace A160538.P3416636213772828117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248698 n + A084367 n

end

end A160538.P3416636213772828117

namespace A160538

/-- `A248698(n)+A084367(n)` -/
def P3416636213772828117.Spec : Prop :=
  ∀ n, P3416636213772828117.a n = A160538 (n + 1)

theorem P3416636213772828117.correct : P3416636213772828117.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel, A160538.P3416636213772828117.a, A160538.P2096202092056556085.a, A084367, A084367.P17760541641912809913.a, A248698, A248698.P17768782674993239299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160538

/-! ## A160538.P6286624749941536199

`A079414(n+1)-A103532(n)`
-/

namespace A160538.P6286624749941536199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079414 (n + 1) - A103532 n

end

end A160538.P6286624749941536199

namespace A160538

/-- `A079414(n+1)-A103532(n)` -/
def P6286624749941536199.Spec : Prop :=
  ∀ n, P6286624749941536199.a n = A160538 (n + 1)

theorem P6286624749941536199.correct : P6286624749941536199.Spec := by
  intro n
  simp only [A160538, Nat.add_sub_cancel, A160538.P6286624749941536199.a, A160538.P2096202092056556085.a, A079414, A079414.P3032603617172421399.a, A103532, A103532.P17143324640364294921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160538

/-!
# A160539: Coefficients in the expansion of C/B^7, in Watson's notation of page 118.

The programs for A160539, there is no canonical definition to state claims against.
-/

/-! ## A160539.P1931065757638558355

`A000007(n)+7*A160549(n)`
-/

namespace A160539.P1931065757638558355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 7 * A160549 n

end

end A160539.P1931065757638558355

/-! ## A160539.P2028962138371409108

`(7*A160549(n))^A062157(n)²`
-/

namespace A160539.P2028962138371409108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A160549 n : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A160539.P2028962138371409108

/-! ## A160539.P861761274772422731

`or(7*A160549(n), char[A091536(n)])`
-/

namespace A160539.P861761274772422731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (7 * A160549 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160539.P861761274772422731

/-! ## A160539.P7702441308918524185

`A103517(n)%2+7*A160549(n)`
-/

namespace A160539.P7702441308918524185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 n) 2 + 7 * A160549 n

end

end A160539.P7702441308918524185

/-! ## A160539.P3453221089821132397

`A006093(n+1)%2+7*A160549(n)`
-/

namespace A160539.P3453221089821132397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) 2 + 7 * A160549 n

end

end A160539.P3453221089821132397

/-! ## A160539.P10116486331450599542

`A004442(A327539(n))%2+7*A160549(n)`
-/

namespace A160539.P10116486331450599542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A327539 n).toNat) 2 + 7 * A160549 n

end

end A160539.P10116486331450599542

/-!
# A160541: Number of odd-then-even runs to reach 1 from n under the modified "3x+1" map: x -> x/2 if x is even, x -> (3x+1)/2 if x is odd.

The programs for A160541, there is no canonical definition to state claims against.
-/

/-! ## A160541.P15715106815072835722

`A346965(A000265(n+1))-(n+1)%2+1`
-/

namespace A160541.P15715106815072835722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (A000265 (n + 1)).toNat - (((n + 1) % 2 : ℕ) : ℤ) + 1

end

end A160541.P15715106815072835722

/-! ## A160541.P10445726029031285220

`A346965(1+n)+n%2`
-/

namespace A160541.P10445726029031285220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (1 + n) + ((n % 2 : ℕ) : ℤ)

end

end A160541.P10445726029031285220

/-! ## A160541.P3112734419778222160

`A346965(n+1)+A000035(n)`
-/

namespace A160541.P3112734419778222160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A000035 n

end

end A160541.P3112734419778222160

/-! ## A160541.P17211314242109681716

`A346965(n+1)+A007814(A020639(n+1))`
-/

namespace A160541.P17211314242109681716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A007814 (A020639 (n + 1)).toNat

end

end A160541.P17211314242109681716

/-! ## A160541.P10152875684354603252

`A346965(n+1)+A286380(n+1)-A006667(n+1)`
-/

namespace A160541.P10152875684354603252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A286380 (n + 1) - A006667 (n + 1)

end

end A160541.P10152875684354603252

/-! ## A160541.P3076139549935964620

`A286380(n+1)+A346965(n+1)-A286380(A000265(n+1))`
-/

namespace A160541.P3076139549935964620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) + (A346965 (n + 1) - A286380 (A000265 (n + 1)).toNat)

end

end A160541.P3076139549935964620

/-! ## A160541.P13953927579757174159

`A346965(n+1)+A078719(n+2)-A286380(n+2)`
-/

namespace A160541.P13953927579757174159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A078719 (n + 2) - A286380 (n + 2)

end

end A160541.P13953927579757174159

/-! ## A160541.P11657798814527290555

`A213181(A022998(n+1))`
-/

namespace A160541.P11657798814527290555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A022998 (n + 1)).toNat

end

end A160541.P11657798814527290555

/-! ## A160541.P15331684116666419437

`A213181(A059029(n)+1)`
-/

namespace A160541.P15331684116666419437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A059029 n + 1).toNat

end

end A160541.P15331684116666419437

/-! ## A160541.P4458269958483875553

`A213181(A257088(n+1))`
-/

namespace A160541.P4458269958483875553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A257088 (n + 1)).toNat

end

end A160541.P4458269958483875553

/-! ## A160541.P8457066452115902199

`A213181(A266491(n+1))`
-/

namespace A160541.P8457066452115902199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A266491 (n + 1)).toNat

end

end A160541.P8457066452115902199

/-! ## A160541.P14933589795971559692

`A213181(2*(n+1))`
-/

namespace A160541.P14933589795971559692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (2 * (n + 1))

end

end A160541.P14933589795971559692

/-! ## A160541.P2961983467940451894

`A346965(n+1)+A011765(2*(n+1))`
-/

namespace A160541.P2961983467940451894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A011765 (2 * (n + 1))

end

end A160541.P2961983467940451894

/-! ## A160541.P4119140561579306149

`A346965(n+1)+A292077(2*n+1)`
-/

namespace A160541.P4119140561579306149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A292077 (2 * n + 1)

end

end A160541.P4119140561579306149

/-! ## A160541.P16380774986230971389

`A078719(n+1)-A213209(2*(n+1))`
-/

namespace A160541.P16380774986230971389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - A213209 (2 * (n + 1))

end

end A160541.P16380774986230971389

/-! ## A160541.P12871351666461231203

`A006667(n+1)+1-A213209(2*(n+1))`
-/

namespace A160541.P12871351666461231203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (1 - A213209 (2 * (n + 1)))

end

end A160541.P12871351666461231203

/-! ## A160541.P17211530751101120163

`A286380(2*(n+1))-A213209(2*(n+1))`
-/

namespace A160541.P17211530751101120163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (2 * (n + 1)) - A213209 (2 * (n + 1))

end

end A160541.P17211530751101120163

/-! ## A160541.P16838798467442436059

`A346965(n+1)+A007814(n²+1)`
-/

namespace A160541.P16838798467442436059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A007814 (n ^ 2 + 1)

end

end A160541.P16838798467442436059

/-!
# A160542: Not divisible by 11.

The programs for A160542, the canonical program `A160542.P2882327612759708747` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160542 has offset 1).

The definition of A160542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160542.P2882327612759708747

`a(n-10)+11` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9, a(9)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160542

/-- `a(n-10)+11` -/
def P2882327612759708747.Spec : Prop :=
  ∀ n, (P2882327612759708747.a n : ℤ) = A160542 (n + 1)

theorem P2882327612759708747.correct : P2882327612759708747.Spec := by
  intro n
  simp only [A160542, Nat.add_sub_cancel]

end A160542

/-! ## A160542.P8049213873752531484

`ogf((1+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+x^10)/(1-x-x^10+x^11))`
-/

namespace A160542.P8049213873752531484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A160542.P8049213873752531484

namespace A160542

/-- `ogf((1+x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+x^10)/(1-x-x^10+x^11))` -/
def P8049213873752531484.Spec : Prop :=
  ∀ n, P8049213873752531484.a n = A160542 (n + 1)

end A160542

/-! ## A160542.P15200115439753225477

`comp[11*n]`
-/

namespace A160542.P15200115439753225477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160542.P15200115439753225477

namespace A160542

/-- `comp[11*n]` -/
def P15200115439753225477.Spec : Prop :=
  ∀ n, (P15200115439753225477.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P11067285758108199941

`lt[n, lcm(11, n)]`
-/

namespace A160542.P11067285758108199941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160542.P11067285758108199941

namespace A160542

/-- `lt[n, lcm(11, n)]` -/
def P11067285758108199941.Spec : Prop :=
  ∀ n, (P11067285758108199941.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P10064097234863204803

`ceil(or(1, n)/10)+n`
-/

namespace A160542.P10064097234863204803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 10⌉ + (n : ℤ)

end

end A160542.P10064097234863204803

namespace A160542

/-- `ceil(or(1, n)/10)+n` -/
def P10064097234863204803.Spec : Prop :=
  ∀ n, P10064097234863204803.a n = A160542 (n + 1)

end A160542

/-! ## A160542.P15746253646534291743

`∑[dr(A040790(n))]`
-/

namespace A160542.P15746253646534291743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040790 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160542.P15746253646534291743

namespace A160542

/-- `∑[dr(A040790(n))]` -/
def P15746253646534291743.Spec : Prop :=
  ∀ n, (P15746253646534291743.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P7177766346122598393

`∑[gcd(n, A280569(n))]`
-/

namespace A160542.P7177766346122598393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A280569 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160542.P7177766346122598393

namespace A160542

/-- `∑[gcd(n, A280569(n))]` -/
def P7177766346122598393.Spec : Prop :=
  ∀ n, (P7177766346122598393.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P2684841798379989152

`A008619(A002266(n))+n`
-/

namespace A160542.P2684841798379989152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002266 n).toNat + (n : ℤ)

end

end A160542.P2684841798379989152

namespace A160542

/-- `A008619(A002266(n))+n` -/
def P2684841798379989152.Spec : Prop :=
  ∀ n, P2684841798379989152.a n = A160542 (n + 1)

end A160542

/-! ## A160542.P735823085625151499

`∪[A267541(n), A267755(n)]`
-/

namespace A160542.P735823085625151499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160542.P735823085625151499

namespace A160542

/-- `∪[A267541(n), A267755(n)]` -/
def P735823085625151499.Spec : Prop :=
  ∀ n, (P735823085625151499.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P17751055212850271668

`A002266(A004526(n))+n+1`
-/

namespace A160542.P17751055212850271668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004526 n).toNat + (n + 1 : ℤ)

end

end A160542.P17751055212850271668

namespace A160542

/-- `A002266(A004526(n))+n+1` -/
def P17751055212850271668.Spec : Prop :=
  ∀ n, P17751055212850271668.a n = A160542 (n + 1)

end A160542

/-! ## A160542.P7557796833549197736

`A002265(A057354(n))+n+1`
-/

namespace A160542.P7557796833549197736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A057354 n).toNat + (n + 1 : ℤ)

end

end A160542.P7557796833549197736

namespace A160542

/-- `A002265(A057354(n))+n+1` -/
def P7557796833549197736.Spec : Prop :=
  ∀ n, P7557796833549197736.a n = A160542 (n + 1)

end A160542

/-! ## A160542.P15186997288500039164

`A002265(A130496(n))+n+1`
-/

namespace A160542.P15186997288500039164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130496 n).toNat + (n + 1 : ℤ)

end

end A160542.P15186997288500039164

namespace A160542

/-- `A002265(A130496(n))+n+1` -/
def P15186997288500039164.Spec : Prop :=
  ∀ n, P15186997288500039164.a n = A160542 (n + 1)

end A160542

/-! ## A160542.P17553712417238816807

`∪[A032797(n+1), A017461(n)]`
-/

namespace A160542.P17553712417238816807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160542.P17553712417238816807

namespace A160542

/-- `∪[A032797(n+1), A017461(n)]` -/
def P17553712417238816807.Spec : Prop :=
  ∀ n, (P17553712417238816807.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P1978091971153060207

`lt[n, A109052(n)]`
-/

namespace A160542.P1978091971153060207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A160542.P1978091971153060207

namespace A160542

/-- `lt[n, A109052(n)]` -/
def P1978091971153060207.Spec : Prop :=
  ∀ n, (P1978091971153060207.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P935314276408140913

`eq[n, A106612(A028310(n))]`
-/

namespace A160542.P935314276408140913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160542.P935314276408140913

namespace A160542

/-- `eq[n, A106612(A028310(n))]` -/
def P935314276408140913.Spec : Prop :=
  ∀ n, (P935314276408140913.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P15868984258287384767

`∑[runs[A130489(n)]]`
-/

namespace A160542.P15868984258287384767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130489 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160542.P15868984258287384767

namespace A160542

/-- `∑[runs[A130489(n)]]` -/
def P15868984258287384767.Spec : Prop :=
  ∀ n, (P15868984258287384767.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P18050122741254168322

`lt[A000217(n), A005449(A106612(n))]`
-/

namespace A160542.P18050122741254168322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160542.P18050122741254168322

namespace A160542

/-- `lt[A000217(n), A005449(A106612(n))]` -/
def P18050122741254168322.Spec : Prop :=
  ∀ n, (P18050122741254168322.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P5145334071182265294

`lt[A051022(n), A005449(A106612(n))]`
-/

namespace A160542.P5145334071182265294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160542.P5145334071182265294

namespace A160542

/-- `lt[A051022(n), A005449(A106612(n))]` -/
def P5145334071182265294.Spec : Prop :=
  ∀ n, (P5145334071182265294.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P8945006061473972764

`lt[A055648(n), A005449(A106612(n))]`
-/

namespace A160542.P8945006061473972764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A106612 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160542.P8945006061473972764

namespace A160542

/-- `lt[A055648(n), A005449(A106612(n))]` -/
def P8945006061473972764.Spec : Prop :=
  ∀ n, (P8945006061473972764.a n : ℤ) = A160542 (n + 1)

end A160542

/-! ## A160542.P178010252280652317

`filter[A173517(n), A145568(#)]`
-/

namespace A160542.P178010252280652317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A160542.P178010252280652317

namespace A160542

/-- `filter[A173517(n), A145568(#)]` -/
def P178010252280652317.Spec : Prop :=
  ∀ n, P178010252280652317.a n = A160542 (n + 1)

end A160542

/-!
# A160543: Not divisible by 17.

The programs for A160543, the canonical program `A160543.P4130253230045137875` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160543 has offset 1).

The definition of A160543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160543.P10079404085333618808

`comp[17*n]`
-/

namespace A160543.P10079404085333618808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160543.P10079404085333618808

namespace A160543

/-- `comp[17*n]` -/
def P10079404085333618808.Spec : Prop :=
  ∀ n, (P10079404085333618808.a n : ℤ) = A160543 (n + 1)

end A160543

/-! ## A160543.P4130253230045137875

`lt[n, lcm(17, n)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160543

/-- `lt[n, lcm(17, n)]` -/
def P4130253230045137875.Spec : Prop :=
  ∀ n, (P4130253230045137875.a n : ℤ) = A160543 (n + 1)

theorem P4130253230045137875.correct : P4130253230045137875.Spec := by
  intro n
  simp only [A160543, Nat.add_sub_cancel]

end A160543

/-! ## A160543.P11336646055016510297

`and(n, -16)/16+n+1`
-/

namespace A160543.P11336646055016510297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-16) : ℚ) / 16 + (n + 1 : ℚ)

end

end A160543.P11336646055016510297

namespace A160543

/-- `and(n, -16)/16+n+1` -/
def P11336646055016510297.Spec : Prop :=
  ∀ n, P11336646055016510297.a n = (A160543 (n + 1) : ℚ)

end A160543

/-! ## A160543.P18122480450692432399

`∑[A014041(n)²]+n`
-/

namespace A160543.P18122480450692432399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A160543.P18122480450692432399

namespace A160543

/-- `∑[A014041(n)²]+n` -/
def P18122480450692432399.Spec : Prop :=
  ∀ n, P18122480450692432399.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P17363890843636339582

`∑[char[A008598(n)]]+n`
-/

namespace A160543.P17363890843636339582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A160543.P17363890843636339582

namespace A160543

/-- `∑[char[A008598(n)]]+n` -/
def P17363890843636339582.Spec : Prop :=
  ∀ n, (P17363890843636339582.a n : ℤ) = A160543 (n + 1)

end A160543

/-! ## A160543.P37898375586506740

`∑[gcd(2, A106609(n))]-1`
-/

namespace A160543.P37898375586506740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A106609 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A160543.P37898375586506740

namespace A160543

/-- `∑[gcd(2, A106609(n))]-1` -/
def P37898375586506740.Spec : Prop :=
  ∀ n, P37898375586506740.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P1887711613094322348

`∑[and(1, A060101(n))]+n`
-/

namespace A160543.P1887711613094322348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060101 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A160543.P1887711613094322348

namespace A160543

/-- `∑[and(1, A060101(n))]+n` -/
def P1887711613094322348.Spec : Prop :=
  ∀ n, P1887711613094322348.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P6867775749116803578

`∑[char[A317316(2*n)]]+n`
-/

namespace A160543.P6867775749116803578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A160543.P6867775749116803578

namespace A160543

/-- `∑[char[A317316(2*n)]]+n` -/
def P6867775749116803578.Spec : Prop :=
  ∀ n, (P6867775749116803578.a n : ℤ) = A160543 (n + 1)

end A160543

/-! ## A160543.P258618141123914692

`A008621(A002265(n))+n`
-/

namespace A160543.P258618141123914692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A002265 n).toNat + (n : ℤ)

end

end A160543.P258618141123914692

namespace A160543

/-- `A008621(A002265(n))+n` -/
def P258618141123914692.Spec : Prop :=
  ∀ n, P258618141123914692.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P11093931286021883930

`A008621(A093391(n))+n`
-/

namespace A160543.P11093931286021883930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A093391 n).toNat + (n : ℤ)

end

end A160543.P11093931286021883930

namespace A160543

/-- `A008621(A093391(n))+n` -/
def P11093931286021883930.Spec : Prop :=
  ∀ n, P11093931286021883930.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P11812856933517656190

`A110656(A008619(n))+n`
-/

namespace A160543.P11812856933517656190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A008619 n).toNat + (n : ℤ)

end

end A160543.P11812856933517656190

namespace A160543

/-- `A110656(A008619(n))+n` -/
def P11812856933517656190.Spec : Prop :=
  ∀ n, P11812856933517656190.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P894273252372369870

`A110655(A008621(n))+n`
-/

namespace A160543.P894273252372369870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A008621 n).toNat + (n : ℤ)

end

end A160543.P894273252372369870

namespace A160543

/-- `A110655(A008621(n))+n` -/
def P894273252372369870.Spec : Prop :=
  ∀ n, P894273252372369870.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P15758863029666080077

`A008621(A173711(n))+n`
-/

namespace A160543.P15758863029666080077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A173711 n).toNat + (n : ℤ)

end

end A160543.P15758863029666080077

namespace A160543

/-- `A008621(A173711(n))+n` -/
def P15758863029666080077.Spec : Prop :=
  ∀ n, P15758863029666080077.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P16678294788947783963

`A110656(A004526(n)+1)+n`
-/

namespace A160543.P16678294788947783963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A004526 n + 1).toNat + (n : ℤ)

end

end A160543.P16678294788947783963

namespace A160543

/-- `A110656(A004526(n)+1)+n` -/
def P16678294788947783963.Spec : Prop :=
  ∀ n, P16678294788947783963.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P4620975298479959495

`A008619(A132292(n+1))+n`
-/

namespace A160543.P4620975298479959495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132292 (n + 1)).toNat + (n : ℤ)

end

end A160543.P4620975298479959495

namespace A160543

/-- `A008619(A132292(n+1))+n` -/
def P4620975298479959495.Spec : Prop :=
  ∀ n, P4620975298479959495.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P13012762870802139598

`A110656(A110654(n+1))+n`
-/

namespace A160543.P13012762870802139598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A110654 (n + 1)).toNat + (n : ℤ)

end

end A160543.P13012762870802139598

namespace A160543

/-- `A110656(A110654(n+1))+n` -/
def P13012762870802139598.Spec : Prop :=
  ∀ n, P13012762870802139598.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P13291856059346665606

`A110656(A123108(n)+1)+n`
-/

namespace A160543.P13291856059346665606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A123108 n + 1).toNat + (n : ℤ)

end

end A160543.P13291856059346665606

namespace A160543

/-- `A110656(A123108(n)+1)+n` -/
def P13291856059346665606.Spec : Prop :=
  ∀ n, P13291856059346665606.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P15549936134419006056

`A008621(A008621(n)-1)+n`
-/

namespace A160543.P15549936134419006056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A008621 n - 1).toNat + (n : ℤ)

end

end A160543.P15549936134419006056

namespace A160543

/-- `A008621(A008621(n)-1)+n` -/
def P15549936134419006056.Spec : Prop :=
  ∀ n, P15549936134419006056.a n = A160543 (n + 1)

end A160543

/-! ## A160543.P9522413391022273043

`∑[char[A004277(A004767(2*n+1)+1)]+1]`
-/

namespace A160543.P9522413391022273043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004767 (2 * n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160543.P9522413391022273043

namespace A160543

/-- `∑[char[A004277(A004767(2*n+1)+1)]+1]` -/
def P9522413391022273043.Spec : Prop :=
  ∀ n, (P9522413391022273043.a n : ℤ) = A160543 (n + 1)

end A160543

/-! ## A160543.P5374653266489097269

`A008621(A004524(A004524(n)))+n`
-/

namespace A160543.P5374653266489097269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004524 (A004524 n).toNat).toNat + (n : ℤ)

end

end A160543.P5374653266489097269

namespace A160543

/-- `A008621(A004524(A004524(n)))+n` -/
def P5374653266489097269.Spec : Prop :=
  ∀ n, P5374653266489097269.a n = A160543 (n + 1)

end A160543

/-!
# A160544: Not divisible by 19.

The programs for A160544, the canonical program `A160544.P17466160301409706011` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160544 has offset 1).

The definition of A160544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160544.P263495859374613992

`comp[19*n]`
-/

namespace A160544.P263495859374613992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160544.P263495859374613992

namespace A160544

/-- `comp[19*n]` -/
def P263495859374613992.Spec : Prop :=
  ∀ n, (P263495859374613992.a n : ℤ) = A160544 (n + 1)

end A160544

/-! ## A160544.P17466160301409706011

`lt[n, lcm(19, n)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160544

/-- `lt[n, lcm(19, n)]` -/
def P17466160301409706011.Spec : Prop :=
  ∀ n, (P17466160301409706011.a n : ℤ) = A160544 (n + 1)

theorem P17466160301409706011.correct : P17466160301409706011.Spec := by
  intro n
  simp only [A160544, Nat.add_sub_cancel]

end A160544

/-! ## A160544.P11238506551727464939

`ceil(or(1, n)/18+n)`
-/

namespace A160544.P11238506551727464939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 18 + (n : ℚ)⌉

end

end A160544.P11238506551727464939

namespace A160544

/-- `ceil(or(1, n)/18+n)` -/
def P11238506551727464939.Spec : Prop :=
  ∀ n, P11238506551727464939.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P5521922488602726535

`A152467(floor(n/3))+n+1`
-/

namespace A160544.P5521922488602726535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 ⌊(n : ℚ) / 3⌋.toNat + (n + 1 : ℤ)

end

end A160544.P5521922488602726535

namespace A160544

/-- `A152467(floor(n/3))+n+1` -/
def P5521922488602726535.Spec : Prop :=
  ∀ n, P5521922488602726535.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P5014695736869212505

`floor(A000027(n+1)+n/18)`
-/

namespace A160544.P5014695736869212505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℚ) + (n : ℚ) / 18⌋

end

end A160544.P5014695736869212505

namespace A160544

/-- `floor(A000027(n+1)+n/18)` -/
def P5014695736869212505.Spec : Prop :=
  ∀ n, P5014695736869212505.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P14185282316820154142

`∑[char[6*A000027(3*(n+1))]]+n+1`
-/

namespace A160544.P14185282316820154142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000027 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A160544.P14185282316820154142

namespace A160544

/-- `∑[char[6*A000027(3*(n+1))]]+n+1` -/
def P14185282316820154142.Spec : Prop :=
  ∀ n, (P14185282316820154142.a n : ℤ) = A160544 (n + 1)

end A160544

/-! ## A160544.P16693026104863429050

`A097992(A002264(n))+n`
-/

namespace A160544.P16693026104863429050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A002264 n).toNat + (n : ℤ)

end

end A160544.P16693026104863429050

namespace A160544

/-- `A097992(A002264(n))+n` -/
def P16693026104863429050.Spec : Prop :=
  ∀ n, P16693026104863429050.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P7913250175349207850

`A008620(A152467(n))+n`
-/

namespace A160544.P7913250175349207850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A152467 n).toNat + (n : ℤ)

end

end A160544.P7913250175349207850

namespace A160544

/-- `A008620(A152467(n))+n` -/
def P7913250175349207850.Spec : Prop :=
  ∀ n, P7913250175349207850.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P18116114609384051764

`A343609(A004526(n))+n+1`
-/

namespace A160544.P18116114609384051764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A004526 n).toNat + (n + 1 : ℤ)

end

end A160544.P18116114609384051764

namespace A160544

/-- `A343609(A004526(n))+n+1` -/
def P18116114609384051764.Spec : Prop :=
  ∀ n, P18116114609384051764.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P9272133005359020337

`A008615(2*A097992(n))+n`
-/

namespace A160544.P9272133005359020337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A097992 n).toNat + (n : ℤ)

end

end A160544.P9272133005359020337

namespace A160544

/-- `A008615(2*A097992(n))+n` -/
def P9272133005359020337.Spec : Prop :=
  ∀ n, P9272133005359020337.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P3671758156409989750

`A097992(A047422(n+1)-n)+n`
-/

namespace A160544.P3671758156409989750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A047422 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A160544.P3671758156409989750

namespace A160544

/-- `A097992(A047422(n+1)-n)+n` -/
def P3671758156409989750.Spec : Prop :=
  ∀ n, P3671758156409989750.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P9380365818860492955

`∑[char[A004277(A004767(2*n+1)+n+2)]+1]`
-/

namespace A160544.P9380365818860492955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004767 (2 * n + 1) + (n + 2 : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160544.P9380365818860492955

namespace A160544

/-- `∑[char[A004277(A004767(2*n+1)+n+2)]+1]` -/
def P9380365818860492955.Spec : Prop :=
  ∀ n, (P9380365818860492955.a n : ℤ) = A160544 (n + 1)

end A160544

/-! ## A160544.P4704870562162458653

`A008621(A002264(A004396(n)))+n`
-/

namespace A160544.P4704870562162458653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A002264 (A004396 n).toNat).toNat + (n : ℤ)

end

end A160544.P4704870562162458653

namespace A160544

/-- `A008621(A002264(A004396(n)))+n` -/
def P4704870562162458653.Spec : Prop :=
  ∀ n, P4704870562162458653.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P8665350270123147182

`A002265(A002264(A004523(n)))+n+1`
-/

namespace A160544.P8665350270123147182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002264 (A004523 n).toNat).toNat + (n + 1 : ℤ)

end

end A160544.P8665350270123147182

namespace A160544

/-- `A002265(A002264(A004523(n)))+n+1` -/
def P8665350270123147182.Spec : Prop :=
  ∀ n, P8665350270123147182.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P13475464302345565305

`record[A106620(n+1)]`
-/

namespace A160544.P13475464302345565305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160544.P13475464302345565305

namespace A160544

/-- `record[A106620(n+1)]` -/
def P13475464302345565305.Spec : Prop :=
  ∀ n, P13475464302345565305.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P6583490651278804546

`eq[n, A106620(A028310(n))]`
-/

namespace A160544.P6583490651278804546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160544.P6583490651278804546

namespace A160544

/-- `eq[n, A106620(A028310(n))]` -/
def P6583490651278804546.Spec : Prop :=
  ∀ n, (P6583490651278804546.a n : ℤ) = A160544 (n + 1)

end A160544

/-! ## A160544.P16182874887497059419

`record[A014028(n)+n]`
-/

namespace A160544.P16182874887497059419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014028 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160544.P16182874887497059419

namespace A160544

/-- `record[A014028(n)+n]` -/
def P16182874887497059419.Spec : Prop :=
  ∀ n, P16182874887497059419.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P2361264110614766732

`A081753(A008611(2*n))+n`
-/

namespace A160544.P2361264110614766732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A008611 (2 * n)).toNat + (n : ℤ)

end

end A160544.P2361264110614766732

namespace A160544

/-- `A081753(A008611(2*n))+n` -/
def P2361264110614766732.Spec : Prop :=
  ∀ n, P2361264110614766732.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P1384962498339576248

`A342696(A002264(2*n))+n+1`
-/

namespace A160544.P1384962498339576248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A002264 (2 * n)).toNat + (n + 1 : ℤ)

end

end A160544.P1384962498339576248

namespace A160544

/-- `A342696(A002264(2*n))+n+1` -/
def P1384962498339576248.Spec : Prop :=
  ∀ n, P1384962498339576248.a n = A160544 (n + 1)

end A160544

/-! ## A160544.P17438232756517585815

`A097992(A152467(2*n))+n`
-/

namespace A160544.P17438232756517585815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A152467 (2 * n)).toNat + (n : ℤ)

end

end A160544.P17438232756517585815

namespace A160544

/-- `A097992(A152467(2*n))+n` -/
def P17438232756517585815.Spec : Prop :=
  ∀ n, P17438232756517585815.a n = A160544 (n + 1)

end A160544

/-!
# A160545: Numbers coprime to 21.

The programs for A160545, the canonical program `A160545.P3860729222002248897` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160545 has offset 1).

The definition of A160545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160545.P3860729222002248897

`ogf((1+x+2x^2+x^3+3x^4+2x^5+x^6+2x^7+3x^8+x^9+2x^10+x^11+x^12)/(1-x-x^12+x^13))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160545

/-- `ogf((1+x+2x^2+x^3+3x^4+2x^5+x^6+2x^7+3x^8+x^9+2x^10+x^11+x^12)/(1-x-x^12+x^13))` -/
def P3860729222002248897.Spec : Prop :=
  ∀ n, P3860729222002248897.a n = A160545 (n + 1)

theorem P3860729222002248897.correct : P3860729222002248897.Spec := by
  intro n
  simp only [A160545, Nat.add_sub_cancel]

end A160545

/-! ## A160545.P5564771938556718587

`comp[A176409(n+1)]`
-/

namespace A160545.P5564771938556718587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A160545.P5564771938556718587

namespace A160545

/-- `comp[A176409(n+1)]` -/
def P5564771938556718587.Spec : Prop :=
  ∀ n, (P5564771938556718587.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P2549395099272874064

`record[A242603((n+1)/3^val(n+1, 3))]`
-/

namespace A160545.P2549395099272874064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160545.P2549395099272874064

namespace A160545

/-- `record[A242603((n+1)/3^val(n+1, 3))]` -/
def P2549395099272874064.Spec : Prop :=
  ∀ n, P2549395099272874064.a n = A160545 (n + 1)

end A160545

/-! ## A160545.P13198427528845985791

`∩[A001651(n+1), A047304(n+1)]`
-/

namespace A160545.P13198427528845985791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160545.P13198427528845985791

namespace A160545

/-- `∩[A001651(n+1), A047304(n+1)]` -/
def P13198427528845985791.Spec : Prop :=
  ∀ n, (P13198427528845985791.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P17562998504033414027

`record[gcd((n+1)/3^val(n+1, 3), A359099(n+1))]`
-/

namespace A160545.P17562998504033414027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (A359099 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160545.P17562998504033414027

namespace A160545

/-- `record[gcd((n+1)/3^val(n+1, 3), A359099(n+1))]` -/
def P17562998504033414027.Spec : Prop :=
  ∀ n, (P17562998504033414027.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P5435004724297235587

`filter[n+floor((n+6)/6), A109007(#)]`
-/

namespace A160545.P5435004724297235587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n + 6 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109007 (f1 j).toNat = 1) n)

end

end A160545.P5435004724297235587

namespace A160545

/-- `filter[n+floor((n+6)/6), A109007(#)]` -/
def P5435004724297235587.Spec : Prop :=
  ∀ n, P5435004724297235587.a n = A160545 (n + 1)

end A160545

/-! ## A160545.P11281400904738612761

`filter[A091684(n), A109720(#)]`
-/

namespace A160545.P11281400904738612761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A160545.P11281400904738612761

namespace A160545

/-- `filter[A091684(n), A109720(#)]` -/
def P11281400904738612761.Spec : Prop :=
  ∀ n, P11281400904738612761.a n = A160545 (n + 1)

end A160545

/-! ## A160545.P16227435159889985932

`eq[A010143(n), A088439(n)]`
-/

namespace A160545.P16227435159889985932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P16227435159889985932

namespace A160545

/-- `eq[A010143(n), A088439(n)]` -/
def P16227435159889985932.Spec : Prop :=
  ∀ n, (P16227435159889985932.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P3016143281121337847

`eq[A010143(n), A101443(n)]`
-/

namespace A160545.P3016143281121337847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P3016143281121337847

namespace A160545

/-- `eq[A010143(n), A101443(n)]` -/
def P3016143281121337847.Spec : Prop :=
  ∀ n, (P3016143281121337847.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P16030973096416607265

`eq[A040404(n), A088439(n)]`
-/

namespace A160545.P16030973096416607265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P16030973096416607265

namespace A160545

/-- `eq[A040404(n), A088439(n)]` -/
def P16030973096416607265.Spec : Prop :=
  ∀ n, (P16030973096416607265.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P7063836473884443901

`eq[A040404(n), A101443(n)]`
-/

namespace A160545.P7063836473884443901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P7063836473884443901

namespace A160545

/-- `eq[A040404(n), A101443(n)]` -/
def P7063836473884443901.Spec : Prop :=
  ∀ n, (P7063836473884443901.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P12979373784131590199

`eq[A070644(n), A101443(n)]`
-/

namespace A160545.P12979373784131590199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P12979373784131590199

namespace A160545

/-- `eq[A070644(n), A101443(n)]` -/
def P12979373784131590199.Spec : Prop :=
  ∀ n, (P12979373784131590199.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P2090153161830020026

`eq[A088439(n), A109010(n)]`
-/

namespace A160545.P2090153161830020026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P2090153161830020026

namespace A160545

/-- `eq[A088439(n), A109010(n)]` -/
def P2090153161830020026.Spec : Prop :=
  ∀ n, (P2090153161830020026.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P3329419540361227370

`eq[A101443(n), A109010(n)]`
-/

namespace A160545.P3329419540361227370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P3329419540361227370

namespace A160545

/-- `eq[A101443(n), A109010(n)]` -/
def P3329419540361227370.Spec : Prop :=
  ∀ n, (P3329419540361227370.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P966414660865101363

`eq[A101443(n), A109720(n)]`
-/

namespace A160545.P966414660865101363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P966414660865101363

namespace A160545

/-- `eq[A101443(n), A109720(n)]` -/
def P966414660865101363.Spec : Prop :=
  ∀ n, (P966414660865101363.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P6380744458506782369

`eq[A070644(n), A267871(n)]`
-/

namespace A160545.P6380744458506782369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160545.P6380744458506782369

namespace A160545

/-- `eq[A070644(n), A267871(n)]` -/
def P6380744458506782369.Spec : Prop :=
  ∀ n, (P6380744458506782369.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P12841984603758842079

`eq[n, A257174(A106608(n))]`
-/

namespace A160545.P12841984603758842079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A106608 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160545.P12841984603758842079

namespace A160545

/-- `eq[n, A257174(A106608(n))]` -/
def P12841984603758842079.Spec : Prop :=
  ∀ n, (P12841984603758842079.a n : ℤ) = A160545 (n + 1)

end A160545

/-! ## A160545.P8912726750639385373

`filter[A047304(n+1), A011655(#)]`
-/

namespace A160545.P8912726750639385373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A160545.P8912726750639385373

namespace A160545

/-- `filter[A047304(n+1), A011655(#)]` -/
def P8912726750639385373.Spec : Prop :=
  ∀ n, P8912726750639385373.a n = A160545 (n + 1)

end A160545

/-! ## A160545.P14912354518748681701

`filter[A001651(n+1), A109720(#)]`
-/

namespace A160545.P14912354518748681701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A160545.P14912354518748681701

namespace A160545

/-- `filter[A001651(n+1), A109720(#)]` -/
def P14912354518748681701.Spec : Prop :=
  ∀ n, P14912354518748681701.a n = A160545 (n + 1)

end A160545

/-! ## A160545.P6574605705560554750

`filter[A047304(n+1), A267208(#)]`
-/

namespace A160545.P6574605705560554750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A160545.P6574605705560554750

namespace A160545

/-- `filter[A047304(n+1), A267208(#)]` -/
def P6574605705560554750.Spec : Prop :=
  ∀ n, P6574605705560554750.a n = A160545 (n + 1)

end A160545

/-!
# A160546: Not divisible by 29.

The programs for A160546, the canonical program `A160546.P3257711352568043309` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160546 has offset 1).

The definition of A160546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160546.P9978199754728352703

`comp[29*n]`
-/

namespace A160546.P9978199754728352703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160546.P9978199754728352703

namespace A160546

/-- `comp[29*n]` -/
def P9978199754728352703.Spec : Prop :=
  ∀ n, (P9978199754728352703.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P13020851240067391546

`∑[char[lcm(28, n)]]+n`
-/

namespace A160546.P13020851240067391546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 28 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A160546.P13020851240067391546

namespace A160546

/-- `∑[char[lcm(28, n)]]+n` -/
def P13020851240067391546.Spec : Prop :=
  ∀ n, (P13020851240067391546.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P7448615148457205617

`record[lcm(29, n+1)/29]`
-/

namespace A160546.P7448615148457205617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 29 (n + 1) : ℚ) / 29

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160546.P7448615148457205617

namespace A160546

/-- `record[lcm(29, n+1)/29]` -/
def P7448615148457205617.Spec : Prop :=
  ∀ n, P7448615148457205617.a n = (A160546 (n + 1) : ℚ)

end A160546

/-! ## A160546.P16619592261908414928

`a(n-1)+char[28*n]+1` with `a(0)=1`
-/

namespace A160546.P16619592261908414928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A160546.P16619592261908414928

namespace A160546

/-- `a(n-1)+char[28*n]+1` -/
def P16619592261908414928.Spec : Prop :=
  ∀ n, (P16619592261908414928.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P3257711352568043309

`A008621(floor(n/7))+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160546

/-- `A008621(floor(n/7))+n` -/
def P3257711352568043309.Spec : Prop :=
  ∀ n, P3257711352568043309.a n = A160546 (n + 1)

theorem P3257711352568043309.correct : P3257711352568043309.Spec := by
  intro n
  simp only [A160546, Nat.add_sub_cancel]

end A160546

/-! ## A160546.P12574393734498211389

`A002265(∑[char[7*n]]+3)+n`
-/

namespace A160546.P12574393734498211389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + (n : ℤ)

end

end A160546.P12574393734498211389

namespace A160546

/-- `A002265(∑[char[7*n]]+3)+n` -/
def P12574393734498211389.Spec : Prop :=
  ∀ n, P12574393734498211389.a n = A160546 (n + 1)

end A160546

/-! ## A160546.P13480430570935265347

`∑[char[29*n-A028310(n)]]+1+n`
-/

namespace A160546.P13480430570935265347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - A028310 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A160546.P13480430570935265347

namespace A160546

/-- `∑[char[29*n-A028310(n)]]+1+n` -/
def P13480430570935265347.Spec : Prop :=
  ∀ n, (P13480430570935265347.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P8536981713242850326

`∑[gcd(A010130(n), A010143(n))]`
-/

namespace A160546.P8536981713242850326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010130 n) (A010143 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160546.P8536981713242850326

namespace A160546

/-- `∑[gcd(A010130(n), A010143(n))]` -/
def P8536981713242850326.Spec : Prop :=
  ∀ n, (P8536981713242850326.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P356951803161486102

`∑[gcd(A010215(n), A010223(n))]`
-/

namespace A160546.P356951803161486102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010215 n) (A010223 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160546.P356951803161486102

namespace A160546

/-- `∑[gcd(A010215(n), A010223(n))]` -/
def P356951803161486102.Spec : Prop :=
  ∀ n, (P356951803161486102.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P4919460689675513934

`∑[gcd(A040414(n), A040445(n))]`
-/

namespace A160546.P4919460689675513934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040414 n) (A040445 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160546.P4919460689675513934

namespace A160546

/-- `∑[gcd(A040414(n), A040445(n))]` -/
def P4919460689675513934.Spec : Prop :=
  ∀ n, (P4919460689675513934.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P16907285921078360953

`∑[gcd(A040866(n), A040885(n))]`
-/

namespace A160546.P16907285921078360953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040866 n) (A040885 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160546.P16907285921078360953

namespace A160546

/-- `∑[gcd(A040866(n), A040885(n))]` -/
def P16907285921078360953.Spec : Prop :=
  ∀ n, (P16907285921078360953.a n : ℤ) = A160546 (n + 1)

end A160546

/-! ## A160546.P16108941731931877686

`comp[A195819(n)]%A195816(n+1)`
-/

namespace A160546.P16108941731931877686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195819 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A195816 (n + 1))

end

end A160546.P16108941731931877686

namespace A160546

/-- `comp[A195819(n)]%A195816(n+1)` -/
def P16108941731931877686.Spec : Prop :=
  ∀ n, P16108941731931877686.a n = A160546 (n + 1)

end A160546

/-! ## A160546.P13325870013942001572

`record[A014038(n)+n]`
-/

namespace A160546.P13325870013942001572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014038 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160546.P13325870013942001572

namespace A160546

/-- `record[A014038(n)+n]` -/
def P13325870013942001572.Spec : Prop :=
  ∀ n, P13325870013942001572.a n = A160546 (n + 1)

end A160546

/-! ## A160546.P5550039634696971153

`record[A014067(n)+A004526(n)]`
-/

namespace A160546.P5550039634696971153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 n + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160546.P5550039634696971153

namespace A160546

/-- `record[A014067(n)+A004526(n)]` -/
def P5550039634696971153.Spec : Prop :=
  ∀ n, P5550039634696971153.a n = A160546 (n + 1)

end A160546

/-! ## A160546.P12859994485042893538

`record[A014067(n)+A002265(n)]`
-/

namespace A160546.P12859994485042893538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 n + A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160546.P12859994485042893538

namespace A160546

/-- `record[A014067(n)+A002265(n)]` -/
def P12859994485042893538.Spec : Prop :=
  ∀ n, P12859994485042893538.a n = A160546 (n + 1)

end A160546

/-!
# A160547: Numbers coprime to 31.

The programs for A160547, the canonical program `A160547.P18146500382053897683` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160547 has offset 1).

The definition of A160547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160547.P10715892993835443069

`comp[31*n]`
-/

namespace A160547.P10715892993835443069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A160547.P10715892993835443069

namespace A160547

/-- `comp[31*n]` -/
def P10715892993835443069.Spec : Prop :=
  ∀ n, (P10715892993835443069.a n : ℤ) = A160547 (n + 1)

end A160547

/-! ## A160547.P9205212278004728092

`∑[char[lcm(30, n)]]+n`
-/

namespace A160547.P9205212278004728092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 30 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A160547.P9205212278004728092

namespace A160547

/-- `∑[char[lcm(30, n)]]+n` -/
def P9205212278004728092.Spec : Prop :=
  ∀ n, (P9205212278004728092.a n : ℤ) = A160547 (n + 1)

end A160547

/-! ## A160547.P18146500382053897683

`ceil(or(1, n)/30+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160547

/-- `ceil(or(1, n)/30+n)` -/
def P18146500382053897683.Spec : Prop :=
  ∀ n, P18146500382053897683.a n = A160547 (n + 1)

theorem P18146500382053897683.correct : P18146500382053897683.Spec := by
  intro n
  simp only [A160547, Nat.add_sub_cancel]

end A160547

/-! ## A160547.P12436965107169449815

`n-floor(xor(n, -2)/30)`
-/

namespace A160547.P12436965107169449815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(Int.xor (n : ℤ) (-2) : ℚ) / 30⌋

end

end A160547.P12436965107169449815

namespace A160547

/-- `n-floor(xor(n, -2)/30)` -/
def P12436965107169449815.Spec : Prop :=
  ∀ n, P12436965107169449815.a n = A160547 (n + 1)

end A160547

/-! ## A160547.P2740341914805287139

`∑[char[30*C(n+1, n)]+1]`
-/

namespace A160547.P2740341914805287139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * Nat.choose (n + 1) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160547.P2740341914805287139

namespace A160547

/-- `∑[char[30*C(n+1, n)]+1]` -/
def P2740341914805287139.Spec : Prop :=
  ∀ n, (P2740341914805287139.a n : ℤ) = A160547 (n + 1)

end A160547

/-! ## A160547.P11957184439436372163

`A002264(floor(n/10))+n+1`
-/

namespace A160547.P11957184439436372163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊(n : ℚ) / 10⌋.toNat + (n + 1 : ℤ)

end

end A160547.P11957184439436372163

namespace A160547

/-- `A002264(floor(n/10))+n+1` -/
def P11957184439436372163.Spec : Prop :=
  ∀ n, P11957184439436372163.a n = A160547 (n + 1)

end A160547

/-! ## A160547.P13254720287509283307

`∑[char[A008592(3*n)]+1]-1`
-/

namespace A160547.P13254720287509283307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A160547.P13254720287509283307

namespace A160547

/-- `∑[char[A008592(3*n)]+1]-1` -/
def P13254720287509283307.Spec : Prop :=
  ∀ n, P13254720287509283307.a n = A160547 (n + 1)

end A160547

/-! ## A160547.P11676424714868115641

`∑[char[A008592(12*(n+1)/4)]+1]`
-/

namespace A160547.P11676424714868115641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.roundAway ((12 * (n + 1) : ℚ) / 4)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160547.P11676424714868115641

namespace A160547

/-- `∑[char[A008592(12*(n+1)/4)]+1]` -/
def P11676424714868115641.Spec : Prop :=
  ∀ n, (P11676424714868115641.a n : ℤ) = A160547 (n + 1)

end A160547

/-! ## A160547.P9205145002190015730

`A097992(A002266(n))+n`
-/

namespace A160547.P9205145002190015730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A002266 n).toNat + (n : ℤ)

end

end A160547.P9205145002190015730

namespace A160547

/-- `A097992(A002266(n))+n` -/
def P9205145002190015730.Spec : Prop :=
  ∀ n, P9205145002190015730.a n = A160547 (n + 1)

end A160547

/-! ## A160547.P12323003996219260117

`A059995(A002264(n))+n+1`
-/

namespace A160547.P12323003996219260117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A002264 n).toNat + (n + 1 : ℤ)

end

end A160547.P12323003996219260117

namespace A160547

/-- `A059995(A002264(n))+n+1` -/
def P12323003996219260117.Spec : Prop :=
  ∀ n, P12323003996219260117.a n = A160547 (n + 1)

end A160547

/-! ## A160547.P13701624680466830182

`A002266(A152467(n))+n+1`
-/

namespace A160547.P13701624680466830182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A152467 n).toNat + (n + 1 : ℤ)

end

end A160547.P13701624680466830182

namespace A160547

/-- `A002266(A152467(n))+n+1` -/
def P13701624680466830182.Spec : Prop :=
  ∀ n, P13701624680466830182.a n = A160547 (n + 1)

end A160547

/-! ## A160547.P2583751295870232760

`A000720(A000040(n+1))+floor(n/30)`
-/

namespace A160547.P2583751295870232760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1)).toNat + ⌊(n : ℚ) / 30⌋

end

end A160547.P2583751295870232760

namespace A160547

/-- `A000720(A000040(n+1))+floor(n/30)` -/
def P2583751295870232760.Spec : Prop :=
  ∀ n, P2583751295870232760.a n = A160547 (n + 1)

end A160547

/-!
# A160549: Omit first term from A160539 and divide by 7.

The programs for A160549, there is no canonical definition to state claims against.
-/

/-! ## A160549.P13968613774240245497

`floor(A160539(n)/7)`
-/

namespace A160549.P13968613774240245497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160539 n : ℚ) / 7⌋

end

end A160549.P13968613774240245497

/-! ## A160549.P6452865054499245668

`(A160539(n)-A000007(n))/7`
-/

namespace A160549.P6452865054499245668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160539 n - A000007 n : ℚ) / 7

end

end A160549.P6452865054499245668

/-! ## A160549.P9143131283918265858

`A160539(n)/7*char[A263449(n)]`
-/

namespace A160549.P9143131283918265858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160539 n : ℚ) / 7 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A160549.P9143131283918265858

/-! ## A160549.P7502896452045432049

`A160535(n)/A160534(n)*A160539(n)`
-/

namespace A160549.P7502896452045432049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160535 n : ℚ) / (A160534 n : ℚ) * (A160539 n : ℚ)

end

end A160549.P7502896452045432049

/-! ## A160549.P13168532156847188600

`A160539(n)%A023010(n)/7`
-/

namespace A160549.P13168532156847188600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A160539 n) (A023010 n) : ℚ) / 7

end

end A160549.P13168532156847188600

/-! ## A160549.P11896282329796242904

`ceil(A160539(n)/7)%A000244(n)`
-/

namespace A160549.P11896282329796242904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A160539 n : ℚ) / 7⌉ (A000244 n)

end

end A160549.P11896282329796242904

/-!
# A160550: a(n) = A001065(n) mod A000005(n).

The programs for A160550, the canonical program `A160550.P1136096764766705031` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160550 has offset 1).

The definition of A160550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001065(n+1)%A000005(n+1)` (program `A160550.P1136096764766705031`, by `A160550.P1136096764766705031.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160550.P1136096764766705031

`A001065(n+1)%A000005(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A160550

/-- `A001065(n+1)%A000005(n+1)` -/
def P1136096764766705031.Spec : Prop :=
  ∀ n, P1136096764766705031.a n = A160550 (n + 1)

theorem P1136096764766705031.correct : P1136096764766705031.Spec := by
  intro n
  simp only [A160550, Nat.add_sub_cancel]

end A160550

/-! ## A160550.P3636352309352896595

`(A000203(n+1)-(n+1))%A000005(n+1)`
-/

namespace A160550.P3636352309352896595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - (n + 1 : ℤ)) (A000005 (n + 1))

end

end A160550.P3636352309352896595

namespace A160550

/-- `(A000203(n+1)-(n+1))%A000005(n+1)` -/
def P3636352309352896595.Spec : Prop :=
  ∀ n, P3636352309352896595.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P1323709926577633007

`∑{d}[n+1, #%(n+1)+1]%∑{d}[n+1, gcd(n, #)]`
-/

namespace A160550.P1323709926577633007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d % (n + 1) + 1)) % (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d)

end

end A160550.P1323709926577633007

namespace A160550

/-- `∑{d}[n+1, #%(n+1)+1]%∑{d}[n+1, gcd(n, #)]` -/
def P1323709926577633007.Spec : Prop :=
  ∀ n, (P1323709926577633007.a n : ℤ) = A160550 (n + 1)

end A160550

/-! ## A160550.P12582177334048838519

`(∑{d}[n+1, #]-(1+n))%∏{e}[abs(2-n)+3, #+1]`
-/

namespace A160550.P12582177334048838519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (1 + n : ℤ)) ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

end

end A160550.P12582177334048838519

namespace A160550

/-- `(∑{d}[n+1, #]-(1+n))%∏{e}[abs(2-n)+3, #+1]` -/
def P12582177334048838519.Spec : Prop :=
  ∀ n, P12582177334048838519.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P7641257843679346034

`A001065(n+1)%∏{e}[n+1, #+1]`
-/

namespace A160550.P7641257843679346034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A160550.P7641257843679346034

namespace A160550

/-- `A001065(n+1)%∏{e}[n+1, #+1]` -/
def P7641257843679346034.Spec : Prop :=
  ∀ n, P7641257843679346034.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P16955590353676215563

`(∑{d}[n+1, #]-(n+1))%Δ[A006218(n)]`
-/

namespace A160550.P16955590353676215563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (f2 (n + 1) - f2 n)

end

end A160550.P16955590353676215563

namespace A160550

/-- `(∑{d}[n+1, #]-(n+1))%Δ[A006218(n)]` -/
def P16955590353676215563.Spec : Prop :=
  ∀ n, P16955590353676215563.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P1618375953904968045

`(∑{d}[n+1, #]-(1+n))%A000005(n+1)`
-/

namespace A160550.P1618375953904968045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (1 + n : ℤ)) (A000005 (n + 1))

end

end A160550.P1618375953904968045

namespace A160550

/-- `(∑{d}[n+1, #]-(1+n))%A000005(n+1)` -/
def P1618375953904968045.Spec : Prop :=
  ∀ n, P1618375953904968045.a n = A160550 (n + 1)

theorem P1618375953904968045.correct : P1618375953904968045.Spec := by
  intro n
  simp only [A160550, Nat.add_sub_cancel, A160550.P1618375953904968045.f1, A160550.P1618375953904968045.a, A160550.P1136096764766705031.a, A000005, A000005.P16091521709108585461.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160550

/-! ## A160550.P9212058327520305595

`A001065(n+1)%Δ[A006218(n)]`
-/

namespace A160550.P9212058327520305595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (f1 (n + 1) - f1 n)

end

end A160550.P9212058327520305595

namespace A160550

/-- `A001065(n+1)%Δ[A006218(n)]` -/
def P9212058327520305595.Spec : Prop :=
  ∀ n, P9212058327520305595.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P15099034565377105493

`A163163(n+1)%A000005(n+1)`
-/

namespace A160550.P15099034565377105493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163163 (n + 1)) (A000005 (n + 1))

end

end A160550.P15099034565377105493

namespace A160550

/-- `A163163(n+1)%A000005(n+1)` -/
def P15099034565377105493.Spec : Prop :=
  ∀ n, P15099034565377105493.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P11616517267939424035

`A173455(n+1)%A000005(n+1)`
-/

namespace A160550.P11616517267939424035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (n + 1)) (A000005 (n + 1))

end

end A160550.P11616517267939424035

namespace A160550

/-- `A173455(n+1)%A000005(n+1)` -/
def P11616517267939424035.Spec : Prop :=
  ∀ n, P11616517267939424035.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P15581566016230175213

`A001065(A000027(n+1))%∑{d}[n+1, A000040(#+1)%2]`
-/

namespace A160550.P15581566016230175213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (A000027 (n + 1)).toNat) (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 (d + 1)) 2)

end

end A160550.P15581566016230175213

namespace A160550

/-- `A001065(A000027(n+1))%∑{d}[n+1, A000040(#+1)%2]` -/
def P15581566016230175213.Spec : Prop :=
  ∀ n, P15581566016230175213.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P1076671090635506435

`A319699(2*(n+1))%A320111(2*(n+1))`
-/

namespace A160550.P1076671090635506435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319699 (2 * (n + 1))) (A320111 (2 * (n + 1)))

end

end A160550.P1076671090635506435

namespace A160550

/-- `A319699(2*(n+1))%A320111(2*(n+1))` -/
def P1076671090635506435.Spec : Prop :=
  ∀ n, P1076671090635506435.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P7623565119376123124

`A028310(A001065(n+1))%∑{d}[n+1, A057427(#)]`
-/

namespace A160550.P7623565119376123124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A001065 (n + 1)).toNat) (∑ d ∈ Nat.divisors (f1 n), A057427 d)

end

end A160550.P7623565119376123124

namespace A160550

/-- `A028310(A001065(n+1))%∑{d}[n+1, A057427(#)]` -/
def P7623565119376123124.Spec : Prop :=
  ∀ n, P7623565119376123124.a n = A160550 (n + 1)

end A160550

/-! ## A160550.P1000497039458486674

`(∑{d}[n+1, #]-(n+1))%∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]`
-/

namespace A160550.P1000497039458486674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (∑ k ∈ Finset.range (f2 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋))

end

end A160550.P1000497039458486674

namespace A160550

/-- `(∑{d}[n+1, #]-(n+1))%∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]` -/
def P1000497039458486674.Spec : Prop :=
  ∀ n, P1000497039458486674.a n = A160550 (n + 1)

end A160550

/-!
# A160551: Number of unordered ways of making change for n dollars using coins of denominations 1, 5, 10, and 25.

The programs for A160551, the canonical program `A160551.P5294647806016706390` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160551 has offset 0).

The definition of A160551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160551.P3694932969572613023

`ogf((1+238x+501x^2+60x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A160551.P3694932969572613023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 238, 501, 60] [1, -4, 6, -4, 1] n

end

end A160551.P3694932969572613023

namespace A160551

/-- `ogf((1+238x+501x^2+60x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3694932969572613023.Spec : Prop :=
  ∀ n, P3694932969572613023.a n = A160551 n

end A160551

/-! ## A160551.P5294647806016706390

`(3+53*n+270*n²+400*n^3)/3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160551

/-- `(3+53*n+270*n²+400*n^3)/3` -/
def P5294647806016706390.Spec : Prop :=
  ∀ n, P5294647806016706390.a n = (A160551 n : ℚ)

end A160551

/-! ## A160551.P14468077734881934438

`A001299(100*n)`
-/

namespace A160551.P14468077734881934438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001299 (100 * n)

end

end A160551.P14468077734881934438

namespace A160551

/-- `A001299(100*n)` -/
def P14468077734881934438.Spec : Prop :=
  ∀ n, P14468077734881934438.a n = A160551 n

end A160551

/-! ## A160551.P17321758892227810580

`(8*n+3)/3*A000217(A017353(n)-6)`
-/

namespace A160551.P17321758892227810580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 3 : ℚ) / 3 * (A000217 (A017353 n - 6).toNat : ℚ)

end

end A160551.P17321758892227810580

namespace A160551

/-- `(8*n+3)/3*A000217(A017353(n)-6)` -/
def P17321758892227810580.Spec : Prop :=
  ∀ n, P17321758892227810580.a n = (A160551 n : ℚ)

end A160551

/-! ## A160551.P6836468796815002042

`A163815(4*n)+A002412(Δ[n²])`
-/

namespace A160551.P6836468796815002042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 (4 * n) + A002412 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160551.P6836468796815002042

namespace A160551

/-- `A163815(4*n)+A002412(Δ[n²])` -/
def P6836468796815002042.Spec : Prop :=
  ∀ n, P6836468796815002042.a n = A160551 n

end A160551

/-! ## A160551.P9921696249981766752

`A135712(A008586(n))+A002412(2*n)`
-/

namespace A160551.P9921696249981766752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 (A008586 n).toNat + A002412 (2 * n)

end

end A160551.P9921696249981766752

namespace A160551

/-- `A135712(A008586(n))+A002412(2*n)` -/
def P9921696249981766752.Spec : Prop :=
  ∀ n, P9921696249981766752.a n = A160551 n

end A160551

/-! ## A160551.P17436598464884005651

`A002412(2*n)+A100157(4*n+1)-A002412(4*n)`
-/

namespace A160551.P17436598464884005651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (2 * n) + (A100157 (4 * n + 1) - A002412 (4 * n))

end

end A160551.P17436598464884005651

namespace A160551

/-- `A002412(2*n)+A100157(4*n+1)-A002412(4*n)` -/
def P17436598464884005651.Spec : Prop :=
  ∀ n, P17436598464884005651.a n = A160551 n

end A160551

/-! ## A160551.P2434161487255799949

`A177239(A139245(n+1))`
-/

namespace A160551.P2434161487255799949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (A139245 (n + 1)).toNat

end

end A160551.P2434161487255799949

namespace A160551

/-- `A177239(A139245(n+1))` -/
def P2434161487255799949.Spec : Prop :=
  ∀ n, P2434161487255799949.a n = A160551 n

end A160551

/-! ## A160551.P9108061756382476623

`A001304(20*n)`
-/

namespace A160551.P9108061756382476623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 (20 * n)

end

end A160551.P9108061756382476623

namespace A160551

/-- `A001304(20*n)` -/
def P9108061756382476623.Spec : Prop :=
  ∀ n, P9108061756382476623.a n = A160551 n

end A160551

/-! ## A160551.P11759345604386912268

`A001362(A317095(n))`
-/

namespace A160551.P11759345604386912268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001362 (A317095 n).toNat

end

end A160551.P11759345604386912268

namespace A160551

/-- `A001362(A317095(n))` -/
def P11759345604386912268.Spec : Prop :=
  ∀ n, P11759345604386912268.a n = A160551 n

end A160551

/-!
# A160552: a(0)=0, a(1)=1; a(2^i+j) = 2*a(j) + a(j+1) for 0 <= j < 2^i.

The programs for A160552, there is no canonical definition to state claims against.
-/

/-! ## A160552.P6955990243891052148

`round(A151569(n)/3)`
-/

namespace A160552.P6955990243891052148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A151569 n : ℚ) / 3)

end

end A160552.P6955990243891052148

/-! ## A160552.P5978441005794249191

`A139251(n)-a(n-1)` with `a(0)=0`
-/

namespace A160552.P5978441005794249191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139251 n - a (n - 1)

end

end A160552.P5978441005794249191

/-! ## A160552.P14807294499467404588

`A151704(n)+(-1)^(n-1)`
-/

namespace A160552.P14807294499467404588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151704 n : ℚ) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A160552.P14807294499467404588

/-! ## A160552.P7504266142298325987

`A151569(n)-A151568(n)`
-/

namespace A160552.P7504266142298325987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A151568 n

end

end A160552.P7504266142298325987

/-! ## A160552.P13685233959709122686

`A151568(n)-A151704(n)`
-/

namespace A160552.P13685233959709122686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n - A151704 n

end

end A160552.P13685233959709122686

/-! ## A160552.P10375261565901172653

`A151861(n)-A151859(n)`
-/

namespace A160552.P10375261565901172653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151861 n - A151859 n

end

end A160552.P10375261565901172653

/-! ## A160552.P18070070212342116509

`A151865(n)-A151863(n)`
-/

namespace A160552.P18070070212342116509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n - A151863 n

end

end A160552.P18070070212342116509

/-! ## A160552.P3179940696776758973

`Δ[A255747(A004273(n)-n)]`
-/

namespace A160552.P3179940696776758973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160552.P3179940696776758973

/-! ## A160552.P9838654388857900986

`A151548(n)-A139251(n+1)`
-/

namespace A160552.P9838654388857900986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A139251 (n + 1)

end

end A160552.P9838654388857900986

/-! ## A160552.P3632528005055410271

`2*A255747(n)-A139250(n)`
-/

namespace A160552.P3632528005055410271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255747 n - A139250 n

end

end A160552.P3632528005055410271

/-! ## A160552.P6228333973297666166

`(A151568(n)-A033999(n))/2`
-/

namespace A160552.P6228333973297666166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151568 n - A033999 n : ℚ) / 2

end

end A160552.P6228333973297666166

/-! ## A160552.P3154981390073543047

`(A151569(n)-A151704(n))/2`
-/

namespace A160552.P3154981390073543047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151569 n - A151704 n : ℚ) / 2

end

end A160552.P3154981390073543047

/-! ## A160552.P4551617725503761704

`xor(A151704(n), A153284(n+1))`
-/

namespace A160552.P4551617725503761704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151704 n) (A153284 (n + 1))

end

end A160552.P4551617725503761704

/-! ## A160552.P4029095863511488468

`xor(A010684(n), A151568(n))/2`
-/

namespace A160552.P4029095863511488468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A010684 n) (A151568 n) : ℚ) / 2

end

end A160552.P4029095863511488468

/-! ## A160552.P18343070775479429457

`A255747(n)-A255747(A004273(n)-n)`
-/

namespace A160552.P18343070775479429457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n - A255747 (A004273 n - (n : ℤ)).toNat

end

end A160552.P18343070775479429457

/-! ## A160552.P3480353760939740591

`A139250(n)+A151548(n)-A139250(n+1)`
-/

namespace A160552.P3480353760939740591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A151548 n - A139250 (n + 1))

end

end A160552.P3480353760939740591

/-! ## A160552.P7265850148746017807

`A246336(n)-(A255747(n+1)+A139250(n))`
-/

namespace A160552.P7265850148746017807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n - (A255747 (n + 1) + A139250 n)

end

end A160552.P7265850148746017807

/-! ## A160552.P11874054345673926708

`A139250(n)-A266530(A004277(n))`
-/

namespace A160552.P11874054345673926708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A266530 (A004277 n).toNat

end

end A160552.P11874054345673926708

/-! ## A160552.P9315834680569827004

`A266529(Δ[n²])`
-/

namespace A160552.P9315834680569827004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A160552.P9315834680569827004

/-! ## A160552.P8544208258770578124

`A266530(2*(n+1))-A139250(n)`
-/

namespace A160552.P8544208258770578124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) - A139250 n

end

end A160552.P8544208258770578124

/-!
# A160554: Numerator of Laguerre(n, -12).

The programs for A160554, there is no canonical definition to state claims against.
-/

/-! ## A160554.P8222507198742786679

`A008611((6*n)²*A148295(n))`
-/

namespace A160554.P8222507198742786679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (((6 * n) ^ 2 : ℤ) * A148295 n).toNat

end

end A160554.P8222507198742786679

/-!
# A160555: Denominator of Laguerre(n, -12).

The programs for A160555, there is no canonical definition to state claims against.
-/

/-! ## A160555.P1622015578942917422

`gcd(lcm(n, 2*n!), ∏[∑[12^n]])`
-/

namespace A160555.P1622015578942917422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.lcm n (2 * Nat.factorial n)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A160555.P1622015578942917422

/-! ## A160555.P11757603292209045068

`gcd(n!, A027880(n))`
-/

namespace A160555.P11757603292209045068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A027880 n)

end

end A160555.P11757603292209045068

/-! ## A160555.P6033623170744169966

`gcd(ceil(4^n*n!/2), ∏[A032188(n+1)])`
-/

namespace A160555.P6033623170744169966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(4 ^ n * Nat.factorial n : ℚ) / 2⌉ (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A160555.P6033623170744169966

/-! ## A160555.P619157915718981488

`∏[A093411(A129952(n))]`
-/

namespace A160555.P619157915718981488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A129952 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A160555.P619157915718981488

/-! ## A160555.P5563860917648519334

`A000265(∏[sqrt(A232989(n))])`
-/

namespace A160555.P5563860917648519334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A232989 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A160555.P5563860917648519334

/-!
# A160556: Positive integers b for which the Diophantine equation f = (b^(2n) - b^n + 8n^2 - 2) / (2n * (2n + 1)) has at least ten solutions for n <= 10000.

The programs for A160556, there is no canonical definition to state claims against.
-/

/-! ## A160556.P17162223154182960202

`lt[A282623((n+1)/3^val(n+1, 3)), A282623(n+1)]`
-/

namespace A160556.P17162223154182960202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A160556.P17162223154182960202

/-! ## A160556.P9055570652557613716

`eq[A003849(A239858(n+1)), A112149(n)]`
-/

namespace A160556.P9055570652557613716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A239858 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160556.P9055570652557613716

/-! ## A160556.P3781523027873052997

`eq[A112149(n), A226194(A316925(n+1))]`
-/

namespace A160556.P3781523027873052997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226194 (A316925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160556.P3781523027873052997

/-! ## A160556.P3291585899191246698

`eq[A003849(A239858(n+1)), A167313(n+1)]`
-/

namespace A160556.P3291585899191246698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A239858 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160556.P3291585899191246698

/-! ## A160556.P16019024119252849863

`eq[A167313(n+1), A226194(A316925(n+1))]`
-/

namespace A160556.P16019024119252849863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226194 (A316925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160556.P16019024119252849863

/-!
# A160558: a(n) is the ordinal number of series in which the value of A160348(n) is defined.

The programs for A160558, there is no canonical definition to state claims against.
-/

/-! ## A160558.P12773665008557846034

`A326370(A361593(n+1))`
-/

namespace A160558.P12773665008557846034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326370 (A361593 (n + 1)).toNat

end

end A160558.P12773665008557846034

/-! ## A160558.P17007144588360435949

`A001222(or(A007051(n), A069259(n)))`
-/

namespace A160558.P17007144588360435949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A007051 n) (A069259 n)).toNat

end

end A160558.P17007144588360435949

/-! ## A160558.P12809329873726689065

`A001055(A067980(n))%A131390(n+1)`
-/

namespace A160558.P12809329873726689065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A067980 n).toNat) (A131390 (n + 1))

end

end A160558.P12809329873726689065

/-! ## A160558.P13782180531885390795

`A001222(A349123(n+1)+A007713(n+1))`
-/

namespace A160558.P13782180531885390795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A349123 (n + 1) + A007713 (n + 1)).toNat

end

end A160558.P13782180531885390795

/-! ## A160558.P4987813003275390052

`A334033(2*n+1)+A334032(A032020(n))`
-/

namespace A160558.P4987813003275390052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334033 (2 * n + 1) + A334032 (A032020 n).toNat

end

end A160558.P4987813003275390052

/-!
# A160559: Minimal covering numbers.

The programs for A160559, there is no canonical definition to state claims against.
-/

/-! ## A160559.P10629490775753485964

`A002378(n+3)*A336928(A047781(n+3))`
-/

namespace A160559.P10629490775753485964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 3) * A336928 (A047781 (n + 3)).toNat

end

end A160559.P10629490775753485964

/-!
# A160560: Almost covering numbers.

The programs for A160560, there is no canonical definition to state claims against.
-/

/-! ## A160560.P14047310902353961280

`∩[A128559(A334967(2*(n+2))), A174973(n+1)]`
-/

namespace A160560.P14047310902353961280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A334967 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160560.P14047310902353961280

/-! ## A160560.P6903399036895134566

`eq[A166974(n), A384710(n)]`
-/

namespace A160560.P6903399036895134566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160560.P6903399036895134566

/-! ## A160560.P17726012342714563971

`eq[A166974(n+1), A225530(n+1)]+1`
-/

namespace A160560.P17726012342714563971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A160560.P17726012342714563971

/-! ## A160560.P13662613203353238690

`eq[A166974(n), A225530(A028310(n))]`
-/

namespace A160560.P13662613203353238690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160560.P13662613203353238690

/-! ## A160560.P6784694543167945068

`A323462(A094967(n))+A204142(n+1)`
-/

namespace A160560.P6784694543167945068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (A094967 n).toNat + A204142 (n + 1)

end

end A160560.P6784694543167945068

/-!
# A160561: Cyclops primes with circular digits {0,6,8,9}.

The programs for A160561, there is no canonical definition to state claims against.
-/

/-! ## A160561.P11865399658629319156

`∩[A053580(n+1), A274765(n+1)]`
-/

namespace A160561.P11865399658629319156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160561.P11865399658629319156

/-! ## A160561.P18014755187875927973

`∩[A057770(n+1), A274765(n+1)]`
-/

namespace A160561.P18014755187875927973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160561.P18014755187875927973

/-! ## A160561.P9255601243544488808

`∩[A061372(n+1), A274765(n+1)]`
-/

namespace A160561.P9255601243544488808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160561.P9255601243544488808

/-! ## A160561.P5870938116917812714

`∩[A079652(n+1), A274765(n+1)]`
-/

namespace A160561.P5870938116917812714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160561.P5870938116917812714

/-!
# A160562: Triangle of scaled central factorial numbers, T(n,k) = A008958(n,n-k).

The programs for A160562, there is no canonical definition to state claims against.
-/

/-! ## A160562.P3520075363629842677

`A008958(C(row(n)+1, 2)+row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160562.P3520075363629842677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A160562.P3520075363629842677

/-! ## A160562.P16747378231102271186

`A136630(A185869(n+1))`
-/

namespace A160562.P16747378231102271186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136630 (A185869 (n + 1)).toNat

end

end A160562.P16747378231102271186

/-! ## A160562.P1791401344003594320

`A008958(A061579(n))`
-/

namespace A160562.P1791401344003594320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A061579 n).toNat

end

end A160562.P1791401344003594320

/-! ## A160562.P2620045306663368690

`A008958(A114327(n)+n)`
-/

namespace A160562.P2620045306663368690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A114327 n + (n : ℤ)).toNat

end

end A160562.P2620045306663368690

/-! ## A160562.P11636758360074368537

`A008958(∑[A198954(n)-1])`
-/

namespace A160562.P11636758360074368537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160562.P11636758360074368537

/-! ## A160562.P10453510282987585024

`A008958(A038722(n+1)-1)`
-/

namespace A160562.P10453510282987585024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A038722 (n + 1) - 1).toNat

end

end A160562.P10453510282987585024

/-! ## A160562.P5607633432406633361

`A008958(A002378(n)%comp[∑[n]])`
-/

namespace A160562.P5607633432406633361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (Int.tmod (A002378 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A160562.P5607633432406633361

/-! ## A160562.P9182114180101515969

`A008958(A093995(n+1)-(n+1))`
-/

namespace A160562.P9182114180101515969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A160562.P9182114180101515969

/-! ## A160562.P4201017532739599359

`A008958(A038722(n+2))`
-/

namespace A160562.P4201017532739599359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A038722 (n + 2)).toNat

end

end A160562.P4201017532739599359

/-! ## A160562.P3233039608254320661

`abs(A185690(A185868(n+1)))`
-/

namespace A160562.P3233039608254320661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185690 (A185868 (n + 1)).toNat|

end

end A160562.P3233039608254320661

/-!
# A160563: Table of the number of (n,k)-Riordan complexes, read by rows.

The programs for A160563, there is no canonical definition to state claims against.
-/

/-! ## A160563.P14245860272085150723

`A008956(A061579(n))`
-/

namespace A160563.P14245860272085150723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A061579 n).toNat

end

end A160563.P14245860272085150723

/-! ## A160563.P880198476567583820

`A121408(A185868(n+1))`
-/

namespace A160563.P880198476567583820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (A185868 (n + 1)).toNat

end

end A160563.P880198476567583820

/-! ## A160563.P1679760221223408003

`A008956(A114327(n)+n)`
-/

namespace A160563.P1679760221223408003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A114327 n + (n : ℤ)).toNat

end

end A160563.P1679760221223408003

/-! ## A160563.P8880440430074440309

`A008956(∑[A198954(n)-1])`
-/

namespace A160563.P8880440430074440309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160563.P8880440430074440309

/-! ## A160563.P2348349403015475935

`A008956(A038722(n+1)-1)`
-/

namespace A160563.P2348349403015475935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A038722 (n + 1) - 1).toNat

end

end A160563.P2348349403015475935

/-! ## A160563.P14965121338582008255

`A008956(A003056(n)+n-2*A002262(n))`
-/

namespace A160563.P14965121338582008255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A003056 n + ((n : ℤ) - 2 * A002262 n)).toNat

end

end A160563.P14965121338582008255

/-! ## A160563.P161479448357774015

`A008956(A038722(n+2))`
-/

namespace A160563.P161479448357774015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008956 (A038722 (n + 2)).toNat

end

end A160563.P161479448357774015

/-!
# A160564: Sum of products of factorials of parts times the factorial of the number of parts in all integer partitions of n.

The programs for A160564, there is no canonical definition to state claims against.
-/

/-! ## A160564.P13416645270515156060

`A093886(A077998(n))`
-/

namespace A160564.P13416645270515156060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093886 (A077998 n).toNat

end

end A160564.P13416645270515156060

/-! ## A160564.P13537417518847842476

`A376953(A280000(2*n+1))`
-/

namespace A160564.P13537417518847842476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A280000 (2 * n + 1)).toNat

end

end A160564.P13537417518847842476

/-!
# A160565: Diagonal sums of number triangle [k<=n]*C(n,2n-2k)2^(n-k)A000108(n-k).

The programs for A160565, there is no canonical definition to state claims against.
-/

/-! ## A160565.P8575007287828759178

`A025252(abs(1-n)+1)`
-/

namespace A160565.P8575007287828759178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025252 (|1 - (n : ℤ)| + 1).toNat

end

end A160565.P8575007287828759178

/-! ## A160565.P12073893931265345723

`or(∑[(-1)^n], A025252(A028310(n)))`
-/

namespace A160565.P12073893931265345723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A025252 (A028310 n).toNat)

end

end A160565.P12073893931265345723

/-! ## A160565.P13498122220660113081

`A025252(A028310(n))+A000007(n)`
-/

namespace A160565.P13498122220660113081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025252 (A028310 n).toNat + A000007 n

end

end A160565.P13498122220660113081

/-! ## A160565.P4728876193104371998

`A036987(2*n)+A025252(A028310(n))`
-/

namespace A160565.P4728876193104371998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A025252 (A028310 n).toNat

end

end A160565.P4728876193104371998

/-! ## A160565.P6806021061708321881

`A025252(A000007(n)+n)+A000007(n)`
-/

namespace A160565.P6806021061708321881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025252 (A000007 n + (n : ℤ)).toNat + A000007 n

end

end A160565.P6806021061708321881

/-! ## A160565.P5739569573786696025

`A025252(A028310(n))+char[40*A008893(n)]`
-/

namespace A160565.P5739569573786696025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A008893 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025252 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160565.P5739569573786696025

/-! ## A160565.P16336623427073644219

`A025251(n+3)/2`
-/

namespace A160565.P16336623427073644219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025251 (n + 3) : ℚ) / 2

end

end A160565.P16336623427073644219

/-!
# A160567: a(n)=4*(a(n-1)a(n-3)-a(n-2)^2)/a(n-4), a(1)=a(2)=a(3)=1, a(4)=-4.

The programs for A160567, the canonical program `A160567.P14645013384983015789` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160567 has offset 0).

The definition of A160567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160567.P14645013384983015789

`4*(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160567

/-- `4*(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P14645013384983015789.Spec : Prop :=
  ∀ n, P14645013384983015789.a n = (A160567 n : ℚ)

end A160567

/-! ## A160567.P3363602961987092222

`1-A340859(A203413(n))`
-/

namespace A160567.P3363602961987092222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340859 (A203413 n).toNat

end

end A160567.P3363602961987092222

namespace A160567

/-- `1-A340859(A203413(n))` -/
def P3363602961987092222.Spec : Prop :=
  ∀ n, P3363602961987092222.a n = A160567 n

end A160567

/-!
# A160569: a(n)=9*(a(n-1)a(n-3)-a(n-2)^2)/a(n-4), a(1)=a(2)=a(3)=1, a(4)=-9.

The programs for A160569, the canonical program `A160569.P8301933871631925737` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160569 has offset 0).

The definition of A160569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160569.P8301933871631925737

`9*(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160569

/-- `9*(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P8301933871631925737.Spec : Prop :=
  ∀ n, P8301933871631925737.a n = (A160569 n : ℚ)

end A160569

/-! ## A160569.P11449785380390250390

`A176505(n)-A105186(A194489(n+1))`
-/

namespace A160569.P11449785380390250390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176505 n - A105186 (A194489 (n + 1)).toNat

end

end A160569.P11449785380390250390

namespace A160569

/-- `A176505(n)-A105186(A194489(n+1))` -/
def P11449785380390250390.Spec : Prop :=
  ∀ n, P11449785380390250390.a n = A160569 n

end A160569

/-!
# A160570: Triangle read by rows, A160552 convolved with (1, 2, 2, 2, ...); row sums = A139250, the Toothpick sequence.

The programs for A160570, there is no canonical definition to state claims against.
-/

/-! ## A160570.P7022655061623786320

`A255049(A004736(n+1))/A035214(n)`
-/

namespace A160570.P7022655061623786320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255049 (A004736 (n + 1)).toNat : ℚ) / (A035214 n : ℚ)

end

end A160570.P7022655061623786320

/-! ## A160570.P6752832294312079518

`A255049(A004736(n+1))/Δ[A080036(n)]`
-/

namespace A160570.P6752832294312079518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255049 (A004736 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A160570.P6752832294312079518

/-! ## A160570.P768322556154259686

`A255049(A004736(n+1))/A000034(A059268(n))`
-/

namespace A160570.P768322556154259686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255049 (A004736 (n + 1)).toNat : ℚ) / (A000034 (A059268 n).toNat : ℚ)

end

end A160570.P768322556154259686

/-! ## A160570.P7746977917037352348

`gcd(A118022(n), A296910(A046006(2*(n+2))))`
-/

namespace A160570.P7746977917037352348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118022 n) (A296910 (A046006 (2 * (n + 2))).toNat)

end

end A160570.P7746977917037352348

/-! ## A160570.P1237457975775860612

`A335450(2*A246278(n+2))`
-/

namespace A160570.P1237457975775860612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (2 * A246278 (n + 2)).toNat

end

end A160570.P1237457975775860612

/-!
# A160571: G.f.: Product_{n>=1} (1 + x^n + x^(n+1)).

The programs for A160571, there is no canonical definition to state claims against.
-/

/-! ## A160571.P12703019338434162086

`A232753(A296122(n)+1)`
-/

namespace A160571.P12703019338434162086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A296122 n + 1).toNat

end

end A160571.P12703019338434162086

/-! ## A160571.P17779495654663723714

`A232753(or(2, A296122(n)-1))`
-/

namespace A160571.P17779495654663723714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (Int.lor 2 (A296122 n - 1)).toNat

end

end A160571.P17779495654663723714

/-! ## A160571.P6835404746676651443

`A232753(or(A089643(n), A296122(n)))`
-/

namespace A160571.P6835404746676651443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (Int.lor (A089643 n) (A296122 n)).toNat

end

end A160571.P6835404746676651443

/-! ## A160571.P3344977181011311882

`A239235(∑[A103632(n)])`
-/

namespace A160571.P3344977181011311882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160571.P3344977181011311882

/-! ## A160571.P14331676433930709932

`A239235(A214077(n+1))`
-/

namespace A160571.P14331676433930709932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A214077 (n + 1)).toNat

end

end A160571.P14331676433930709932

/-!
# A160572: Elements of A160444, pairs of consecutive entries swapped.

The programs for A160572, the canonical program `A160572.P1110752825214206468` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160572 has offset 1).

The definition of A160572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160572.P16054925944931634553

`ogf((1-x^2+x^3)/(1-2x^2-2x^4))`
-/

namespace A160572.P16054925944931634553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, 0, -2, 0, -2] n

end

end A160572.P16054925944931634553

namespace A160572

/-- `ogf((1-x^2+x^3)/(1-2x^2-2x^4))` -/
def P16054925944931634553.Spec : Prop :=
  ∀ n, P16054925944931634553.a n = A160572 (n + 1)

end A160572

/-! ## A160572.P1110752825214206468

`2*(a(n-2)+a(n-4))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A160572

/-- `2*(a(n-2)+a(n-4))` -/
def P1110752825214206468.Spec : Prop :=
  ∀ n, (P1110752825214206468.a n : ℤ) = A160572 (n + 1)

theorem P1110752825214206468.correct : P1110752825214206468.Spec := by
  intro n
  simp only [A160572, Nat.add_sub_cancel]

end A160572

/-! ## A160572.P9187788288129104805

`a(n-2)+a(n-2)+a(n-4)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A160572.P9187788288129104805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 4) + a (n - 4)))

end

end A160572.P9187788288129104805

namespace A160572

/-- `a(n-2)+a(n-2)+a(n-4)+a(n-4)` -/
def P9187788288129104805.Spec : Prop :=
  ∀ n, (P9187788288129104805.a n : ℤ) = A160572 (n + 1)

theorem P9187788288129104805.correct : P9187788288129104805.Spec := by
  intro n
  simp only [A160572, Nat.add_sub_cancel, A160572.P9187788288129104805.a, A160572.P1110752825214206468.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160572

/-! ## A160572.P9155843075993043248

`A160444(A004442(n)+1)`
-/

namespace A160572.P9155843075993043248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (A004442 n + 1).toNat

end

end A160572.P9155843075993043248

namespace A160572

/-- `A160444(A004442(n)+1)` -/
def P9155843075993043248.Spec : Prop :=
  ∀ n, P9155843075993043248.a n = A160572 (n + 1)

end A160572

/-! ## A160572.P4192898789602505631

`A160444(A014681(n+1))`
-/

namespace A160572.P4192898789602505631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (A014681 (n + 1)).toNat

end

end A160572.P4192898789602505631

namespace A160572

/-- `A160444(A014681(n+1))` -/
def P4192898789602505631.Spec : Prop :=
  ∀ n, P4192898789602505631.a n = A160572 (n + 1)

end A160572

/-! ## A160572.P14639062261023647587

`A160444(A103889(n+1))`
-/

namespace A160572.P14639062261023647587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (A103889 (n + 1)).toNat

end

end A160572.P14639062261023647587

namespace A160572

/-- `A160444(A103889(n+1))` -/
def P14639062261023647587.Spec : Prop :=
  ∀ n, P14639062261023647587.a n = A160572 (n + 1)

end A160572

/-! ## A160572.P6731180797593283596

`A160444(abs(Δ[A014682(n)]))`
-/

namespace A160572.P6731180797593283596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 |f1 (n + 1) - f1 n|.toNat

end

end A160572.P6731180797593283596

namespace A160572

/-- `A160444(abs(Δ[A014682(n)]))` -/
def P6731180797593283596.Spec : Prop :=
  ∀ n, P6731180797593283596.a n = A160572 (n + 1)

end A160572

/-!
# A160573: G.f.: Product_{k >= 0} (1 + x^(2^k-1) + x^(2^k)).

The programs for A160573, there is no canonical definition to state claims against.
-/

/-! ## A160573.P2222656569517187894

`A151687(n+2)`
-/

namespace A160573.P2222656569517187894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151687 (n + 2)

end

end A160573.P2222656569517187894

/-! ## A160573.P6115196058878325883

`A151680(n+1)+1`
-/

namespace A160573.P6115196058878325883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151680 (n + 1) + 1

end

end A160573.P6115196058878325883

/-! ## A160573.P16295616985920449142

`A118977((32/2)²+n+1)`
-/

namespace A160573.P16295616985920449142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (SequenceMachineLib.roundAway (((32 : ℚ) / 2) ^ 2 + (n + 1 : ℚ))).toNat

end

end A160573.P16295616985920449142

/-! ## A160573.P6154831251259194597

`A020725(A151680(n+1))`
-/

namespace A160573.P6154831251259194597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A151680 (n + 1)).toNat

end

end A160573.P6154831251259194597

/-! ## A160573.P14347569624333814893

`A151553(n)+A151552(n)`
-/

namespace A160573.P14347569624333814893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 n + A151552 n

end

end A160573.P14347569624333814893

/-! ## A160573.P17339252284326112794

`A151682(n)+A151681(n)`
-/

namespace A160573.P17339252284326112794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151682 n + A151681 n

end

end A160573.P17339252284326112794

/-! ## A160573.P15087882692708141090

`A151714(n+1)+A151552(n)`
-/

namespace A160573.P15087882692708141090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (n + 1) + A151552 n

end

end A160573.P15087882692708141090

/-! ## A160573.P12337944370800798110

`A151702(n+2)+A151553(n)`
-/

namespace A160573.P12337944370800798110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (n + 2) + A151553 n

end

end A160573.P12337944370800798110

/-! ## A160573.P5144119549738792068

`A163267(n+2)-A163267(n)`
-/

namespace A160573.P5144119549738792068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 (n + 2) - A163267 n

end

end A160573.P5144119549738792068

/-! ## A160573.P11560853978704667676

`A118977(n+1)+A118977(n+2)`
-/

namespace A160573.P11560853978704667676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (n + 1) + A118977 (n + 2)

end

end A160573.P11560853978704667676

/-!
# A160586: Denominator of Laguerre(n, -11).

The programs for A160586, there is no canonical definition to state claims against.
-/

/-! ## A160586.P12303166839920567200

`n!/∏{e}[A132617(n), #]`
-/

namespace A160586.P12303166839920567200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132617 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A160586.P12303166839920567200

/-! ## A160586.P6376257076170756157

`n*A079159(a(n-1))` with `a(0)=1`
-/

namespace A160586.P6376257076170756157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A079159 (a (n - 1)).toNat

end

end A160586.P6376257076170756157

/-! ## A160586.P2116393776957722538

`A316313(a(n-1))*n` with `a(0)=1`
-/

namespace A160586.P2116393776957722538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A316313 (a (n - 1)).toNat * (n : ℤ)

end

end A160586.P2116393776957722538

/-!
# A160587: Numerator of Laguerre(n, -10).

The programs for A160587, there is no canonical definition to state claims against.
-/

/-! ## A160587.P2643096795996638524

`A160589(n)/A000142(n)*A289216(n)`
-/

namespace A160587.P2643096795996638524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160589 n : ℚ) / (A000142 n : ℚ) * (A289216 n : ℚ)

end

end A160587.P2643096795996638524

/-! ## A160587.P11350797000617328081

`A000265(A289216(n)/A160602(n))`
-/

namespace A160587.P11350797000617328081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A289216 n : ℚ) / (A160602 n : ℚ))).toNat

end

end A160587.P11350797000617328081

/-!
# A160588: Interleaving of A053645 and A000027.

The programs for A160588, the canonical program `A160588.P1469078919604768349` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160588 has offset 0).

The definition of A160588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160588.P7218120165328010155

`(A053641(n+2)-1)/2`
-/

namespace A160588.P7218120165328010155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053641 (n + 2) - 1 : ℚ) / 2

end

end A160588.P7218120165328010155

namespace A160588

/-- `(A053641(n+2)-1)/2` -/
def P7218120165328010155.Spec : Prop :=
  ∀ n, P7218120165328010155.a n = (A160588 n : ℚ)

end A160588

/-! ## A160588.P1469078919604768349

`A004524(A053641(n+2))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160588

/-- `A004524(A053641(n+2))` -/
def P1469078919604768349.Spec : Prop :=
  ∀ n, P1469078919604768349.a n = A160588 n

theorem P1469078919604768349.correct : P1469078919604768349.Spec := by
  intro n
  simp only [A160588]

end A160588

/-! ## A160588.P1216375517569787701

`A038572(A053641(n+2)-1)`
-/

namespace A160588.P1216375517569787701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A053641 (n + 2) - 1).toNat

end

end A160588.P1216375517569787701

namespace A160588

/-- `A038572(A053641(n+2)-1)` -/
def P1216375517569787701.Spec : Prop :=
  ∀ n, P1216375517569787701.a n = A160588 n

end A160588

/-! ## A160588.P2483792169243137810

`A080542(n+2)-A053644(n+2)`
-/

namespace A160588.P2483792169243137810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 2) - A053644 (n + 2)

end

end A160588.P2483792169243137810

namespace A160588

/-- `A080542(n+2)-A053644(n+2)` -/
def P2483792169243137810.Spec : Prop :=
  ∀ n, P2483792169243137810.a n = A160588 n

end A160588

/-! ## A160588.P8658458591703846127

`A080542(n+2)%A053644(n+1)`
-/

namespace A160588.P8658458591703846127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080542 (n + 2)) (A053644 (n + 1))

end

end A160588.P8658458591703846127

namespace A160588

/-- `A080542(n+2)%A053644(n+1)` -/
def P8658458591703846127.Spec : Prop :=
  ∀ n, P8658458591703846127.a n = A160588 n

end A160588

/-! ## A160588.P5034539776218474986

`A004526(A006257(A038572(n+2)))`
-/

namespace A160588.P5034539776218474986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006257 (A038572 (n + 2)).toNat).toNat

end

end A160588.P5034539776218474986

namespace A160588

/-- `A004526(A006257(A038572(n+2)))` -/
def P5034539776218474986.Spec : Prop :=
  ∀ n, P5034539776218474986.a n = A160588 n

end A160588

/-! ## A160588.P8884771790302528252

`A142150(1-A003817(A027656(n))+n)`
-/

namespace A160588.P8884771790302528252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (1 - A003817 (A027656 n).toNat + (n : ℤ)).toNat

end

end A160588.P8884771790302528252

namespace A160588

/-- `A142150(1-A003817(A027656(n))+n)` -/
def P8884771790302528252.Spec : Prop :=
  ∀ n, P8884771790302528252.a n = A160588 n

end A160588

/-! ## A160588.P5800729225159996004

`A080542(n+2)+A063915(n)-A063915(n+1)`
-/

namespace A160588.P5800729225159996004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 2) + (A063915 n - A063915 (n + 1))

end

end A160588.P5800729225159996004

namespace A160588

/-- `A080542(n+2)+A063915(n)-A063915(n+1)` -/
def P5800729225159996004.Spec : Prop :=
  ∀ n, P5800729225159996004.a n = A160588 n

end A160588

/-! ## A160588.P16069683429606406596

`A142150(n+1-A003817(A142150(n+2)))`
-/

namespace A160588.P16069683429606406596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n + 1 : ℤ) - A003817 (A142150 (n + 2)).toNat).toNat

end

end A160588.P16069683429606406596

namespace A160588

/-- `A142150(n+1-A003817(A142150(n+2)))` -/
def P16069683429606406596.Spec : Prop :=
  ∀ n, P16069683429606406596.a n = A160588 n

end A160588

/-! ## A160588.P3044554715142613292

`A142150(n+2-A062383(A142150(n+2)))`
-/

namespace A160588.P3044554715142613292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n + 2 : ℤ) - A062383 (A142150 (n + 2)).toNat).toNat

end

end A160588.P3044554715142613292

namespace A160588

/-- `A142150(n+2-A062383(A142150(n+2)))` -/
def P3044554715142613292.Spec : Prop :=
  ∀ n, P3044554715142613292.a n = A160588 n

end A160588

/-! ## A160588.P18143460788603217016

`A080544(A080541(n+2))-A053644(n+2)`
-/

namespace A160588.P18143460788603217016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (A080541 (n + 2)).toNat - A053644 (n + 2)

end

end A160588.P18143460788603217016

namespace A160588

/-- `A080544(A080541(n+2))-A053644(n+2)` -/
def P18143460788603217016.Spec : Prop :=
  ∀ n, P18143460788603217016.a n = A160588 n

end A160588

/-! ## A160588.P12196910707756942302

`A080544(A080541(n+2))%A053644(n+1)`
-/

namespace A160588.P12196910707756942302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080544 (A080541 (n + 2)).toNat) (A053644 (n + 1))

end

end A160588.P12196910707756942302

namespace A160588

/-- `A080544(A080541(n+2))%A053644(n+1)` -/
def P12196910707756942302.Spec : Prop :=
  ∀ n, P12196910707756942302.a n = A160588 n

end A160588

/-! ## A160588.P5092757472633510009

`A030109(A163807(n+2))`
-/

namespace A160588.P5092757472633510009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A163807 (n + 2)).toNat

end

end A160588.P5092757472633510009

namespace A160588

/-- `A030109(A163807(n+2))` -/
def P5092757472633510009.Spec : Prop :=
  ∀ n, P5092757472633510009.a n = A160588 n

end A160588

/-! ## A160588.P3856138893116104634

`A053645(A132196(n)+1)`
-/

namespace A160588.P3856138893116104634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A132196 n + 1).toNat

end

end A160588.P3856138893116104634

namespace A160588

/-- `A053645(A132196(n)+1)` -/
def P3856138893116104634.Spec : Prop :=
  ∀ n, P3856138893116104634.a n = A160588 n

end A160588

/-! ## A160588.P3139766136678638817

`A053645(A038572(n+2))`
-/

namespace A160588.P3139766136678638817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A038572 (n + 2)).toNat

end

end A160588.P3139766136678638817

namespace A160588

/-- `A053645(A038572(n+2))` -/
def P3139766136678638817.Spec : Prop :=
  ∀ n, P3139766136678638817.a n = A160588 n

end A160588

/-! ## A160588.P1552854417482683975

`A053645(A080542(n+2))`
-/

namespace A160588.P1552854417482683975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080542 (n + 2)).toNat

end

end A160588.P1552854417482683975

namespace A160588

/-- `A053645(A080542(n+2))` -/
def P1552854417482683975.Spec : Prop :=
  ∀ n, P1552854417482683975.a n = A160588 n

end A160588

/-! ## A160588.P1136842538780513139

`A053645(A080544(A080541(n+2)))`
-/

namespace A160588.P1136842538780513139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080544 (A080541 (n + 2)).toNat).toNat

end

end A160588.P1136842538780513139

namespace A160588

/-- `A053645(A080544(A080541(n+2)))` -/
def P1136842538780513139.Spec : Prop :=
  ∀ n, P1136842538780513139.a n = A160588 n

end A160588

/-! ## A160588.P4655757060462959700

`A142150(n+1-A086099(A340632(n+2)))`
-/

namespace A160588.P4655757060462959700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n + 1 : ℤ) - A086099 (A340632 (n + 2)).toNat).toNat

end

end A160588.P4655757060462959700

namespace A160588

/-- `A142150(n+1-A086099(A340632(n+2)))` -/
def P4655757060462959700.Spec : Prop :=
  ∀ n, P4655757060462959700.a n = A160588 n

end A160588

/-! ## A160588.P13051896659285389530

`A053645(A059893(A080541(A059893(n+2))))`
-/

namespace A160588.P13051896659285389530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A059893 (A080541 (A059893 (n + 2)).toNat).toNat).toNat

end

end A160588.P13051896659285389530

namespace A160588

/-- `A053645(A059893(A080541(A059893(n+2))))` -/
def P13051896659285389530.Spec : Prop :=
  ∀ n, P13051896659285389530.a n = A160588 n

end A160588

/-! ## A160588.P3033205261004410724

`A142150(n+1-A142150(A142151(n+2)))`
-/

namespace A160588.P3033205261004410724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n + 1 : ℤ) - A142150 (A142151 (n + 2)).toNat).toNat

end

end A160588.P3033205261004410724

namespace A160588

/-- `A142150(n+1-A142150(A142151(n+2)))` -/
def P3033205261004410724.Spec : Prop :=
  ∀ n, P3033205261004410724.a n = A160588 n

end A160588

/-!
# A160589: Denominator of Laguerre(n, -10).

The programs for A160589, there is no canonical definition to state claims against.
-/

/-! ## A160589.P3838960150800512457

`A000142(n)/A289216(n)*A160587(n)`
-/

namespace A160589.P3838960150800512457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A289216 n : ℚ) * (A160587 n : ℚ)

end

end A160589.P3838960150800512457

/-! ## A160589.P2613668614895645359

`gcd(n!, A014959(A014949(n+1)))`
-/

namespace A160589.P2613668614895645359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A014959 (A014949 (n + 1)).toNat)

end

end A160589.P2613668614895645359

/-! ## A160589.P13483526363172520914

`gcd(A000142(n), A014945(A001792(n)))`
-/

namespace A160589.P13483526363172520914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A014945 (A001792 n).toNat)

end

end A160589.P13483526363172520914

/-! ## A160589.P3224518119850918524

`A132740(gcd(A001147(n), A143968(n)))`
-/

namespace A160589.P3224518119850918524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (Int.gcd (A001147 n) (A143968 n))

end

end A160589.P3224518119850918524

/-! ## A160589.P7498932832534225803

`gcd(A280781(n), A350186(A060151(n+1)))`
-/

namespace A160589.P7498932832534225803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A280781 n) (A350186 (A060151 (n + 1)).toNat)

end

end A160589.P7498932832534225803

/-!
# A160590: Next-to-least significant digit of 2^n.

The programs for A160590, the canonical program `A160590.P5144668435671400432` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160590 has offset 4).

The definition of A160590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160590.P5144668435671400432

`A140684(∑[A140684(n+1)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160590

/-- `A140684(∑[A140684(n+1)])` -/
def P5144668435671400432.Spec : Prop :=
  ∀ n, P5144668435671400432.a n = A160590 (n + 4)

theorem P5144668435671400432.correct : P5144668435671400432.Spec := by
  intro n
  simp only [A160590, Nat.add_sub_cancel]

end A160590

/-!
# A160591: Indices of primes congruent to 5 modulo 12.

The programs for A160591, the canonical program `A160591.P9164857169513233061` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160591 has offset 1).

The definition of A160591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160591.P9164857169513233061

`A000720(A040117(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160591

/-- `A000720(A040117(n+1))` -/
def P9164857169513233061.Spec : Prop :=
  ∀ n, P9164857169513233061.a n = A160591 (n + 1)

theorem P9164857169513233061.correct : P9164857169513233061.Spec := by
  intro n
  simp only [A160591, Nat.add_sub_cancel]

end A160591

/-! ## A160591.P1569908080400395030

`∩[A080147(n+1), A091177(n+1)]`
-/

namespace A160591.P1569908080400395030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160591.P1569908080400395030

namespace A160591

/-- `∩[A080147(n+1), A091177(n+1)]` -/
def P1569908080400395030.Spec : Prop :=
  ∀ n, (P1569908080400395030.a n : ℤ) = A160591 (n + 1)

end A160591

/-! ## A160591.P16419986274526679782

`∩[A080147(n+1), A133677(n+1)]`
-/

namespace A160591.P16419986274526679782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160591.P16419986274526679782

namespace A160591

/-- `∩[A080147(n+1), A133677(n+1)]` -/
def P16419986274526679782.Spec : Prop :=
  ∀ n, (P16419986274526679782.a n : ℤ) = A160591 (n + 1)

end A160591

/-! ## A160591.P10881861176603904921

`eq[5, A039710(1+n)]+1`
-/

namespace A160591.P10881861176603904921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160591.P10881861176603904921

namespace A160591

/-- `eq[5, A039710(1+n)]+1` -/
def P10881861176603904921.Spec : Prop :=
  ∀ n, (P10881861176603904921.a n : ℤ) = A160591 (n + 1)

end A160591

/-! ## A160591.P17512149453108107750

`eq[5, A000040(n+1)%12]+1`
-/

namespace A160591.P17512149453108107750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160591.P17512149453108107750

namespace A160591

/-- `eq[5, A000040(n+1)%12]+1` -/
def P17512149453108107750.Spec : Prop :=
  ∀ n, (P17512149453108107750.a n : ℤ) = A160591 (n + 1)

end A160591

/-! ## A160591.P8933551553587301384

`filter[A080147(n+1), A132194(#)]`
-/

namespace A160591.P8933551553587301384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A160591.P8933551553587301384

namespace A160591

/-- `filter[A080147(n+1), A132194(#)]` -/
def P8933551553587301384.Spec : Prop :=
  ∀ n, P8933551553587301384.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P7185900216232278712

`filter[A091177(n+2), A098033(#)]`
-/

namespace A160591.P7185900216232278712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098033 (f1 j).toNat = 1) n)

end

end A160591.P7185900216232278712

namespace A160591

/-- `filter[A091177(n+2), A098033(#)]` -/
def P7185900216232278712.Spec : Prop :=
  ∀ n, P7185900216232278712.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P10603679364400281220

`filter[A133677(n+2), A098033(#)]`
-/

namespace A160591.P10603679364400281220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098033 (f1 j).toNat = 1) n)

end

end A160591.P10603679364400281220

namespace A160591

/-- `filter[A133677(n+2), A098033(#)]` -/
def P10603679364400281220.Spec : Prop :=
  ∀ n, P10603679364400281220.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P8456125165492131367

`lt[A272203(n+1)², A070750(n+1)]+1`
-/

namespace A160591.P8456125165492131367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A160591.P8456125165492131367

namespace A160591

/-- `lt[A272203(n+1)², A070750(n+1)]+1` -/
def P8456125165492131367.Spec : Prop :=
  ∀ n, (P8456125165492131367.a n : ℤ) = A160591 (n + 1)

end A160591

/-! ## A160591.P1497281766943580833

`A000720(p?[12*n+5])`
-/

namespace A160591.P1497281766943580833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A160591.P1497281766943580833

namespace A160591

/-- `A000720(p?[12*n+5])` -/
def P1497281766943580833.Spec : Prop :=
  ∀ n, P1497281766943580833.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P14175659455013285553

`A000720(A243183(n+2))`
-/

namespace A160591.P14175659455013285553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A243183 (n + 2)).toNat

end

end A160591.P14175659455013285553

namespace A160591

/-- `A000720(A243183(n+2))` -/
def P14175659455013285553.Spec : Prop :=
  ∀ n, P14175659455013285553.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P2275042641755973302

`record[A061395(A166304(n)+1)]`
-/

namespace A160591.P2275042641755973302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A166304 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160591.P2275042641755973302

namespace A160591

/-- `record[A061395(A166304(n)+1)]` -/
def P2275042641755973302.Spec : Prop :=
  ∀ n, P2275042641755973302.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P15306020028584437030

`A061395(p?[A166304(n)+1])`
-/

namespace A160591.P15306020028584437030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160591.P15306020028584437030

namespace A160591

/-- `A061395(p?[A166304(n)+1])` -/
def P15306020028584437030.Spec : Prop :=
  ∀ n, P15306020028584437030.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P10721061000228795870

`record[A303753(A016969(2*n))]`
-/

namespace A160591.P10721061000228795870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (A016969 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160591.P10721061000228795870

namespace A160591

/-- `record[A303753(A016969(2*n))]` -/
def P10721061000228795870.Spec : Prop :=
  ∀ n, P10721061000228795870.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P5950104480529767163

`record[A061395(A017197(2*n+1)+A017197(2*n))]`
-/

namespace A160591.P5950104480529767163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A017197 (2 * n + 1) + A017197 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160591.P5950104480529767163

namespace A160591

/-- `record[A061395(A017197(2*n+1)+A017197(2*n))]` -/
def P5950104480529767163.Spec : Prop :=
  ∀ n, P5950104480529767163.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P11953114063098249167

`eq[2, A055396(A006254(n+1))]+2`
-/

namespace A160591.P11953114063098249167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006254 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A160591.P11953114063098249167

namespace A160591

/-- `eq[2, A055396(A006254(n+1))]+2` -/
def P11953114063098249167.Spec : Prop :=
  ∀ n, (P11953114063098249167.a n : ℤ) = A160591 (n + 1)

end A160591

/-! ## A160591.P15742063536920100311

`record[A263297(A008458(2*n+1)-1)]`
-/

namespace A160591.P15742063536920100311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A008458 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160591.P15742063536920100311

namespace A160591

/-- `record[A263297(A008458(2*n+1)-1)]` -/
def P15742063536920100311.Spec : Prop :=
  ∀ n, P15742063536920100311.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P2123461028959034015

`A082058(p?[12*n+5])`
-/

namespace A160591.P2123461028959034015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A160591.P2123461028959034015

namespace A160591

/-- `A082058(p?[12*n+5])` -/
def P2123461028959034015.Spec : Prop :=
  ∀ n, P2123461028959034015.a n = A160591 (n + 1)

end A160591

/-! ## A160591.P15436645864801795960

`A230980(p?[A166304(n)+1])`
-/

namespace A160591.P15436645864801795960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160591.P15436645864801795960

namespace A160591

/-- `A230980(p?[A166304(n)+1])` -/
def P15436645864801795960.Spec : Prop :=
  ∀ n, P15436645864801795960.a n = A160591 (n + 1)

end A160591

/-!
# A160592: Indices of primes congruent to 7 modulo 12.

The programs for A160592, the canonical program `A160592.P15698679299650213589` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160592 has offset 1).

The definition of A160592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160592.P15698679299650213589

`A000720(A068229(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160592

/-- `A000720(A068229(n+1))` -/
def P15698679299650213589.Spec : Prop :=
  ∀ n, P15698679299650213589.a n = A160592 (n + 1)

theorem P15698679299650213589.correct : P15698679299650213589.Spec := by
  intro n
  simp only [A160592, Nat.add_sub_cancel]

end A160592

/-! ## A160592.P17601989629580819134

`∩[A080148(n+1), A091178(n+1)]`
-/

namespace A160592.P17601989629580819134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160592.P17601989629580819134

namespace A160592

/-- `∩[A080148(n+1), A091178(n+1)]` -/
def P17601989629580819134.Spec : Prop :=
  ∀ n, (P17601989629580819134.a n : ℤ) = A160592 (n + 1)

end A160592

/-! ## A160592.P12965166927505709118

`eq[4, A180217(n+4)]+4`
-/

namespace A160592.P12965166927505709118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A160592.P12965166927505709118

namespace A160592

/-- `eq[4, A180217(n+4)]+4` -/
def P12965166927505709118.Spec : Prop :=
  ∀ n, (P12965166927505709118.a n : ℤ) = A160592 (n + 1)

end A160592

/-! ## A160592.P975170216165895338

`eq[7, A000040(n+1)%12]+1`
-/

namespace A160592.P975170216165895338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160592.P975170216165895338

namespace A160592

/-- `eq[7, A000040(n+1)%12]+1` -/
def P975170216165895338.Spec : Prop :=
  ∀ n, (P975170216165895338.a n : ℤ) = A160592 (n + 1)

end A160592

/-! ## A160592.P1829927170731477794

`filter[A080148(n+1), A099618(#)]`
-/

namespace A160592.P1829927170731477794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099618 (f1 j).toNat = 1) n)

end

end A160592.P1829927170731477794

namespace A160592

/-- `filter[A080148(n+1), A099618(#)]` -/
def P1829927170731477794.Spec : Prop :=
  ∀ n, P1829927170731477794.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P3653887066769722222

`filter[A091178(n+1), A100672(#)]`
-/

namespace A160592.P3653887066769722222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100672 (f1 j).toNat = 1) n)

end

end A160592.P3653887066769722222

namespace A160592

/-- `filter[A091178(n+1), A100672(#)]` -/
def P3653887066769722222.Spec : Prop :=
  ∀ n, P3653887066769722222.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P658895805729267099

`filter[A171820(n+2), A100672(#)]`
-/

namespace A160592.P658895805729267099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100672 (f1 j).toNat = 1) n)

end

end A160592.P658895805729267099

namespace A160592

/-- `filter[A171820(n+2), A100672(#)]` -/
def P658895805729267099.Spec : Prop :=
  ∀ n, P658895805729267099.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P4145066566238377722

`filter[A332807(2*(n+1)), A099618(#)]`
-/

namespace A160592.P4145066566238377722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099618 (f1 j).toNat = 1) n)

end

end A160592.P4145066566238377722

namespace A160592

/-- `filter[A332807(2*(n+1)), A099618(#)]` -/
def P4145066566238377722.Spec : Prop :=
  ∀ n, P4145066566238377722.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P4242167373839777143

`A000720(p?[12*n-5])`
-/

namespace A160592.P4242167373839777143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160592.P4242167373839777143

namespace A160592

/-- `A000720(p?[12*n-5])` -/
def P4242167373839777143.Spec : Prop :=
  ∀ n, P4242167373839777143.a n = A160592 (n + 1)

theorem P4242167373839777143.correct : P4242167373839777143.Spec := by
  intro n
  simp only [A160592, Nat.add_sub_cancel, A160592.P4242167373839777143.f1, A160592.P4242167373839777143.a, A160592.P15698679299650213589.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A068229, A068229.P4621681780880692968.f1, A068229.P4621681780880692968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160592

/-! ## A160592.P9368405956836927423

`record[A061395(A142241(n)/2)]`
-/

namespace A160592.P9368405956836927423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A142241 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160592.P9368405956836927423

namespace A160592

/-- `record[A061395(A142241(n)/2)]` -/
def P9368405956836927423.Spec : Prop :=
  ∀ n, P9368405956836927423.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P6903917085903783653

`record[A303753(xor(2, A016969(n)))]`
-/

namespace A160592.P6903917085903783653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (Int.xor 2 (A016969 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160592.P6903917085903783653

namespace A160592

/-- `record[A303753(xor(2, A016969(n)))]` -/
def P6903917085903783653.Spec : Prop :=
  ∀ n, P6903917085903783653.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P3062004253639595320

`record[A061395(A142241(n))]`
-/

namespace A160592.P3062004253639595320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A142241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160592.P3062004253639595320

namespace A160592

/-- `record[A061395(A142241(n))]` -/
def P3062004253639595320.Spec : Prop :=
  ∀ n, P3062004253639595320.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P10381581202182354717

`A003963(p?[12*n-5])`
-/

namespace A160592.P10381581202182354717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160592.P10381581202182354717

namespace A160592

/-- `A003963(p?[12*n-5])` -/
def P10381581202182354717.Spec : Prop :=
  ∀ n, P10381581202182354717.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P6258002341628301735

`A026238(p?[12*n-5])`
-/

namespace A160592.P6258002341628301735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160592.P6258002341628301735

namespace A160592

/-- `A026238(p?[12*n-5])` -/
def P6258002341628301735.Spec : Prop :=
  ∀ n, P6258002341628301735.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P13503004188327824152

`A049084(p?[12*n-5])`
-/

namespace A160592.P13503004188327824152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160592.P13503004188327824152

namespace A160592

/-- `A049084(p?[12*n-5])` -/
def P13503004188327824152.Spec : Prop :=
  ∀ n, P13503004188327824152.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P12683810060098280597

`A055396(p?[12*n-5])`
-/

namespace A160592.P12683810060098280597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160592.P12683810060098280597

namespace A160592

/-- `A055396(p?[12*n-5])` -/
def P12683810060098280597.Spec : Prop :=
  ∀ n, P12683810060098280597.a n = A160592 (n + 1)

end A160592

/-! ## A160592.P6610694726196356345

`record[A055396(12*n+7)]`
-/

namespace A160592.P6610694726196356345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (12 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160592.P6610694726196356345

namespace A160592

/-- `record[A055396(12*n+7)]` -/
def P6610694726196356345.Spec : Prop :=
  ∀ n, P6610694726196356345.a n = A160592 (n + 1)

end A160592

/-!
# A160593: Indices of primes congruent to 11 modulo 12.

The programs for A160593, the canonical program `A160593.P18105628296432784865` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160593 has offset 1).

The definition of A160593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160593.P18105628296432784865

`A000720(A068231(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160593

/-- `A000720(A068231(n+1))` -/
def P18105628296432784865.Spec : Prop :=
  ∀ n, P18105628296432784865.a n = A160593 (n + 1)

theorem P18105628296432784865.correct : P18105628296432784865.Spec := by
  intro n
  simp only [A160593, Nat.add_sub_cancel]

end A160593

/-! ## A160593.P17101184235904882579

`∩[A080148(n+1), A091177(n+1)]`
-/

namespace A160593.P17101184235904882579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160593.P17101184235904882579

namespace A160593

/-- `∩[A080148(n+1), A091177(n+1)]` -/
def P17101184235904882579.Spec : Prop :=
  ∀ n, (P17101184235904882579.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P1102233505962463757

`lt[4, A180217(n+1)]+1`
-/

namespace A160593.P1102233505962463757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160593.P1102233505962463757

namespace A160593

/-- `lt[4, A180217(n+1)]+1` -/
def P1102233505962463757.Spec : Prop :=
  ∀ n, (P1102233505962463757.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P7196763936085960452

`filter[A091177(n+2), A100672(#)]`
-/

namespace A160593.P7196763936085960452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100672 (f1 j).toNat = 1) n)

end

end A160593.P7196763936085960452

namespace A160593

/-- `filter[A091177(n+2), A100672(#)]` -/
def P7196763936085960452.Spec : Prop :=
  ∀ n, P7196763936085960452.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P5886924567796179738

`filter[A080148(n+2), A132194(#)]`
-/

namespace A160593.P5886924567796179738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A160593.P5886924567796179738

namespace A160593

/-- `filter[A080148(n+2), A132194(#)]` -/
def P5886924567796179738.Spec : Prop :=
  ∀ n, P5886924567796179738.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P14171947684292373682

`filter[A133677(n+3), A100672(#)]`
-/

namespace A160593.P14171947684292373682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100672 (f1 j).toNat = 1) n)

end

end A160593.P14171947684292373682

namespace A160593

/-- `filter[A133677(n+3), A100672(#)]` -/
def P14171947684292373682.Spec : Prop :=
  ∀ n, P14171947684292373682.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P3710787403215552125

`lt[1, A213217(A039710(n+1))]+1`
-/

namespace A160593.P3710787403215552125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A039710 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160593.P3710787403215552125

namespace A160593

/-- `lt[1, A213217(A039710(n+1))]+1` -/
def P3710787403215552125.Spec : Prop :=
  ∀ n, (P3710787403215552125.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P2193415088155068420

`lt[3, A020639(A130290(n+1))]+1`
-/

namespace A160593.P2193415088155068420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160593.P2193415088155068420

namespace A160593

/-- `lt[3, A020639(A130290(n+1))]+1` -/
def P2193415088155068420.Spec : Prop :=
  ∀ n, (P2193415088155068420.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P1796330909929427234

`A000720(p?[12*n-1])`
-/

namespace A160593.P1796330909929427234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160593.P1796330909929427234

namespace A160593

/-- `A000720(p?[12*n-1])` -/
def P1796330909929427234.Spec : Prop :=
  ∀ n, P1796330909929427234.a n = A160593 (n + 1)

theorem P1796330909929427234.correct : P1796330909929427234.Spec := by
  intro n
  simp only [A160593, Nat.add_sub_cancel, A160593.P1796330909929427234.f1, A160593.P1796330909929427234.a, A160593.P18105628296432784865.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A068231, A068231.P17213326245537033468.f1, A068231.P17213326245537033468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A160593

/-! ## A160593.P9332496731662341899

`lt[(ceil(7*record[A006530(n+1)]/2)%6+2)%4, 2]`
-/

namespace A160593.P9332496731662341899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ⌈(7 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / 2⌉ 6 + 2) 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A160593.P9332496731662341899

namespace A160593

/-- `lt[(ceil(7*record[A006530(n+1)]/2)%6+2)%4, 2]` -/
def P9332496731662341899.Spec : Prop :=
  ∀ n, (P9332496731662341899.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P18158194368974914648

`A061395(p?[A017653(n)])`
-/

namespace A160593.P18158194368974914648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160593.P18158194368974914648

namespace A160593

/-- `A061395(p?[A017653(n)])` -/
def P18158194368974914648.Spec : Prop :=
  ∀ n, P18158194368974914648.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P18252395072813339319

`A000720(A141187(n+2))`
-/

namespace A160593.P18252395072813339319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A141187 (n + 2)).toNat

end

end A160593.P18252395072813339319

namespace A160593

/-- `A000720(A141187(n+2))` -/
def P18252395072813339319.Spec : Prop :=
  ∀ n, P18252395072813339319.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P2171067645191351283

`record[A303753(12*n+11)]`
-/

namespace A160593.P2171067645191351283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (12 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160593.P2171067645191351283

namespace A160593

/-- `record[A303753(12*n+11)]` -/
def P2171067645191351283.Spec : Prop :=
  ∀ n, P2171067645191351283.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P3732188333734259701

`lt[1, A007814(ceil(A000040(n+1)/3))]+1`
-/

namespace A160593.P3732188333734259701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ⌈(A000040 (n + 1) : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A160593.P3732188333734259701

namespace A160593

/-- `lt[1, A007814(ceil(A000040(n+1)/3))]+1` -/
def P3732188333734259701.Spec : Prop :=
  ∀ n, (P3732188333734259701.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P15453643077866066880

`lt[A255051(ceil(A000040(n+1)/3)+1), 2]+1`
-/

namespace A160593.P15453643077866066880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (⌈(A000040 (n + 1) : ℚ) / 3⌉ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A160593.P15453643077866066880

namespace A160593

/-- `lt[A255051(ceil(A000040(n+1)/3)+1), 2]+1` -/
def P15453643077866066880.Spec : Prop :=
  ∀ n, (P15453643077866066880.a n : ℤ) = A160593 (n + 1)

end A160593

/-! ## A160593.P9902748623974769469

`A056239(p?[12*n-1])`
-/

namespace A160593.P9902748623974769469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160593.P9902748623974769469

namespace A160593

/-- `A056239(p?[12*n-1])` -/
def P9902748623974769469.Spec : Prop :=
  ∀ n, P9902748623974769469.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P13757140642509637421

`record[A056239(12*n+11)]`
-/

namespace A160593.P13757140642509637421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (12 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160593.P13757140642509637421

namespace A160593

/-- `record[A056239(12*n+11)]` -/
def P13757140642509637421.Spec : Prop :=
  ∀ n, P13757140642509637421.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P17319301900250477131

`A003963(p?[A017653(n)])`
-/

namespace A160593.P17319301900250477131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160593.P17319301900250477131

namespace A160593

/-- `A003963(p?[A017653(n)])` -/
def P17319301900250477131.Spec : Prop :=
  ∀ n, P17319301900250477131.a n = A160593 (n + 1)

end A160593

/-! ## A160593.P6856529792395785247

`A026233(p?[A017653(n)])`
-/

namespace A160593.P6856529792395785247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160593.P6856529792395785247

namespace A160593

/-- `A026233(p?[A017653(n)])` -/
def P6856529792395785247.Spec : Prop :=
  ∀ n, P6856529792395785247.a n = A160593 (n + 1)

end A160593

/-!
# A160594: Indices of primes congruent to 1 modulo 12.

The programs for A160594, the canonical program `A160594.P8669518195614110326` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160594 has offset 1).

The definition of A160594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160594.P8669518195614110326

`A000720(A068228(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160594

/-- `A000720(A068228(n+1))` -/
def P8669518195614110326.Spec : Prop :=
  ∀ n, P8669518195614110326.a n = A160594 (n + 1)

theorem P8669518195614110326.correct : P8669518195614110326.Spec := by
  intro n
  simp only [A160594, Nat.add_sub_cancel]

end A160594

/-! ## A160594.P15926711963338182390

`∩[A080147(n+1), A091178(n+1)]`
-/

namespace A160594.P15926711963338182390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160594.P15926711963338182390

namespace A160594

/-- `∩[A080147(n+1), A091178(n+1)]` -/
def P15926711963338182390.Spec : Prop :=
  ∀ n, (P15926711963338182390.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P7743840868630069993

`∩[A080147(n+1), A171820(n+1)]`
-/

namespace A160594.P7743840868630069993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160594.P7743840868630069993

namespace A160594

/-- `∩[A080147(n+1), A171820(n+1)]` -/
def P7743840868630069993.Spec : Prop :=
  ∀ n, (P7743840868630069993.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P14765514677951513510

`1+eq[1, A039710(n+1)]`
-/

namespace A160594.P14765514677951513510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160594.P14765514677951513510

namespace A160594

/-- `1+eq[1, A039710(n+1)]` -/
def P14765514677951513510.Spec : Prop :=
  ∀ n, (P14765514677951513510.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P8893805735744510899

`eq[1, A068227(n+1)]+1`
-/

namespace A160594.P8893805735744510899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160594.P8893805735744510899

namespace A160594

/-- `eq[1, A068227(n+1)]+1` -/
def P8893805735744510899.Spec : Prop :=
  ∀ n, (P8893805735744510899.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P4781004852491189914

`eq[2, A180217(1+n)]+1`
-/

namespace A160594.P4781004852491189914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160594.P4781004852491189914

namespace A160594

/-- `eq[2, A180217(1+n)]+1` -/
def P4781004852491189914.Spec : Prop :=
  ∀ n, (P4781004852491189914.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P8719818547466766753

`eq[1, A000040(n+1)%12]+1`
-/

namespace A160594.P8719818547466766753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A160594.P8719818547466766753

namespace A160594

/-- `eq[1, A000040(n+1)%12]+1` -/
def P8719818547466766753.Spec : Prop :=
  ∀ n, (P8719818547466766753.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P3603577219917239394

`A020725(eq[1, A039710(n+1)])`
-/

namespace A160594.P3603577219917239394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160594.P3603577219917239394

namespace A160594

/-- `A020725(eq[1, A039710(n+1)])` -/
def P3603577219917239394.Spec : Prop :=
  ∀ n, P3603577219917239394.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P12077194519436305114

`filter[A080147(n+1), A099618(#)]`
-/

namespace A160594.P12077194519436305114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099618 (f1 j).toNat = 1) n)

end

end A160594.P12077194519436305114

namespace A160594

/-- `filter[A080147(n+1), A099618(#)]` -/
def P12077194519436305114.Spec : Prop :=
  ∀ n, P12077194519436305114.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P7509078333220084308

`filter[A091178(n+1), A098033(#)]`
-/

namespace A160594.P7509078333220084308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098033 (f1 j).toNat = 1) n)

end

end A160594.P7509078333220084308

namespace A160594

/-- `filter[A091178(n+1), A098033(#)]` -/
def P7509078333220084308.Spec : Prop :=
  ∀ n, P7509078333220084308.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P12322718574012417231

`filter[A171820(n+1), A098033(#)]`
-/

namespace A160594.P12322718574012417231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098033 (f1 j).toNat = 1) n)

end

end A160594.P12322718574012417231

namespace A160594

/-- `filter[A171820(n+1), A098033(#)]` -/
def P12322718574012417231.Spec : Prop :=
  ∀ n, P12322718574012417231.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P10137254917345693709

`eq[1, A039710(A004277(n)-n)]`
-/

namespace A160594.P10137254917345693709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A160594.P10137254917345693709

namespace A160594

/-- `eq[1, A039710(A004277(n)-n)]` -/
def P10137254917345693709.Spec : Prop :=
  ∀ n, (P10137254917345693709.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P10616310039714951654

`filter[A332807(2*n+1), A099618(#)]`
-/

namespace A160594.P10616310039714951654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332807 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099618 (f1 j).toNat = 1) n)

end

end A160594.P10616310039714951654

namespace A160594

/-- `filter[A332807(2*n+1), A099618(#)]` -/
def P10616310039714951654.Spec : Prop :=
  ∀ n, P10616310039714951654.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P2414697541136240929

`lt[4, A020639(A005097(n+1)+1)]+2`
-/

namespace A160594.P2414697541136240929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005097 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A160594.P2414697541136240929

namespace A160594

/-- `lt[4, A020639(A005097(n+1)+1)]+2` -/
def P2414697541136240929.Spec : Prop :=
  ∀ n, (P2414697541136240929.a n : ℤ) = A160594 (n + 1)

end A160594

/-! ## A160594.P18410499386062194378

`A000720(p?[12*n+1]+1)`
-/

namespace A160594.P18410499386062194378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A160594.P18410499386062194378

namespace A160594

/-- `A000720(p?[12*n+1]+1)` -/
def P18410499386062194378.Spec : Prop :=
  ∀ n, P18410499386062194378.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P11747522037811178495

`A000720(p?[a(n-1)+12])` with `a(0)=1`
-/

namespace A160594.P11747522037811178495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A160594.P11747522037811178495

namespace A160594

/-- `A000720(p?[a(n-1)+12])` -/
def P11747522037811178495.Spec : Prop :=
  ∀ n, P11747522037811178495.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P12854946326021837189

`A000720(p?[A017533(n)])`
-/

namespace A160594.P12854946326021837189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160594.P12854946326021837189

namespace A160594

/-- `A000720(p?[A017533(n)])` -/
def P12854946326021837189.Spec : Prop :=
  ∀ n, P12854946326021837189.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P10981552420071389518

`A000720(p?[A008594(n)+1])`
-/

namespace A160594.P10981552420071389518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160594.P10981552420071389518

namespace A160594

/-- `A000720(p?[A008594(n)+1])` -/
def P10981552420071389518.Spec : Prop :=
  ∀ n, P10981552420071389518.a n = A160594 (n + 1)

end A160594

/-! ## A160594.P15919054771932110468

`A000720(p?[A017653(n)+2])`
-/

namespace A160594.P15919054771932110468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A160594.P15919054771932110468

namespace A160594

/-- `A000720(p?[A017653(n)+2])` -/
def P15919054771932110468.Spec : Prop :=
  ∀ n, P15919054771932110468.a n = A160594 (n + 1)

end A160594

/-!
# A160595: Numerator of resilience R(n) = phi(n)/(n-1), with a(1) = 1 by convention.

The programs for A160595, the canonical program `A160595.P6850697665178590478` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160595 has offset 1).

The definition of A160595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247074, A318829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160595.P6850697665178590478

`A247074(n+1)*A318829(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160595

/-- `A247074(n+1)*A318829(n+1)` -/
def P6850697665178590478.Spec : Prop :=
  ∀ n, P6850697665178590478.a n = A160595 (n + 1)

theorem P6850697665178590478.correct : P6850697665178590478.Spec := by
  intro n
  simp only [A160595, Nat.add_sub_cancel]

end A160595

/-! ## A160595.P17430471337106613691

`A000010(n+1)/A049559(n+1)`
-/

namespace A160595.P17430471337106613691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A160595.P17430471337106613691

namespace A160595

/-- `A000010(n+1)/A049559(n+1)` -/
def P17430471337106613691.Spec : Prop :=
  ∀ n, P17430471337106613691.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P4059053565649428111

`∑{d}[n+1, A340143(#)]`
-/

namespace A160595.P4059053565649428111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340143 d

end

end A160595.P4059053565649428111

namespace A160595

/-- `∑{d}[n+1, A340143(#)]` -/
def P4059053565649428111.Spec : Prop :=
  ∀ n, P4059053565649428111.a n = A160595 (n + 1)

end A160595

/-! ## A160595.P14328964835908778845

`A000010(n+1)/gcd(n, ∏{p}[n+1, 1-#])`
-/

namespace A160595.P14328964835908778845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) : ℚ)

end

end A160595.P14328964835908778845

namespace A160595

/-- `A000010(n+1)/gcd(n, ∏{p}[n+1, 1-#])` -/
def P14328964835908778845.Spec : Prop :=
  ∀ n, P14328964835908778845.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P17176430223893016715

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A049559(n+1)`
-/

namespace A160595.P17176430223893016715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A160595.P17176430223893016715

namespace A160595

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A049559(n+1)` -/
def P17176430223893016715.Spec : Prop :=
  ∀ n, P17176430223893016715.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P12764660992398418434

`Δ[A005728(n)]/A049559(n+1)`
-/

namespace A160595.P12764660992398418434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A049559 (n + 1) : ℚ)

end

end A160595.P12764660992398418434

namespace A160595

/-- `Δ[A005728(n)]/A049559(n+1)` -/
def P12764660992398418434.Spec : Prop :=
  ∀ n, P12764660992398418434.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P8050508702830773997

`A318830(n+1)/A049559(n+1)+1`
-/

namespace A160595.P8050508702830773997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318830 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ) + 1

end

end A160595.P8050508702830773997

namespace A160595

/-- `A318830(n+1)/A049559(n+1)+1` -/
def P8050508702830773997.Spec : Prop :=
  ∀ n, P8050508702830773997.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P16760240210034082454

`(A039649(n+1)-1)/A049559(n+1)`
-/

namespace A160595.P16760240210034082454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A049559 (n + 1) : ℚ)

end

end A160595.P16760240210034082454

namespace A160595

/-- `(A039649(n+1)-1)/A049559(n+1)` -/
def P16760240210034082454.Spec : Prop :=
  ∀ n, P16760240210034082454.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P8748051621923344072

`A000010(n+1)/gcd(n, A002618(n+1))`
-/

namespace A160595.P8748051621923344072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A002618 (n + 1)) : ℚ)

end

end A160595.P8748051621923344072

namespace A160595

/-- `A000010(n+1)/gcd(n, A002618(n+1))` -/
def P8748051621923344072.Spec : Prop :=
  ∀ n, P8748051621923344072.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P1795190792752810097

`(A002088(n+1)-A002088(n))/A049559(n+1)`
-/

namespace A160595.P1795190792752810097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A049559 (n + 1) : ℚ)

end

end A160595.P1795190792752810097

namespace A160595

/-- `(A002088(n+1)-A002088(n))/A049559(n+1)` -/
def P1795190792752810097.Spec : Prop :=
  ∀ n, P1795190792752810097.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P6446398315867551954

`A000010(n+1)/gcd(A000010(n+1), A028310(n))`
-/

namespace A160595.P6446398315867551954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A028310 n) : ℚ)

end

end A160595.P6446398315867551954

namespace A160595

/-- `A000010(n+1)/gcd(A000010(n+1), A028310(n))` -/
def P6446398315867551954.Spec : Prop :=
  ∀ n, P6446398315867551954.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P13923547629441921773

`A318829(n+1)+A318840(n+1)/A049559(n+1)`
-/

namespace A160595.P13923547629441921773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318829 (n + 1) : ℚ) + (A318840 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A160595.P13923547629441921773

namespace A160595

/-- `A318829(n+1)+A318840(n+1)/A049559(n+1)` -/
def P13923547629441921773.Spec : Prop :=
  ∀ n, P13923547629441921773.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P13623808572687745023

`A000010(n+1)/(A000010(n+1)-A318830(n+1))`
-/

namespace A160595.P13623808572687745023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (n + 1) - A318830 (n + 1) : ℚ)

end

end A160595.P13623808572687745023

namespace A160595

/-- `A000010(n+1)/(A000010(n+1)-A318830(n+1))` -/
def P13623808572687745023.Spec : Prop :=
  ∀ n, P13623808572687745023.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P17826978343155797567

`A063994(n+1)/A049559(n+1)*A247074(n+1)`
-/

namespace A160595.P17826978343155797567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ) * (A247074 (n + 1) : ℚ)

end

end A160595.P17826978343155797567

namespace A160595

/-- `A063994(n+1)/A049559(n+1)*A247074(n+1)` -/
def P17826978343155797567.Spec : Prop :=
  ∀ n, P17826978343155797567.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P12745569368153482206

`A000010(n+1)/A063994(n+1)*A318829(n+1)`
-/

namespace A160595.P12745569368153482206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ) * (A318829 (n + 1) : ℚ)

end

end A160595.P12745569368153482206

namespace A160595

/-- `A000010(n+1)/A063994(n+1)*A318829(n+1)` -/
def P12745569368153482206.Spec : Prop :=
  ∀ n, P12745569368153482206.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P14505666266294481763

`A000010(n+1)/(A187730(n+1)*A353801(n+1))`
-/

namespace A160595.P14505666266294481763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A187730 (n + 1) * A353801 (n + 1) : ℚ)

end

end A160595.P14505666266294481763

namespace A160595

/-- `A000010(n+1)/(A187730(n+1)*A353801(n+1))` -/
def P14505666266294481763.Spec : Prop :=
  ∀ n, P14505666266294481763.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P14657635221332593821

`A067541(2*n+1)/gcd(A067541(2*n+1), A249122(2*n+1))`
-/

namespace A160595.P14657635221332593821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067541 (2 * n + 1) : ℚ) / (Int.gcd (A067541 (2 * n + 1)) (A249122 (2 * n + 1)) : ℚ)

end

end A160595.P14657635221332593821

namespace A160595

/-- `A067541(2*n+1)/gcd(A067541(2*n+1), A249122(2*n+1))` -/
def P14657635221332593821.Spec : Prop :=
  ∀ n, P14657635221332593821.a n = (A160595 (n + 1) : ℚ)

end A160595

/-! ## A160595.P359738458516842382

`A000188(A127473(n+1)/A049559(n+1)²)`
-/

namespace A160595.P359738458516842382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A127473 (n + 1) : ℚ) / (A049559 (n + 1) ^ 2 : ℚ))).toNat

end

end A160595.P359738458516842382

namespace A160595

/-- `A000188(A127473(n+1)/A049559(n+1)²)` -/
def P359738458516842382.Spec : Prop :=
  ∀ n, P359738458516842382.a n = A160595 (n + 1)

end A160595

/-! ## A160595.P15626818673505747949

`A164306(A000010(n+1)+C(n, 2))`
-/

namespace A160595.P15626818673505747949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A000010 (n + 1) + (Nat.choose n 2 : ℤ)).toNat

end

end A160595.P15626818673505747949

namespace A160595

/-- `A164306(A000010(n+1)+C(n, 2))` -/
def P15626818673505747949.Spec : Prop :=
  ∀ n, P15626818673505747949.a n = A160595 (n + 1)

end A160595

/-! ## A160595.P7299203376347752961

`A164306(A000217(n)+1-A051953(n+1))`
-/

namespace A160595.P7299203376347752961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A000217 n + (1 - A051953 (n + 1))).toNat

end

end A160595.P7299203376347752961

namespace A160595

/-- `A164306(A000217(n)+1-A051953(n+1))` -/
def P7299203376347752961.Spec : Prop :=
  ∀ n, P7299203376347752961.a n = A160595 (n + 1)

end A160595

/-!
# A160596: Denominator of resilience R(n) = phi(n)/(n-1).

The programs for A160596, the canonical program `A160596.P4885123688175961226` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160596 has offset 2).

The definition of A160596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160596.P942439994020285565

`(n+1)/(2-A318827(n+2)+n)`
-/

namespace A160596.P942439994020285565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - A318827 (n + 2) + (n : ℤ) : ℚ)

end

end A160596.P942439994020285565

namespace A160596

/-- `(n+1)/(2-A318827(n+2)+n)` -/
def P942439994020285565.Spec : Prop :=
  ∀ n, P942439994020285565.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P16021090364315083025

`(n+1)/gcd(n+1, A000010(n+2))`
-/

namespace A160596.P16021090364315083025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 2)) : ℚ)

end

end A160596.P16021090364315083025

namespace A160596

/-- `(n+1)/gcd(n+1, A000010(n+2))` -/
def P16021090364315083025.Spec : Prop :=
  ∀ n, P16021090364315083025.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P6500401018697060334

`(n+1)/(A000010(n+2)-A318830(n+2))`
-/

namespace A160596.P6500401018697060334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 2) - A318830 (n + 2) : ℚ)

end

end A160596.P6500401018697060334

namespace A160596

/-- `(n+1)/(A000010(n+2)-A318830(n+2))` -/
def P6500401018697060334.Spec : Prop :=
  ∀ n, P6500401018697060334.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P14671364594968063104

`(n+1)/A049559(n+2)`
-/

namespace A160596.P14671364594968063104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A049559 (n + 2) : ℚ)

end

end A160596.P14671364594968063104

namespace A160596

/-- `(n+1)/A049559(n+2)` -/
def P14671364594968063104.Spec : Prop :=
  ∀ n, P14671364594968063104.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P3497043128005963607

`lcm(A002618(n+2), n+1)/A002618(n+2)`
-/

namespace A160596.P3497043128005963607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002618 (n + 2)) (n + 1 : ℤ) : ℚ) / (A002618 (n + 2) : ℚ)

end

end A160596.P3497043128005963607

namespace A160596

/-- `lcm(A002618(n+2), n+1)/A002618(n+2)` -/
def P3497043128005963607.Spec : Prop :=
  ∀ n, P3497043128005963607.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P5470901238947169472

`A028310(n+1)/gcd(A009262(n+2), A028310(n+1))`
-/

namespace A160596.P5470901238947169472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (Int.gcd (A009262 (n + 2)) (A028310 (n + 1)) : ℚ)

end

end A160596.P5470901238947169472

namespace A160596

/-- `A028310(n+1)/gcd(A009262(n+2), A028310(n+1))` -/
def P5470901238947169472.Spec : Prop :=
  ∀ n, P5470901238947169472.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P4885123688175961226

`lcm(A000217(n+1), A023896(n+2))/A023896(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A160596

/-- `lcm(A000217(n+1), A023896(n+2))/A023896(n+2)` -/
def P4885123688175961226.Spec : Prop :=
  ∀ n, P4885123688175961226.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P17975138965212824529

`lcm(A005843(n+1), A140434(n+2))/A140434(n+2)`
-/

namespace A160596.P17975138965212824529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005843 (n + 1)) (A140434 (n + 2)) : ℚ) / (A140434 (n + 2) : ℚ)

end

end A160596.P17975138965212824529

namespace A160596

/-- `lcm(A005843(n+1), A140434(n+2))/A140434(n+2)` -/
def P17975138965212824529.Spec : Prop :=
  ∀ n, P17975138965212824529.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P17267106291968335859

`A052938(2*n)/gcd(A023900(n+2), A052938(2*n))`
-/

namespace A160596.P17267106291968335859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (Int.gcd (A023900 (n + 2)) (A052938 (2 * n)) : ℚ)

end

end A160596.P17267106291968335859

namespace A160596

/-- `A052938(2*n)/gcd(A023900(n+2), A052938(2*n))` -/
def P17267106291968335859.Spec : Prop :=
  ∀ n, P17267106291968335859.a n = (A160596 (n + 2) : ℚ)

end A160596

/-! ## A160596.P10476179982243501938

`A054531(A000010(n+2)+∑[n])`
-/

namespace A160596.P10476179982243501938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000010 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A160596.P10476179982243501938

namespace A160596

/-- `A054531(A000010(n+2)+∑[n])` -/
def P10476179982243501938.Spec : Prop :=
  ∀ n, P10476179982243501938.a n = A160596 (n + 2)

end A160596

/-! ## A160596.P9255801425120172998

`A054531(A000217(n)+A000010(n+2))`
-/

namespace A160596.P9255801425120172998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000217 n + A000010 (n + 2)).toNat

end

end A160596.P9255801425120172998

namespace A160596

/-- `A054531(A000217(n)+A000010(n+2))` -/
def P9255801425120172998.Spec : Prop :=
  ∀ n, P9255801425120172998.a n = A160596 (n + 2)

end A160596

/-!
# A160597: Denominator of coresilience C(n) = (n - phi(n))/(n-1).

The programs for A160597, the canonical program `A160597.P15569161753854345137` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160597 has offset 2).

The definition of A160597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160597.P15569161753854345137

`(n+1)/A058663(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A160597

/-- `(n+1)/A058663(n+2)` -/
def P15569161753854345137.Spec : Prop :=
  ∀ n, P15569161753854345137.a n = (A160597 (n + 2) : ℚ)

end A160597

/-! ## A160597.P5673561373789480252

`(n+1)/gcd(n+1, A318305(n+2))`
-/

namespace A160597.P5673561373789480252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A318305 (n + 2)) : ℚ)

end

end A160597.P5673561373789480252

namespace A160597

/-- `(n+1)/gcd(n+1, A318305(n+2))` -/
def P5673561373789480252.Spec : Prop :=
  ∀ n, P5673561373789480252.a n = (A160597 (n + 2) : ℚ)

end A160597

/-! ## A160597.P12950803618050613271

`A277227(A000010(n+2)+∑[n])`
-/

namespace A160597.P12950803618050613271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A000010 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A160597.P12950803618050613271

namespace A160597

/-- `A277227(A000010(n+2)+∑[n])` -/
def P12950803618050613271.Spec : Prop :=
  ∀ n, P12950803618050613271.a n = A160597 (n + 2)

end A160597

/-! ## A160597.P4027045685942628305

`A054531(∑[n+1]-A000010(n+2)+1)`
-/

namespace A160597.P4027045685942628305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000010 (n + 2) + 1).toNat

end

end A160597.P4027045685942628305

namespace A160597

/-- `A054531(∑[n+1]-A000010(n+2)+1)` -/
def P4027045685942628305.Spec : Prop :=
  ∀ n, P4027045685942628305.a n = A160597 (n + 2)

end A160597

/-! ## A160597.P3206045743410878030

`A054531(A051953(n+2)+A000217(n))`
-/

namespace A160597.P3206045743410878030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A051953 (n + 2) + A000217 n).toNat

end

end A160597.P3206045743410878030

namespace A160597

/-- `A054531(A051953(n+2)+A000217(n))` -/
def P3206045743410878030.Spec : Prop :=
  ∀ n, P3206045743410878030.a n = A160597 (n + 2)

end A160597

/-! ## A160597.P9728561296740512183

`A075119(A258434(n+2))`
-/

namespace A160597.P9728561296740512183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A258434 (n + 2)).toNat

end

end A160597.P9728561296740512183

namespace A160597

/-- `A075119(A258434(n+2))` -/
def P9728561296740512183.Spec : Prop :=
  ∀ n, P9728561296740512183.a n = A160597 (n + 2)

end A160597

/-! ## A160597.P15468331781836696673

`A075119((n+2)²-A000010(n+2))`
-/

namespace A160597.P15468331781836696673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (((n + 2) ^ 2 : ℤ) - A000010 (n + 2)).toNat

end

end A160597.P15468331781836696673

namespace A160597

/-- `A075119((n+2)²-A000010(n+2))` -/
def P15468331781836696673.Spec : Prop :=
  ∀ n, P15468331781836696673.a n = A160597 (n + 2)

end A160597

/-!
# A160598: Numerator of coresilience C(n) = (n - phi(n))/(n-1).

The programs for A160598, the canonical program `A160598.P7188298955133884230` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160598 has offset 2).

The definition of A160598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160598.P9143996402875761880

`(A318827(n+2)-A318830(n+2))/A058663(n+2)`
-/

namespace A160598.P9143996402875761880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318827 (n + 2) - A318830 (n + 2) : ℚ) / (A058663 (n + 2) : ℚ)

end

end A160598.P9143996402875761880

namespace A160598

/-- `(A318827(n+2)-A318830(n+2))/A058663(n+2)` -/
def P9143996402875761880.Spec : Prop :=
  ∀ n, P9143996402875761880.a n = (A160598 (n + 2) : ℚ)

end A160598

/-! ## A160598.P7188298955133884230

`lcm(n+1, A051953(n+2))/(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A160598

/-- `lcm(n+1, A051953(n+2))/(n+1)` -/
def P7188298955133884230.Spec : Prop :=
  ∀ n, P7188298955133884230.a n = (A160598 (n + 2) : ℚ)

end A160598

/-! ## A160598.P7516275981471369660

`A051953(n+2)/A058663(n+2)`
-/

namespace A160598.P7516275981471369660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 2) : ℚ) / (A058663 (n + 2) : ℚ)

end

end A160598.P7516275981471369660

namespace A160598

/-- `A051953(n+2)/A058663(n+2)` -/
def P7516275981471369660.Spec : Prop :=
  ∀ n, P7516275981471369660.a n = (A160598 (n + 2) : ℚ)

end A160598

/-! ## A160598.P3514446402441706072

`A051953(n+2)/gcd(A000265(n+1), A051953(n+2))`
-/

namespace A160598.P3514446402441706072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 2) : ℚ) / (Int.gcd (A000265 (n + 1)) (A051953 (n + 2)) : ℚ)

end

end A160598.P3514446402441706072

namespace A160598

/-- `A051953(n+2)/gcd(A000265(n+1), A051953(n+2))` -/
def P3514446402441706072.Spec : Prop :=
  ∀ n, P3514446402441706072.a n = (A160598 (n + 2) : ℚ)

end A160598

/-! ## A160598.P6089069573016165294

`A164306(∑[n+1-Δ[A000010(n+1)]])`
-/

namespace A160598.P6089069573016165294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160598.P6089069573016165294

namespace A160598

/-- `A164306(∑[n+1-Δ[A000010(n+1)]])` -/
def P6089069573016165294.Spec : Prop :=
  ∀ n, P6089069573016165294.a n = A160598 (n + 2)

end A160598

/-! ## A160598.P17251241914058770122

`A164306(∑[n+1]-A000010(n+2)+1)`
-/

namespace A160598.P17251241914058770122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000010 (n + 2) + 1).toNat

end

end A160598.P17251241914058770122

namespace A160598

/-- `A164306(∑[n+1]-A000010(n+2)+1)` -/
def P17251241914058770122.Spec : Prop :=
  ∀ n, P17251241914058770122.a n = A160598 (n + 2)

end A160598

/-! ## A160598.P6916505479060785490

`A164306(A051953(n+2)+A000217(n))`
-/

namespace A160598.P6916505479060785490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A051953 (n + 2) + A000217 n).toNat

end

end A160598.P6916505479060785490

namespace A160598

/-- `A164306(A051953(n+2)+A000217(n))` -/
def P6916505479060785490.Spec : Prop :=
  ∀ n, P6916505479060785490.a n = A160598 (n + 2)

end A160598

